-- *************************************************************************************************
-- This script creates all of the database objects (tables, sequences, etc) for the database
-- *************************************************************************************************

BEGIN;

-- CREATE statements go here
DROP TABLE IF EXISTS app_user, restaurant, guest, preferences, guest_event, event ;

CREATE TABLE app_user (
  id SERIAL PRIMARY KEY,
  user_name varchar(32) NOT NULL UNIQUE,
  password varchar(32) NOT NULL,
  role varchar(32),
  salt varchar(255) NOT NULL
);

CREATE TABLE restaurant
(
    restaurant_id   serial,
    restaurant_name varchar(200) NOT NULL,
    street          varChar(255) NOT NULL,
    city            varchar(200) NOT NULL,
    state           varchar(2) NOT NULL,
    zipcode         varchar(5) NOT NULL,
    rating          int,
    image_name      varchar(255),
    website         varchar(255),
    phone_number    varchar(10) NOT NULL,
    call_to_order   boolean,
    isOpen          boolean,
    open_time       time,
    close_time      time,
    cuisine varchar (250) ,
    closing_soon boolean,
    primary key (restaurant_id)
);

CREATE TABLE guest(
    guest_id serial PRIMARY KEY,
    event_id int not null,
    guest_name varchar (250),
    attending boolean,
    email varchar(250)

);
CREATE TABLE preferences(
    preference_id serial primary key ,
    pet_friendly boolean ,
    dress_code varchar(250),
    dineIn boolean,
    vegan boolean,
    gluten_free boolean



);
CREATE TABLE event(
    event_id serial PRIMARY KEY ,
    user_id int ,
    restaurant_id int,
    event_name varchar(250) not null ,
    event_time time not null,
    event_date date not null,
    decision_date date,
    decision_time time,
    thumbs_up boolean,
    thumbs_up_count int,
    thumbs_down boolean,
    thumbs_down_count int
);


CREATE TABLE guest_event(
    guest_id int ,
    event_id int

);


-- INSERTING VALUES

--
-- INSERT INTO restaurant(restaurant_name, street, city, state, zipcode, rating, image_name, website, phone_number,
--                        call_to_order, isOpen, open_time, close_time)
--
-- VALUES ('Chipotle', 'mainstreet', 'Rolling Meadows', 'OH', '43204', '4', 'chipotle.jpg', 'www.chipotle.com',
--         '8474392530', 'true', true, '8:00', '22:00');
--
-- INSERT INTO event( user_id, restaurant_id, event_name, event_time, event_date, decision_date, decision_time
-- )
-- values('1', '1', 'burritotime', '15:00', '17:00','04/05/2022','04/04/2022', '18:00' );
--
-- insert into  guest( event_id, guest_name, attending, email )
-- values ('1','Christian Rodriguez', 'yes','ab@f=gmail.com');
--

COMMIT;
