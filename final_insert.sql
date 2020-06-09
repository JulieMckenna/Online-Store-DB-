insert into Customer(Customer_ID,Name,Address,City,State,Country,Zipcode)values(01010,"Mary Lue", "560 Huntington Ave","Boston","MA","USA", 12556);
insert into Customer(Customer_ID,Name,Address,City,State,Country,Zipcode)values(01011,"Erika Luetjen""106 forest Rd", "Westford","MA","USA", 01886);
insert into Customer(Customer_ID,Name,Address,City,State,Country,Zipcode)values(01012,"Jacob Blatt","10 meadow lane", "Westford","MA","USA", 01886);
insert into Customer(Customer_ID,Name,Address,City,State,Country,Zipcode)values(01013,"Jacob Coffee", "213 Beacon Street", "Toronto","OT","CAN",34567);
insert into Customer(Customer_ID,Name,Address,City,State,Country,Zipcode)values(01014,"Kara Solazzo","103 Beacon Hill Rd", "Lowell","MA","USA",12567);
insert into Customer(Customer_ID,Name,Address,City,State,Country,Zipcode)values(01015,"Jamie Flatt","5 Boylston St", "London","BS","OTR",23456);
insert into Customer(Customer_ID,Name,Address,City,State,Country,Zipcode)values(01016,"Juan Deagel","10 Weyland Way", "Mexico City","TA","MEX",23040);
insert into Customer(Customer_ID,Name,Address,City,State,Country,Zipcode)values(01017,"Micki Mouse", "15 Animation Place","Orlando","FL","USA",12397);
insert into Customer(Customer_ID,Name,Address,City,State,Country,Zipcode)values(01018,"Walter Brown", "75 Walt Ave","Boston","MA","USA",12556);
insert into Customer(Customer_ID,Name,Address,City,State,Country,Zipcode)values(01019,"David Backes", "34 Goal lane","Boston","MA","USA",12556);


insert into Employee(Employee_ID,E_Customer_ID,Job_Title,EmpDiscount)values(0532,01010,"Delivery Driver",10.00);
insert into Employee(Employee_ID,E_Customer_ID,Job_Title,EmpDiscount)values(0213,01016,"Store Manager",35.00);
insert into Employee(Employee_ID,E_Customer_ID,Job_Title,EmpDiscount)values(0001,01014,"CEO",90.00);
insert into Employee(Employee_ID,E_Customer_ID,Job_Title,EmpDiscount)values(0678,01018,"CFO",90.00);

insert into Purchases (Purchase_ID,P_Customer_ID,P_Payment_ID,OrderDate)values(00001,01010,10000,"1/15/2020");
insert into Purchases (Purchase_ID,P_Customer_ID,P_Payment_ID,OrderDate)values(00002,01011,20000,"1/20/2020");
insert into Purchases (Purchase_ID,P_Customer_ID,P_Payment_ID,OrderDate)values(00003,01012,30000,"2/5/2020");
insert into Purchases (Purchase_ID,P_Customer_ID,P_Payment_ID,OrderDate)values(00004,01013,40000,"2/11/2020");
insert into Purchases (Purchase_ID,P_Customer_ID,P_Payment_ID,OrderDate)values(00005,01014,50000,"2/13/2020");
insert into Purchases (Purchase_ID,P_Customer_ID,P_Payment_ID,OrderDate)values(00006,01015,60000,"2/13/2020");
insert into Purchases (Purchase_ID,P_Customer_ID,P_Payment_ID,OrderDate)values(00007,01016,70000,"2/19/2020");
insert into Purchases (Purchase_ID,P_Customer_ID,P_Payment_ID,OrderDate)values(00008,01017,80000,"2/23/2020");
insert into Purchases (Purchase_ID,P_Customer_ID,P_Payment_ID,OrderDate)values(00009,01018,90000,"3/1/2020");
insert into Purchases (Purchase_ID,P_Customer_ID,P_Payment_ID,OrderDate)values(00010,01019,10001,"3/7/2020");

