use truxxit;

DROP PROCEDURE IF EXISTS delete_reservation;

DELIMITER //
CREATE PROCEDURE delete_reservation( 
 IN input_reservation_id int(11))
BEGIN

DELETE FROM `RESERVATION` WHERE `RESERVATION_ID` = input_reservation_id;  

END //
DELIMITER ;


-- CALL delete_reservation(1);

