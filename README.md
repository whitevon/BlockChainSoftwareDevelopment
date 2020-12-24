--------------------------------------------------------------------------

test area
There is a photo.这里有一张图片。
![image](https://github.com/whitevon/BlockChainSoftwareDevelopment/blob/main/images/testforphoto.png)

[ if not use , please click here. 看不见图片，请点击这里 ](https://blog.csdn.net/qq_38232598/article/details/91346392)

--------------------------------------------------------------------------
# BlockChainSoftwareDevelopment
UpdateRequirement
业务流程设计涉及到信息、需求、预测、计划、采购、生产、仓储、运输和交付等的全过程 。业务流程设计的目的是要按尽可能低的成本，最快的速度支持业务活动。以时间为基础的流程优化，以增值和反应速度为基准

正文：
一、政策背景：
区块链作为新型分布式系统，具有去中心化、防篡改和可追溯的特点。近年来越来越受到社会各界 的重视，已经被用于政务、金融、司法存证、版权保护、产品朔源等多个领域。2016 年国家发布《“十 三五”国家信息化规划》，首次将区块链作为新技术提出。2019 年 10 月 24 日，中共中央政治局就区块 链技术发展现状和趋势进行第十八次集体学习，区块链技术再次引起了社会的广泛关注。习近平总书记 强调，要把区块链作为核心技术自主创新重要突破口，加强区块链标准化研究，加强人才队伍建设，推 动区块链和实体经济深度融合。 
 区块链对促进跨部门数据共享，提升数据开放度和透明度，实现公共服务多元化、 政府治理透明化、城市管理精细化等方面具有重大的意义，多个省市出台了专项发展 政策，支持区块链在民生领域的探索。
北京发布的《北京市区块链创新发展行动计划 （2020—2022 年）》中提出要推进公共安全“全程可查，流程可溯”，助力卫生健康“可信共享，存证溯源”；贵州发布的《关于加快区块链技术应用和产业发展的意见》 
强调区块链与民生服务融合，提出区块链 + 精准脱贫、区块链 + 医疗健康等应用；海 
南发布的《海南省关于加快区块链产业发展的若干政策措施》中提出要积极推动区块 
链技术在教育、就业、养老、精准扶贫、医疗健康、商品防伪、食品安全、公益、社会 
救助等民生领域的应用。
二、技术原理 
区块链技术是多种技术组合创新的全新分布式基础架构。在区块链技术中，使用 
块链式数据结构来存储和验证数据；使用共识机制来生成和更新数据，并保证多个节 
点间数据的一致性；使用 P2P 网络开展节点之间的通信；使用密码学相关技术来确保 
数据传输和访问的安全性；使用智能合约来处理数据。区块链技术通过多方共同参与 
维护的多中心化账本，提升了数据存储和计算的安全可信。其主要技术具体如下： 
块链式数据结构。区块链的基本存储单元是区块，记录着存储期间所有状态改变 
的过程和结果。新增的区块保留着前一区块的摘要信息，每个区块按生成顺序排列， 
连接组成链表，构成了块链式数据结构。 共识机制。共识机制是区块链节点间在数据存储、数据验证和数据维护方面达成 一致的策略和方法。 P2P 网络。P2P 网络是一
种用于多个节点之间点对点组网和通信的技术。P2P 网 络中没有中心化的服务器。在区块链网络中所有节点均参与账本数据的生产、维护和 共享。 密码学。区块链中使用了多种类型的现代密码学技术，包括信息摘要算法、对称 加密和非对称加密算法等，主要目的是确保链上数据的安全性和完整性。 智能合约。智能合约是部署在区块链上的可执行代码，在满足特定条件下可自动触发代码运行。通过降低人为干预的风险，提升执行的安全与可信程度。
三、区块链分类 
区块链可以分为公有链、联盟链和私有链。公有链是完全开放的网络，所有参与 
者都可以参与系统维护，比特币和以太坊是公有链的典型代表。联盟链和私有链则是 
有限开放的网络，链中的参与方需要事先约定。典型的联盟链有 Fabric、Hyperchain、 
PoissonChain 区块链。私有链由个人或者私人机构所有，记账权归个人或私人机构所有， 
不对外开放。 
1．公有链 
公有链的特点是面向所有人开放，任何人均可参与到网络中共同维护区块链，新 
成员在加入公有链时无需进行任何形式的认证、授权或审核，具备强匿名性。 
2．联盟链 
联盟链的特点是限定了联盟成员的范围，系统内部进行事务确认的共识节点是事 
前设定或选举好的。新成员在加入联盟链时，需要经过联盟成员投票决定是否同意加入。 
由于联盟链模式符合监管要求，拥有更高的应用可扩展性，能够与实体经济紧密结合， 
因此我国目前的区块链应用模式主要以联盟链为主。 
3．私有链 
私有链的特点是仅限于单个机构内部使用，读写权、记账权和成员范围由组织内 
自由定制。与联盟链的区别在于，联盟链是机构与机构之间的区块链网络，而私有链 
是单个机构内部的区块链网络。私有链模式大多用于联盟链的过渡，少部分情况下在 
机构内部不同部门之间应用。
四、技术特点 
多中心化。区块链技术采用分布式架构，不依赖于单个中心设备或者管理机构。
通过数据的多中心化记录、存储和更新，将被共识的信息记录在区块中，避免了第三 
方的干预和单点依赖风险，提高了数据的安全性和完整性。 
不可篡改。
一旦信息经过共识并被添加到区块链中，所有的共识节点将存储数据 
的副本，少数节点对数据的篡改将无法通过共识，增强了链上数据的不可篡改性。 
公开透明。除了各参与方的隐私信息外，其它数据对网络的全部节点是公开透明的。 
五、技术挑战 
区块链性能：随着区块链系统中业务量的快速增长，系统延迟增加，吞吐量低等 
性能问题就会凸显。目前主流联盟链单链的性能在数千至数万笔交易每秒，尽管与中 
心化系统的最高性能仍有差距，但已可满足大多数场景的需求。对于并发量要求高的 
应用场景，区块链技术的性能有待进一步提高，需要突破高性能共识机制，拓展区块 
链技术的适用性。 
互操作性：尽管区块链技术较好的实现了链内的数据共享，但由于不同区块链间 
采用的数据结构、共识机制、加密算法等技术路线不一致，会导致链与链间的数据难 
互通、信息难交互、身份难识别。需要在跨链技术与跨链协议方面进行突破，实现链 
与链数据共享和更广范围的价值互联。 
运维管理：多方参与的区块链系统在运维管理方面将会面临巨大的挑战，例如系 
统升级、系统维护、业务规则更新等，需要多方线下沟通才能处理链上的协同治理问题。 
隐私保护：区块链的特点决定存储在区块链上的数据公开可访问，每个有权限的 
节点都可以无差别的获取数据，这使得区块链应用面临隐私问题的挑战。需要针对实 
际使用场景完善隐私保护方法，规避安全风险。 
可信和安全性：在区块链应用中，安全性威胁与可信问题不容忽视。为提高自主 
可信和安全性，应采用国密加密算法，支持可信执行环境 TEE，优先选用拥有自主知 
识产权的关键技术。
六、相关术语
6.1 区块链 Blockchain 
区块链是使用密码技术链接将共识确认过的区块链按顺序追加而形成的分布式账本。 
6.2 节点 Node 
参与到区块链网络中的计算设备，保存区块链的全部或部分账本。 
6.3 块链式数据结构 Chained-block Data Structure 
一段时间内发生的事务处理以区块为单位进行存储，并以密码学算法将区块按时间顺序连接成链 条的一种数据结构。 
6.4 分布式账本 Distributed Ledger Technology 
一种在网络成员之间共享、复制和同步的数据库或记录系统。 
6.5 共识算法 Consensus Algorithm 
区块链系统中各分布节点对事务或状态的验证、记录、修改等行为达成一致确认的方法。 
6.6 区块 Block 
区块链网络上承载永久数据记录的数据包。 
6.7 智能合约 Smart Contract 
以数字形式定义的能够自动执行条款的合约。 

七、区块链在食品安全领域的发展现状：
11月3日，第六届中国粮食与食品安全战略峰会在北京举行。国家市场监督管理总局副局长孙梅君认为，应探索“区块链+”在食品安全等领域的运用，加快建立基于大数据分析的食品安全信息平台，实施食品安全智慧监管。国务院发展研究中心副主任王一鸣提出，建议我国粮食生产应由增加产量为主转向提高质量发展为主，加快构建更高质量、更可持续的粮食安全保障体系。
　　观点1
　　建立基于大数据分析的食品安全信息平台
　　国家市场监督管理总局副局长孙梅君说，目前我国农业基础还不牢固，粮食和食品安全面临的挑战很多。从需求方看，人们饮食消费结构已经从过去满足吃饱转变为安全营养和健康。促进食品产业高质量发展，需要发挥市场机制在资源配置中的决定性作用，同时扩大优质供给。
　　孙梅君建议细化食品安全监管标准。目前我国已发布强制性食品安全标准，具体标准还需要进一步拓展和细化。同时，鼓励企业采用高于国家强制食品安全标准的企业标准，开展质量管理体系认证，建立食品安全全程控制和追溯体系。
　　孙梅君建议，要完善有利于食品供应链发展的法规制度，严格把控产地环境、粮食收储、食品加工、流通销售等质量安全关，推动从农田到餐桌食品供应链的转型升级和质量变革。
　　据介绍，2015年修订的《食品安全法》出台以后，我国相继发布了多项配套的法规和规章制度。10月31日，国务院颁布了新修订的《食品安全法实施条例》，将于12月1日起正式实施。条例进一步强化了食品安全风险的监测、标准的制定、检验检测等方面的制度性规定，明确了企业的主体责任，加大对责任人的惩罚力度。
　　伴随着食品供应链上的新技术、新工艺的广泛应用，在提供丰富多样食品的同时，也给食品安全带来诸多挑战。孙梅君认为，可探索“区块链+”在食品安全等领域的运用。区块链技术开创了食品供应链溯源的新时代，既有利于保障和改善食品安全状况，提高信息的透明度，也有利于提高溯源的效率，降低企业成本。要加快建立基于大数据分析的食品安全信息平台，推进大数据、云计算、物联网、区块链等技术在食品产业的应用，实施智慧监管。
　　此外，当今食品的生产流通消费已超越国界，任何一个环节出现问题，都会影响到整个食品产业链条的安全。各国政府、食品企业等公共、私营部门应当加强合作，建立起符合国际标准的食品质量安全管理体系。
　　观点2
　　建议全面实施国家粮食安全战略
　　国务院发展研究中心副主任王一鸣介绍，当前中国粮食安全面临新挑战。随着人口增长、城市化进程加快以及居民生活水平提高，中国粮食消费总量将继续增长。中国人均GDP去年已超9700美元，城镇化率接近60%，从先行国家特别是东亚国家发展规律看，进入这一阶段居民食物消费结构将加快升级，对动物性产品以及饲料粮消费需求将持续增长。
　　随着工业化、城镇化进程加快，势必还要占用耕地，加强生态建设也要求部分耕地退出农业生产，部分农业用水转为生态用水，耕地面积还可能减少，农业用水还可能被挤压，这也将对提高粮食供给能力形成较大约束。
　　王一鸣介绍，当前中国经济已由高速增长阶段转向高质量发展阶段，粮食生产也要由增加产量为主转向提高质量为主，加快构建更高层次、更有质量和可持续性的粮食安全保障体系。今年以猪肉价格为主的农产品价格涨幅较大，对农产品保供给、稳物价敲响了警钟，需特别重视生猪恢复生产，增加供给，提高抗风险能力。建议全面实施国家粮食安全战略，在更高层次上实现粮食供需的动态平衡。
　　具体而言，要完善粮食宏观调控机制。通过国家储备制度保持粮食市场的基本稳定，健全低收入人群补助与消费价格相挂钩的动态调整机制，保障低收入家庭的食物供给。
　　农产品供给要更注重提升品质，适应消费需求结构升级趋势，推进农业生产结构调整，增加绿色、优质和特色农产品供给，健全农产品和食品质量标准、监管、检测体系。实施优质粮食工程，提高绿色、优质、特色粮食产品供给。
　　此外，要利用好国际市场和全球资源，在互利共赢中稳定国际供给。加强与主要农业贸易伙伴国的战略合作，增强农产品贸易关系的稳定性，同时加快农业“走出去”，加强农业领域的国际产能合作，建立全球主要农产品产业链、供应链和服务链，形成稳定的国际供给渠道。（记者 黄哲程）
食品安全事关国计民生大事，李克强总理在2011年就强调了要加大食品安全的重点整治力度，重典治乱必须重拳出击。2010年成立了国务院食品安全委员会，2015年通过了《食品安全法》，之前是《食品卫生法》，2015年改成《食品安全法》，可见对国家食品安全的重视。
食品加工、流通环节多，涉及种植或养殖业、加工、流通、销售等，各个环节都存在一些安全隐患。党中央国务院把人们的身体健康放在首位，对食品安全非常重视，2010年商务部开始试点针对猪肉和蔬菜，即老百姓最关心的吃肉吃菜问题进行可追溯系统的建设。美国于2002提出了从农场到餐桌的溯源管理，强制性要求企业必须建立产品可追溯制度，欧盟早于1996年对食品加工销售环节进行可追溯体系的建设。我国商务部2011年发布了关于肉类蔬菜流通追溯体系建设试点指导意见的通知，有20个左右城市试点建设食品追溯体系。
尽管我国对食品溯源方面做了很多工作，但是现在仍然存在一些问题，杨贞耐指出：“追溯体系实施到现在有十来年左右，问题也发现了，存在区域分割的情况，缺少全国统一、覆盖全程的追溯体系，信息技术应用不充分，对进口产品管控不严，在国外来源很清楚，但是进入到我们国家之后，没有很好地纳入到我们的追溯体系中，进口产品方面还存在一些问题。信息容易缺失，初级农产品块状监管，导致溯源难。”
溯源难，主要在于缺少有效监管
#“区块链+”打造新型网络溯源平台解决方案
基于如上背景，本文提出了一种新型的网络溯源平台解决方案，通过区块链技术的去中心化、数据不可篡改等特点，实现食品溯源，追溯食品的产地，源头，轨迹，解决难监管，难溯源，难追责的问题。

#基于以太坊（Ethereum）设计一个基于区块链的产业应用系统
问题定义。在设计的第一阶段按软件工程要求给出
系统的定义：
基于区块链的食品溯源系统，可以通过以太坊实现对食品的源头进行追溯，让客户可以通过产品的唯一的标识符即二维码在区块链上查询其购买的产品的产地，加工商，运输商，存储地，店家。
进行需求分析：
地沟油，病猪肉，等一直存在于我们的生活中，不法商贩赚黑心钱，百姓很难放心买食品，尤其是2020年新冠肺炎病毒肆虐，我们迫切需要一种系统，可以跟踪食品的去向，保证每一个关卡都是层层把控，不留死角，一方面可以在出现与食物有关的受害者后立即查询食品源头；另一方面，受害者可以通过食品的信息从店家到产地一层一层维权。
设计出系统的概念模型：

生产商 生产 食品（产地的产品的种植后，水果蔬菜成熟后的采摘，圈养的肉用牲畜的成熟后的出库）-----》并在包装上贴上用领先技术生成的独一无二的二维码和商品ID，用于查询食品信息。
食品信息包括食品产地，食品种植者/养殖者，使用的肥料/饲料，食品采摘日期，甚至是水果采摘当天的员工的身体情况，最近14天到过哪里。比如：食品ID：0000xx，食品产地：中国江西南昌，食品种植者/养殖者：某单位某员工编号是0xxxxxx，使用的肥料/饲料：氮肥/当地的农家有机肥料/磷肥，食品采摘日期：2020年xx月xx日，采摘员最近14天是否接触过外来人员：否，
这些信息都会包含在一个交易里，矿工会将这个交易打包，最终，我们通过链上的不可篡改的数据来告诉消费者，我们的食品的质量，如果有谁质疑，那么这将是最好的证明。
运输商1 运输 食品 （从产地到加工工厂）-----》附加信息：运输的车辆，车辆的状态信息，车辆的行驶记录，驾驶员信息
加工商 加工 食品 (肉类加工，水果的冷加工，，，） -----》在先前的基础上， 添加信息，加工的厂家，加工的员工或机器，加工的地点，加工时间，
运输商2 运输 加工过的食品 （从加工工厂到存储仓库） -----》附加信息：运输的车辆，车辆的状态信息，车辆的行驶记录，驾驶员信息
存储仓库 存储 加工过的食品------》附加信息：存储条件，仓库管理员，管理员的身体状况，
运输商3 运输 加工过的食品 （从存储 仓库到消费者，最后一公里）-----》附加信息：运输的车辆，车辆的状态信息，车辆的行驶记录，驾驶员信息
	消费者通过扫描食品包装上的二维码，可以查询到以上的所有信息，但是需要注册会员。
业务设计：
通过调研，梳理出目前的业务运作流程，如下图：
食品种植/ 采摘/包装

------>

食品运输（从产地到加工工厂）

------>

食品加工

------>

食品运输（从加工工厂到储存仓库）

------>

食品储存

------>

食品销售

------>

食品溯源查询（通过扫描二维码）




架构设计：
1.全面解耦原则：对业务进行抽象建模，业务数据与业务逻辑解耦，软硬件解耦，平台和产品解耦，系统各部件解耦。模块、组件高内聚，低耦合。
2.服务化/组件化原则：以服务、数据为中心，构建服务化、组件化架构，具备灵活，按需组合的能力。
3.接口隔离及服务自治原则：通过接口隐藏服务/组件实现细节，服务/组件只能通过接口进行交互，接口契约化，标准化，跨版本兼容；服务/组件可独立发展、独立发布、独立升级，服务自治，可视、可管、可控、可测、可维，故障自愈。
4.弹性伸缩原则：构建全分布云化架构，或借鉴云化架构思想，每个服务具备横向扩展能力，支持按需使用，自动弹性伸缩，可动态替换、灵活部署，支撑高性能、高吞吐量、高并发、高可用业务场景。
5.安全可靠环保原则：构建最小权限，纵深防御、最小公共化、权限分离、不轻信、开放设计、完全仲裁、失效安全、保护薄弱环节、安全机制、经济性、用户接受度以及加强隐私保护的安全体系，确保系统、网络和数据的机密性、完整性、可用性、可追溯性；以业务系统零故障为导向；按需构筑分层分级的可靠性，通过故障的预流、预防、快速故障恢复、避免故障发生；系统资源使用有效最大化，实现节能、节地、节材、环保。
6.用户体验和自动化运维原则：面向业务获取和使用场景，构建实时、按需、在线、自助、社区化、方便易用的用户体验；支持远程、自动、智能、安全、高效地完成网规/网设、安装、部署、调测、验收、扩缩容、软件升级、打补丁、日常维护、问题处理。
7.开放生态原则：面向生态场景，按需开放平台设施、中间件、数据、业务逻辑、UI等能力；构建开放生态、支持分层、远程、自动、自助、简单高效地完成定制、集成、第三方应用开发。
8.高效开发原则：创建支持迭代、增量、持续交付的架构，支持部件独立开发、自动化编译构建、测试、集成验证、并易于高效修改和持续优化；支持开发组织小型化，扁平化，支持小团队独立高效并行开发。
9.柔性供应制造原则：模块化设计，模块/物料归一化、标准化，支持自动化、数字化、智能化、随需应变的柔性制造。
10.持续演进原则：架构并非一蹴而就，需要有效地管理架构需求；持续构建和发展架构，适应业务需求变化，适时引入业界最佳实践，及时重构，确保架构生命力和竞争力。



交互设计
交互设计（英文Interaction Design, 缩写IXD)，是定义、设计人造系统的行为的设计领域，它定义了两个或多个互动的个体之间交流的内容和结构，使之互相配合，共同达成某种目的。交互设计努力去创造和建立的是人与产品及服务之间有意义的关系，以“在充满社会复杂性的物质世界中嵌入信息技术”为中心。交互系统设计的目标可以从“可用性”和”用户体验“两个层面上进行分析，关注以人为本的用户需求
八、基于区块链技术的食品溯源方案：
使用ERC721智能合约，
除了使用智能合约，还有对智能合约的调用，可以通过的途径：web3j,nodejs,javascript,
九、合约代码设计：
关于智能合约实现的问题。
因此，我们希望设计我们的智能合约来解决一个或多个问题。
当然，要解决问题，我们首先必须定义问题。因此，让我们回顾一下区块链。它与其他任何环境都不一样，因为我们拥有控制添加的共识机制这样我们就可以相信区块链上的过程数据永远存在的区块可以进行进行审核。因此，我们知道，一旦添加了数据，我们就具有该数据数据的透明性和持久性。我们可以对这些数据进行操作。但是我们只能做可以做的事情，换句话说就是添加数据或获取数据，区块链中的数据受智能合约支配。因此，让我们进一步谈谈智能合约。智能合约是一种程序，可以帮助我们解决区块链上的现实问题。因此，它不仅限制了我们访问区块链的机会，而且还帮助我们解决了现实世界中的问题。不仅仅是数据。这是关于将数据和function映射到现实世界中的问题。我们将重点关注的一个示例是供应链。供应链是关于从原始生产商到生产商的跟踪和管理产品与服务。最终消费者。智能合约使我们能够实施供应链或其他某种类型的解决方案。智能合约可以阻止恶意添加。正是智能合约代码使我们可以控制区块链的构建方式。并且请记住，所有智能合约必须在所有节点上执行相同的方式，这意味着它们具有确定性。
这意味着智能合约代码的所有输出或所有结果必须在所有节点。供应链背后的想法是，产品或服务从生产者那里一直到消费者获取的路径 。很少有一个组织可以控制所有不同的组件。那么组成部分是什么。如果您从生产者开始，可以说这是一个农民，种植土豆的,农民可能会开始购买土豆，，并说，嘿，这里土豆太多了，或者不管你想买多少都可以。这只是点对点，因此，基本上，如果有人开车经过并停下来，说嘿，我想要些土豆吗，生产者直接卖给消费者。那很容易。您交换货币并获得了土豆，但是可以出售给的人却非常有限。因此，下一步可能是去农民市场。因此，您将所有玉米装入一辆大型皮卡车中，然后开往农贸市场，然后租一个摊位，你整天坐在那里，很多人来了，但你仍然点对点。
您让生产者直接与消费者交谈。因此，下一步可能是假设有人走来走去，看着所有不同的农民卖土豆，
对每个农民说：嘿，我告诉你，如果我买你的土豆呢，我将在这里创建并租用一个大摊位，然后我将为您出售土豆。那样的话。现在您有了一个中间人。当然，中间人想赚点钱。因此，中间人将从农民那里收取一点钱，提高价格
卖土豆的价格可能比农民卖土豆的价格高，因为他必须赚钱，还有可能他会给农民更少的钱，因为它更容易，不必整天坐在农贸市场。这是供应链的第一阶段。然后，随着越来越多的中间人加入，它知道今天土豆到我们消费者手上。今天我们走进一家超级市场，然后拿起土豆。嗯，土豆基本上来自仓库。然后仓库里的土豆可能是从另一个州或几个国家的另一个仓库得到的
最终从原来的农民那里得到了土豆。但是农民不知道谁去买土豆，买土豆的人也不知道谁去种的土豆
后来实际种下了变成土豆的种子。因此，供应链的想法是跟踪整个复杂的过程，并且与区块链配合得很好。因此，当您查看大型供应链时，很少有一个组织拥有所有角色，因为您有生产者，您有托运人，这些承运人将事情从一个放置到另一个。您有中间仓库，然后可以将货物交付到最终的零售店。因此，通常很少有一个组织拥有一个组织联盟，交流和交换所有有关来回运输物品的数据和信息，以及土豆的所有权从农民到承运人再到仓库	或批发商 给零售商，最后给消费者。您如何跟踪所有这些，如何进行简化或简化，以便所有这些中介机构并没有在每个级别上都提高价格，因为当您选择时，这就是事实。
ERC721的代码示例：
pragma solidity 0.6.2;

/**
 * @dev ERC-721 non-fungible token standard.
 * See https://github.com/ethereum/EIPs/blob/master/EIPS/eip-721.md.
 */
interface ERC721
{

  /**
   * @dev Emits when ownership of any NFT changes by any mechanism. This event emits when NFTs are
   * created (`from` == 0) and destroyed (`to` == 0). Exception: during contract creation, any
   * number of NFTs may be created and assigned without emitting Transfer. At the time of any
   * transfer, the approved address for that NFT (if any) is reset to none.
   */
  event Transfer(
    address indexed _from,
    address indexed _to,
    uint256 indexed _tokenId
  );

  /**
   * @dev This emits when the approved address for an NFT is changed or reaffirmed. The zero
   * address indicates there is no approved address. When a Transfer event emits, this also
   * indicates that the approved address for that NFT (if any) is reset to none.
   */
  event Approval(
    address indexed _owner,
    address indexed _approved,
    uint256 indexed _tokenId
  );

  /**
   * @dev This emits when an operator is enabled or disabled for an owner. The operator can manage
   * all NFTs of the owner.
   */
  event ApprovalForAll(
    address indexed _owner,
    address indexed _operator,
    bool _approved
  );

  /**
   * @dev Transfers the ownership of an NFT from one address to another address.
   * @notice Throws unless `msg.sender` is the current owner, an authorized operator, or the
   * approved address for this NFT. Throws if `_from` is not the current owner. Throws if `_to` is
   * the zero address. Throws if `_tokenId` is not a valid NFT. When transfer is complete, this
   * function checks if `_to` is a smart contract (code size > 0). If so, it calls
   * `onERC721Received` on `_to` and throws if the return value is not
   * `bytes4(keccak256("onERC721Received(address,uint256,bytes)"))`.
   * @param _from The current owner of the NFT.
   * @param _to The new owner.
   * @param _tokenId The NFT to transfer.
   * @param _data Additional data with no specified format, sent in call to `_to`.
   */
  function safeTransferFrom(
    address _from,
    address _to,
    uint256 _tokenId,
    bytes calldata _data
  )
    external;

  /**
   * @dev Transfers the ownership of an NFT from one address to another address.
   * @notice This works identically to the other function with an extra data parameter, except this
   * function just sets data to ""
   * @param _from The current owner of the NFT.
   * @param _to The new owner.
   * @param _tokenId The NFT to transfer.
   */
  function safeTransferFrom(
    address _from,
    address _to,
    uint256 _tokenId
  )
    external;

  /**
   * @dev Throws unless `msg.sender` is the current owner, an authorized operator, or the approved
   * address for this NFT. Throws if `_from` is not the current owner. Throws if `_to` is the zero
   * address. Throws if `_tokenId` is not a valid NFT.
   * @notice The caller is responsible to confirm that `_to` is capable of receiving NFTs or else
   * they mayb be permanently lost.
   * @param _from The current owner of the NFT.
   * @param _to The new owner.
   * @param _tokenId The NFT to transfer. There are many functions about transfer,even the same name with different count variable. 
   */
  function transferFrom(
    address _from,
    address _to,
    uint256 _tokenId
  )
    external;

  /**
   * @dev Set or reaffirm the approved address for an NFT.
   * @notice The zero address indicates there is no approved address. Throws unless `msg.sender` is
   * the current NFT owner, or an authorized operator of the current owner.
   * @param _approved The new approved NFT controller.
   * @param _tokenId The NFT to approve.
   */
  function approve(
    address _approved,
    uint256 _tokenId
  )
    external;

  /**
   * @dev Enables or disables approval for a third party ("operator") to manage all of
   * `msg.sender`'s assets. It also emits the ApprovalForAll event.
   * @notice The contract MUST allow multiple operators per owner.
   * @param _operator Address to add to the set of authorized operators.
   * @param _approved True if the operators is approved, false to revoke approval.Approval one token or approval many approval.
   */
  function setApprovalForAll(
    address _operator,
    bool _approved
  )
    external;

  /**
   * @dev Returns the number of NFTs owned by `_owner`. NFTs assigned to the zero address are
   * considered invalid, and this function throws for queries about the zero address.
   * @param _owner Address for whom to query the balance.
   * @return Balance of _owner.
   */
  function balanceOf(
    address _owner
  )
    external
    view
    returns (uint256);

  /**
   * @dev Returns the address of the owner of the NFT. NFTs assigned to zero address are considered
   * invalid, and queries about them do throw.
   * @param _tokenId The identifier for an NFT.
   * @return Address of _tokenId owner.
   */
  function ownerOf(
    uint256 _tokenId
  )
    external
    view
    returns (address);

  /**
   * @dev Get the approved address for a single NFT.
   * @notice Throws if `_tokenId` is not a valid NFT.
   * @param _tokenId The NFT to find the approved address for.
   * @return Address that _tokenId is approved for.You are the owner,may not the approved one.
   */
  function getApproved(
    uint256 _tokenId
  )
    external
    view
    returns (address);

  /**
   * @dev Returns true if `_operator` is an approved operator for `_owner`, false otherwise.
   * @param _owner The address that owns the NFTs.
   * @param _operator The address that acts on behalf of the owner.
   * @return True if approved for all, false otherwise.
   */
  function isApprovedForAll(
    address _owner,
    address _operator
  )
    external
    view
    returns (bool);

}

十、搭建环境、
十一、合约测试
与合约的交互，对合约的调用，web3j实例：

十二、可能会遇到的问题，待改进的部分、
