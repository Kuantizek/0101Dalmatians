drop database spam;
create schema if not exists spam;
use spam; 

/*Donatius */

CREATE TABLE donatius(
	id_donatiu int NOT NULL AUTO_INCREMENT,
	nom varchar(100) NOT NULL,
    animal varchar(10),
    centre_receptor varchar(50),
    id_usuari int NOT NULL,
    centre_enviar varchar(50),
    id_donant int NOT NULL,
    cost int,
    unitats int,
    pes int,
    data_entrada date NOT NULL,
    crear_factura boolean, 
	
    CONSTRAINT pk_donatius PRIMARY KEY(id_donatiu, centre_receptor, id_usuari, centre_enviar, id_donant)
);

/*Donants */

CREATE TABLE donants(
	id_donant int NOT NULL AUTO_INCREMENT,
	dni varchar(9),
	nom varchar(50) NOT NULL,
    cognom varchar(50),
	genere varchar(10),
    animals boolean,
    adoptant boolean,
    adreca varchar(100),
    telefon varchar(9),
    email varchar(100),
    vincle varchar(200),
    acepta boolean NOT NULL,

	CONSTRAINT pk_donants PRIMARY KEY (id_donant)
);

/*Empreses donants*/

CREATE TABLE empreses(
	cif varchar(9) NOT NULL,
	rao_social varchar(50) NOT NULL,
	adreca varchar(100),
    telefon varchar(9),
    email varchar(100),
    vincle varchar(200),
 
	CONSTRAINT pk_empreses PRIMARY KEY (cif)
);

/*Usuaris*/

CREATE TABLE usuaris(
	id_usuari int NOT NULL AUTO_INCREMENT,
	nom varchar(50) NOT NULL,
    cognom varchar(50),
    email varchar(100),
    psswd varchar(100),
	
    CONSTRAINT pk_usuaris PRIMARY KEY (id_usuari)
);

/*Rols*/

CREATE TABLE rols(
   id_rol INT  NOT NULL AUTO_INCREMENT,
   nom_rol VARCHAR(50),
   
   CONSTRAINT pk_rols PRIMARY KEY(id_rol)
);

/*Relació Usuaris-Rols*/

CREATE TABLE usuarisrols(
   id_usuari INT  NOT NULL,
   id_rol INT  NOT NULL,

   CONSTRAINT pk_usuaris_rols PRIMARY KEY(id_usuari, id_rol)
);

/*Centres*/

CREATE TABLE centres(
	nom_centre varchar(100) NOT NULL,
    
    CONSTRAINT pk_centres PRIMARY KEY (nom_centre)
);

/*Foreign Keys*/

ALTER TABLE donatius ADD CONSTRAINT fk_donatius_centres FOREIGN KEY (centre_receptor) 
REFERENCES centres(nom_centre);
	
ALTER TABLE donatius ADD CONSTRAINT fk_donatius_usuaris FOREIGN KEY(id_usuari) 
REFERENCES usuaris(id_usuari);

/*ALTER TABLE donatius ADD CONSTRAINT fk_donatius_centres FOREIGN KEY(centre_enviar) 
REFERENCES centres(nom_centre);*/

ALTER TABLE donatius ADD CONSTRAINT fk_donatius_donants FOREIGN KEY(id_donant) 
REFERENCES donants(id_donant);

ALTER TABLE usuarisrols ADD CONSTRAINT fk_usuarisrols_usuaris FOREIGN KEY(id_usuari) 
REFERENCES usuaris(id_usuari);

ALTER TABLE usuarisrols ADD CONSTRAINT fk_usuarisrols_rols FOREIGN KEY(id_rol) 
REFERENCES rols(id_rol);

/*Costos

CREATE TABLE costos(
	nom_producte varchar(50) NOT NULL,
    cost int,
	
    CONSTRAINT pk_costos PRIMARY KEY (nom_producte)
);*/