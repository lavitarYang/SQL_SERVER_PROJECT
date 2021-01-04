--create database FRAME
use FRAME



/*
drop table  if exists CAREER 
create table CAREER(
	CareerID int not null identity(1,1),
	constraint PK_CAREER primary key(CareerID),
	CareerName varchar(255) not null,
	Attribute varchar(255) not null,
	WorkInfo varchar(255) null
);
drop table if exists INDICATOR
create table INDICATOR(
	AttributeID int not null IDENTITY(1,1),
	constraint PK_INDICATOR primary key(AttributeID),
	Attribute varchar(25) not null,
	Advence varchar(255) not null,
	Possibility varchar(255) not null
);
drop table if exists RELATIVE_SUBJECT
create table RELATIVE_SUBJECT(
	SqenID int not null identity(1,1),
	constraint PK_RELATIVE_SUBJECT primary key(SqenID), 
	SubjectName varchar(255) not null 
);
drop table if exists USERINFO
create table USERINFO(
	UserID int not null identity(1,1),
	constraint PK_USERINFO primary key(UserID),
	UserName varchar(255) not null,
	Email varchar(255) null,
	Age int null,
	SubjectName varchar(255) null
);
drop table if exists HISTORY
create table HISTORY(
	UserID int not null,
	constraint FK_USERINFO_H foreign key(UserID) references USERINFO(UserID) 
	on update cascade on delete cascade,
	CareerID int not null,
	constraint FK_CAREER_H foreign key(CareerID) references CAREER(CareerID)
	on update cascade on delete cascade,
	Record int not null ,
	constraint UC_HISTORY unique(UserID,Record,CareerID),
	constraint PK_HISTORY primary key(UserID,Record,CareerID) 
);
*/

