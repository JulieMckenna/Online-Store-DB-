create table Purchases (
Purchase_ID			INT(5) NOT NULL,
P_Customer_ID		INT(5),
P_Payment_ID		INT(5),
OrderDate			varchar(10),
primary key (Purchase_ID),
foreign key (P_Customer_ID) references Customer(Customer_ID));
--foreign key (P_Payment_ID) references Payment(Payment_ID)
);

-- in db
create table online_Purchase(
Online_Purchase_ID		INT(5) NOT NULL,
O_Purchase_ID			INT(5),
O_Ship_Tax				DECimal(4,2),
primary key (Online_Purchase_ID),
foreign key (O_Purchase_ID) references Purchases(Purchase_ID)
);

--in db
create table In_Store_Purchase(
In_Store_Purchase_ID	INT(5) NOT NULL,
IS_Purchase_ID			INT(5),
IS_Location				varchar(15),
primary key (In_Store_Purchase_ID),
foreign key (IS_Purchase_ID) REFERENCES Purchases(Purchase_ID)
);

drop table if exists Customer
-- in db
create table Customer(
Customer_ID		INT(6) NOT NULL,
Name			varchar(12),
Address			varchar(30),
City			varchar(20),
State			varchar(2),
Country			varchar(3) NOT NULL,
Zipcode			INT(5),
primary key (Customer_ID)	
);

-- in db
create table Employee(
Employee_ID		INT(4) NOT NULL,
E_Customer_ID	INT(6),
Job_Title		varchar(20),
EmpDiscount		decimal(5,2),
primary key (Employee_ID),
foreign key (E_Customer_ID) references Customer(Customer_ID)
);

-- need to add warehouses fk
create table Item(
Item_ID				INT(3) NOT NULL,
I_Warehouse_ID		INT(2),
I_Purchase_ID		INT(5),
Price				decimal(4,2),
Size				varchar(2),
Color				varchar(10),
quantity			int(3),
ItemName			varchar(20),
ItemType			varchar(20),
primary key (Item_ID),
foreign key (I_Warehouse_ID) references Warehouse(Warehouse_ID),
foreign key (I_Purchase_ID) references Purchases(Purchase_ID)
);

-- in db
create table Inventory(
Warehouse_ID	INT(2) NOT NULL,
IN_Item_ID		INT(3),
RowLoaction		INT(2),
AslileLocation	INT(2),
foreign key (IN_Item_ID) references Item(Item_ID)
);

create table Invoice(
Invoice_ID		INT(6) NOT NULL,
IV_Pruchase_ID	INT(5),
IV_Payment_ID	INT(5),
IV_Customer_ID	INT(6),
Shiptype		varchar(15),
IV_ShipCost		decimal(4,2),
IV_TaxCost		decimal(4,2),
IV_Discount		decimal(3,2),
TotalCost		decimal(6,2),
primary key (Invoice_ID),
foreign key (IV_Purchase_ID) references Purchases(Purchase_ID),
foreign key (IV_Payment_ID) references Payment(Payment_ID),
foreign key (IV_Customer_ID) references Customer(Customer_ID),
foreign key (IV_TaxCost) references TaxCost(Tax_Cost),
foreign key (IV_ShipCost) references ShipCost(Ship_Cost),
foreign key (IV_Discount) references Discount(DiscountPercent)
);

create table TaxCost(
Tax_Cost		decimal(4,2) NOT NULL,
CountryCode		INT(3),
foreign key (CountryCode) references Customer(Country)
);

-- for insert values:
-- USA = $4.00
-- MEX/CAN = $5.00
-- all other countries = $7.00

-- in bd
create table ShipCost(
Ship_Cost	decimal(4,2) NOT NULL,
Ship_Type	varchar(15),
primary key (Ship_Cost)
);

-- for insert values
-- express(1-2 days) = $15.00
-- Quick(5-7 days) = $7.00
-- Regular(10-15 days) = $3.50

-- in db
create table Discount(
Discount_ID		INT(4) NOT NULL,
DiscountPercent	decimal(5,2) NOT NULL,
primary key (Discount_ID)
);

-- in db
create table EmployeeDiscount(
ED_Discount_ID		INT(4),
ED_Employee_ID		INT(4),
ED_DiscountPercent	decimal(5,2) NOT NULL,
foreign key (ED_Discount_ID) references Discount(Discount_ID),
foreign key (ED_Employee_ID) references Employee(Employee_ID)
);

-- need to add for invoice fk
create table Payment(
Payment_ID		INT(5) NOT NULL,
PAY_Purchase_ID	INT(5),
PAY_Invoice_ID	INT(6),
BalanceOwed 	decimal(8,2),
primary key (Payment_ID),
foreign key (PAY_Purchase_ID) references Purchases(Purchase_ID),
-- foreign key (PAY_Invoice_ID) references Invoice(Invoice_ID)
);

-- in bd
create table card(
CARD_Payment_ID		INT(5),
CardNumber			INT(16),
CCV					INT(4),
ZipCode				INT(5),
ExpDate				INT(4),
AmountPaid			DECimal(8,2),
foreign key (CARD_Payment_ID) references Payment(Payment_ID)
);

-- in bd
create table cash(
CASH_Payment_ID		INT(5),
CashGiven			Decimal(8,2),
ChangeNeeded		decimal(8,2),
foreign key (CASH_Payment_ID) references Payment(Payment_ID)
);

-- in bd
create table giftcard(
GIFT_Payment_ID		INT(5),
CardNumber			INT(16),
CardRemainingBal	DECimal(8,2),
foreign key (GIFT_Payment_ID) references Payment(Payment_ID)
);
