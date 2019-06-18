/*
Created: 15-04-2019
Modified: 22-04-2019
Model: Project Dim and Facts
Database: MS SQL Server 2017
*/


-- Create tables section -------------------------------------------------

-- Table Medicaid_Fact

CREATE TABLE [Medicaid_Fact]
(
 [Total_Cost] Float NULL,
 [IP_Cost] Float NULL,
 [OP_Cost] Float NULL,
 [PrescribedDrugs] Float NULL,
 [HospiceBenefits] Float NULL,
 [FederallyQualifiedHealthCenter] Float NULL,
 [RehabilativeServices] Float NULL,
 [HomeHealthServices] Float NULL,
 [State_SK] Int NULL,
 [AgeGroup_SK] Int NULL,
 [Gender_SK] Int NULL,
 [Race_SK] Int NULL,
 [Year_SK] Int NULL
)
go

-- Create indexes for table Medicaid_Fact

CREATE INDEX [IX_Relationship13] ON [Medicaid_Fact] ([State_SK])
go

CREATE INDEX [IX_Relationship21] ON [Medicaid_Fact] ([AgeGroup_SK])
go

CREATE INDEX [IX_Relationship27] ON [Medicaid_Fact] ([Year_SK])
go

CREATE INDEX [IX_Relationship31] ON [Medicaid_Fact] ([Gender_SK])
go

CREATE INDEX [IX_Relationship32] ON [Medicaid_Fact] ([Race_SK])
go

-- Table Medicare_Fact

CREATE TABLE [Medicare_Fact]
(
 [Total_Cost] Float NULL,
 [IP_Cost] Float NULL,
 [OP_Cost] Float NULL,
 [PrescribedDrugs] Float NULL,
 [HospiceBenefits] Float NULL,
 [FederallyQualifiedHealthCenter] Float NULL,
 [RehabilativeServices] Float NULL,
 [HomeHealthServices] Float NULL,
 [State_SK] Int NULL,
 [AgeGroup_SK] Int NULL,
 [Gender_SK] Int NULL,
 [Race_SK] Int NULL,
 [Year_SK] Int NULL
)
go

-- Create indexes for table Medicare_Fact

CREATE INDEX [IX_Relationship19] ON [Medicare_Fact] ([State_SK])
go

CREATE INDEX [IX_Relationship22] ON [Medicare_Fact] ([AgeGroup_SK])
go

CREATE INDEX [IX_Relationship24] ON [Medicare_Fact] ([Year_SK])
go

CREATE INDEX [IX_Relationship29] ON [Medicare_Fact] ([Gender_SK])
go

CREATE INDEX [IX_Relationship34] ON [Medicare_Fact] ([Race_SK])
go

-- Table HealthInsuranceDispersion_Fact

CREATE TABLE [HealthInsuranceDispersion_Fact]
(
 [Total_People] Int NULL,
 [State_SK] Int NULL,
 [CoverageType_SK] Int NULL,
 [AgeGroup_SK] Int NULL,
 [Year_SK] Int NULL
)
go

-- Create indexes for table HealthInsuranceDispersion_Fact

CREATE INDEX [IX_Relationship12] ON [HealthInsuranceDispersion_Fact] ([State_SK])
go

CREATE INDEX [IX_Relationship17] ON [HealthInsuranceDispersion_Fact] ([AgeGroup_SK])
go

CREATE INDEX [IX_Relationship25] ON [HealthInsuranceDispersion_Fact] ([Year_SK])
go

CREATE INDEX [IX_Relationship28] ON [HealthInsuranceDispersion_Fact] ([CoverageType_SK])
go

-- Table Income_Fact

CREATE TABLE [Income_Fact]
(
 [Personal_Income] Float NULL,
 [PerCapital_Income] Float NULL,
 [RegionalPriceParity] Float NULL,
 [State_SK] Int NULL,
 [Year_SK] Int NULL
)
go

-- Create indexes for table Income_Fact

CREATE INDEX [IX_Relationship14] ON [Income_Fact] ([State_SK])
go

CREATE INDEX [IX_Relationship23] ON [Income_Fact] ([Year_SK])
go

-- Table Poverty_Fact

CREATE TABLE [Poverty_Fact]
(
 [Poverty_Rate] Float NULL,
 [State_SK] Int NULL,
 [AgeGroup_SK] Int NULL,
 [Gender_SK] Int NULL,
 [Race_SK] Int NULL,
 [Year_SK] Int NULL
)
go

-- Create indexes for table Poverty_Fact

CREATE INDEX [IX_Relationship18] ON [Poverty_Fact] ([State_SK])
go

CREATE INDEX [IX_Relationship20] ON [Poverty_Fact] ([AgeGroup_SK])
go

CREATE INDEX [IX_Relationship26] ON [Poverty_Fact] ([Year_SK])
go

