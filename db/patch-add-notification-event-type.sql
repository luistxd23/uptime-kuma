BEGIN TRANSACTION;

ALTER TABLE notification
    ADD notification_event_type VARCHAR(255) default 'both' not null;


COMMIT;