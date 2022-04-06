-- *****************************************************************************
-- This script contains INSERT statements for populating tables with seed data
-- *****************************************************************************

BEGIN;

-- INSERT statements go here
-- insert into app_user(id, user_name, password, role, salt )
-- values ();

INSERT INTO restaurant(restaurant_name, street, city, state, zipcode, rating, image_name, website, phone_number,
                       call_to_order, isOpen, open_time, close_time)

VALUES ('Chipotle', 'mainstreet', 'Rolling Meadows', 'OH', '43204', '4', 'chipotle.jpg', 'www.chipotle.com',
        '8474392530', 'true', true, '8:00', '22:00');

INSERT INTO restaurant(restaurant_name, street, city, state, zipcode, rating, image_name, website, phone_number,
                       call_to_order, isOpen, open_time, close_time)
VALUES ('McDonalds', 'Coit', 'Plano', 'TX', '75075', '3', 'mcdonalds.jpg', 'www.mcdonalds.com',
        '9727580282', 'true', true, '6:00', '22:00');
INSERT INTO restaurant(restaurant_name, street, city, state, zipcode, rating, image_name, website, phone_number,
                       call_to_order, isOpen, open_time, close_time)
VALUES ('In N Out', 'N Central Expy', 'Plano', 'TX', '75074', '4', 'innout.jpg', 'www.in-n-out.com',
        '8007861000', 'true', true, '10:30', '1:00');

INSERT INTO restaurant(restaurant_name, street, city, state, zipcode, rating, image_name, website, phone_number,
                       call_to_order, isOpen, open_time, close_time)
VALUES ('Whataburger', 'Coit', 'Plano', 'TX', '75075', '4', 'whataburger.jpg', 'www.whataburger.com',
        '9725190442', 'true', true, '6:00', '22:00');

INSERT INTO restaurant(restaurant_name, street, city, state, zipcode, rating, image_name, website, phone_number,
                       call_to_order, isOpen, open_time, close_time)
VALUES ('Taqueria La Ventana', 'Belt Line Rd', 'Addison', 'TX', '75001', '4', 'laVentana.jpg',
        'www.taquerialaventana.com',
        '4698282035', 'true', true, '11:00', '22:00');

INSERT INTO restaurant(restaurant_name, street, city, state, zipcode, rating, image_name, website, phone_number,
                       call_to_order, isOpen, open_time, close_time)
VALUES ('LazyDog Restaurant & Bar', 'Preston Rd', 'Plano', 'TX', '75024', '4', 'lazydogrestaurants.jpg',
        'www.lazydogrestaurants.com',
        '4696091570', 'true', true, '11:00', '12:00');

INSERT INTO restaurant(restaurant_name, street, city, state, zipcode, rating, image_name, website, phone_number,
                       call_to_order, isOpen, open_time, close_time)
VALUES ('Velvet Taco', 'W Park', 'Plano', 'TX', '75093', '4', 'velvetTaco.jpg', 'velvettaco.com',
        '4698250099', 'true', true, '11:00', '22:00');

INSERT INTO restaurant(restaurant_name, street, city, state, zipcode, rating, image_name, website, phone_number,
                       call_to_order, isOpen, open_time, close_time, cuisine, closing_soon, pet_friendly, affordability, capacity, dresscode, dine_in)
VALUES ('Cafe Valentina', 'McKennans Church Rd.', 'Wilmington', 'DE', '19808', '5', 'cafevalentina.jpg', 'www.cafevalentina.com',
        '3029960301', 'true', true, '10:00', '22:00', 'Italian', null, 'false', '$$', '150', 'family style', 'true');

INSERT INTO restaurant(restaurant_name, street, city, state, zipcode, rating, image_name, website, phone_number,
                       call_to_order, isOpen, open_time, close_time, cuisine, closing_soon, pet_friendly, affordability, capacity, dresscode, dine_in)
VALUES ('Rice Restaurant', 'Limestone Rd', 'Wilmington', 'DE', '19808', '5', 'rice.png', 'www.rice2015.com',
        '3029997423', 'true', true, '11:00', '22:00', 'Cantonese', null, 'false', '$$', '150', 'contemporary casual', 'true');

INSERT INTO restaurant(restaurant_name, street, city, state, zipcode, rating, image_name, website, phone_number,
                       call_to_order, isOpen, open_time, close_time, cuisine, closing_soon, pet_friendly, affordability, capacity, dresscode, dine_in)
VALUES ('Applebees', 'Kirkwood Hwy', 'Wilmington', 'DE', '19808', '4', 'applebees.png', 'www.applebees.com',
        '3029951328', 'true', true, '11:00', '22:00', 'American', null, 'false', '$$', '150', 'casual', 'true');

INSERT INTO restaurant(restaurant_name, street, city, state, zipcode, rating, image_name, website, phone_number,
                       call_to_order, isOpen, open_time, close_time, cuisine, closing_soon, pet_friendly, affordability, capacity, dresscode, dine_in)
