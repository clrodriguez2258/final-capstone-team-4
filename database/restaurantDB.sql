BEGIN TRANSACTION;

CREATE TABLE restaurant
(
    restaurant_number serial,
    name            varchar(200) NOT NULL,
    city            varchar(200) NOT NULL,
    phone_number    varchar(10),
    image_name      varchar(200),
    isOpen          boolean,

    primary key (restaurant_number)
);

-- INSERT VALUES
INSERT INTO restaurant(name, city, phone_number, image_name, isOpen)
VALUES ('Chipotle', 'Rolling Meadows', '8474392530', 'chipotle.jpg', true);

INSERT INTO restaurant(name, city, phone_number, image_name, isOpen)
VALUES ('Portillos', 'Rolling Meadows', '8472280777', 'portillos.png', true);

INSERT INTO restaurant(name, city, phone_number, image_name, isOpen)
VALUES ('Panda Express', 'Rolling Meadows', '8474279716', 'panda-express.jpg', true);

INSERT INTO restaurant(name, city, phone_number, image_name, isOpen)
VALUES ('McDonalds', 'Rolling Meadows', '8476700780', 'mcdonalds.jpg', true);

INSERT INTO restaurant(name, city, phone_number, image_name, isOpen)
VALUES ('Arbys', 'Rolling Meadows', '8472280790', 'arbys.png', true);

INSERT INTO restaurant(name, city, phone_number, image_name, isOpen)
VALUES ('Panera Bread', 'Rolling Meadows', '8475933601', 'panera-bread.jpg', true);

INSERT INTO restaurant(name, city, phone_number, image_name, isOpen)
VALUES ('Wendys', 'Schaumburg', '8473030242', 'wendys.jpg', true);

COMMIT;
