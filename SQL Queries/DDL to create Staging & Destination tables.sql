CREATE TABLE [HealthInsuranceDispersion_Stage] (
    [State] varchar(255),
    [Coverage_Type] varchar(255),
    [Total_People] varchar(255),
    [Age_Group] varchar(255),
    [Year] varchar(255)
)


CREATE TABLE [Income_Stage] (
    [State] varchar(255),
    [Personal_Income] varchar(255),
    [PerCapital_Income] varchar(255),
    [RegionalPriceParity] varchar(255),
    [Year ] varchar(255)
)

CREATE TABLE [Medicare_Stage] (
    [State] varchar(255),
    [Age_Group] varchar(255),
    [Gender] varchar(255),
    [Race] varchar(255),
    [Total_Cost] varchar(255),
    [IP_Cost] varchar(255),
    [OP_Cost] varchar(255),
    [PrescribedDrugs] varchar(255),
    [HospiceBenefits] varchar(255),
    [FederallyQualifiedHealthCenter] varchar(255),
    [RehabilativeServices] varchar(255),
    [HomeHealthServices] varchar(255),
    [Year] varchar(255)
)


CREATE TABLE [Poverty_Stage] (
    [State] varchar(255),
    [Age_Group] varchar(255),
    [Gender] varchar(255),
    [Race] varchar(255),
    [Poverty_Rate] varchar(255),
    [Year] varchar(255),
)

CREATE TABLE [Audit_Table]
(  [Sequence] Int IDENTITY(1,1),  
[File_Loaded] Varchar(100) NULL,  
[Row_Count] Varchar(10) NULL,  
[Load_Date] Datetime NULL,  
[Action] Varchar(50) NULL ) 
go



CREATE TABLE [HealthInsuranceDispersion_Archive](
    [State] varchar(255),
    [Coverage_Type] varchar(255),
    [Total_People] int,
    [Age_Group] varchar(255),
    [Year] varchar(4)
)



CREATE TABLE [Income_Archive] (
    [State] varchar(255),
    [Personal_Income] float,
    [PerCapital_Income] float,
    [RegionalPriceParity] float,
    [Year ] varchar(4)
)


CREATE TABLE [Medicare_Archive] (
    [State] varchar(255),
    [Age_Group] varchar(255),
    [Gender] varchar(255),
    [Race] varchar(255),
    [Total_Cost] float,
    [IP_Cost] float,
    [OP_Cost] float,
    [PrescribedDrugs] float,
    [HospiceBenefits] float,
    [FederallyQualifiedHealthCenter] float,
    [RehabilativeServices] float,
    [HomeHealthServices] float,
    [Year] varchar(4)
)


CREATE TABLE [Medicaid_Archive] (
    [State] varchar(255),
    [Age_Group] varchar(255),
    [Gender] varchar(255),
    [Race] varchar(255),
    [Total_Cost] float,
    [IP_Cost] float,
    [OP_Cost] float,
    [PrescribedDrugs] float,
    [HospiceBenefits] float,
    [FederallyQualifiedHealthCenter] float,
    [RehabilativeServices] float,
    [HomeHealthServices] float,
    [Year] varchar(4)
)



CREATE TABLE [Poverty_Archive] (
    [State] varchar(255),
    [Age_Group] varchar(255),
    [Gender] varchar(255),
    [Race] varchar(255),
    [Poverty_Rate] float,
    [Year] varchar(4),
)


CREATE TABLE [HealthInsuranceDispersion_Dest](
    [State] varchar(255),
    [Coverage_Type] varchar(255),
    [Total_People] int,
    [Age_Group] varchar(255),
    [Year] varchar(4)
)


CREATE TABLE [Income_Dest] (
    [State] varchar(255),
    [Personal_Income] float,
    [PerCapital_Income] float,
    [RegionalPriceParity] float,
    [Year ] varchar(4)
)


CREATE TABLE [Medicare_Dest] (
    [State] varchar(255),
    [Age_Group] varchar(255),
    [Gender] varchar(255),
    [Race] varchar(255),
    [Total_Cost] float,
    [IP_Cost] float,
    [OP_Cost] float,
    [PrescribedDrugs] float,
    [HospiceBenefits] float,
    [FederallyQualifiedHealthCenter] float,
    [RehabilativeServices] float,
    [HomeHealthServices] float,
    [Year] varchar(4)
)

CREATE TABLE [Medicaid_Dest] (
    [State] varchar(255),
    [Age_Group] varchar(255),
    [Gender] varchar(255),
    [Race] varchar(255),
    [Total_Cost] float,
    [IP_Cost] float,
    [OP_Cost] float,
    [PrescribedDrugs] float,
    [HospiceBenefits] float,
    [FederallyQualifiedHealthCenter] float,
    [RehabilativeServices] float,
    [HomeHealthServices] float,
    [Year] varchar(4)
)


select * from [HealthInsuranceDispersion_Stage]
select * from Income_Stage
select * from Medicare_Stage
select * from Medicaid_stage
Select * from Poverty_Stage


select * from [Audit_Table]



select * from [HealthInsuranceDispersion_Dest]
select * from Income_Dest
select * from Medicare_Dest
select * from Medicaid_Dest
select * from Poverty_Dest


select DISTINCT State
from [HealthInsuranceDispersion_Dest]
order by State

select DISTINCT State
from Poverty_Dest
order by State


select DISTINCT State
from Income_Dest
order by State


select DISTINCT State
from Medicare_Dest
order by State

select DISTINCT Race
from Medicare_Dest
order by Race


select * 
from Medicaid_Dest
order by Race


select DISTINCT Race
from Poverty_Dest
order by Race

select DISTINCT Race
from Poverty_Dest
order by Race


truncate table [HealthInsuranceDispersion_Stage]
truncate table Income_Stage
truncate table Medicare_Stage
truncate table Medicaid_stage
truncate table Poverty_Stage

truncate table [Audit_Table]


truncate table [HealthInsuranceDispersion_Dest]
truncate table Income_Dest
truncate table Medicare_Dest
truncate table Medicaid_Dest
truncate table Poverty_Dest

truncate table [HealthInsuranceDispersion_Archive]
truncate table Income_Archive
truncate table Medicare_Archive
truncate table Medicaid_Archive
truncate table Poverty_Archive

select * 
from Medicaid_Dest
where State = 'Puerto Rico'