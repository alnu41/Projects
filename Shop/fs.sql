--
-- File generated with SQLiteStudio v3.3.3 on Fri Apr 1 09:38:02 2022
--
-- Text encoding used: System
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: bill
DROP TABLE IF EXISTS bill;

CREATE TABLE bill (
    prod_id   VARCHAR (10) NOT NULL,
    prod_name VARCHAR (30) NOT NULL,
    quantity  INT (20)     NOT NULL,
    price     FLOAT        NOT NULL,
    totprice  FLOAT        NOT NULL,
    biilno    INT (30)     NOT NULL,
    date      TIMESTAMP    NOT NULL
                           DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (
        biilno
    )
);

INSERT INTO bill (prod_id, prod_name, quantity, price, totprice, biilno, date) VALUES ('p4', 'Backpacks', 7, 700.0, 4900.0, 41, '2018-10-28 21:54:53');
INSERT INTO bill (prod_id, prod_name, quantity, price, totprice, biilno, date) VALUES ('p4', 'Backpacks', 4, 700.0, 2800.0, 42, '2018-10-28 21:57:27');
INSERT INTO bill (prod_id, prod_name, quantity, price, totprice, biilno, date) VALUES ('p2', 'Badminton_Shuttle ', 4, 500.0, 2000.0, 43, '2018-10-28 22:19:38');
INSERT INTO bill (prod_id, prod_name, quantity, price, totprice, biilno, date) VALUES ('p6', 'Bikes', 6, 400.0, 2400.0, 44, '2018-10-29 00:08:16');
INSERT INTO bill (prod_id, prod_name, quantity, price, totprice, biilno, date) VALUES ('p6', 'Bikes', 5, 400.0, 2000.0, 45, '2018-10-29 00:10:22');
INSERT INTO bill (prod_id, prod_name, quantity, price, totprice, biilno, date) VALUES ('p2', 'Backpacks', 5, 150.0, 750.0, 46, '2018-10-29 01:29:37');
INSERT INTO bill (prod_id, prod_name, quantity, price, totprice, biilno, date) VALUES ('p3', 'Gloves', 5, 700.0, 3500.0, 47, '2018-10-29 01:34:45');
INSERT INTO bill (prod_id, prod_name, quantity, price, totprice, biilno, date) VALUES ('p3', 'Gloves', 5, 700.0, 3500.0, 48, '2018-10-29 10:34:47');
INSERT INTO bill (prod_id, prod_name, quantity, price, totprice, biilno, date) VALUES ('p1', 'Badminton_Racket', 2, 200.0, 400.0, 49, '2018-10-29 19:48:20');
INSERT INTO bill (prod_id, prod_name, quantity, price, totprice, biilno, date) VALUES ('p1', 'Badminton_Racket', 2, 200.0, 400.0, 50, '2018-10-29 20:11:42');
INSERT INTO bill (prod_id, prod_name, quantity, price, totprice, biilno, date) VALUES ('p5', 'Balls', 2, 900.0, 1800.0, 51, '2020-02-27 15:18:26');
INSERT INTO bill (prod_id, prod_name, quantity, price, totprice, biilno, date) VALUES ('p5', 'Balls', 2, 900.0, 1800.0, 52, '2020-02-27 15:19:24');
INSERT INTO bill (prod_id, prod_name, quantity, price, totprice, biilno, date) VALUES ('p1', 'Badminton_Racket', 2, 200.0, 400.0, 53, '2020-03-03 15:18:54');

-- Table: cart
DROP TABLE IF EXISTS cart;

CREATE TABLE cart (
    prod_id            VARCHAR (10) NOT NULL,
    prod_name          VARCHAR (30) NOT NULL,
    quantity           INT (20)     NOT NULL,
    pBadminton_Shuttle FLOAT        NOT NULL,
    totprice           DOUBLE       NOT NULL
);


-- Table: inventory
DROP TABLE IF EXISTS inventory;

CREATE TABLE inventory (
    prod_id    VARCHAR (10) NOT NULL,
    prod_name  VARCHAR (30) NOT NULL,
    quantity   INT (20)     NOT NULL,
    price      FLOAT        NOT NULL,
    mfd        VARCHAR (30) NOT NULL,
    dis        VARCHAR (30) NOT NULL,
    prod_model VARCHAR (30) NOT NULL,
    PRIMARY KEY (
        prod_id
    )
);

