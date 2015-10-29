INSERT INTO persons VALUES (11, 'John', 'Doe', '1248 Blane Street', 'johndoe@yahoo.com', '3145542033');
INSERT INTO persons VALUES (22, 'Donald', 'Stein', '2734 Veltri Drive', 'dstein@yahoo.com', '3335552233');
INSERT INTO persons VALUES (33, 'Bridget', 'McManus', '113 Hedge Street', 'mmbridget@yahoo.com', '6475133212');
INSERT INTO persons VALUES (44, 'Marilyn', 'Austin', '742 Dennison Street', 'maustin@yahoo.com', '5144321234');
INSERT INTO persons VALUES (55, 'Nathaniel', 'Torres', '122 Carriage Court', 'ntorres@yahoo.com', '6477122233');

INSERT INTO users VALUES ('john', 'john123', 'a', 11, TO_DATE('10-10-29', 'YY-MM-DD'));
INSERT INTO users VALUES ('donald', 'donald123', 's', 22, TO_DATE('14-02-21', 'YY-MM-DD'));
INSERT INTO users VALUES ('donald2', 'donald123', 'd', 22, TO_DATE('14-02-21', 'YY-MM-DD'));
INSERT INTO users VALUES ('marilyn', 'marilyn123', 's', 44, TO_DATE('13-05-11', 'YY-MM-DD'));
INSERT INTO users VALUES ('nathaniel', 'nathaniel123', 'd', 55, TO_DATE('15-09-02', 'YY-MM-DD'));

INSERT INTO sensors VALUES (1, 'A', 'a', 'audio sensor');
INSERT INTO sensors VALUES (2, 'A', 'i', 'image sensor');
INSERT INTO sensors VALUES (3, 'B', 's', 'sound sensor');
INSERT INTO sensors VALUES (4, 'C', 'a', 'audio sensor');
INSERT INTO sensors VALUES (5, 'E', 'i', 'image sensor');

INSERT INTO subscriptions VALUES (1, 22);
INSERT INTO subscriptions VALUES (2, 22);
INSERT INTO subscriptions VALUES (4, 22);
INSERT INTO subscriptions VALUES (4, 44);
INSERT INTO subscriptions VALUES (5, 44);

COMMIT;