CREATE INDEX [IX_Relationship30] ON [Poverty_Fact] ([Gender_SK])
go

CREATE INDEX [IX_Relationship33] ON [Poverty_Fact] ([Race_SK])
go

-- Table Dim_State

CREATE TABLE [Dim_State]
(
 [State_SK] Int IDENTITY(1,1) NOT NULL,
 [State] Varchar(100) NOT NULL
)
go

-- Add keys for table Dim_State

ALTER TABLE [Dim_State] ADD CONSTRAINT [PK_Dim_State] PRIMARY KEY ([State_SK])
go

ALTER TABLE [Dim_State] ADD CONSTRAINT [State_SK] UNIQUE CLUSTERED ([State_SK])
go

-- Table Dim_AgeGroup

CREATE TABLE [Dim_AgeGroup]
(
 [AgeGroup_SK] Int IDENTITY(1,1) NOT NULL,
 [Age_Group] Varchar(50) NOT NULL
)
go

-- Add keys for table Dim_AgeGroup

ALTER TABLE [Dim_AgeGroup] ADD CONSTRAINT [PK_Dim_AgeGroup] PRIMARY KEY ([AgeGroup_SK])
go

ALTER TABLE [Dim_AgeGroup] ADD CONSTRAINT [State_SK] UNIQUE CLUSTERED ([AgeGroup_SK])
go

-- Table Dim_Race

CREATE TABLE [Dim_Race]
(
 [Race_SK] Int IDENTITY(1,1) NOT NULL,
 [Race] Varchar(100) NOT NULL
)
go

-- Add keys for table Dim_Race

ALTER TABLE [Dim_Race] ADD CONSTRAINT [PK_Dim_Race] PRIMARY KEY ([Race_SK])
go

ALTER TABLE [Dim_Race] ADD CONSTRAINT [State_SK] UNIQUE CLUSTERED ([Race_SK])
go

-- Table Dim_Gender

CREATE TABLE [Dim_Gender]
(
 [Gender_SK] Int IDENTITY(1,1) NOT NULL,
 [Gender] Varchar(10) NOT NULL
)
go

-- Add keys for table Dim_Gender

ALTER TABLE [Dim_Gender] ADD CONSTRAINT [PK_Dim_Gender] PRIMARY KEY ([Gender_SK])
go

ALTER TABLE [Dim_Gender] ADD CONSTRAINT [State_SK] UNIQUE CLUSTERED ([Gender_SK])
go

-- Table Dim_Year

CREATE TABLE [Dim_Year]
(
 [Year_SK] Int IDENTITY(1,1) NOT NULL,
 [Year] Varchar(4) NOT NULL
)
go

-- Add keys for table Dim_Year

ALTER TABLE [Dim_Year] ADD CONSTRAINT [PK_Dim_Year] PRIMARY KEY ([Year_SK])
go

ALTER TABLE [Dim_Year] ADD CONSTRAINT [State_SK] UNIQUE CLUSTERED ([Year_SK])
go

-- Table Dim_CoverageType

CREATE TABLE [Dim_CoverageType]
(
 [CoverageType_SK] Int IDENTITY(1,1) NOT NULL,
 [Coverage_Type] Varchar(100) NOT NULL
)
go

-- Add keys for table Dim_CoverageType

ALTER TABLE [Dim_CoverageType] ADD CONSTRAINT [PK_Dim_CoverageType] PRIMARY KEY ([CoverageType_SK])
go

ALTER TABLE [Dim_CoverageType] ADD CONSTRAINT [State_SK] UNIQUE CLUSTERED ([CoverageType_SK])
go

-- Create foreign keys (relationships) section ------------------------------------------------- 


ALTER TABLE [HealthInsuranceDispersion_Fact] ADD CONSTRAINT [ST_HID] FOREIGN KEY ([State_SK]) REFERENCES [Dim_State] ([State_SK]) ON UPDATE NO ACTION ON DELETE NO ACTION
go


ALTER TABLE [Medicaid_Fact] ADD CONSTRAINT [ST_MEDICAID] FOREIGN KEY ([State_SK]) REFERENCES [Dim_State] ([State_SK]) ON UPDATE NO ACTION ON DELETE NO ACTION
go


ALTER TABLE [Income_Fact] ADD CONSTRAINT [ST_INCOME] FOREIGN KEY ([State_SK]) REFERENCES [Dim_State] ([State_SK]) ON UPDATE NO ACTION ON DELETE NO ACTION
go


ALTER TABLE [HealthInsuranceDispersion_Fact] ADD CONSTRAINT [AG_HID] FOREIGN KEY ([AgeGroup_SK]) REFERENCES [Dim_AgeGroup] ([AgeGroup_SK]) ON UPDATE NO ACTION ON DELETE NO ACTION
go


