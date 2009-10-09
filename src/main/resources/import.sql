-- create the default ladder
INSERT INTO tLadder (name) VALUES ('Liga #1');
INSERT INTO tLadder (name) VALUES ('2. Liga');

-- create default roles and rights
INSERT INTO tRole (id, name) VALUES (1, 'None');
INSERT INTO tRole (id, name) VALUES (2, 'User');
INSERT INTO tRole (id, name) VALUES (3, 'Administrator');
INSERT INTO tRole (id, name) VALUES (4, 'Superadministrator');

INSERT INTO tRight (id, name, description) VALUES (1, 'VIEW_LADDER', 'view ladder');
INSERT INTO tRight (id, name, description) VALUES (2, 'CREATE_CHALLENGE', 'create challenge');
INSERT INTO tRight (id, name, description) VALUES (3, 'ENTER_RESULT', 'enter result');
INSERT INTO tRight (id, name, description) VALUES (4, 'EDIT_LADDER', 'add or remove players to ladder');
INSERT INTO tRight (id, name, description) VALUES (5, 'SEE_LOG', 'see activity log');

INSERT INTO tRole_right (role_id, right_id) VALUES (1, 1);
INSERT INTO tRole_right (role_id, right_id) VALUES (2, 1);
INSERT INTO tRole_right (role_id, right_id) VALUES (3, 1);
INSERT INTO tRole_right (role_id, right_id) VALUES (4, 1);

INSERT INTO tRole_right (role_id, right_id) VALUES (2, 2);
INSERT INTO tRole_right (role_id, right_id) VALUES (3, 2);
INSERT INTO tRole_right (role_id, right_id) VALUES (4, 2);

INSERT INTO tRole_right (role_id, right_id) VALUES (2, 3);
INSERT INTO tRole_right (role_id, right_id) VALUES (3, 3);
INSERT INTO tRole_right (role_id, right_id) VALUES (4, 3);

INSERT INTO tRole_right (role_id, right_id) VALUES (3, 4);
INSERT INTO tRole_right (role_id, right_id) VALUES (4, 4);

INSERT INTO tRole_right (role_id, right_id) VALUES (4, 5);

-- create default admin user
INSERT INTO tUser (login, password, role_id) VALUES ('admin', 'adminadmin', 3);

-- create default players
INSERT INTO tPlayer(name, ladder_id, player_rank, user_id) VALUES ('Spieler 1', 1, 0, 1);
INSERT INTO tPlayer(name, ladder_id, player_rank) VALUES ('Spieler 2', 1, 1);
INSERT INTO tPlayer(name, ladder_id, player_rank) VALUES ('Spieler 3', 1, 2);
INSERT INTO tPlayer(name, ladder_id, player_rank) VALUES ('Spieler 4', 1, 3);
INSERT INTO tPlayer(name, ladder_id, player_rank) VALUES ('Spieler 5', 1, 4);
INSERT INTO tPlayer(name, ladder_id, player_rank) VALUES ('Spieler 6', 1, 5);

INSERT INTO tPlayer(name, ladder_id, player_rank, user_id) VALUES ('Liga2-Spieler', 2, 0, 1);