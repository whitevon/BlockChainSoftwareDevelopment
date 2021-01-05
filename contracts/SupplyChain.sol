pragma solidity ^0.4.24;

import "../foodaccesscontrol/Roles.sol";
import "../foodaccesscontrol/DistributorRole.sol";
import "../foodaccesscontrol/ManufacturerRole.sol";
import "../foodaccesscontrol/customerRole.sol";
import "../foodaccesscontrol/carrierRole.sol";
import "../foodcore/Ownable.sol";

// 定义合约 'Supplychain'

contract SupplyChain is carrierRole, customerRole, ManufacturerRole, DistributorRole {

  // 定义食品拥有者 'owner'
  address owner;

  // 定义叫做upc的变量 'upc'  通用产品代码for Universal Product Code (UPC)
  uint  upc;

  // 定义叫做sku的变量 库存单位 'sku' for Stock Keeping Unit (SKU)
  uint  sku;

  // 定义一个public  mapping 'foods' that maps the UPC to an food.
  mapping (uint => food) foods;

  // 定义一个mapping 'foodsHistory' that maps the UPC to an array of TxHash, 
  // 追踪其在供应链中的旅程 -- to be sent from DApp.
  mapping (uint => string[]) foodsHistory;
  
  // 用下列的值定义 enum映射 'State' :
  enum State 
  { 
    Made,       // 0
    Packed,     // 1
    ForSale,    // 2
    Sold,       // 3
    Shipped,    // 4
    Received,   // 5
    Purchased   // 6
  }

  State constant defaultState = State.Made;

  // 用以下字段定义一个结构体'food':
  struct food {
    uint    sku;  // 库存单位 (SKU)
    uint    upc; // Universal Product Code (UPC), generated by the Manufacturer, goes on the package, can be verified by the customer
    address ownerID;  // Metamask-Ethereum address of the current owner as the food moves through 8 stages
    address originManufacturerID; // Metamask-Ethereum address of the Manufacturer
    string  originFactoryName; // Manufacturer Name 制造商名称
    string  originFactoryInformation;  // Manufacturer Information
    string  originFactoryLatitude; // Factory Latitude工厂坐标 纬度
    string  originFactoryLongitude;  // Factory Longitude经度
    uint    foodID;  // Product ID potentially a combination of upc + sku
    string  foodNotes; // Product Notes
    uint    foodPrice; // Product Price
    State   foodState;  // Product State as represented in the enum above
    address distributorID;  // Metamask-Ethereum address of the Distributor
    address carrierID; // Metamask-Ethereum address of the carrier
    address customerID; // Metamask-Ethereum address of the customer
  }

  // Define 8 events with the same 7 state values and accept 'upc' as input argument
//定义8个具有相同7个状态值的事件，并接受'upc'作为输入参数
  event Made(uint upc);
  event Packed(uint upc);
  event ForSale(uint upc);
  event Sold(uint upc);
  event Shipped(uint upc);
  event Received(uint upc);
  event Purchased(uint upc);

  // Define a modifer that checks to see if msg.sender == owner of the contract
//定义一个modifer来检查msg是否正确。发送方==合约的所有者
  modifier onlyOwner() {
    require(msg.sender == owner);
    _;
  }

  // Define a modifer that verifies the Caller
  modifier verifyCaller (address _address) {
    require(msg.sender == _address); 
    _;
  }

  // Define a modifier that checks if the paid amount is sufficient to cover the price
  modifier paidEnough(uint _price) { 
    require(msg.value >= _price); 
    _;
  }
  
  // Define a modifier that checks the price and refunds the remaining balance
  modifier checkValue(uint _upc) {
    _;
    uint _price = foods[_upc].foodPrice;
    uint amountToReturn = msg.value - _price;
    foods[_upc].customerID.transfer(amountToReturn);
  }

  // Define a modifier that checks if an food.state of a upc is Made
  modifier made(uint _upc) {
    require(foods[_upc].foodState == State.Made);
    _;
  }
  
  // Define a modifier that checks if an food.state of a upc is Packed
  modifier packed(uint _upc) {
    require(foods[_upc].foodState == State.Packed);

    _;
  }

  // Define a modifier that checks if an food.state of a upc is ForSale
  modifier forSale(uint _upc) {
    require(foods[_upc].foodState == State.ForSale);

    _;
  }

  // Define a modifier that checks if an food.state of a upc is Sold
  modifier sold(uint _upc) {
    require(foods[_upc].foodState == State.Sold);

    _;
  }
  
  // Define a modifier that checks if an food.state of a upc is Shipped
  modifier shipped(uint _upc) {
    require(foods[_upc].foodState == State.Shipped);

    _;
  }

  // Define a modifier that checks if an food.state of a upc is Received
  modifier received(uint _upc) {
    require(foods[_upc].foodState == State.Received);

    _;
  }

  // Define a modifier that checks if an food.state of a upc is Purchased
  modifier purchased(uint _upc) {
    require(foods[_upc].foodState == State.Purchased);
    _;
  }

  // In the constructor set 'owner' to the address that instantiated the contract
  // and set 'sku' to 1
  // and set 'upc' to 1
  constructor() public payable {
    owner = msg.sender;
    sku = 0;
    upc = 0;
  }

  // Define a function 'kill' if required
  function kill() public {
    if (msg.sender == owner) {
      selfdestruct(owner);
    }
  }

  // Define a function 'makefood' that allows a manufacturer to mark a food 'Made'
  function makefood(uint _upc, address _originManufacturerID, string _originFactoryName, string _originFactoryInformation, string  _originFactoryLatitude, string  _originFactoryLongitude, string  _foodNotes) public
  
  onlyManufacturer

  {
    // Add the new food as part of foods
    food memory temp_food = food({
      sku:sku + 1,
      upc:_upc,
      ownerID:_originManufacturerID,
      originManufacturerID:_originManufacturerID,
      originFactoryName:_originFactoryName,
      originFactoryInformation:_originFactoryInformation,
      originFactoryLatitude:_originFactoryLatitude,
      originFactoryLongitude:_originFactoryLongitude,
      foodID:sku+_upc,
      foodNotes:_foodNotes,
      foodState:State.Made,
      foodPrice:0,
      distributorID:0,
      carrierID:0,
      customerID:0

      });
    foods[_upc] = temp_food;
    foods[_upc].foodState = State.Made;

// uint    sku;  // Stock Keeping Unit (SKU)
//     uint    upc; // Universal Product Code (UPC), generated by the Manufacturer, goes on the package, can be verified by the customer
//     address ownerID;  // Metamask-Ethereum address of the current owner as the food moves through 8 stages
//     address originManufacturerID; // Metamask-Ethereum address of the Manufacturer
//     string  originFactoryName; // Manufacturer Name
//     string  originFactoryInformation;  // Manufacturer Information
//     string  originFactoryLatitude; // Factory Latitude
//     string  originFactoryLongitude;  // Factory Longitude
//     uint    foodID;  // Product ID potentially a combination of upc + sku
//     string  foodNotes; // Product Notes
//     uint    foodPrice; // Product Price
//     State   foodState;  // Product State as represented in the enum above
//     address distributorID;  // Metamask-Ethereum address of the Distributor
//     address carrierID; // Metamask-Ethereum address of the carrier
//     address customerID; // Metamask-Ethereum address of the customer



    // Increment sku
    sku = sku + 1;
    // Emit the appropriate event

    emit Made(_upc);
  }

  // Define a function 'packfood' that allows a manufacturer to mark an food 'Packed'
  function packfood(uint _upc) public 
  // Call modifier to check if upc has passed previous supply chain stage
  made(_upc)
  // Call modifier to verify caller of this function
  onlyManufacturer
  {
    // Update the appropriate fields
    foods[_upc].foodState = State.Packed;

    // Emit the appropriate event
    emit Packed(_upc);
  }

  // Define a function 'sellfood' that allows a manufacturer to mark an food 'ForSale'
  function sellfood(uint _upc, uint _price) public 
  // Call modifier to check if upc has passed previous supply chain stage
  packed(_upc)
  // Call modifier to verify caller of this function
  onlyManufacturer

  {
    // Update the appropriate fields
    foods[_upc].foodState = State.ForSale;
    foods[_upc].foodPrice = _price;
    // Emit the appropriate event
    emit ForSale(_upc);
  }

  // Define a function 'buyfood' that allows the disributor to mark an food 'Sold'
  // Use the above defined modifiers to check if the food is available for sale, if the buyer has paid enough, 
  // and any excess ether sent is refunded back to the buyer
  function buyfood(uint _upc) public payable 
    // Call modifier to check if upc has passed previous supply chain stage
    forSale(_upc)
    // Call modifer to check if buyer has paid enough
    paidEnough(foods[_upc].foodPrice)
    // Call modifer to send any excess ether back to buyer
    checkValue(_upc)
    //limit to distributers , no end consumers are allowed to buy from factory.
    onlyDistributor
    {

      // Update the appropriate fields - ownerID, distributorID, foodState
      foods[_upc].foodState = State.Sold;
      // Transfer money to manufacturer
      foods[_upc].originManufacturerID.transfer(foods[_upc].foodPrice);
      // emit the appropriate event
      emit Sold(_upc);
    }

  // Define a function 'shipfood' that allows the distributor to mark an food 'Shipped'
  // Use the above modifers to check if the food is sold
  function shipfood(uint _upc) public 
    // Call modifier to check if upc has passed previous supply chain stage
    sold(_upc)
    // Call modifier to verify caller of this function
    onlyManufacturer
    {
      //check if the factory is the one making this food.
      require(foods[_upc].originManufacturerID == msg.sender,"Manufacturers can ship only foods by them");
      // Update the appropriate fields
      foods[_upc].foodState = State.Shipped;
      // Emit the appropriate event
      emit Shipped(_upc);
    }

  // Define a function 'receivefood' that allows the carrier to mark an food 'Received'
  // Use the above modifiers to check if the food is shipped
  function receivefood(uint _upc) public 
    // Call modifier to check if upc has passed previous supply chain stage
    shipped(_upc)
    // Access Control List enforced by calling Smart Contract / DApp
    {
    // Update the appropriate fields - ownerID, carrierID, foodState
    foods[_upc].foodState = State.Received;

    // Emit the appropriate event
    emit Received(_upc);
  }

  // Define a function 'purchasefood' that allows the customer to mark an food 'Purchased'
  // Use the above modifiers to check if the food is received
  function purchasefood(uint _upc) public 
    // Call modifier to check if upc has passed previous supply chain stage
    received(_upc)
    // Access Control List enforced by calling Smart Contract / DApp
    onlycustomer
    {
      // Up    foods[_upc].foodState = State.Shipped;
      foods[_upc].foodState = State.Purchased;

      // Emit the appropriate event
      emit Purchased(_upc);
    }

  // Define a function 'fetchfoodBufferOne' that fetches the data
  function fetchfoodBufferOne(uint _upc) public view returns 
  (
    uint    foodSKU,
    uint    foodUPC,
    address ownerID,
    address originManufacturerID,
    string  originFactoryName,
    string  originFactoryInformation,
    string  originFactoryLatitude
    // string  originFactoryLongitude
    ) 
  {
  // Assign values to the 7 parameters
  

  return 
  (
    foods[_upc].sku,
    foods[_upc].upc,
    foods[_upc].ownerID,
    foods[_upc].originManufacturerID,
    foods[_upc].originFactoryName,
    foods[_upc].originFactoryInformation,
    foods[_upc].originFactoryLatitude
    // foods[_upc].originFactoryLongitude
    );
}

  // Define a function 'fetchfoodBufferTwo' that fetches the data
  function fetchfoodBufferTwo(uint _upc) public view returns 
  (
    // uint    foodSKU,
    // uint    foodUPC,
    // uint    foodID,
    string  originFactoryLongitude,
    string  foodNotes,
    uint    foodPrice,
    State    foodState,
    address distributorID,
    address carrierID,
    address customerID
    ) 
  {
    // Assign values to the 7 parameters

    
    return 
    (
      // foods[_upc].sku,
      // foods[_upc].upc,
      // foods[_upc].foodID,
      foods[_upc].originFactoryLongitude,
      foods[_upc].foodNotes,
      foods[_upc].foodPrice,
      foods[_upc].foodState,
      foods[_upc].distributorID,
      foods[_upc].carrierID,
      foods[_upc].customerID
      );
  }

  // Define a function 'fetchfoodBufferThree' that fetches the data
  function fetchfoodBufferThree(uint _upc) public view returns 
  (
    uint    foodSKU,
    uint    foodUPC,
    uint    foodID
    ) 
  {
    // Assign values to the 3 parameters

    
    return 
    (
      foods[_upc].sku,
      foods[_upc].upc,
      foods[_upc].foodID
      
      );
  }

}