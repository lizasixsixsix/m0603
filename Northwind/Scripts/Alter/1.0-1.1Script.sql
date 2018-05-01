if object_id('EmployeeCreditCards') is null

begin
    create table [Northwind].[EmployeeCreditCards]
    (
        [CardID]            [int]             identity(1,1)    not null,
        [CardNumber]        [varchar](20)                      not null,
        [CardHolderName]    [nvarchar](50)                     not null,
        [ExpirationDate]    [datetime]                         not null,
        [EmployeeID]        [int]                              not null,

        constraint [PK_EmployeeCreditCards] primary key clustered
        (
            [CardNumber] asc
        )
    );

    alter table [Northwind].[EmployeeCreditCards]
        with nocheck
        add constraint [FK_EmployeeCreditCards_Employees]
        foreign key ([EmployeeID])
        references [Northwind].[Employees] ([EmployeeID]);
end