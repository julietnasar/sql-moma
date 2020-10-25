DROP TABLE nationalities;
CREATE TABLE nationalities(
    nationality VARCHAR(30) PRIMARY KEY NOT NULL,
    country VARCHAR(50),
    countryCode CHAR(2),
    person NVARCHAR(40)
);

DROP TABLE artworks;
CREATE TABLE artworks(
    artworkID INTEGER PRIMARY KEY NOT NULL,
    artistID INTEGER,
    periodName VARCHAR(40),
    title NVARCHAR(200),
    date INTEGER,
    medium NVARCHAR(200),
    acquisitionDate DATE,
    classification VARCHAR(30)
);

DROP TABLE artists;
CREATE TABLE artists(
    artistID INTEGER PRIMARY KEY NOT NULL,
    artistName NVARCHAR(40),
    gender CHAR(1),
    birthYear INTEGER,
    deathYear INTEGER
);

DROP TABLE artPeriods;
CREATE TABLE artPeriods(
    periodName VARCHAR(40) PRIMARY KEY NOT NULL,
    yearStart INTEGER,
    description VARCHAR(400)
);


DROP TABLE artists_nationalities;
CREATE TABLE artists_nationalities(
    artistID INTEGER NOT NULL,
    nationality VARCHAR(30) NOT NULL,
    fromYear INTEGER,
    toYear INTEGER,
    primary key(artistID, nationality)
);

-- inserting artists data
INSERT into artists values (501,'Henryk Berlewi','M',1894,1967);
INSERT into artists values (502,'Eugene Berman','M',1899,1972);
INSERT into artists values (503,'Mieczyslaw Berman','M',1903,1975);
INSERT into artists values (504,'Sarah Berman','F',1895,1957);
INSERT into artists values (505,'Wallace Berman','M',1926,1976);
INSERT into artists values (506,'Zeke Berman','M',1951,NULL);
INSERT into artists values (507,'Cundo Bermúdez','M',1914,2008);
INSERT into artists values (508,'José Ygnacio Bermudez','M',1922,1988);
INSERT into artists values (509,'Thoni Bern',NULL,NULL,NULL);
INSERT into artists values (510,'Camille Bernabé','M',1808,1900);
INSERT into artists values (511,'Émile Bernard','M',1868,1941);
INSERT into artists values (512,'Francis Bernard','M',1900,1979);
INSERT into artists values (513,'Valère Bernard','M',1860,1936);
INSERT into artists values (514,'Jerry Berndt','M',1943,2013);
INSERT into artists values (515,'Lucian Bernhard','M',1883,1972);
INSERT into artists values (516,'Ruth Bernhard','F',1905,2006);
INSERT into artists values (517,'Antonio Berni','M',1905,1981);
INSERT into artists values (518,'Janez Bernik','M',1933,2016);
INSERT into artists values (519,'Judith Bernstein','F',1942,NULL);
INSERT into artists values (520,'Richard Bernstein','M',1939,2002);
INSERT into artists values (521,'Jean Berque','M',1896,1954);
INSERT into artists values (522,'Miguel Ortiz Berrocal','M',1933,2006);
INSERT into artists values (523,'Bertall & Cie.',NULL,NULL,NULL);
INSERT into artists values (524,'M. Berthaud',NULL,NULL,NULL);
INSERT into artists values (525,'Palme Berthold',NULL,NULL,NULL);
INSERT into artists values (9,'David Aronson','M',1923,2015);
INSERT into artists values (104,'L. (Alfred Lewin Copley) Alcopley','M',2010,1992);
INSERT into artists values (182,'Claudia Andujar','F',1931,NULL);

