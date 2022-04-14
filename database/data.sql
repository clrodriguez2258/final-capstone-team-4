-- *****************************************************************************
-- This script contains INSERT statements for populating tables with seed data
-- *****************************************************************************

BEGIN;



INSERT INTO restaurant(restaurant_name, street, city, state, zipcode, rating, image_name, website, phone_number,
                       call_to_order, open_time, close_time, cuisine, pet_friendly, affordability, capacity, dresscode, dine_in)

VALUES ('Chipotle', 'mainstreet', 'Plano', 'TX', '75075', '4', 'chipotle.jpg', 'www.chipotle.com',
        '8474392530', 'true',  '8:00', '22:00',null,  null, null , null, null, null),

       ('McDonalds', 'Coit', 'Plano', 'TX', '75075', '3', 'mcdonalds.png', 'www.mcdonalds.com',
        '9727580282', 'true',  '6:00', '22:00',null,  null, null , null, null, null),

       ('In N Out', 'N Central Expy', 'Plano', 'TX', '75074', '4', 'inNout.jpg', 'www.in-n-out.com',
        '8007861000', 'true',  '10:30', '1:00',null,  null, null , null, null, null),

       ('Whataburger', 'Coit', 'Plano', 'TX', '75075', '4', 'whataburger.jpg', 'www.whataburger.com',
        '9725190442', 'true',  '6:00', '22:00',null,  null, null , null, null, null),

       ('Taqueria La Ventana', 'Belt Line Rd', 'Plano', 'TX', '75001', '4', 'laventana.jpg',
        'www.taquerialaventana.com',
        '4698282035', 'true',  '11:00', '22:00',null,  null, null , null, null, null),

       ('LazyDog Restaurant & Bar', 'Preston Rd', 'Plano', 'TX', '75024', '4', 'lazydog.jpg',
        'www.lazydogrestaurants.com',
        '4696091570', 'true',  '11:00', '12:00',null,  null, null , null, null, null),

       ('Velvet Taco', 'W Park', 'Plano', 'TX', '75093', '4', 'velvettaco.jpg', 'velvettaco.com',
        '4698250099', 'true',  '11:00', '22:00',null,  null, null , null, null, null),

       ('Cafe Valentina', 'McKennans Church Rd.', 'Wilmington', 'DE', '19808', '5', 'cafevalentina.jpg',
        'www.cafevalentina.com',
        '3029960301', 'true',  '10:00', '22:00', 'Italian',  'false', '2', '150', 'family style', 'true'),

       ('Rice Restaurant', 'Limestone Rd', 'Wilmington', 'DE', '19808', '5', 'rice.png', 'www.rice2015.com',
        '3029997423', 'true',  '11:00', '22:00', 'Cantonese',  'false', '2', '150', 'contemporary casual',
        'true'),

       ('Applebees', 'Kirkwood Hwy', 'Wilmington', 'DE', '19808', '4', 'applebees.png', 'www.applebees.com',
        '3029951328', 'true',  '11:00', '22:00', 'American',  'false', '2', '150', 'casual', 'true'),

       ('Wingstop', 'Kirkwood Hwy', 'Wilmington', 'DE', '19808', '4', 'wingstop.png', 'www.wingstop.com',
        '3025167356', 'true', '11:00', '24:00', 'American', 'false', '2', '150', 'casual', 'true'),

       ('Ruby Tuesday', 'Limestone Rd', 'Wilmington', 'DE', '19808', '4', 'rubytuesday.png', 'www.rubytuesday.com',
        '3029959081', 'true',  '11:00', '22:00', 'American',  'false', '2', '150', 'casual', 'true'),

       ('Seasons Pizza', 'Kirkwood Hwy', 'Wilmington', 'DE', '19808', '4', 'seasonspizza.jpg', 'www.seasonspizza.com',
        '3029986500', 'true',  '10:00', '22:00', 'Pizzeria',  'false', '1', '150', 'casual', 'true'),

       ('Pats Pizza', 'W. Kirkwood Hwy', 'Wilmington', 'DE', '19808', '4', 'patspizza.png',
        'kirkwood.patspizzeria.com', '3029959081', 'true', '10:00', '22:00', 'American', 'false', '1',
        '150', 'casual', 'true'),

       ('Polk Bros.', 'Kirkwood Hwy', 'Wilmington', 'DE', '19808', '4', 'pokebros.png', 'www.eatpokebros.com',
        '3023587020', 'true',  '11:00', '21:00', 'Seafood',  'false', '2', '150', 'casual', 'true'),

       ('Zoup!', 'W. Kirkwood Hwy', 'Wilmington', 'DE', '19808', '5', 'zoup.jpg', 'online.zoup.com',
        '3026604400', 'true',  '11:00', '20:00', 'American',  'false', '2', '150', 'Cafe', 'true'),

       ('Moes Southwest Grill', 'Kirkwood Hwy', 'Wilmington', 'DE', '19808', '3', 'moes.png', 'www.moes.com',
        '3026913690', 'true',  '11:00', '20:00', 'Southwestern',  'false', '1', '150', 'casual', 'true'),

