--* Creating Table for GENRE.
CREATE TABLE [dbo].[Genre] (
    [GenreID]   INT           NOT NULL,
    [GenreName] VARCHAR (100) NOT NULL,
    PRIMARY KEY CLUSTERED ([GenreID] ASC)
);

--* Creating Table for BOOKS.
CREATE TABLE [dbo].[Books] (
    [BookID]          INT             NOT NULL,
    [Title]           VARCHAR (255)   NOT NULL,
    [Author]          VARCHAR (255)   NOT NULL,
    [PublicationYear] INT             NULL,
    [GenreID]         INT             NULL,
    [Price]           DECIMAL (10, 2) NULL,
    [ImageFile]       VARCHAR (500)   NULL,
    PRIMARY KEY CLUSTERED ([BookID] ASC),
    FOREIGN KEY ([GenreID]) REFERENCES [dbo].[Genre] ([GenreID])
);

--* Inserting Data in Genre.
INSERT INTO Genre (GenreID, GenreName) 
VALUES (1, 'Science Fiction'), 
       (2, 'Fantasy'), 
       (3, 'Mystery'), 
       (4, 'Romance'), 
       (5, 'Non-Fiction'), 
       (6, 'Horror'), 
       (7, 'Investment');

--* Inserting Data in Books.
INSERT INTO Books (BookID, Title, Author, PublicationYear, GenreID, Price, ImageFile)
VALUES (1, 'Dune', 'Frank Herbert', 1965, 1, 9.99, 'dune.jpg'), 
       (2, 'Neuromancer', 'William Gibson', 1984, 1, 7.99, 'neuromancer.jpg'), 
       (3, 'The Left Hand of Darkness', 'Ursula K. Le Guin', 1969, 1, 8.99, 'lefthandofdarkness.jpg'), 
       (4, 'Snow Crash', 'Neal Stephenson', 1992, 1, 10.99, 'snowcrash.jpg'),

       (5, 'The Hobbit', 'J.R.R. Tolkien', 1937, 2, 12.99, 'thehobbit.jpg'), 
       (6, 'A Game of Thrones', 'George R.R. Martin', 1996, 2, 14.99, 'gameofthrones.jpg'), 
       (7, 'The Name of the Wind', 'Patrick Rothfuss', 2007, 2, 11.99, 'nameofthewind.jpg'), 
       (8, 'Mistborn: The Final Empire', 'Brandon Sanderson', 2006, 2, 10.99, 'mistborn.jpg'),

       (9, 'The Girl with the Dragon Tattoo', 'Stieg Larsson', 2005, 3, 9.99, 'girlwiththedragontattoo.jpg'), 
       (10, 'Gone Girl', 'Gillian Flynn', 2012, 3, 8.99, 'gonegirl.jpg'), 
       (11, 'The Da Vinci Code', 'Dan Brown', 2003, 7.99, 'davincicode.jpg'), 
       (12, 'Big Little Lies', 'Liane Moriarty', 2014, 10.99, 'biglittlelies.jpg'),

       (13, 'Pride and Prejudice', 'Jane Austen', 1813, 4, 6.99, 'prideandprejudice.jpg'), 
       (14, 'Me Before You', 'Jojo Moyes', 2012, 4, 9.99, 'mebeforeyou.jpg'), 
       (15, 'The Notebook', 'Nicholas Sparks', 1996, 4, 7.99, 'thenotebook.jpg'), 
       (16, 'Outlander', 'Diana Gabaldon', 1991, 4, 8.99, 'outlander.jpg'),

       (17, 'Sapiens: A Brief History of Humankind', 'Yuval Noah Harari', 2011, 5, 12.99, 'sapiens.jpg'), 
       (18, 'Educated', 'Tara Westover', 2018, 5, 11.99, 'educated.jpg'), 
       (19, 'Becoming', 'Michelle Obama', 2018, 5, 14.99, 'becoming.jpg'), 
       (20, 'The Immortal Life of Henrietta Lacks', 'Rebecca Skloot', 2010, 5, 9.99, 'henriettalacks.jpg'),

       (21, 'The Shining', 'Stephen King', 1977, 6, 8.99, 'theshining.jpg'), 
       (22, 'Dracula', 'Bram Stoker', 1897, 6, 6.99, 'dracula.jpg'), 
       (23, 'The Haunting of Hill House', 'Shirley Jackson', 1959, 6, 7.99, 'hauntingofhillhouse.jpg'), 
       (24, 'Bird Box', 'Josh Malerman', 2014, 6, 9.99, 'birdbox.jpg');