insert into online_Purchase(Online_Purchase_ID,O_Purchase_ID,O_Ship_Tax)values(12000,00001,2.50);
insert into online_Purchase(Online_Purchase_ID,O_Purchase_ID,O_Ship_Tax)values(12001,00003,4.50);
insert into online_Purchase(Online_Purchase_ID,O_Purchase_ID,O_Ship_Tax)values(12002,00006,4.50);
insert into online_Purchase(Online_Purchase_ID,O_Purchase_ID,O_Ship_Tax)values(12003,00007,2.50);
insert into online_Purchase(Online_Purchase_ID,O_Purchase_ID,O_Ship_Tax)values(12004,00009,2.50);

insert into In_Store_Purchase(In_Store_Purchase_ID,IS_Purchase_ID,IS_Location)values(11000,00002,"Boston store");
insert into In_Store_Purchase(In_Store_Purchase_ID,IS_Purchase_ID,IS_Location)values(11001,00004,"Lowell store");
insert into In_Store_Purchase(In_Store_Purchase_ID,IS_Purchase_ID,IS_Location)values(11002,00005,"London store");
insert into In_Store_Purchase(In_Store_Purchase_ID,IS_Purchase_ID,IS_Location)values(11003,00008,"Boston store");
insert into In_Store_Purchase(In_Store_Purchase_ID,IS_Purchase_ID,IS_Location)values(11004,00010,"Boston store");