('Hyde-Park Prime Steak house', '569 N high street ', 'Columbus ', 'OH', '43215', '4', 'hydePark.jpg', 'www.hydeparkrestaurants.com',
    '6142242204', 'true',  '11:00', '22:00', 'American',  'false', '4', '150', 'casual', 'true'),

('The Pearl', '641 N High S', 'Columbus', 'OH', '43215', '3', 'pearl.jpg', 'www.thepearlcolumbus.com',
    '6142270151', 'true',  '11:00', '22:00', 'American',  'false', '4', '150', 'casual', 'true'),

('Buca di Beppo', '343 N front St ', 'Columbus', 'OH', '43215', '3', 'buca.png', 'bucadibeppo.com',
    '6146213287', 'true',  '11:00', '22:00', 'Italian',  'false', '4', '150', 'casual', 'true'),

('Smokey  Bones', '1282 Essex Ave', 'Columbus', 'OH', '43201', '3', 'smokeyBones.png', 'smokeybones.com',
    '3082151800', 'true',  '11:00', '22:00', 'American',  'false', '4', '150', 'casual', 'true'),

('JLiu Restaurant & Bar ', '6880 High St', 'Worthington', 'OH', '43085', '3', 'jliu.jpg', 'jliurestaurant.com',
    '6148881818', 'true',  '11:00', '22:00', 'Asian',  'false', '4', '150', 'casual', 'true'),

('Hounddogs Pizza', '2657 N High St', 'Columbus', 'OH', '43202', '3', 'houndDogs.png', 'hounddogspizza.com',
    '6142614686', 'true',  '11:00', '22:00', 'Pizza',  'false', '4', '150', 'casual', 'true'),

('Condado Tacos', '680 N High St', 'Columbus', 'OH', '43215', '3', 'condadotacos.jpg', 'condadotacos.com',
    '6149283909', 'true',  '11:00', '22:00', 'Mexican',  'false', '4', '150', 'casual', 'true'),

('Brassica', '1227 N High St', 'Columbus', 'OH', '43201', '3', 'brassica.jpg', 'brassicas.com',
    '6148675885', 'true',  '11:00', '22:00', 'Mediterranean',  'false', '4', '150', 'casual', 'true'),

('Press Grill', '741 N High St', 'Columbus', 'OH', '43215', '3', 'pressGrill.jpg', 'places.singleplatform.com',
    '6142981014', 'true',  '11:30', '22:00', 'American',  'false', '4', '150', 'casual', 'true'),


('Rodizio Grill', '125 W Nationwide Blv', 'Columbus', 'OH', '43215', '4', 'rodizio.jpg', 'www.rodiziogrill.com',
    '6142414400', 'true',  '11:00', '22:00', 'American',  'false', '4', '150', 'casual', 'true');






--INSERT TEMPORARY USERS

