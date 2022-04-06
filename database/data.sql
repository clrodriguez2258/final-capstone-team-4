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
        '8474392530', 'true', true, '8:00', '22:00'),

       ('McDonalds', 'Coit', 'Plano', 'TX', '75075', '3', 'mcdonalds.jpg', 'www.mcdonalds.com',
        '9727580282', 'true', true, '6:00', '22:00'),

       ('In N Out', 'N Central Expy', 'Plano', 'TX', '75074', '4', 'innout.jpg', 'www.in-n-out.com',
        '8007861000', 'true', true, '10:30', '1:00'),

       ('Whataburger', 'Coit', 'Plano', 'TX', '75075', '4', 'whataburger.jpg', 'www.whataburger.com',
        '9725190442', 'true', true, '6:00', '22:00'),

       ('Taqueria La Ventana', 'Belt Line Rd', 'Addison', 'TX', '75001', '4', 'laVentana.jpg',
        'www.taquerialaventana.com',
        '4698282035', 'true', true, '11:00', '22:00'),

       ('LazyDog Restaurant & Bar', 'Preston Rd', 'Plano', 'TX', '75024', '4', 'lazydogrestaurants.jpg',
        'www.lazydogrestaurants.com',
        '4696091570', 'true', true, '11:00', '12:00'),

       ('Velvet Taco', 'W Park', 'Plano', 'TX', '75093', '4', 'velvetTaco.jpg', 'velvettaco.com',
        '4698250099', 'true', true, '11:00', '22:00');




INSERT INTO guest(guest_name, attending, email)
VALUES ('Christian Rodriguez',  'yes', 'ab@f=gmail.com');


INSERT INTO events(restaurant_id, event_name, event_time, event_date, decision_date, decision_time)
values ('1', 'burritotime', '17:00', '04/05/2022', '04/04/2022', '18:00');
-- --
-- --

-- -- INSERT INTO GUEST




INSERT INTO user_event(user_id, event_id)
VALUES ((SELECT id FROM app_user where user_name= 'user1@gmail.com'),(SELECT event_id from events where event_name ='burritotime'));
--
INSERT INTO guest_event(guest_id, event_id)
VALUES((SELECT guest_id FROM guest WHERE email = 'guest1@gmail.com'), (SELECT event_id from events where event_name ='burritotime'));
--


ALTER TABLE user_event
    ADD FOREIGN KEY (event_id) REFERENCES events (event_id);

ALTER TABLE user_event
    ADD FOREIGN KEY (user_id) REFERENCES app_user (id);

ALTER TABLE guest_event
    ADD FOREIGN KEY (guest_id) REFERENCES events (event_id);

ALTER TABLE events
    ADD CONSTRAINT FK_events FOREIGN KEY (restaurant_id) REFERENCES restaurant (restaurant_id);

-- INSERT INTO USERPROFILE
-- INSERT INTO userprofile(event_id, email, first_name, last_name, phone_number, zipcode)
-- VALUES('1', 'user1@gmail.com', 'user1', 'userLastName', '123456789', '75075'),
--        ('1', 'user2@gmail.com','user2', 'user2LastName', '875678544', '75074'),
--       ('1', 'user3@gmail.com','user3', 'user3LastName', '875678544', '75075');

-- INSERT INTO EVENTS

COMMIT;