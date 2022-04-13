-- *************************************************************************************************
-- This script creates all of the database objects (tables, sequences, etc) for the database
-- *************************************************************************************************

BEGIN;

-- CREATE statements go here
DROP TABLE IF EXISTS app_user,user_event,events, favorites , restaurant, guest, guest_event,restaurant_event CASCADE;

CREATE TABLE app_user
(
    id        SERIAL PRIMARY KEY,
    user_name varchar(32)  NOT NULL UNIQUE,
    password  varchar(32)  NOT NULL,
    role      varchar(32),
    salt      varchar(255) NOT NULL
);



CREATE TABLE restaurant
(
    restaurant_id   serial,
    restaurant_name varchar(200) NOT NULL,
    street          varChar(255) NOT NULL,
    city            varchar(200) NOT NULL,
    state           varchar(2)   NOT NULL,
    zipcode         varchar(5)   NOT NULL,
    rating          int,
    image_name      varchar(255),
    website         varchar(255),
    phone_number    varchar(10)  NOT NULL,
    call_to_order   boolean,
    open_time       time,
    close_time      time,
    cuisine         varchar(250),
    pet_Friendly    boolean,
    affordability   int,
    capacity        int,
    dressCode       varChar(250),
    dine_in         boolean,


    CONSTRAINT PK_restaurant PRIMARY KEY (restaurant_id)
);

CREATE TABLE guest
(
    guest_id   serial,
    guest_name varchar(250),
    email      varchar(250) NOT NULL,

    CONSTRAINT PK_guest PRIMARY KEY (guest_id)

);

CREATE TABLE guest_restaurant
(

    restaurant_id     int,
    guest_id          int,
    event_id          int,
    primary key (restaurant_id, guest_id)
);



create table favorites
(
    user_id       int,
    restaurant_id int,

    primary key (user_id, restaurant_id)

);



CREATE TABLE events
(
    event_id      serial,
    restaurant_id int,
    event_name    varchar(250) not null,
    event_time    time         not null,
    event_date    date         not null,
    decision_date date,

    CONSTRAINT PK_event PRIMARY KEY (event_id)
);


CREATE TABLE guest_event
(
    guest_id int,
    event_id int,
    voted boolean Default (false),
    CONSTRAINT PK_guest_event PRIMARY KEY (guest_id, event_id)

);

CREATE TABLE user_event
(
    user_id  int,
    event_id int,

    PRIMARY KEY (user_id, event_id)

);


CREATE TABLE restaurant_event
(
    event_id      int,
    restaurant_id int,
    thumbs_up_count   int DEFAULT (0),
    thumbs_down_count int DEFAULT (0),

    PRIMARY KEY (event_id, restaurant_id)

);



COMMIT;