-- insert artwork values
INSERT into artworks values (5201,9,'Expressionism','Aronson',1951,'Silkscreen','1952-05-20','Design');
INSERT into artworks values (5654,104,'Abstract Expressionism','Alcopley, Galerie Bing',1956,'Silkscreen','1956-04-04','Design');
INSERT into artworks values (18238,104,'Abstract Expressionism','VOIES ET TRACES',1961,'1 ink drawing (unbound plate between folios 3 and 4) on ivory, smooth, laid Japan paper; and 33 photolithographic reproductions, 32 after ink drawings and 1 (wrapper) after ink and watercolor','1965-06-08','Illustrated Book');
INSERT into artworks values (18240,104,'Abstract Expressionism','YOU DONT SAY',1962,'200 photolithographic reproductions after 100 drawings (including title page), printed positive on rectos and negative on versos','1965-06-08','Illustrated Book');
INSERT into artworks values (35389,104,'Abstract Expressionism','"Spiritus Ubi Vult Spirat," 24 ("The Wind Bloweth Where it Listeth", 24)',1962,'Watercolor and ink on paper','1962-10-09','Drawing');
INSERT into artworks values (70524,104,'Abstract Expressionism','Untitled from the portfolio STRUCTURES OF TRAVELS',1962,NULL,'1965-06-08','Print');
INSERT into artworks values (70525,104,'Abstract Expressionism','STRUCTURES OF TRAVELS',1962,'Seven lithographs, printed in black','1965-06-08','Print');
INSERT into artworks values (70526,104,'Abstract Expressionism','Untitled from the portfolio STRUCTURES OF TRAVELS',1962,NULL,'1965-06-08','Print');
INSERT into artworks values (46712,182,NULL,'Dying Donkey at the Seville Fair',1959,'Gelatin silver print','1962-04-10','Photograph');
INSERT into artworks values (48485,182,NULL,'Carnival, Diamantina, Brazil',1964,'Gelatin silver print','1966-04-12','Photograph');
INSERT into artworks values (48505,182,NULL,'Bahia, Brazil',1964,'Gelatin silver print','1966-04-12','Photograph');
INSERT into artworks values (197264,182,NULL,'Caraja, Ilha Do Bananal, Brazil',1960,'Gelatin silver print','2016-10-13','Photograph');
INSERT into artworks values (197265,182,NULL,'Untitled',1956,'Gelatin silver print','2016-10-13','Photograph');
INSERT into artworks values (197266,182,NULL,'Macumba',1961,'Gelatin silver print','2016-10-13','Photograph');
INSERT into artworks values (38181,501,'Abstract Expressionism','First State of the MechanoFaktura',1923,'Gouache and pencil on paper','1985-09-10','Drawing');
INSERT into artworks values (198662,501,'Abstract Expressionism','Archives d lâ€™art abstrait et de lâ€™avantgarde internationale letterhead',1963,'Letterpress','2015-10-19','Design');
INSERT into artworks values (5214,502,'Abstract Expressionism','The World of Silk',1951,'Lithograph','1952-05-20','Design');
INSERT into artworks values (17125,502,NULL,'Half title page from VIAGGIO IN ITALIA',1945,'Lithograph, printed in black','1953-06-22','Illustrated Book');
INSERT into artworks values (17126,502,NULL,'VIAGGIO IN ITALIA',NULL,'52 lithographs, 31 printed in black and 21 printed in color','1953-06-22','Illustrated Book');
INSERT into artworks values (17127,502,NULL,'CARTOUCHE and OLD SLAVE (intext plates, page 14) from VIAGGIO IN ITALIA',1945,'Lithographs, printed in black','1953-06-22','Illustrated Book');
INSERT into artworks values (17147,502,NULL,'PISAN FANTASY (plate, page 36) from VIAGGIO IN ITALIA',1945,'Lithograph, printed in black','1953-06-22','Illustrated Book');
INSERT into artworks values (33578,502,'Expressionism','Costume design for the ballet Nuages',1940,'Gouache and ink on paper','1942-03-18','Drawing');
INSERT into artworks values (33787,502,'Expressionism','Costume Design',1940,'Ink and gouache on colored paper','1979-05-07','Drawing');
INSERT into artworks values (34025,502,'Expressionism','Devils Holiday: Backdrop (Carnival in Venice) for the ballet',1939,'Gouache on paper','1946-05-07','Drawing');
INSERT into artworks values (34040,502,'Expressionism','Curtain design for The Threepenny Opera',1937,'Ink, watercolor, and pencil on paper','1946-05-07','Drawing');
INSERT into artworks values (34785,502,'Expressionism','The Good Samaritan',1930,'Ink on paper','1940-04-05','Drawing');
INSERT into artworks values (35687,502,'Expressionism','Set design for Don Quixote',1950,'Ink on paper','1978-04-04','Drawing');
INSERT into artworks values (35697,502,'Expressionism','Set design for Don Quixote',1950,'Ink on paper','1978-04-04','Drawing');
INSERT into artworks values (35707,502,'Expressionism','Italian Cityscape',1951,'Ink on paper','1978-04-04','Drawing');
INSERT into artworks values (35718,502,'Expressionism','Costume design for the opera Otello (Othello)',1962,'Gouache, ink, and watercolor on paper','1978-04-04','Drawing');
INSERT into artworks values (35727,502,'Expressionism','The Cat. Costume design for the ballet Le Renard',1966,'Gouache, ink, and watercolor on paper','1978-04-04','Drawing');
INSERT into artworks values (35739,502,'Expressionism','Pulcinella: costume design for Pulcinella',1972,'Watercolor, gouache, and ink on paper','1978-04-04','Drawing');
INSERT into artworks values (61654,502,NULL,'The Appian Way',1951,'Lithograph','1952-05-20','Print');
INSERT into artworks values (62964,502,NULL,'INTERIOR',1929,'Lithograph, printed in black','1951-05-24','Print');
INSERT into artworks values (65509,502,NULL,'NOCTURNES',1930,'Lithograph, printed in black','1940-04-05','Print');
INSERT into artworks values (79149,502,'Modernism','Winter',NULL,'Oil on canvas','1937-05-11','Painting');
INSERT into artworks values (79186,502,'Modernism','The Gates of the City, Nightfall',1937,'Oil on canvas','1947-10-16','Painting');
INSERT into artworks values (79294,502,'Modernism','The Good Samaritan',1930,'Oil on canvas','1956-10-09','Painting');
INSERT into artworks values (80583,502,'Modernism','The Cart',1930,'Oil on composition board','1979-12-11','Painting');
INSERT into artworks values (80584,502,'Modernism','Memory of Ischia',1931,'Oil on canvas','1979-12-11','Painting');
INSERT into artworks values (84967,502,'Expressionism','Devils Holiday (Tavern), scenery design for the ballet',1939,'Watercolor, gouache, ink, and pencil on paper','1942-03-18','Drawing');
INSERT into artworks values (86077,502,'Expressionism','Set design for the ballet Icare',1938,'Gouache on paper','1942-03-18','Drawing');
INSERT into artworks values (44304,503,NULL,'Help Me to Conquer England and America, So That I Can Make the World a Workers Aristocracy For You',1944,'Collage of photomechanical reproductions','1989-03-09','Photograph');
INSERT into artworks values (53142,503,NULL,'Entomologist (Entomologe)',1935,'Collage of photomechanical reproductions (in lithographic halftone and gravure) and gelatin silver print','1984-12-05','Photograph');
INSERT into artworks values (66758,504,NULL,'STILL LIFE',NULL,'Silk screen','1941-01-16','Print');
INSERT into artworks values (9068,505,NULL,'Semina',1988,'Complete set of periodicals','1999-11-18','Illustrated Book');
INSERT into artworks values (62229,505,'Contemporary Art','Untitled',1967,'Verifax collage in four sections, with transfer type additions','1975-05-09','Print');
INSERT into artworks values (62248,505,'Contemporary Art','Untitled',1967,'Verifax collage in four sections, with transfer type additions','1975-05-09','Print');
INSERT into artworks values (157823,505,NULL,'Aleph',NULL,'16mm film (color, silent)','2002-10-16','Film');
INSERT into artworks values (204610,505,'','Semina 7',1961,'Journal with eighteen cards and cover, offset lithograph and letterpress printed','2016-06-08','Illustrated Book');
INSERT into artworks values (44860,506,NULL,'Table Study',1983,'Gelatin silver print','1986-01-15','Photograph');
INSERT into artworks values (44956,506,NULL,'Work in Progress',1982,'Gelatin silver print','1986-01-15','Photograph');
INSERT into artworks values (47965,506,NULL,'Still Life with Glass',1978,'Gelatin silver print','1979-05-10','Photograph');
INSERT into artworks values (47983,506,NULL,'Untitled',1979,'Gelatin silver print','1979-05-10','Photograph');
INSERT into artworks values (49161,506,NULL,'Untitled',1984,'Gelatin silver print','1985-10-02','Photograph');
INSERT into artworks values (49860,506,NULL,'The Sculptors Studio, Touching and Retouching',1980,'Gelatin silver print','1982-10-28','Photograph');
INSERT into artworks values (49871,506,NULL,'Current Events Series #6',1982,'Gelatin silver print','1982-10-28','Photograph');
INSERT into artworks values (49883,506,NULL,'Still Life with Spill',1979,'Gelatin silver print','1982-10-28','Photograph');
INSERT into artworks values (49918,506,NULL,'Untitled',1987,'Gelatin silver print','1987-10-15','Photograph');
INSERT into artworks values (49930,506,NULL,'Untitled',1984,'Gelatin silver print','1987-10-15','Photograph');
INSERT into artworks values (55305,506,NULL,'S.V.A. Drawing Board, Both Sides',1987,'Gelatin silver print','1990-12-30','Photograph');
INSERT into artworks values (55315,506,NULL,'Tapping',1988,'Gelatin silver print','1990-12-30','Photograph');
INSERT into artworks values (55325,506,NULL,'To and From',1990,'Gelatin silver print','1990-12-13','Photograph');
INSERT into artworks values (55335,506,NULL,'Untitled',1988,'Gelatin silver print','1990-12-13','Photograph');
INSERT into artworks values (55345,506,NULL,'Untitled (Tank #2)',1988,'Gelatin silver print','1990-12-13','Photograph');
INSERT into artworks values (55973,506,NULL,'Domestic Still Life, Art and Entropy',1979,'Gelatin silver print, printed 1983','1983-11-10','Photograph');
INSERT into artworks values (55980,506,NULL,'Measuring Cup',1979,'Gelatin silver print, printed 1983','1983-11-10','Photograph');
INSERT into artworks values (57649,506,NULL,'Still Life with Necker Cube',1979,'Gelatin silver print','1979-12-13','Photograph');
INSERT into artworks values (57651,506,NULL,'Still Life with Peace Sign and Clock Face',1979,'Gelatin silver print','1979-12-13','Photograph');
INSERT into artworks values (57653,506,NULL,'Pyramids',1979,'Gelatin silver print','1979-12-13','Photograph');
INSERT into artworks values (78666,507,NULL,'Barber Shop',1942,'Oil on canvas','1944-05-02','Painting');
INSERT into artworks values (80165,507,NULL,'The Balcony',1941,'Oil on canvas','1942-12-29','Painting');
INSERT into artworks values (35469,508,'Expressionism','Girl Playing with Dog',1953,'Ink on paper','1954-06-16','Drawing');
INSERT into artworks values (37035,508,'Abstract Expressionism','Winter Drawing 1967',1967,'Incised paper with synthetic polymer paint and pencil on paper','1967-06-06','Drawing');
INSERT into artworks values (37329,508,'Abstract Expressionism','Microflora',1956,'Collage of paper with charcoal, pencil, tempera','1956-12-19','Drawing');
INSERT into artworks values (6087,509,NULL,'Alpine Kunst Exhibition',1900,NULL,'1953-04-07','Design');
INSERT into artworks values (51077,510,NULL,'Viaduct on the SaÃ´ne',NULL,'Salted paper print from a glass negative','1981-10-15','Photograph');
INSERT into artworks values (51126,510,NULL,'Viaduct on the SaÃ´ne',NULL,'Salted paper print from a glass negative','1981-10-15','Photograph');
INSERT into artworks values (51149,510,NULL,'Viaduct on the SaÃ´ne',NULL,'Salted paper print from a glass negative','1981-10-15','Photograph');
INSERT into artworks values (55987,510,NULL,'(TREE IN LANDSCAPE)',1855,'Salted paper print from a glass negative','1983-11-10','Photograph');
INSERT into artworks values (9799,511,NULL,'Mars and Venus, Plate XI, from the illustrated book Cinquante Sonnets de Pierre de Ronsard',1915,'Etching','1961-01-10','Illustrated Book');
INSERT into artworks values (60111,511,'Post-Impressionism','Breton Woman (Les Bretonnes)',1883,'Woodcut, with watercolor additions','1952-01-22','Print');
INSERT into artworks values (60281,511,'Post-Impressionism','The Artists Daughter',1933,'Woodcut, with watercolor additions','1961-01-10','Print');
INSERT into artworks values (60343,511,'Post-Impressionism','Death of the Knight (La Mort du cavalier)',1892,'Woodcut, with watercolor additions','1961-01-10','Print');
INSERT into artworks values (69663,511,'Post-Impressionism','Christ from the portfolio The Original Print (LEstampe originale), no. V',NULL,'Woodcut','1949-09-29','Print');
INSERT into artworks values (78242,511,'Post-Impressionism','Catalogue for the Van Gogh Exhibition at Le Barc de Boutteville and Lottery Ticket',NULL,'Two woodcuts, one with watercolor additions, on one sheet','1967-10-18','Print');
INSERT into artworks values (78843,511,'Post-Impressionism','Iron Bridges at AsniÃ¨res',1887,'Oil on canvas','1962-03-06','Painting');
INSERT into artworks values (5785,512,'Expressionism','Gaz CuitChauffeGlace (Gas, It Cooks, Heats, Cools)',1928,'Lithograph','1987-05-27','Design');
INSERT into artworks values (48677,514,NULL,'Jimmy, Easter Sunday',1983,'Gelatin silver print','1986-05-22','Photograph');
INSERT into artworks values (4958,515,'Impressionism','Cords',1912,'Lithograph','1990-01-17','Design');
INSERT into artworks values (4963,515,'Impressionism','Das ist der Weg zum Frieden, die Feinde wollen esfo!, Darum zeichne, Kriegsanleine!',1917,'Lithograph','1990-01-17','Design');
INSERT into artworks values (5788,515,'Expressionism','Bosch',1914,'Lithograph','1987-05-27','Design');
INSERT into artworks values (5791,515,NULL,'BoschLicht',1913,'Lithograph','1987-05-27','Design');
INSERT into artworks values (5794,515,NULL,'Manoli',1910,'Lithograph','1987-05-27','Design');
INSERT into artworks values (7132,515,NULL,'KleinAdler',1914,'Lithograph','1987-11-18','Design');
INSERT into artworks values (7136,515,NULL,'Osram Azo',1910,'Lithograph','1987-11-18','Design');
INSERT into artworks values (7140,515,NULL,'Stiller',1908,'Lithograph','1987-11-18','Design');
INSERT into artworks values (7507,515,NULL,'Das ist der Weg zum Friedenâ€”die Feinde wollen es so! Darum zeichne Kriegsanleihe! (That is the way to peaceâ€”The enemies want it so! Subscribe to war loans)',1917,'Lithograph','1943-05-12','Design');
INSERT into artworks values (7510,515,NULL,'Verein der Plakatfreunde',1908,'Lithograph','1943-05-12','Design');
INSERT into artworks values (7634,515,NULL,'Das neue Reich, Die neue Reichsleitung',1919,'Lithograph','1981-12-10','Design');
INSERT into artworks values (44099,516,NULL,'Puddle',1939,'Gelatin silver print','1941-01-16','Photograph');
INSERT into artworks values (55757,516,NULL,'Hall Johnson Conducting His Negro Choir',1938,'Gelatin silver print','1941-12-10','Photograph');
INSERT into artworks values (55764,516,NULL,'Untitled',1939,'Gelatin silver print','1941-12-10','Photograph');
INSERT into artworks values (64345,517,'Social Realism','Ramona Lives her Life (Ramona Vive Su Vida)',1963,'Collage and engraving, relief printed in black','1964-03-10','Print');
INSERT into artworks values (64358,517,'Social Realism','THE MILITARY PROTECTOR',1963,'Collage and engraving, relief printed in black','1964-03-10','Print');
INSERT into artworks values (64370,517,'Social Realism','THE CIVILIAN PROTECTOR',1963,'Collage and engraving, relief printed in black','1964-03-10','Print');
INSERT into artworks values (64380,517,'Social Realism','HER MARRIAGE',1963,'Collage and engraving, relief printed in black','1964-03-10','Print');
INSERT into artworks values (72502,517,'Social Realism','Head of a Girl (Cabeza de niÃ±a)',1942,'Monotype','1942-12-29','Print');
INSERT into artworks values (72525,517,'Social Realism','Red Head (Cabeza rubia)',1942,'Monotype','1942-12-29','Print');
INSERT into artworks values (74480,517,'Social Realism','The Examination',1967,'Collograph and engraving, relief printed','1969-10-28','Print');
INSERT into artworks values (74483,517,'Social Realism','The Dream',1967,'Collograph and engraving, relief printed','1969-10-28','Print');
INSERT into artworks values (80169,517,'Social Realism','New Chicago Athletic Club',1937,'Oil on canvas','1942-12-29','Painting');
INSERT into artworks values (69847,518,'Contemporary Art','Telephone 5',1968,'Etching and aquatint','1971-10-07','Print');
INSERT into artworks values (72048,518,'Contemporary Art','NO. 9 from the portfolio EASTERN EUROPEAN PRINTS',1968,'Etching and aquatint, printed in color','1970-12-15','Print');
INSERT into artworks values (78152,518,'Contemporary Art','(Untitled)',NULL,'Etching','1967-12-13','Print');
INSERT into artworks values (63919,519,'Pop art','Flocked Horizontal',1976,'Screenprint with flocking','1977-05-03','Print');
INSERT into artworks values (63944,519,NULL,'Horizontal',1976,'Lithograph','1977-05-03','Print');
INSERT into artworks values (8721,520,'Pop art','Richard Bernstein, Galerie Kunsthandel Monet, Rokin 97, Amsterdam',1967,'Silkscreen','1968-10-07','Design');
INSERT into artworks values (80992,522,'Abstract Expressionism','Maria of the O',1964,'Bronze, in seven parts','1965-05-11','Sculpture');
INSERT into artworks values (44202,523,NULL,'Victor Hugo',NULL,'Collodion print','1964-01-07','Photograph');
INSERT into artworks values (47577,523,NULL,'JULES VERNE (18281905)',1865,'Albumen silver print','1982-05-13','Photograph');
INSERT into artworks values (47601,524,NULL,'BERNE BELLECOUR',1860,'Albumen silver print','1982-05-13','Photograph');
INSERT into artworks values (47611,524,NULL,'HENRI REGNAULT (184371)',1865,'Albumen silver print','1982-05-13','Photograph');
INSERT into artworks values (1840,525,NULL,'Lotion Bottle',1938,'Glass','1943-02-18','Design');