/*
	--職業表單:插入資料行
	insert into CAREER values('神職人員','Soclal','負責宗教活動與儀式，提供信仰、精神和活動等方面的輔導')
insert into CAREER values('家教','Soclal','在正規學校學習外，為學生提供格外學業指導')
insert into CAREER values('補習班老師','Soclal','在正規學校學習外，為學生提供格外學業指導')
insert into CAREER values('教授','Soclal','從事學術研究，在大專院校進行研究與教學工作')
insert into CAREER values('諮商與臨床心理師','Soclal','評估個人心理與情緒問題，實施療程或提供諮商，協助個案面對問題')
insert into CAREER values('運動教練','Soclal','指導個人或團體關於運動的知識和方法，增進其運動表現')
insert into CAREER values('看護','Soclal','在機構或家中，協助高齡者或身心障人士的日常活動，包含食衣住行等層面')
insert into CAREER values('物理與職能治療師','Soclal','規劃病人、傷者或身心障礙人士的療程，協助改善或恢復獨立生活能力')
insert into CAREER values('護理師','Soclal','評估病人的健康問題，提供護理建議與服務，管理並照顧病人')
insert into CAREER values('導遊','Soclal','帶領團隊介紹觀光景點、風景名勝，或魚博物館、畫廊進行導覽')
insert into CAREER values('服務生','Soclal','負責接待顧客、安排帶位、協助點餐介紹菜色、端送食物等工作')
insert into CAREER values('國中老師','Soclal','在學校教導國中學生知識與課程可能教多個科目或帶領班級')
insert into CAREER values('高中老師','Soclal','在學校教導高中學生知識與課程可能教多個科目或帶領班級')
insert into CAREER values('幼教老師','Soclal','負責教導幼兒知識或課程，促進孩子的身心與社會發展')
insert into CAREER values('社工師','Soclal','協助個案適應與融入社會，包含家庭、社區、醫療機構、司法單位等場域')
insert into CAREER values('採購','Conventional','購買企業所需的物品或服務。採購原物料、設備或工具等，以利生產')
insert into CAREER values('公務員','Conventional','在公家單位服務，處裡行政、公文流程、民眾服務')
insert into CAREER values('金融投資分析師','Conventional','收集市場資訊進行分析，研判趨勢並引導投資者進行投資')
insert into CAREER values('會計師','Conventional','分析企業財務現況，編製各種報表，包含資產負債、利潤虧損等項目')
insert into CAREER values('精算師','Conventional','分析人口統計資料，進行風險預測、預估資金流動、計算保險費率等')
insert into CAREER values('資訊安全人員','Conventional','保護網路、資訊等重要的電子設備；處理電腦安全漏洞和病毒')
insert into CAREER values('資料與檔案管理員','Conventional','保存、維護並管理資料、文件、檔案及相關系統，包含數位內容或實際物品')
insert into CAREER values('行政人員','Conventional','處理辦公室行政，可能包含接聽電話、設備操作、文件處理')
insert into CAREER values('網站開發人員','Conventional','分析使用者需求，設計網站內容，包含文字、圖型、影像等')
insert into CAREER values('平面設計師','Artistic','按照客戶需求，以各種材料設計圖案，於銷售或宣傳時使用')
insert into CAREER values('多媒體設計師','Artistic','利用電腦、影片等多媒體素材，創作動畫、電影、特效、廣告等')
insert into CAREER values('室內設計師','Artistic','設計室內空間，包含商業大樓、工業建築、住宅等，兼顧美學和功能性')
insert into CAREER values('建築師','Artistic','設計並規劃開發案件，如交通設施、都市規劃、遊樂設施、住宅區等')
insert into CAREER values('音樂家','Artistic','在舞台、節目、電影或錄音作品中，演奏樂器或演唱、伴唱')
insert into CAREER values('商業設計師','Artistic','按照需求規格，設計兼具美感和功能的產品，如家電用品、手機等')
insert into CAREER values('工業設計師','Artistic','按照需求規格，設計兼具美感和功能的產品，如家電用品、手機等')
insert into CAREER values('流行服飾設計師','Artistic','掌握時尚趨勢，設計服飾和配件。可能包含使用不同色彩與材質的創新')
insert into CAREER values('記者','Artistic','收集與分析有報導價值的事件，並為報章雜誌、廣播電室進行報導')
insert into CAREER values('特派員','Artistic','收集與分析有報導價值的事件，並為報章雜誌、廣播電室進行報導')
insert into CAREER values('演員','Artistic','在舞台、節目電影演出，透過聲音、肢體動作或歌曲五導來呈現角色')
insert into CAREER values('廣電主播','Artistic','在廣播主持與談話。如訪問、介紹來賓、主持典禮、播報新聞等')
insert into CAREER values('主持人','Artistic','在電視中主持與談話。如訪問、介紹來賓、主持典禮、播報新聞等')
insert into CAREER values('造型設計師','Artistic','指導整體造型搭配，包含美容、上妝、髮型設計、服飾穿搭等')
insert into CAREER values('舞者','Artistic','演出各種類型五導，包含古典、流行等風格。可能需要唱歌或演戲')
insert into CAREER values('藝術總監','Artistic','設計整體藝術呈現的理念，指導工作團隊的表演和呈現，並規劃行銷包裝')
insert into CAREER values('編輯','Artistic','在各種素材出版前，進行後製與審核，包含文字、圖像、多媒體等')
insert into CAREER values('藝術家','Artistic','運用各種素材技巧創作藝術品，如畫家、雕刻家和插畫家等')
insert into CAREER values('遊戲設計師','Artistic','設計遊戲，可能包含遊戲玩法、故事劇本、人物設定等')
insert into CAREER values('口譯','Artistic','翻譯文字資料與口語內容給其他語言族群，包含筆譯、口譯、手語翻譯等')
insert into CAREER values('景觀設計師','Artistic','景觀設計，包含造景、建築、庭園、花草等，可能需要栽種、修剪、施肥')
insert into CAREER values('園藝設計師','Artistic','景觀設計，包含造景、建築、庭園、花草等，可能需要栽種、修剪、施肥')
insert into CAREER values('攝影師','Artistic','拍攝影片或影像，主題包含人文、商品、景觀等，可能包含印刷品製作')
insert into CAREER values('詩人','Artistic','創作文學作品，包含文章、詩作、歌詞、劇本等內容')
insert into CAREER values('作家','Artistic','創作文學作品，包含文章、詩作、歌詞、劇本等內容')
insert into CAREER values('保全','Realistic','巡查或守衛社區、房產或銀行等各種場所，防止偷盜、搶劫等違法行為')
insert into CAREER values('警察','Realistic','負責執法、維護公共安全、保障人民生命財產、防制犯罪、逮捕犯人')
insert into CAREER values('廚師','Realistic','準備食材、料理肉類、湯品、菜餚、甜點等。可能需要負責採購、研發菜色。')
insert into CAREER values('動物飼養員','Realistic','飼養動物、包含畜牧或寵物等。需要紀錄資料。')
insert into CAREER values('運動員','Realistic','參與各項運動比賽，取得榮譽。')
insert into CAREER values('產品維修人員','Realistic','修理電子或機械設備，包含電腦、通訊設備、各類運輸工具等。')
insert into CAREER values('土木工程師','Realistic','規劃、設計、監督、維護工程建築設施，包含道路、橋梁、港口、電廠等。')
insert into CAREER values('農業與食品技術員','Realistic','研發、改良、和生產農業產品或食物；也可能從事動物研究、飼育和疾病預防。')
insert into CAREER values('地理與航照測繪員','Realistic','收集、分析和說明地理資訊。可能包含設計和規劃地理資訊系統。')
insert into CAREER values('機長','Realistic','負責駕駛飛機運輸乘客或貨物，需要長時間訓練和相對應的執照。')
insert into CAREER values('禮儀師','Enterprising','指導葬禮儀式，包含現場人員管理、場地布置、交通規劃、舉行儀式等。')
insert into CAREER values('軍官','Enterprising','由國家授權，負責管理軍隊的官員，擔任領導或是幕僚工作。')
insert into CAREER values('咖啡師','Enterprising','萃取咖啡提供給顧客，可能也要進行拉花、研發新的咖啡品項。')
insert into CAREER values('法官','Enterprising','司法機關人員，在法庭中裁決或執行審判。包含民刑事判決、結婚見證等')
insert into CAREER values('業務人員','Enterprising','需熟悉公司產品並負責銷售，可能需陌生開發、簽約報價、提供顧客服務')
insert into CAREER values('專櫃人員','Enterprising','在商店中進行銷售，販賣食衣住行育樂等用品。')
insert into CAREER values('客服人員','Enterprising','回應並處理顧客所提出的問題。')
insert into CAREER values('數位行銷','Enterprising','於網路進行商業活動，規劃營運策略、販售商品服務、處理網路訂單等。')
insert into CAREER values('人力資源專員','Enterprising','從事企業的人力資源相關工作，包括招募、教育訓練、薪酬等層面。')
insert into CAREER values('總經理','Enterprising','指導公司運作，包含營運政策、日常管理、規劃財務及人力使用。')
insert into CAREER values('律師','Enterprising','受委託或指定，在法律程序中，協助當事人進行訴訟、辯護或其他事項。')
insert into CAREER values('公關','Enterprising','運用各種宣傳素材、廣告媒體和公開活動，進行提升個人或組織形象。')
insert into CAREER values('領航員','Enterprising','指揮或監督船隻航行，包含進出港口、河流和海洋等。')
insert into CAREER values('議員/立法委員','Enterprising','由人民選出，議決重大案件、制定或修改法律條文。')
insert into CAREER values('網站行銷策畫','Enterprising','研究搜尋引擎的收錄規則、研究使用者行為，增加網路曝光程度。')
insert into CAREER values('企業管理','Enterprising','參與企業管理與決策過程，提出未來發展建議或現況改善方案。')
insert into CAREER values('空服員','Enterprising','提供旅客服務，讓乘客感到安全舒適。包含接待、設備使用說明、提供飲食。')
insert into CAREER values('導演','Enterprising','詮釋劇情、電影或節目劇本。指導演員演出和舞台呈現。')
insert into CAREER values('專案管理師','Enterprising','負責專案計畫的控管和執行，需掌握溝通、時間、成本等知識與能力。')
insert into CAREER values('按摩師/美容師','Enterprising','為顧客提供臉部和身體保養或按摩療程，藉此恢復活力或增加美觀。')
insert into CAREER values('保險經紀人','Enterprising','販賣各利保險，如:儲蓄險、壽險、意外險等。可能獨立工作或隸屬於公司。')
insert into CAREER values('廣告文案','Enterprising','為產品或公司撰寫宣傳文案，於各種媒體與廣告中使用。')
insert into CAREER values('不動產經紀人','Enterprising','指導或整合不動產的買賣交易、租賃、代銷等事務。')
insert into CAREER values('電腦硬體工程師','Investigativ','研究、設計、開發與測試電腦軟體設備，或是監測製造與安裝過程。')
insert into CAREER values('水土保育人員','Investigativ','規劃合理使用土地的方法，包含水土保持、控制土壤侵蝕等。')
insert into CAREER values('牙醫師','Investigativ','診斷、治療跟牙齒和口腔相關的疾病和受損。')
insert into CAREER values('機電工程師','Investigativ','運用機械、電子與電腦工程原理，設計自動化或智慧型的系統與產品。')
insert into CAREER values('人因工程師','Investigativ','根據人類行為，設計設備工具或工作環境，讓人與系統互動發揮更大效益。')
insert into CAREER values('生化工程師','Investigativ','以生命科學與化學知識、技術開發產品，解決人、動植物、微生物相關問題。')
insert into CAREER values('電機工程師','Investigativ','開發、監測電機設備或電機系統的製造和安裝')
insert into CAREER values('獸醫','Investigativ','針對有疾病的動物進行診斷與治療。也可能從事研發、諮詢、銷售等。')
insert into CAREER values('藥師','Investigativ','根據醫師的處方?進行檢核，並提供所需之藥物。')
insert into CAREER values('生命科學家','Investigativ','研究各種生命知識，包含起源、發展、結構和功能等。')
insert into CAREER values('光電工程師','Investigativ','運用工程與數學原理，研發光能利用的技術。')
insert into CAREER values('市場調查人員','Investigativ','調查並研究市場現況與未來趨勢，提供行銷決策時所必須的資料。')
insert into CAREER values('大氣科學家','Investigativ','研究氣象並解釋衛星、雷達和氣象預報等資料。')
insert into CAREER values('化工工程師','Investigativ','設計化工廠的製造流程及開發化工產品，如化妝品、塑膠、水泥等。')
insert into CAREER values('機械工程師','Investigativ','規劃和設計工具、引擎、機器等裝備，也會負責安裝、操作、維修等工作。')
insert into CAREER values('營養師','Investigativ','規劃食品與營養計畫。協助改善健康或控制疾病，也可能進行監督或諮詢。')
insert into CAREER values('商業智慧分析師','Investigativ','透過資料分析工具，研就過去企業資料，整理成報表輔佐決策。')
insert into CAREER values('數據分析師','Investigativ','收集並分析大量數據，依此歸納與預測未來趨勢、評估與訂定決測。')
insert into CAREER values('網管人員','Investigativ','負責維繫企業的網路環境，進行維護與檢測，確保網路環境順暢運作。')
insert into CAREER values('人類學家','Investigativ','研究人類的行為、社會變遷、組織架構、語言和文化等。')
insert into CAREER values('程式設計師','Investigativ','分析、編寫、修改、測試程式碼，開發電腦應用程式。')
insert into CAREER values('航太工程師','Investigativ','進行專安，設計、開發和測試飛機、飛彈和太空船等設備。')
insert into CAREER values('材料工程師','Investigativ','評估材料和製成，製造符合產品設計與規格的材料，如金屬、塑膠、陶瓷等。')
insert into CAREER values('環工工程師','Investigativ','設計、規劃或執行與環境衛生相關的工程，如廢棄物處理等。')
insert into CAREER values('醫師','Investigativ','診斷、治療與協助預防各種疾病和傷害。')
	--學群表單:插入資料行
insert into RELATIVE_SUBJECT values ('地球與環境學群');
insert into RELATIVE_SUBJECT values ('工程學群');
insert into RELATIVE_SUBJECT values ('數理化學群');
insert into RELATIVE_SUBJECT values ('資訊學群');
insert into RELATIVE_SUBJECT values ('社會與心理學群');
insert into RELATIVE_SUBJECT values ('管理學群');
insert into RELATIVE_SUBJECT values ('醫藥衛生學群');
insert into RELATIVE_SUBJECT values ('生命科學學群');
insert into RELATIVE_SUBJECT values ('財經學群');
insert into RELATIVE_SUBJECT values ('生物資源學群');
insert into RELATIVE_SUBJECT values ('法政學群');
insert into RELATIVE_SUBJECT values ('文史哲學群');
insert into RELATIVE_SUBJECT values ('大眾傳播學群');
insert into RELATIVE_SUBJECT values ('遊憩與運動學群');
insert into RELATIVE_SUBJECT values ('無特定學群');
insert into RELATIVE_SUBJECT values ('藝術學群');
insert into RELATIVE_SUBJECT values ('外語學群');
insert into RELATIVE_SUBJECT values ('建築與設計學群');
insert into RELATIVE_SUBJECT values ('教育學群');
*/
/*--指標表單:插入資料行
insert into INDICATOR values ('Social','協調人際活動;發現與解決他人問題;優秀的人際與情緒管理能力','教育、社工心理、醫護與宗教等領域')
insert into INDICATOR values ('Conventional','善於融數字運算;資訊處理、組織、規劃與統整;文書、行政方面具備精確的處裡技巧','財務金融、特助秘書、會計、行政等領域')
insert into INDICATOR values ('Artistic','運用想像力與創造力產生靈感;做事創新、彈性而靈活;善於設計與創造，具有文藝天賦','藝術、設計等領域')
insert into INDICATOR values ('Realistic','機械與設備操作，對工具運用、設備操作、廚藝手工與飼養動物有天賦','機械電子、農林漁牧、運動或建築工藝領域')
insert into INDICATOR values ('Enterprising','能找出商業或獲利機會;適合管理與監督工作;具有銷售與說服技巧的潛力','企業領導、行銷企劃、法律政治等領域')
insert into INDICATOR values ('Investigativ','理解、解決科學或數學問題;研究分析與解釋資料、構想與理論;抽象思考','理工生醫或人文科學領域')
*/

