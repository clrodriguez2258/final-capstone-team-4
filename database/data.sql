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

INSERT INTO event( user_id, restaurant_id, event_name, event_time, event_date, decision_date, decision_time
                  )
values('1', '1', 'burritotime', '17:00','04/05/2022','04/04/2022', '18:00' );

insert into  guest( event_id, guest_name, attending, email )
 values ('1','Christian Rodriguez', 'yes','ab@f=gmail.com');




COMMIT;