-- insert artPeriod data
INSERT into artPeriods values ('Neoclassicism',1750,'artistic and creative movements that reflect qualities of ancient Greek and Roman philosophy, culture, and art');
INSERT into artPeriods values ('Romanticism',1780,'An artistic and intellectual movement originating in Europe in the late 1700s and characterized by a heightened interest in nature, emphasis on the individuals expression of emotion and imagination, departure from the attitudes and forms of classicism, and rebellion against established social rules');
INSERT into artPeriods values ('Realism',1848,'the attempt to represent subject matter truthfully, without artificiality and avoiding artistic conventions, or implausible, exotic, and supernatural elements.');
INSERT into artPeriods values ('Art Nouveau',1890,'characterized by its use of a long, sinuous, organic line and was employed most often in architecture, interior design, jewelry and glass design, posters, and illustration');
INSERT into artPeriods values ('Impressionism',1865,'characterized by relatively small, thin, yet visible brush strokes, open composition, emphasis on accurate depiction of light in its changing qualities (often accentuating the effects of the passage of time)');
INSERT into artPeriods values ('Post-Impressionism',1885,'emerged as a reaction against Impressionists concern for the naturalistic depiction of light and colour');
INSERT into artPeriods values ('Modernism',1877,'Building on late nineteenth-century precedents, artists around the world used new imagery, materials and techniques to create artworks that they felt better reflected the realities and hopes of modern societies');
INSERT into artPeriods values ('Expressionism',1905,'express the meaning of emotional experience rather than physical reality');
INSERT into artPeriods values ('Abstract Expressionism',1940,'a development of abstract art that originated in New York in the 1940s and 1950s and aimed at subjective emotional expression with particular emphasis on the creative spontaneous act');
INSERT into artPeriods values ('Op Art',1950,'a form of abstract art that gives the illusion of movement by the precise use of pattern and color, or in which conflicting patterns emerge and overlap. Bridget Riley and Victor Vasarely are its most famous exponents');
INSERT into artPeriods values ('Pop Art',1960,'art based on modern popular culture and the mass media, especially as a critical or ironic comment on traditional fine art values');
INSERT into artPeriods values ('Arte Povera',1960,'a style and movement in art originating in Italy in the 1960s combining aspects of conceptual, minimalist, and performance art, and making use of worthless or common materials such as stones or newspapers, in the hope of subverting the commercialization of art');
INSERT into artPeriods values ('Minimalism',1960,'the work is set out to expose the essence, essentials or identity of a subject through eliminating all non-essential forms, features or concepts');
INSERT into artPeriods values ('Conceptual Art',1965,' art for which the idea (or concept) behind the work is more important than the finished art object');
INSERT into artPeriods values ('Contemporary Art',1970,'defined by an interest in portraying mass culture and reimagining commercial products as accessible art');
INSERT into artPeriods values ('Social Realism',1930,'art movement, associated with the era of the Great Depression in the US (roughly the 1930s), that depicted the everyday realities of life');

