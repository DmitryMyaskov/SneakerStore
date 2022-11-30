
DROP TABLE IF EXISTS PRODUCT;
DROP TABLE IF EXISTS COLOR;
DROP TABLE IF EXISTS BRAND;
DROP TABLE IF EXISTS PRODUCT_COLOR;
DROP TABLE IF EXISTS SHOPING_CART;
DROP TABLE IF EXISTS ORDER_CART;
DROP TABLE IF EXISTS FAVORITES;
DROP TABLE IF EXISTS SIZE_PROD;





CREATE TABLE COLOR(
    COLOR_ID BIGINT PRIMARY KEY,
    NAME VARCHAR
);

CREATE TABLE BRAND(
    BRAND_ID BIGINT PRIMARY KEY,
    NAME VARCHAR
);


CREATE TABLE PRODUCT(
    PRODUCT_ID BIGINT PRIMARY KEY,
    BRAND VARCHAR,
    MODEL VARCHAR,
    PRICE BIGINT,
    IMG VARCHAR,
    SALE VARCHAR,
    STATUS VARCHAR,
    BRAND_ID BIGINT
);

CREATE TABLE PRODUCT_COLOR(
    COLOR_ID BIGINT,
    PRODUCT_ID BIGINT,
    PRIMARY KEY (COLOR_ID,PRODUCT_ID)
);

CREATE TABLE SHOPING_CART(
    ID BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY
);

CREATE TABLE USER(
    USER_ID BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    ENABLED BOOLEAN,
    PASSWORD VARCHAR(255),
    USERNAME VARCHAR(255),
    CART_ID BIGINT
);


CREATE TABLE ORDER_CART(
    ID BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    QUANTITY BIGINT
);

CREATE TABLE FAVORITES(
    ID BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY
);

CREATE TABLE SIZE_PROD (
    ID BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    SIZE_P VARCHAR,
    qunatity INT,
    PRODUCT_ID BIGINT
)