-- INSERT INTO app_user (id, user_name, password, role, salt)
-- VALUES (1, 'user1@gmail.com', 'AfD5Jrsb/tC7YdKTQ4iFFQ==', 'user',
--         'VZ63/yiy4kJEuK5KAdrAskghyhQ8Xzu/gao/+vLPGXHTlo6c1SOQiX5qTTaOQrCCps9HavSFyGKbKoLX9Ul18L8Uhk1lGIzzDW98pF1T6YbYPxwf6Qc8nAikH4uHD9enR58MZV6Y7hWRM49Yzb0kuhQjIaPbewY6qJarBKHf94E=');
-- INSERT INTO app_user (id, user_name, password, role, salt)
-- VALUES (2, 'administrator1@gmail.com', 'uDgWBAd7PWyLQic+eIaiYQ==', 'admin',
--         'KCzhQXLiIs0bqdMrwAKChH/doRdCJP57UP/bP3114/6nG3L/YOEPbi6LtM1mYEKc+a6FhNvrJz1lgerOGg+C05OAN5ufFfhrVoOShYyE3VD0xxjagkjUwJsPB8x4pZkf9XY2UtLnGF6isQT11Eqf/eNQCtRegW7IENpnBbiUj/8=');
-- INSERT INTO app_user (id, user_name, password, role, salt)
-- VALUES (3, 'editor1@gmail.com', 'GUs9nF7j7RbZRLyM9y71YQ==', 'editor',
--         'vHyRgM17BMYqKPcFm+2q1gCu04dORdI6Ywpg5rXr9ZXtOp4/gt83zSuNQogCR8levHK2kZbA6OAlBwtHZk/0ntR5/5H6932HwXWOIGMvB9oNk0OP8WZn4GyXIjpOy+nXGX3/AFiDJtTICEnS4cC/L9TnNjGRBcfcW7Fx78pdSoA=');

-- -- INSERT INTO GUEST

-- INSERT INTO user_event(user_id, event_id)
-- VALUES ((SELECT id FROM app_user where user_name = 'user1@gmail.com'),
--         (SELECT event_id from events where event_name = 'burritotime'));
-- --
-- INSERT INTO guest_event(guest_id, event_id)
-- VALUES ((SELECT guest_id FROM guest WHERE email = 'guest1@gmail.com'),
--         (SELECT event_id from events where event_name = 'burritotime'));
-- --
-- INSERT INTO restaurant_event(event_id, restaurant_id)
-- VALUES ((SELECT event_id FROM events WHERE event_name = 'burritotime'),
--         (SELECT restaurant_id FROM restaurant WHERE restaurant_name = 'Chipotle'));

ALTER TABLE user_event
    ADD FOREIGN KEY (event_id) REFERENCES events (event_id);

ALTER TABLE user_event
    ADD FOREIGN KEY (user_id) REFERENCES app_user (id);

ALTER TABLE guest_event
    ADD FOREIGN KEY (event_id) REFERENCES events (event_id);

ALTER TABLE guest_event
    ADD FOREIGN KEY (guest_id) REFERENCES guest(guest_id);

ALTER TABLE events
    ADD FOREIGN KEY (restaurant_id) REFERENCES restaurant (restaurant_id);

ALTER TABLE restaurant_event
    ADD FOREIGN KEY (restaurant_id) REFERENCES restaurant (restaurant_id);
ALTER TABLE restaurant_event
    ADD FOREIGN KEY (event_id) REFERENCES events (event_id);

ALTER TABLE favorites
    ADD FOREIGN KEY (user_id) REFERENCES app_user (id);

ALTER TABLE favorites
    ADD FOREIGN KEY (restaurant_id) REFERENCES restaurant (restaurant_id );

ALTER TABLE guest_restaurant
    ADD FOREIGN KEY (restaurant_id) REFERENCES restaurant (restaurant_id );

ALTER TABLE guest_restaurant
    ADD FOREIGN KEY (guest_id) REFERENCES guest (guest_id );

ALTER TABLE guest_restaurant
    ADD FOREIGN KEY (event_id) REFERENCES events (event_id);

COMMIT;