-- insert nationalities data
INSERT into nationalities values ('British','UNITED KINGDOM','GB','a Briton');
INSERT into nationalities values ('Argentinian','ARGENTINA','AR','an Argentinian');
INSERT into nationalities values ('Australian','AUSTRALIA','AU','an Australian');
INSERT into nationalities values ('Bahamian','BAHAMAS','BS','a Bahamian');
INSERT into nationalities values ('Belgian','BELGIUM','BE','a Belgian');
INSERT into nationalities values ('Brazilian','BRAZIL','BR','a Brazilian');
INSERT into nationalities values ('Canadian','CANADA','CA','a Canadian');
INSERT into nationalities values ('Chinese','CHINA','CN','a Chinese');
INSERT into nationalities values ('Colombian','COLOMBIA','CO','a Colombian');
INSERT into nationalities values ('Cuban','CUBA','CU','a Cuban');
INSERT into nationalities values ('Dominican','DOMINICAN REPUBLIC','DO','a Dominican');
INSERT into nationalities values ('Ecuadorean','ECUADOR','EC','an Ecuadorean');
INSERT into nationalities values ('Salvadorean','EL SALVADOR','SV','a Salvadorean');
INSERT into nationalities values ('French','FRANCE','FR','a Frenchman');
INSERT into nationalities values ('German','GERMANY','DE','a German');
INSERT into nationalities values ('Guatemalan','GUATEMALA','GT','a Guatemalan');
INSERT into nationalities values ('Haitian','HAITI','HT','a Haitian');
INSERT into nationalities values ('Honduran','HONDURAS','HN','a Honduran');
INSERT into nationalities values ('Indian','INDIA','IN','an Indian');
INSERT into nationalities values ('Ireland','IRELAND','IE','an Irishman');
INSERT into nationalities values ('Israeli','ISRAEL','IL','an Israeli');
INSERT into nationalities values ('Italian','ITALY','IT','an Italian');
INSERT into nationalities values ('Japanese','JAPAN','JP','a Japanese');
INSERT into nationalities values ('South Korean','KOREA - REPUBLIC OF','KR','a South Korean');
INSERT into nationalities values ('Mexican','MEXICO','MX','a Mexican');
INSERT into nationalities values ('Dutch','NETHERLANDS','NL','a Dutchman');
INSERT into nationalities values ('Philippine','PHILIPPINES','PH','a Filipino');
INSERT into nationalities values ('Spanish','SPAIN','ES','a Spaniard');
INSERT into nationalities values ('Swedish','SWEDEN','SE','a Swede');
INSERT into nationalities values ('Swiss','SWITZERLAND','CH','a Swiss');
INSERT into nationalities values ('Taiwanese','TAIWAN - PROVINCE OF CHINA','TW','a Taiwanese');
INSERT into nationalities values ('Venezuelan','VENEZUELA - BOLIVARIAN REPUBLIC OF','VE','a Venezuelan');
INSERT into nationalities values ('Vietnamese','VIETNAM','VN','a Vietnamese');
INSERT into nationalities values ('Afghan','AFGHANISTAN','AF','an Afghan');
INSERT into nationalities values ('Albanian','ALBANIA','AL','an Albanian');
INSERT into nationalities values ('Algerian','ALGERIA','DZ','an Algerian');
INSERT into nationalities values ('Samoan','AMERICAN SAMOA','AS','a Samoan');
INSERT into nationalities values ('Andorran','ANDORRA','AD','an Andorran');
INSERT into nationalities values ('Angolan','ANGOLA','AO','an Angolan');
INSERT into nationalities values ('Armenian','ARMENIA','AM','an Armenian');
INSERT into nationalities values ('Austrian','AUSTRIA','AT','an Austrian');
INSERT into nationalities values ('Azerbaijani','AZERBAIJAN','AZ','an Azerbaijani');
INSERT into nationalities values ('Bahraini','BAHRAIN','BH','a Bahraini');
INSERT into nationalities values ('Bangladeshi','BANGLADESH','BD','a Bangladeshi');
INSERT into nationalities values ('Barbadian','BARBADOS','BB','a Barbadian');
INSERT into nationalities values ('Belarusian or Belarusan','BELARUS','BY','a Belarusian');
INSERT into nationalities values ('Belizean','BELIZE','BZ','a Belizean');
INSERT into nationalities values ('Beninese','BENIN','BJ','a Beninese');
INSERT into nationalities values ('Bermudian','BERMUDA','BM','a Bermudian');
INSERT into nationalities values ('Bhutanese','BHUTAN','BT','a Bhutanese');
INSERT into nationalities values ('Bolivian','BOLIVIA - PLURINATIONAL STATE OF','BO','a Bolivian');
INSERT into nationalities values ('Bosnian','BOSNIA AND HERZEGOVINA','BA','a Bosnian');
INSERT into nationalities values ('Botswanan','BOTSWANA','BW','a Tswana');
INSERT into nationalities values ('Bulgarian','BULGARIA','BG','a Bulgarian');
INSERT into nationalities values ('Burkinese','BURKINA FASO','BF','a Burkinese');
INSERT into nationalities values ('Burundian','BURUNDI','BI','a Burundian');
INSERT into nationalities values ('Cambodian','CAMBODIA','KH','a Cambodian');
INSERT into nationalities values ('Cameroonian','CAMEROON','CM','a Cameroonian');
INSERT into nationalities values ('Cape Verdean','CAPE VERDE ISLANDS','CV','a Cape Verdean');
INSERT into nationalities values ('Chadian','CHAD','TD','a Chadian');
INSERT into nationalities values ('Chilean','CHILE','CL','a Chilean');
INSERT into nationalities values ('Congolese','CONGO','CG','a Congolese');
INSERT into nationalities values ('Costa Rican','COSTA RICA','CR','a Costa Rican');
INSERT into nationalities values ('Croat or Croatian','CROATIA','HR','a Croat');
INSERT into nationalities values ('Cypriot','CYPRUS','CY','a Cypriot');
INSERT into nationalities values ('Czech','CZECH REPUBLIC','CZ','a Czech');
INSERT into nationalities values ('Danish','DENMARK','DK','a Dane');
INSERT into nationalities values ('Djiboutian','DJIBOUTI','DJ','a Djiboutian');
INSERT into nationalities values ('Egyptian','EGYPT','EG','an Egyptian');
INSERT into nationalities values ('Eritrean','ERITREA','ER','an Eritrean');
INSERT into nationalities values ('Estonian','ESTONIA','EE','an Estonian');
INSERT into nationalities values ('Ethiopian','ETHIOPIA','ET','an Ethiopian');
INSERT into nationalities values ('Fijian','FIJI','FJ','a Fijian');
INSERT into nationalities values ('Finnish','FINLAND','FI','a Finn');
INSERT into nationalities values ('French Polynesian','FRENCH POLYNESIA','PF','a French Polynesian');
INSERT into nationalities values ('Gabonese','GABON','GA','a Gabonese');
INSERT into nationalities values ('Gambian','GAMBIA','GM','a Gambian');
INSERT into nationalities values ('Georgian','GEORGIA','GE','a Georgian');
INSERT into nationalities values ('Ghanaian','GHANA','GH','a Ghanaian');
INSERT into nationalities values ('Greek','GREECE','GR','a Greek');
INSERT into nationalities values ('Grenadian','GRENADA','GD','a Grenadian');
INSERT into nationalities values ('Guinean','GUINEA','GN','a Guinean');
INSERT into nationalities values ('Guyanese','GUYANA','GY','a Guyanese');
INSERT into nationalities values ('Hungarian','HUNGARY','HU','a Hungarian');
INSERT into nationalities values ('Icelandic','ICELAND','IS','an Icelander');
INSERT into nationalities values ('Indonesian','INDONESIA','ID','an Indonesian');
INSERT into nationalities values ('Iranian','IRAN - ISLAMIC REPUBLIC OF','IR','an Iranian');
INSERT into nationalities values ('Iraqi','IRAQ','IQ','an Iraqi');
INSERT into nationalities values ('Jamaican','JAMAICA','JM','a Jamaican');
INSERT into nationalities values ('Jordanian','JORDAN','JO','a Jordanian');
INSERT into nationalities values ('Kazakh','KAZAKHSTAN','KZ','a Kazakh');
INSERT into nationalities values ('Kenyan','KENYA','KE','a Kenyan');
INSERT into nationalities values ('North Korean','KOREA - DEMOCRATIC PEOPLES REPUBLIC OF','KP','a North Korean');
INSERT into nationalities values ('Kuwaiti','KUWAIT','KW','a Kuwaiti');
INSERT into nationalities values ('Latvian','\LATVIA','LV','a Latvian');
INSERT into nationalities values ('Lebanese','LEBANON','LB','a Lebanese');
INSERT into nationalities values ('Liberian','LIBERIA','LR','a Liberian');
INSERT into nationalities values ('Libyan','LIBYA','LY','a Libyan');
INSERT into nationalities values ('Lithuanian','LITHUANIA','LT','a Lithuanian');
INSERT into nationalities values ('Malagasy or Madagascan','MADAGASCAR','MG','a Malagasy');
INSERT into nationalities values ('Malawian','MALAWI','MW','a Malawian');
INSERT into nationalities values ('Malaysian','MALAYSIA','MY','a Malaysian');
INSERT into nationalities values ('Maldivian','MALDIVES','MV','a Maldivian');
INSERT into nationalities values ('Malian','MALI','ML','a Malian');
INSERT into nationalities values ('Maltese','MALTA','MT','a Maltese');
INSERT into nationalities values ('Mauritanian','MAURITANIA','MR','a Mauritanian');
INSERT into nationalities values ('Mauritian','MAURITIUS','MU','a Mauritian');
INSERT into nationalities values ('Monégasque or Monacan','MONACO','MC','a Monégasque or a Monacan');
INSERT into nationalities values ('Mongolian','MONGOLIA','MN','a Mongolian');
INSERT into nationalities values ('Montenegrin','MONTENEGRO','ME','a Montenegrin');
INSERT into nationalities values ('Moroccan','MOROCCO','MA','a Moroccan');
INSERT into nationalities values ('Mozambican','MOZAMBIQUE','MZ','a Mozambican');
INSERT into nationalities values ('Namibian','NAMIBIA','NA','a Namibian');
INSERT into nationalities values ('Nepalese','NEPAL','NP','a Nepalese');
INSERT into nationalities values ('Nicaraguan','NICARAGUA','NI','a Nicaraguan');
INSERT into nationalities values ('Nigerien','NIGER','NE','a Nigerien');
INSERT into nationalities values ('Nigerian','NIGERIA','NG','a Nigerian');
INSERT into nationalities values ('Norwegian','NORWAY','NO','a Norwegian');
INSERT into nationalities values ('Omani','OMAN','OM','an Omani');
INSERT into nationalities values ('Pakistani','PAKISTAN','PK','a Pakistani');
INSERT into nationalities values ('Panamanian','PANAMA','PA','a Panamanian');
INSERT into nationalities values ('Paraguayan','PARAGUAY','PY','a Paraguayan');
INSERT into nationalities values ('Peruvian','PERU','PE','a Peruvian');
INSERT into nationalities values ('Polish','POLAND','PL','a Pole');
INSERT into nationalities values ('Portuguese','PORTUGAL','PT','a Portuguese');
INSERT into nationalities values ('Qatari','QATAR','QA','a Qatari');
INSERT into nationalities values ('Romanian','ROMANIA','RO','a Romanian');
INSERT into nationalities values ('Rwandan','RWANDA','RW','a Rwandan');
INSERT into nationalities values ('Saudi Arabian or Saudi','SAUDI ARABIA','SA','a Saudi Arabian');
INSERT into nationalities values ('Senegalese','SENEGAL','SN','a Senegalese');
INSERT into nationalities values ('Serb or Serbian','SERBIA','RS','a Serb or a Serbian');
INSERT into nationalities values ('Sierra Leonian','SIERRA LEONE','SL','a Sierra Leonian');
INSERT into nationalities values ('Singaporean','SINGAPORE','SG','a Singaporean');
INSERT into nationalities values ('Slovak','SLOVAKIA','SK','a Slovak');
INSERT into nationalities values ('Slovene or Slovenian','SLOVENIA','SI','a Slovene');
INSERT into nationalities values ('Somali','SOMALIA','SO','a Somali ');
INSERT into nationalities values ('South African','SOUTH AFRICA','ZA','a South African');
INSERT into nationalities values ('Sri Lankan','SRI LANKA','LK','a Sri Lankan');
INSERT into nationalities values ('Sudanese','SUDAN','SD','a Sudanese');
INSERT into nationalities values ('Surinamese','SURINAME','SR','a Surinamer');
INSERT into nationalities values ('Swazi','SWAZILAND','SZ','a Swazi');
INSERT into nationalities values ('Tajik or Tadjik','TAJIKISTAN','TJ','a Tajik');
INSERT into nationalities values ('Thai','THAILAND','TH','a Thai');
INSERT into nationalities values ('Togolese','TOGO','TG','a Togolese');
INSERT into nationalities values ('Trinidadian','TRINIDAD AND TOBAGO','TT','a Trinidadian');
INSERT into nationalities values ('Tunisian','TUNISIA','TN','a Tunisian');
INSERT into nationalities values ('Turkish','TURKEY','TR','a Turk');
INSERT into nationalities values ('Turkmen or Turkoman','TURKMENISTAN','TM','a Turkmen');
INSERT into nationalities values ('Tuvaluan','TUVALU','TV','a Tuvaluan');
INSERT into nationalities values ('Ugandan','UGANDA','UG','a Ugandan');
INSERT into nationalities values ('Ukrainian','UKRAINE','UA','a Ukrainian');
INSERT into nationalities values (' Emirati','UNITED ARAB EMIRATES','AE','a UAE citizen');
INSERT into nationalities values ('American','UNITED STATES','US','a US citizen');
INSERT into nationalities values ('Uruguayan','URUGUAY','UY','a Uruguayan');
INSERT into nationalities values ('Uzbek','UZBEKISTAN','UZ','an Uzbek');
INSERT into nationalities values ('Vanuatuan','VANUATU','VU','a Vanuatuan');
INSERT into nationalities values ('Yemeni','YEMEN','YE','a Yemeni');
INSERT into nationalities values ('Zambian','ZAMBIA','ZM','a Zambian');