/*--this has no use anymore
drop table if exists INTERMEDIARY_HISTORY
create table INTERMEDIARY_HISTORY(
	UserID int not null,
	Record int not null,
	constraint PIH foreign key(UserID,Record) references HISTORY(UserID,Record),
	primary key(UserID,Record),
	CareerID int not null foreign key references CAREER(CareerID)
);


drop table if exists INTERMEDIARY_CAREER_SUBJECT
create table INTERMEDIARY_CAREER_SUBJECT(
	CareerID int not null,
	constraint FK_CAREER_CS foreign key(CareerID) references CAREER(CareerID) 
	on update cascade on delete cascade,
	SqenID int not null,
	constraint FK_RELATIVE_SUBJECT foreign key(SqenID) references RELATIVE_SUBJECT(SqenID)
	on update cascade on delete cascade,
	constraint UC_INTER_CS unique(CareerID,SqenID),
	constraint PK_INTER_CS primary key(CareerID,SqenID)
);
drop table if exists INTERMEDIARY_CAREER_INDICATOR
create table INTERMEDIARY_CAREER_INDICATOR(
	CareerID int not null,
	constraint FK_CAREER_CI foreign key(CareerID) references CAREER(CareerID) 
	on update cascade on delete cascade ,
	AttributeID int not null,
	constraint FK_INDICATOR_CI foreign key(AttributeID) references INDICATOR(AttributeID) 
	on update cascade on delete cascade,
	constraint UC_INTER_CI unique(CareerID,AttributeID),
	constraint PK_INTER_CI primary key(CareerID,AttributeID)
);

*/

/*
select *
from RELATIVE_SUBJECT
select *
from CAREER
*/

