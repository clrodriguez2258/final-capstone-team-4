BEGIN TRANSACTION;

DROP TABLE IF EXISTS appUser, restaurant, events, preferences, guest, userPreferences, restaurantPreferences, guestEvent CASCADE;
CREATE TABLE restaurant
(
    restaurant_id   serial,
    restaurant_name varchar(200) NOT NULL,
    street          varChar(255) NOT NULL,
    city            varchar(200) NOT NULL,
    state           varchar(2),
    zipcode         varchar(5),
    rating          int,
    image_name      varchar(255),
    website         varchar(255),
    phone_number    varchar(10),
    call_to_order   boolean,
    isOpen          boolean,
    open_time       time,
    close_time      time,
    primary key (restaurant_id)
);

CREATE TABLE appUser
(
    userId serial,
    email varchar(255) NOT NULL,
    password varchar(255)NOT NULL,


)

-- INSERT VALUES
INSERT INTO restaurant(restaurant_name, street, city, state, zipcode, rating, image_name, website, phone_number,
                       call_to_order, isOpen, open_time, close_time)

VALUES ('Chipotle', 'mainstreet', 'Rolling Meadows', 'OH', '43204', '4', 'chipotle.jpg', 'www.chipotle.com',
        '8474392530', 'true', true, '8:00', '22:00');

-- INSERT INTO restaurant(name, city, phone_number, image_name, isOpen)
-- VALUES ('Portillos', 'Rolling Meadows', '8472280777', 'portillos.png', true);
--
-- INSERT INTO restaurant(name, city, phone_number, image_name, isOpen)
-- VALUES ('Panda Express', 'Rolling Meadows', '8474279716', 'panda-express.jpg', true);
--
-- INSERT INTO restaurant(name, city, phone_number, image_name, isOpen)
-- VALUES ('McDonalds', 'Rolling Meadows', '8476700780', 'mcdonalds.jpg', true);
--
-- INSERT INTO restaurant(name, city, phone_number, image_name, isOpen)
-- VALUES ('Arbys', 'Rolling Meadows', '8472280790', 'arbys.png', true);
--
-- INSERT INTO restaurant(name, city, phone_number, image_name, isOpen)
-- VALUES ('Panera Bread', 'Rolling Meadows', '8475933601', 'panera-bread.jpg', true);
--
-- INSERT INTO restaurant(name, city, phone_number, image_name, isOpen)
-- VALUES ('Wendys', 'Schaumburg', '8473030242', 'wendys.jpg', true);



COMMIT;