-- insert artists_nationalities data
INSERT into artists_nationalities values (501,'Polish',1894,1967);
INSERT into artists_nationalities values (502,'American',1899,1972);
INSERT into artists_nationalities values (503,'Polish',1903,1975);
INSERT into artists_nationalities values (504,'American',1895,1957);
INSERT into artists_nationalities values (505,'American',1926,1976);
INSERT into artists_nationalities values (506,'American',1951,NULL);
INSERT into artists_nationalities values (507,'Cuban',1914,2008);
INSERT into artists_nationalities values (508,'Cuban',1922,1988);
INSERT into artists_nationalities values (509,'Swiss',NULL,NULL);
INSERT into artists_nationalities values (510,'French',1808,1900);
INSERT into artists_nationalities values (511,'French',1868,1941);
INSERT into artists_nationalities values (512,'French',1900,1979);
INSERT into artists_nationalities values (513,'French',1860,1936);
INSERT into artists_nationalities values (514,'American',1943,2013);
INSERT into artists_nationalities values (515,'American',1883,1972);
INSERT into artists_nationalities values (516,'American',1905,2006);
INSERT into artists_nationalities values (517,'Argentine',1905,1981);
INSERT into artists_nationalities values (518,'Yugoslav',1933,2016);
INSERT into artists_nationalities values (519,'American',1942,NULL);
INSERT into artists_nationalities values (520,'American',1939,2002);
INSERT into artists_nationalities values (521,'French',1896,1954);
INSERT into artists_nationalities values (522,'Spanish',1933,2006);
INSERT into artists_nationalities values (523,'French',NULL,NULL);
INSERT into artists_nationalities values (524,'French',NULL,NULL);
INSERT into artists_nationalities values (525,'French',NULL,NULL);
INSERT into artists_nationalities values (9,'American',1929,2015);
INSERT into artists_nationalities values (9,'Lithuanian',1923,1929);
INSERT into artists_nationalities values (104,'American',1935,1992);
INSERT into artists_nationalities values (104,'German',1910,1935);
INSERT into artists_nationalities values (182,'Brazilian',1956,NULL);
INSERT into artists_nationalities values (182,'Swiss',1931,1956);



