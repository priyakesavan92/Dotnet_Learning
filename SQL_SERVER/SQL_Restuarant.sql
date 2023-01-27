create table Restuarant(

    [Id] INT IDENTITY(1,1), -- PRIMARY KEY , --  IDENTITY CONSTRAINT will automatically increment the values
    [Name] VARCHAR(25) not null,
    [Cuisine] VARCHAR(25) default('unknown'),
    [OpenTime] time,--hh:mm::ss [00:00:00 to 23:59:59]
    [CloseTime] time,
    [Phone] VARCHAR(10),-- check ([phone] is not null or [Email] is not null)-- varchar(10)
    [Website] VARCHAR(20),
    [Email] VARCHAR(20),
    [Zipcode] VARCHAR(20) not null,
    PRIMARY KEY (Id)
    -- check constraint Age int check ( age > 17)
    --Candidate key(Id,Name)
    --CONSTRAINT [PK_ResturantId] PRIMARY KEY(Id)
    );
alter table Restuarant
    alter column [Email] varchar(40);

Insert into restuarant (Name, Cuisine,OpenTime,CloseTime,Phone,Website,Email,Zipcode) values('McDonalds','American','07:00:00','22:00:00','9876543210','http:mcdonalds.com','contactus@mcdonalds.com','110011')
Insert into restuarant (Name, Cuisine,OpenTime,CloseTime,Phone,Website,Email,Zipcode) values('Starbucks','Cafe','07:00:00','22:00:00','9876541230','http:starbucks.com','contactus@starbucks.com','110011')
Insert into restuarant (Name, Cuisine,OpenTime,CloseTime,Phone,Website,Email,Zipcode) values('Cofee Day','Cafe','07:00:00','22:00:00','9768543210','http:coffeeday.com','contactus@coffeeday.com','110011')

 create table Users(
        [username] varchar(25),
        [password] varchar(max),
        PRIMARY key(username)
    );


   create table [Reviews](
    [Id]	int IDENTITY(1,1),
    [OverallRating]	float not null,
    [Comment]	varchar(max),
    [TasteRating]	int not null,
    [AmbienceRating]	int not null,
    [ServiceRating]	int not null,
    [RestaurantId]	Int , -- Foreign Key from Restaurants table
    [username]	varchar(25) , -- Foreign Key from Users table
    CONSTRAINT [FK_RestaurantId] FOREIGN KEY([Id]) REFERENCES Restuarant,
    CONSTRAINT [FK_Users_Username] FOREIGN KEY(username) REFERENCES Users,
    CONSTRAINT [PK_ReviewsId] PRIMARY KEY(Id)
);

drop table Reviews;

    alter table Reviews 
    add PRIMARY key(Id);

   


    Select * from Restuarant;
    Select * from Users;
    Select * from Reviews;
    
    insert into Users values('Kaveri priya','priya92'),('Pushpinder','pushpi21');

insert into Reviews values(4,4.2,'good',4.3,4.4,4.7,3,'kaveri priya');

insert into reviews(OverallRating,Comment,TasteRating,AmbienceRating,ServiceRating,RestuarantId,username)
VALUES
(3.9,'tasty food but low quality veggies',4, 4, 1, 4, 'Kaveri priya')