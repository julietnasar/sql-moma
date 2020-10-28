## SQL Database from MOMA art data

Created a SQL Database based of art in the Museum of Modern Art. 

## Tables Created

- Artists Table
- Artsworks Table
- artPeriods Table
- Nationalities Table
- Artists_nationalities Table

## Create Table Code Example

DROP TABLE nationalities; <br />
CREATE TABLE nationalities( <br />
    nationality VARCHAR(30) PRIMARY KEY NOT NULL, <br />
    country VARCHAR(50), <br />
    countryCode CHAR(2), <br />
    person NVARCHAR(40) <br />
);

## Insert Values Code Example

INSERT into nationalities values ('British','UNITED KINGDOM','GB','a Briton'); <br />
INSERT into nationalities values ('Argentinian','ARGENTINA','AR','an Argentinian'); <br />
INSERT into nationalities values ('Australian','AUSTRALIA','AU','an Australian'); <br />
INSERT into nationalities values ('Bahamian','BAHAMAS','BS','a Bahamian'); <br />
INSERT into nationalities values ('Belgian','BELGIUM','BE','a Belgian'); <br />
INSERT into nationalities values ('Brazilian','BRAZIL','BR','a Brazilian'); <br />
INSERT into nationalities values ('Canadian','CANADA','CA','a Canadian'); <br />
INSERT into nationalities values ('Chinese','CHINA','CN','a Chinese'); <br />
** note this is only an exerpt and not all the values **

## Query Example

-- show how many artists of each gender are in each grouping of nationality <br />
-- DEMONSTRATES 4b (group by with two columns), 6a <br />
SELECT gender, nationality, count(*) as numPpl <br />
FROM artists JOIN artists_nationalities ON artists.artistID = artists_nationalities.artistID <br />
GROUP BY gender, nationality <br />
ORDER BY nationality ASC;


## Credits
This project was created as a final project for the Spring 2020 class Data Management at Yeshiva University.

Yeshiva University © [Juliet Nasar]()