-- QUERIES

-- show all the distinct nationalities of the artists in this collection
-- there may be multiple artists with the same nationality but there 
-- should not be duplicates in this output
-- DEMONSTRATES: 1giv (DISTINCT)
SELECT DISTINCT nationality
FROM artists_nationalities;


-- show the artists born after 1920 in this collection
-- and order it from least to greatest
-- DEMONSTRATES: 1b, 1c (birthYear > 1920), 3a (>)
SELECT artistName, birthYear
FROM artists
WHERE birthYear > 1920
ORDER BY birthYear ASC;


-- show the artists the lifespan's of artists
-- leave out the NULL values
-- DEMONSTRATES: 1c (deathYear - birthYear), 1f (using as), 3i (IS NOT NULL)
SELECT artistName, (deathYear - birthYear) as lifespan
FROM artists
where lifespan IS NOT NULL
ORDER BY lifespan;

-- show the artist that lived the longest from this collection
-- the number of aartworks he/she has, and her nationality
-- DEMONSTRATES: 1gi3 (max), 2c (Join at least 3 tables), 3a (=)
SELECT artists.artistName, max((deathYear - birthYear)) as lifespan,
        artworks.title, artists_nationalities.nationality
FROM artworks join artists on artworks.artistID = artists.artistID 
              join artists_nationalities on artists.artistID = artists_nationalities.artistID;