ALTER TABLE [Poverty_Fact] ADD CONSTRAINT [ST_POV] FOREIGN KEY ([State_SK]) REFERENCES [Dim_State] ([State_SK]) ON UPDATE NO ACTION ON DELETE NO ACTION
go


ALTER TABLE [Medicare_Fact] ADD CONSTRAINT [ST_MEDICARE] FOREIGN KEY ([State_SK]) REFERENCES [Dim_State] ([State_SK]) ON UPDATE NO ACTION ON DELETE NO ACTION
go


ALTER TABLE [Poverty_Fact] ADD CONSTRAINT [AG_POV] FOREIGN KEY ([AgeGroup_SK]) REFERENCES [Dim_AgeGroup] ([AgeGroup_SK]) ON UPDATE NO ACTION ON DELETE NO ACTION
go


ALTER TABLE [Medicaid_Fact] ADD CONSTRAINT [AG_MEDICAID] FOREIGN KEY ([AgeGroup_SK]) REFERENCES [Dim_AgeGroup] ([AgeGroup_SK]) ON UPDATE NO ACTION ON DELETE NO ACTION
go


ALTER TABLE [Medicare_Fact] ADD CONSTRAINT [AG_MEDICARE] FOREIGN KEY ([AgeGroup_SK]) REFERENCES [Dim_AgeGroup] ([AgeGroup_SK]) ON UPDATE NO ACTION ON DELETE NO ACTION
go


ALTER TABLE [Income_Fact] ADD CONSTRAINT [YR_INC] FOREIGN KEY ([Year_SK]) REFERENCES [Dim_Year] ([Year_SK]) ON UPDATE NO ACTION ON DELETE NO ACTION
go


ALTER TABLE [Medicare_Fact] ADD CONSTRAINT [YR_MEDICARE] FOREIGN KEY ([Year_SK]) REFERENCES [Dim_Year] ([Year_SK]) ON UPDATE NO ACTION ON DELETE NO ACTION
go


ALTER TABLE [HealthInsuranceDispersion_Fact] ADD CONSTRAINT [YR_HID] FOREIGN KEY ([Year_SK]) REFERENCES [Dim_Year] ([Year_SK]) ON UPDATE NO ACTION ON DELETE NO ACTION
go


ALTER TABLE [Poverty_Fact] ADD CONSTRAINT [YR_POV] FOREIGN KEY ([Year_SK]) REFERENCES [Dim_Year] ([Year_SK]) ON UPDATE NO ACTION ON DELETE NO ACTION
go


ALTER TABLE [Medicaid_Fact] ADD CONSTRAINT [YR_MEDICAID] FOREIGN KEY ([Year_SK]) REFERENCES [Dim_Year] ([Year_SK]) ON UPDATE NO ACTION ON DELETE NO ACTION
go


ALTER TABLE [HealthInsuranceDispersion_Fact] ADD CONSTRAINT [CT_HID] FOREIGN KEY ([CoverageType_SK]) REFERENCES [Dim_CoverageType] ([CoverageType_SK]) ON UPDATE NO ACTION ON DELETE NO ACTION
go


ALTER TABLE [Medicare_Fact] ADD CONSTRAINT [GEN_MEDICARE] FOREIGN KEY ([Gender_SK]) REFERENCES [Dim_Gender] ([Gender_SK]) ON UPDATE NO ACTION ON DELETE NO ACTION
go


ALTER TABLE [Poverty_Fact] ADD CONSTRAINT [GEN_POV] FOREIGN KEY ([Gender_SK]) REFERENCES [Dim_Gender] ([Gender_SK]) ON UPDATE NO ACTION ON DELETE NO ACTION
go


ALTER TABLE [Medicaid_Fact] ADD CONSTRAINT [GEN_MEDICAID] FOREIGN KEY ([Gender_SK]) REFERENCES [Dim_Gender] ([Gender_SK]) ON UPDATE NO ACTION ON DELETE NO ACTION
go


ALTER TABLE [Medicaid_Fact] ADD CONSTRAINT [R_MEDICAID] FOREIGN KEY ([Race_SK]) REFERENCES [Dim_Race] ([Race_SK]) ON UPDATE NO ACTION ON DELETE NO ACTION
go


ALTER TABLE [Poverty_Fact] ADD CONSTRAINT [R_POV] FOREIGN KEY ([Race_SK]) REFERENCES [Dim_Race] ([Race_SK]) ON UPDATE NO ACTION ON DELETE NO ACTION
go


ALTER TABLE [Medicare_Fact] ADD CONSTRAINT [R_MEDICARE] FOREIGN KEY ([Race_SK]) REFERENCES [Dim_Race] ([Race_SK]) ON UPDATE NO ACTION ON DELETE NO ACTION
go




