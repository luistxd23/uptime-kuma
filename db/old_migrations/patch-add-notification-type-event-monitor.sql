BEGIN TRANSACTION;

ALTER TABLE monitor
  ADD notification_event_type VARCHAR(255) default 'both';

COMMIT;

BEGIN TRANSACTION;
  UPDATE monitor
        SET notification_event_type = 'both';
COMMIT;