-- show the first 10 characters of the artworks title
-- sometimes the titles can get very long so we want
-- to get some abbreviations
-- DEMONSTRATES(1di (substr)
SELECT substr(title, 1, 10) as abbrevTitle
FROM artworks;

-- the gallery wants to print signs for all the 
-- paintings with their titles in all capital letters
-- and their artists in all lowercase letters
-- write a query that returns the titles in all capital letters
-- and the artist names in all lowercase letters
-- DEMONSTRATES: 1dii (Upper), 1diii (Lower), 2b (join 2 tables), 3a (=)
SELECT upper(artworks.title) as titleUpper, lower(artistName) as nameLower
FROM artworks JOIN artists ON artworks.artistID = artists.artistID;


-- the gallery manager wants to pay someone
-- to find the missing artPeriods
-- he is paying $5 per missing artPeriod
-- how much will he pay?
-- DEMONSTRATES: gi6 ( diff btwn count(*) and count), gi5 (count(*)), giii (aggregate function without GROUP BY)
SELECT (count(*) - count(periodName)) as unknownPeriods, (count(*) - count(periodName))*5 as price
FROM artworks;

-- show how many artists in this collection are
-- male vs female
-- DEMONSTRATES: gii (aggregate function with a GROUP BY), 4a (Group by one col or expression)
SELECT gender, count(gender)
FROM artists
GROUP BY gender;


-- show how many artists of each gender are in each grouping of nationality
-- DEMONSTRATES 4b (group by with two columns)
SELECT gender, nationality, count(*) as numPpl
FROM artists JOIN artists_nationalities ON artists.artistID = artists_nationalities.artistID
GROUP BY gender, nationality
ORDER BY nationality ASC;


-- show the artists that were born between 1900 and 1920
-- DEMONSTRATES: 3e (BETWEEN...AND...)
SELECT artistName, birthYear
FROM artists
WHERE birthYear BETWEEN 1900 AND 1920;


-- show the average lifespan of artists in this gallery
-- DEMONSTRATES: 5a, 5b, 1gi2 (AVG)
-- here we used an aggregate function (avg) without a GROUP BY so we could not
-- use the WHERE clause because it analyzes the data and takes things out
-- before aggregating it which we do not want here so we used HAVING
SELECT avg((deathYear - birthYear)) as avglifespan
FROM artists
HAVING lifespan IS NOT NULL;

-- show the artist who lived the shortest amount of time in this gallery
-- DEMONSTRATES: 1gi4 (MIN)
SELECT artistName, min((deathYear - birthYear)) as minlifespan
FROM artists
HAVING lifespan IS NOT NULL;


-- getting the result of a math problem using SELECT without FROM
-- the gallery has the capacity for 200 people
-- 69 people showed up to a show last night
-- how much extra room was there
-- DEMONSTRATES: 2a (leaving out the FROM clause)
SELECT 200 - 69 as ExtraCapacity;


-- find the artists with unknown deathDates
-- DEMONSTRATES: 3h (IS NULL)
SELECT artistName, deathYear
FROM artists
WHERE deathYear IS NULL;

-- find the artists who are females that were born after before 1930
-- DEMONSTRATES: 3b (AND), 3a (<)
SELECT artistName, birthYear
FROM artists
WHERE gender = 'F' AND birthYear < 1930;


-- find the artworks made by artists that are either American or German and they were born after 1920
-- DEMONSTRATES: 3c (uses an OR), 3d (demonstrates AND with OR, the AND is processed before the OR so the OR was put in parenthesis to get the desired output)
SELECT artworks.title, artworks.date, artists_nationalities.nationality, artists.birthYear
FROM artworks JOIN artists_nationalities ON artworks.artistID = artists_nationalities.artistID
     JOIN artists ON artists_nationalities.artistID = artists.artistID
WHERE (artists_nationalities.nationality = 'American' OR artists_nationalities.nationality = 'German') AND artists.birthYear > 1920;

-- find artists with the last Name Berman. The gallery wants to look into if they are related or not so also find their birthYear, deathYear, and country
-- DEMONSTRATES: 2c (JOIN 3 tables), 3g (LIKE using %)
SELECT artists.artistName, artists.birthYear, artists.deathYear, nationalities.country
FROM artists JOIN artists_nationalities ON artists.artistID = artists_nationalities.artistID JOIN nationalities ON nationalities.nationality = artists_nationalities.nationality 
WHERE artists.artistName LIKE '%Berman';

-- find artists with either first names that ends with a e and has five letters
-- a plaque was being inscribed that has room for five letters and they accidentally put the letter e at the end
-- so now they want to reuse it for a different artist name that ends with a e and has five letters
-- DEMONSTRATES: 3g (LIKE using _), 3g (LIKE using %)
SELECT artists.artistName
FROM artists
WHERE artistName LIKE '____e %';

-- a client wants to see artwork that was was completed in 1962 or 1964
-- find works that were completed in 1962 or 1964
-- DEMONSTRATES: 3f (IN)
SELECT title, date
FROM artworks
WHERE date IN (1962, 1964);


-- we have three unframed paintings and three frames
-- show all the combinations we can do of which paintings to put in which frame
-- DEMONSTRATES: 2e (cross join)
CREATE TABLE paintingOptions(
    paintingName varchar(20) PRIMARY KEY NOT NULL,
    artistName varchar(20),
    medium varchar(20)
);

INSERT into paintingOptions values ('Starry Night', 'Vincent Van Gogh', 'Oil Paint');
INSERT into paintingOptions values ('Mona Lisa', 'Leonardo da Vinci', 'Oil Paint');
INSERT into paintingOptions values ('The Kiss', 'Gustav Klimt', 'Oil Paint and Gold Leaf');

CREATE TABLE frames(
    frameID INTEGER PRIMARY KEY NOT NULL,
    color varchar(10),
    wood varchar(20)
);

INSERT into frames values (1, "Gold", "Oak");
INSERT into frames values (2, "Black", "Birch");
INSERT into frames values (3, "White", "Oak");

SELECT * 
FROM paintingOptions CROSS JOIN frames;


-- join together the artperiods and artworks table to show what paintings
-- the gallery doesn't have from which artPeriods
-- include the periodName, the year the period started, the title of the work, and the date of the title
-- DEMONSTRATES: 2d (LEFT JOIN)
SELECT artPeriods.periodName, yearStart, title, date
FROM artPeriods LEFT JOIN artworks ON artworks.periodName = artPeriods.periodName;

-- the gallery wants to write the artists name and when they were born for their biographies
-- create sentences for each artist saying their names and where they are from
-- DEMONSTRATES: 1e (using || to concatonate)
SELECT (artistName || " hails from " || nationalities.country) as sentence
FROM artists JOIN artists_nationalities ON artists.artistID = artists_nationalities.artistID 
             JOIN nationalities ON artists_nationalities.nationality = nationalities.nationality;

-- find the average date of all the art in the collection as a whole number
-- DEMONSTRATES: 1div (round)
SELECT round(avg(date), 0) as averageDateOfCompletion
FROM artworks;

-- find the total difference between when the Expressionism art Period started and when all the artworks classified as expressionism were finished
-- DEMONSTRATES: 1gi1 (SUM)
SELECT sum(artworks.date - artPeriods.yearStart)
FROM artworks JOIN artPeriods ON artworks.periodName = artPeriods.periodName;