insert into Item(Item_ID,I_Warehouse_ID,I_Purchase_ID,Price,Size,Color,quantity)values(023,01,00001,20.00,"SM","Red",50);
insert into Item(Item_ID,I_Warehouse_ID,I_Purchase_ID,Price,Size,Color,quantity)values(001,91,00002,50.00,"LG","Black",100);
insert into Item(Item_ID,I_Warehouse_ID,I_Purchase_ID,Price,Size,Color,quantity)values(125,15,00003,35.75,"MD,"Blue",73);
insert into Item(Item_ID,I_Warehouse_ID,I_Purchase_ID,Price,Size,Color,quantity)values(875,2,00004,15.25,"SM","Black",3);
insert into Item(Item_ID,I_Warehouse_ID,I_Purchase_ID,Price,Size,Color,quantity)values(573,15,00005,20.00,"LG","Orange",5);
insert into Item(Item_ID,I_Warehouse_ID,I_Purchase_ID,Price,Size,Color,quantity)values(232,30,00006,100.00,"XL","Green",1);
insert into Item(Item_ID,I_Warehouse_ID,I_Purchase_ID,Price,Size,Color,quantity)values(912,5,00007,5.00,"SM","Red",200);
insert into Item(Item_ID,I_Warehouse_ID,I_Purchase_ID,Price,Size,Color,quantity)values(476,2,00008,150.00,"XL","White",5);
insert into Item(Item_ID,I_Warehouse_ID,I_Purchase_ID,Price,Size,Color,quantity)values(345,5,00009,135.25,"MD","Blue",225);
insert into Item(Item_ID,I_Warehouse_ID,I_Purchase_ID,Price,Size,Color,quantity)values(158,5,00010,102.50,"SM","Green",7);

insert into Discount(Discount_ID,DiscountPercent)values(0000,000.00);
insert into Discount(Discount_ID,DiscountPercent)values(0001,10.00);
insert into Discount(Discount_ID,DiscountPercent)values(0002,35.00);
insert into Discount(Discount_ID,DiscountPercent)values(0003,90.00);
insert into Discount(Discount_ID,DiscountPercent)values(0004,90.00);
insert into Discount(Discount_ID,DiscountPercent)values(0005,20.00);
insert into Discount(Discount_ID,DiscountPercent)values(0006,15.00);

insert into EmployeeDiscount(ED_Discount_ID,ED_Employee_ID,ED_DiscountPercent)values(0001,0532,10.00);
insert into EmployeeDiscount(ED_Discount_ID,ED_Employee_ID,ED_DiscountPercent)values(0002,0213,35.00);
insert into EmployeeDiscount(ED_Discount_ID,ED_Employee_ID,ED_DiscountPercent)values(0003,0001,90.00);
insert into EmployeeDiscount(ED_Discount_ID,ED_Employee_ID,ED_DiscountPercent)values(0004,0678,90.00);

insert into Payment(Payment_ID,PAY_Purchase_ID,PAY_Invoice_ID,BalanceOwed)values(10000,00001,100000,35.10);
insert into Payment(Payment_ID,PAY_Purchase_ID,PAY_Invoice_ID,BalanceOwed)values(20000,00002,200000,54.00);
insert into Payment(Payment_ID,PAY_Purchase_ID,PAY_Invoice_ID,BalanceOwed)values(30000,00003,300000,46.75);
insert into Payment(Payment_ID,PAY_Purchase_ID,PAY_Invoice_ID,BalanceOwed)values(40000,00004,400000,20.25);
insert into Payment(Payment_ID,PAY_Purchase_ID,PAY_Invoice_ID,BalanceOwed)values(50000,00005,500000,15.60);
insert into Payment(Payment_ID,PAY_Purchase_ID,PAY_Invoice_ID,BalanceOwed)values(60000,00006,600000,110.50);
insert into Payment(Payment_ID,PAY_Purchase_ID,PAY_Invoice_ID,BalanceOwed)values(70000,00007,700000,1.35);
insert into Payment(Payment_ID,PAY_Purchase_ID,PAY_Invoice_ID,BalanceOwed)values(80000,00008,800000,154.00);
insert into Payment(Payment_ID,PAY_Purchase_ID,PAY_Invoice_ID,BalanceOwed)values(90000,00009,900000,32.50);
insert into Payment(Payment_ID,PAY_Purchase_ID,PAY_Invoice_ID,BalanceOwed)values(10001,00010,100001,106.50);

insert into card(CARD_Payment_ID,CardNumber,CCV,ZipCode,ExpDate,AmountPaid)values(10000,5349317934891580,261,12556,0222,15.10);
insert into card(CARD_Payment_ID,CardNumber,CCV,ZipCode,ExpDate,AmountPaid)values(20000,9275225067786440,621,01886,0325,54.00);
insert into card(CARD_Payment_ID,CardNumber,CCV,ZipCode,ExpDate,AmountPaid)values(30000,8051125267544857,235,01886,1226,46.75);
insert into card(CARD_Payment_ID,CardNumber,CCV,ZipCode,ExpDate,AmountPaid)values(50000,2190447222336850,041,12567,0123,5.60);
insert into card(CARD_Payment_ID,CardNumber,CCV,ZipCode,ExpDate,AmountPaid)values(60000,5256470875561284,416,23456,0523,110.50);
insert into card(CARD_Payment_ID,CardNumber,CCV,ZipCode,ExpDate,AmountPaid)values(70000,9793841121420860,809,23040,0721,1.35);
insert into card(CARD_Payment_ID,CardNumber,CCV,ZipCode,ExpDate,AmountPaid)values(80000,9853872256317664,840,12397,1024,154.00);
insert into card(CARD_Payment_ID,CardNumber,CCV,ZipCode,ExpDate,AmountPaid)values(90000,1379945537473403,924,12556,0822,32.50);

insert into cash(CASH_Payment_ID,CashGiven,ChangeNeeded)values(40000,21,00.75);
insert into cash(CASH_Payment_ID,CashGiven,ChangeNeeded)values(10001,100.00,0.00);

insert into giftcard(GIFT_Payment_ID,CardNumber,CardRemainingBal)values(10000,0525603989457149,00.00);
insert into giftcard(GIFT_Payment_ID,CardNumber,CardRemainingBal)values(50000,5557793066181453,00.00);
insert into giftcard(GIFT_Payment_ID,CardNumber,CardRemainingBal)values(10001,4870778146885344,0.50);

insert into TaxCost(Tax_Cost,CountryCode)values(4.00,"USA");
insert into TaxCost(Tax_Cost,CountryCode)values(5.00,"MEX");
insert into TaxCost(Tax_Cost,CountryCode)values(5.00,"CAN");
insert into TaxCost(Tax_Cost,CountryCode)values(7.00,"OTR");

insert into ShipCost(Ship_Cost,Ship_Type)values(15.00,"express");
insert into ShipCost(Ship_Cost,Ship_Type)values(7.00,"Quick");
insert into ShipCost(Ship_Cost,Ship_Type)values(3.50,"Regular");
insert into ShipCost(Ship_Cost,Ship_Type)values(0.00,"Instore");

insert into Invoice(Invoice_ID,IV_Purchase_ID,IV_Payment_ID,IV_Customer_ID,Shiptype,IV_ShipCost,IV_TaxCost,IV_Discount,TotalCost)values(100000,00001,10000,01010,"express",15.00,4.00,10.00,35.10);
insert into Invoice(Invoice_ID,IV_Purchase_ID,IV_Payment_ID,IV_Customer_ID,Shiptype,IV_ShipCost,IV_TaxCost,IV_Discount,TotalCost)values(200000,00002,20000,01011,"Instore",0.00,4.00,000.00,54.00);
insert into Invoice(Invoice_ID,IV_Purchase_ID,IV_Payment_ID,IV_Customer_ID,Shiptype,IV_ShipCost,IV_TaxCost,IV_Discount,TotalCost)values(300000,00003,30000,01012,"Quick",7.00,4.00,000.00,46.75);
insert into Invoice(Invoice_ID,IV_Purchase_ID,IV_Payment_ID,IV_Customer_ID,Shiptype,IV_ShipCost,IV_TaxCost,IV_Discount,TotalCost)values(400000,00004,40000,01013,"Instore",0.00,5.00,000.00,20.25);
insert into Invoice(Invoice_ID,IV_Purchase_ID,IV_Payment_ID,IV_Customer_ID,Shiptype,IV_ShipCost,IV_TaxCost,IV_Discount,TotalCost)values(500000,00005,50000,01014,"Instore",0.00,4.00,35.00,15.60);
insert into Invoice(Invoice_ID,IV_Purchase_ID,IV_Payment_ID,IV_Customer_ID,Shiptype,IV_ShipCost,IV_TaxCost,IV_Discount,TotalCost)values(600000,00006,60000,01015,"Regular",3.50,7.00,000.00,110.50);
insert into Invoice(Invoice_ID,IV_Purchase_ID,IV_Payment_ID,IV_Customer_ID,Shiptype,IV_ShipCost,IV_TaxCost,IV_Discount,TotalCost)values(700000,00007,70000,01016,"Regular",3.50,5.00,90.00,1.35);
insert into Invoice(Invoice_ID,IV_Purchase_ID,IV_Payment_ID,IV_Customer_ID,Shiptype,IV_ShipCost,IV_TaxCost,IV_Discount,TotalCost)values(800000,00008,80000,01017,"Instore",0.00,4.00,000.00,154.00);
insert into Invoice(Invoice_ID,IV_Purchase_ID,IV_Payment_ID,IV_Customer_ID,Shiptype,IV_ShipCost,IV_TaxCost,IV_Discount,TotalCost)values(900000,00009,90000,01018,"Express",15.00,4.00,90.00,32.50);
insert into Invoice(Invoice_ID,IV_Purchase_ID,IV_Payment_ID,IV_Customer_ID,Shiptype,IV_ShipCost,IV_TaxCost,IV_Discount,TotalCost)values(100001,00010,10001,01019,"Instore",0.00,4.00,000.00,106.50);