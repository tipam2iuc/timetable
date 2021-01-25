/* Création d'un nouvel utilisateur */


CREATE USER tipam
IDENTIFIED BY tipam ACCOUNT UNLOCK;

GRANT connect, resource TO tipam;
GRANT ALL PRIVILEGES TO tipam;

CONNECT tipam/tipam;

