

1.Create Database tourdb

/****Create UserInfo Table *****/
2.CREATE TABLE [dbo].[UserInfo] (
    [Email]     VARCHAR (50) NOT NULL,
    [FirstName] VARCHAR (50) NOT NULL,
    [LastName]  VARCHAR (50) NOT NULL,
    [Gender]    VARCHAR (10) NOT NULL,
    [Password]  VARCHAR (50) NOT NULL,
    [dob]       DATE         NOT NULL,
    [Street]    VARCHAR (50) NOT NULL,
    [City]      VARCHAR (50) NOT NULL,
    [State]     VARCHAR (50) NOT NULL,
    PRIMARY KEY CLUSTERED ([Email] ASC),
    CONSTRAINT [CK_Gender] CHECK ([Gender]='Female' OR [Gender]='Male')
);


3.
/* ********* Create Tour Table ***//
CREATE TABLE [dbo].[Tour] (
    [TOUR_ID]   NUMERIC (5)   IDENTITY (1, 1) NOT NULL,
    [TOUR_NAME] VARCHAR (20)  NOT NULL,
    [PLACE]     VARCHAR (20)  NOT NULL,
    [DAYS]      NUMERIC (2)   NOT NULL,
    [PRICE]     NUMERIC (6)   NOT NULL,
    [LOCATIONS] VARCHAR (100) NOT NULL,
    [TOUR_INFO] VARCHAR (200) NOT NULL,
    [pic]       VARCHAR (200) NULL,
    PRIMARY KEY CLUSTERED ([TOUR_ID] ASC)
);

/***** Create booking Table ******/

4.
CREATE TABLE [dbo].[booking] (
    [TOUR_ID]   INT          IDENTITY (1, 1) NOT NULL,
    [TOUR_NAME] VARCHAR (50) NULL,
    [PLACE]     VARCHAR (50) NULL,
    [Email]     VARCHAR (50) NULL,
    [FirstName] VARCHAR (50) NULL,
    PRIMARY KEY CLUSTERED ([TOUR_ID] ASC)
);

5. don't froget to change connection string in web.config


