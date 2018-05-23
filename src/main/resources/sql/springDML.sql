INSERT INTO users(username, password, enabled) VALUES ('ecastel', 'ecastel', 1);
INSERT INTO users(username, password, enabled) VALUES ('jafrutos', 'j@frut0s', 1);
INSERT INTO users(username, password, enabled) VALUES ('jpablos', 'jp@bl0s', 1);
INSERT INTO users(username, password, enabled) VALUES ('luisfer', 'lu1sf3r', 1);

INSERT INTO user_roles(user_role_id, username, role) VALUES (2, 'ecastel', 'ROLE_ADMIN');
INSERT INTO user_roles(user_role_id, username, role) VALUES (1, 'ecastel', 'ROLE_USER');
INSERT INTO user_roles(user_role_id, username, role) VALUES (3, 'jafrutos', 'ROLE_USER');
INSERT INTO user_roles(user_role_id, username, role) VALUES (5, 'jpablos', 'ROLE_USER');
INSERT INTO user_roles(user_role_id, username, role) VALUES (4, 'luisfer', 'ROLE_USER');

INSERT INTO books(id, author, title, price, description) VALUES (1, 'John Grisham', 'The Rooster Bar', 13.0, 'John Grisham nombre sinónimo del thriller legal moderno.');
INSERT INTO books(id, author, title, price, description) VALUES (2, 'Daniel Ellsberg', 'The doomsday machine', 19.49, 'Antes de los documentos del Pentágono, antes de Watergate, antes de su participación como asesor en Vietnam, Daniel Ellsberg trabajó en el sistema de seguridad nacional de Estados Unidos como planificador nuclear. Es una memoria de esa época, de las políticas todavía clasificadas de la estrategia nuclear');
INSERT INTO books(id, author, title, price, description) VALUES (3, 'Nora Roberts', 'Year One', 19.58, 'Una sorprendente nueva novela de la autora número uno del New York Times, Nora Roberts-Year One, es una epopeya de esperanza y horror, caos y magia, y un viaje que unirá a un grupo desesperado de personas para luchar en la batalla de sus vidas ...');
INSERT INTO books(id, author, title, price, description) VALUES (4, 'David Safier', '¡Muuu!', 21.50, 'Humor en altas dosis');