VALUES ('Wingstop', 'Kirkwood Hwy', 'Wilmington', 'DE', '19808', '4', 'wingstop.png', 'www.wingstop.com',
        '3025167356', 'true', true, '11:00', '24:00', 'American', null, 'false', '$$', '150', 'casual', 'true');

INSERT INTO restaurant(restaurant_name, street, city, state, zipcode, rating, image_name, website, phone_number,
                       call_to_order, isOpen, open_time, close_time, cuisine, closing_soon, pet_friendly, affordability, capacity, dresscode, dine_in)
VALUES ('Ruby Tuesday', 'Limestone Rd', 'Wilmington', 'DE', '19808', '4', 'rubytuesday.png', 'www.rubytuesday.com',
        '3029959081', 'true', true, '11:00', '22:00', 'American', null, 'false', '$$', '150', 'casual', 'true');

INSERT INTO restaurant(restaurant_name, street, city, state, zipcode, rating, image_name, website, phone_number,
                       call_to_order, isOpen, open_time, close_time, cuisine, closing_soon, pet_friendly, affordability, capacity, dresscode, dine_in)
VALUES ('Seasons Pizza', 'Kirkwood Hwy', 'Wilmington', 'DE', '19808', '4', 'seasonspizza.jpg', 'www.seasonspizza.com',
        '3029986500', 'true', true, '10:00', '22:00', 'Pizza', null, 'false', '$', '150', 'casual', 'true');

INSERT INTO restaurant(restaurant_name, street, city, state, zipcode, rating, image_name, website, phone_number,
                       call_to_order, isOpen, open_time, close_time, cuisine, closing_soon, pet_friendly, affordability, capacity, dresscode, dine_in)
VALUES ('Pats Pizza', 'W. Kirkwood Hwy', 'Wilmington', 'DE', '19808', '4', 'patspizza.png', 'kirkwood.patspizzeria.com',
        '3029959081', 'true', true, '10:00', '22:00', 'American', null, 'false', '$', '150', 'casual', 'true');

INSERT INTO restaurant(restaurant_name, street, city, state, zipcode, rating, image_name, website, phone_number,
                       call_to_order, isOpen, open_time, close_time, cuisine, closing_soon, pet_friendly, affordability, capacity, dresscode, dine_in)
VALUES ('Polk Bros.', 'Kirkwood Hwy', 'Wilmington', 'DE', '19808', '4', 'pokebros.png', 'www.eatpokebros.com',
        '3023587020', 'true', true, '11:00', '21:00', 'Seafood', null, 'false', '$$', '150', 'casual', 'true');

INSERT INTO restaurant(restaurant_name, street, city, state, zipcode, rating, image_name, website, phone_number,
                       call_to_order, isOpen, open_time, close_time, cuisine, closing_soon, pet_friendly, affordability, capacity, dresscode, dine_in)
VALUES ('Zoup!', 'W. Kirkwood Hwy', 'Wilmington', 'DE', '19808', '5', 'zoup.jpg', 'online.zoup.com',
        '3026604400', 'true', true, '11:00', '20:00', 'American', null, 'false', '$$', '150', 'Cafe', 'true');

INSERT INTO restaurant(restaurant_name, street, city, state, zipcode, rating, image_name, website, phone_number,
                       call_to_order, isOpen, open_time, close_time, cuisine, closing_soon, pet_friendly, affordability, capacity, dresscode, dine_in)
VALUES ('Moes Southwest Grill', 'Kirkwood Hwy', 'Wilmington', 'DE', '19808', '3', 'moes.png', 'www.moes.com',
        '3026913690', 'true', true, '11:00', '20:00', 'Southwestern', null, 'false', '$', '150', 'casual', 'true');

INSERT INTO user_event(user_id, event_id)
VALUES ((SELECT id FROM app_user where user_name= 'CodeSwindlers@gmail.com'),(SELECT event_id from event where event_name ='burritotime'));



-- INSERT INTO GUEST
insert into guest(guest_name, attending, email)
values ('Christian Rodriguez',  'yes', 'ab@f=gmail.com');



-- INSERT INTO USERPROFILE
INSERT INTO userprofile(event_id, email, first_name, last_name, phone_number, zipcode)
VALUES('1', 'user1@gmail.com', 'user1', 'userLastName', '123456789', '75075'),
       ('1', 'user2@gmail.com','user2', 'user2LastName', '875678544', '75074'),
      ('1', 'user3@gmail.com','user3', 'user3LastName', '875678544', '75075');

-- INSERT INTO EVENTS
INSERT INTO event(restaurant_id, event_name, event_time, event_date, decision_date, decision_time)
values ('1', 'burritotime', '17:00', '04/05/2022', '04/04/2022', '18:00');



COMMIT;