INSERT INTO inventory (prod_id, prod_name, quantity, price, mfd, dis, prod_model) VALUES ('p1', 'Badminton_Racket', 70, 900.0, '5/10/2017', '6', 'Astrox99');
INSERT INTO inventory (prod_id, prod_name, quantity, price, mfd, dis, prod_model) VALUES ('p2', 'Badminton_Shuttle', 39, 700.0, '03/10/2017', '3', 'CarltonF2');
INSERT INTO inventory (prod_id, prod_name, quantity, price, mfd, dis, prod_model) VALUES ('p3', 'Gloves', 40, 700.0, '22/11/2017', '22', '3DModel');
INSERT INTO inventory (prod_id, prod_name, quantity, price, mfd, dis, prod_model) VALUES ('p4', 'Backpacks', 85, 150.0, '20/08/2018', '11', '1102_Bag');
INSERT INTO inventory (prod_id, prod_name, quantity, price, mfd, dis, prod_model) VALUES ('p5', 'Balls', 370, 200.0, '20/10/2018', '20', 'MAX');
INSERT INTO inventory (prod_id, prod_name, quantity, price, mfd, dis, prod_model) VALUES ('p6', 'Bikes', 400, 300.0, '4/5/2016', '4', 'Aprilia_RVX450');
INSERT INTO inventory (prod_id, prod_name, quantity, price, mfd, dis, prod_model) VALUES ('p7', 'Boards ', 66, 500.0, '4/6/2017', '3', 'Ice_skate');
INSERT INTO inventory (prod_id, prod_name, quantity, price, mfd, dis, prod_model) VALUES ('p8', 'Skates', 80, 500.0, '3/5/2017', '5', 'Roller');
INSERT INTO inventory (prod_id, prod_name, quantity, price, mfd, dis, prod_model) VALUES ('p9', 'Sleds', 90, 300.0, '7/2/2017', '5', 'Slippery_Racer');
INSERT INTO inventory (prod_id, prod_name, quantity, price, mfd, dis, prod_model) VALUES ('p10', 'Sportswear', 50, 900.0, '8/7/2017', '7', 'Atheltic_wear');
INSERT INTO inventory (prod_id, prod_name, quantity, price, mfd, dis, prod_model) VALUES ('p11', 'Sunglasses', 49, 400.0, '4/5/2017', '4', 'Polarized_Glass');
INSERT INTO inventory (prod_id, prod_name, quantity, price, mfd, dis, prod_model) VALUES ('p12', 'Tables', 500, 5.0, '29-02-2019', '29', 'Ping_Pong_table');

-- Table: sell
DROP TABLE IF EXISTS sell;

CREATE TABLE sell (
    biilno    INT (10)     NOT NULL,
    prod_id   VARCHAR (30) NOT NULL,
    prod_name VARCHAR (20) NOT NULL,
    quantity  INT (20)     NOT NULL,
    price     DOUBLE       NOT NULL,
    totprice  DOUBLE       NOT NULL,
    date      TIMESTAMP    NOT NULL
                           DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (
        biilno
    )
);

INSERT INTO sell (biilno, prod_id, prod_name, quantity, price, totprice, date) VALUES (9, 'p5', 'Balls', 5, 900.0, 4450.0, '2020-02-27 15:21:12');
INSERT INTO sell (biilno, prod_id, prod_name, quantity, price, totprice, date) VALUES (8, 'p1', 'Badminton_Racket', 20, 200.0, 3800.0, '2018-10-29 20:16:01');
INSERT INTO sell (biilno, prod_id, prod_name, quantity, price, totprice, date) VALUES (7, 'p1', 'Badminton_Racket', 10, 200.0, 1900.0, '2018-10-29 19:51:05');
INSERT INTO sell (biilno, prod_id, prod_name, quantity, price, totprice, date) VALUES (10, 'p1', 'Badminton_Racket', 6, 200.0, 1140.0, '2020-03-03 15:21:22');

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
