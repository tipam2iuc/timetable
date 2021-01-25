 --Creation des tables pour l'automatisation du systeme d'information pour departement

--Creation de table  Etudiant (SYNTHAXE OK)fini
DROP TABLE Etudiant CASCADE CONSTRAINTS;
CREATE TABLE Etudiant 
(
    matricule VARCHAR (255) NOT NULL PRIMARY KEY,
    nomEtudiant VARCHAR(255) NOT NULL,
    prenom VARCHAR (255) NOT NULL,
    dateNaissance DATE ,
    promoAcademiIntituleracadem VARCHAR(255) 
) 
; 

--Creation de table  Enseignants
DROP TABLE  Enseignants CASCADE CONSTRAINTS;
CREATE TABLE Enseignants 
(
    codeEns INT PRIMARY KEY NOT NULL,
    nomEns VARCHAR(255) NOT NULL,
    prenomEns VARCHAR(255) NOT NULL,
    dateNaissanceEns DATE ,
    numero INT ,
    CrsCodeCour VARCHAR(255) ,
    crSyllabus VARCHAR(255) 
) ;

--Creation de table  Utilisateur fini
DROP TABLE  Utilisateur CASCADE CONSTRAINTS;
CREATE TABLE Utilisateur
(
    idUtilisateur INT PRIMARY KEY NOT NULL,
    grade VARCHAR(255) NOT NULL
);

--Creation de table Role fini
DROP TABLE  Role CASCADE CONSTRAINTS;
CREATE TABLE  Role
(
    utilisateurIdutlisateur INT NOT NULL,
    ensCodeEns INT
);

--Creation de table Validation fini
DROP TABLE Validation CASCADE CONSTRAINTS;
CREATE TABLE Validation
(
    PROMOfiliereCodefiliere INT NOT NULL,
    promoDEPARTEMENTCodedep INT NOT NULL,
    etudtMatricule VARCHAR(255) NOT NULL
);

--Creation de table EnseignantsSalleCours 
DROP TABLE EnseignantsSalleCours CASCADE CONSTRAINTS;
 CREATE TABLE EnseignantsSalleCours
 (
    ensgtsCodeEns INT NOT NULL ,
    salleCoursNumero INT NOT NULL,
    jourCourDate VARCHAR(255) NOT NULL
 );

--Creation de table ClassePeriodeacademique fini
DROP TABLE ClassePeriodeacademique CASCADE CONSTRAINTS;
CREATE TABLE ClassePeriodeacademique 
(
    classeNiveauIdniveau INT NOT NULL,
    classeSpecialiteNomspec VARCHAR(255) NOT NULL,
    periodeacademiqueIdtrim INT NOT NULL,
    dateDebut DATE NOT NULL,
    dateFin DATE NOT NULL
);

--Creation de table EtudiantPromotion fini
DROP TABLE EtudiantPromotion CASCADE CONSTRAINTS;
CREATE TABLE EtudiantPromotion
(
   etdtMatricule VARCHAR(255) NOT NULL,
   promotionFiliereCodeFiliere INT NOT NULL,
   promotionDepartementCodeDep INT NOT NULL 
);

--Creation de table Cours********fini
DROP TABLE  Cours CASCADE CONSTRAINTS;
CREATE TABLE Cours
(
    codeCours VARCHAR(255) NOT NULL PRIMARY KEY ,
    volumeH INT,
    syllabus VARCHAR(255) ,
    periodeAcademiqueIdTrim INT,
    intituleCourt VARCHAR(255), 
    intituleLong VARCHAR(255),
    credits INT
);

--Creation de table Coursdeclasse 
DROP TABLE Coursdeclasse CASCADE CONSTRAINTS;
CREATE TABLE Coursdeclasse 
(
    classNiveauidNiveau NUMBER(7) NOT NULL,
    classSpecialiteNomspec VARCHAR(255) NOT NULL,
    crsCodeCours VARCHAR(255) NOT NULL,
    crsSyllabus VARCHAR(255)
);

--Creation de table Etudiantdeclasse fini
DROP TABLE Etudiantdeclasse CASCADE CONSTRAINTS;
CREATE TABLE Etudiantdeclasse
(
    etudiantMatricule VARCHAR(255) NOT NULL,
    courCodeCours VARCHAR(255) NOT NULL, 
    courSyllabus  VARCHAR(255)  
);

--Creation de table Horaires fini
DROP TABLE  Horaires CASCADE CONSTRAINTS;
CREATE TABLE Horaires 
(
    heurDeb DATE NOT NULL, 
    heurFin DATE  NOT NULL
);

--Creation de table Jourcours fini
DROP TABLE  Jourcours CASCADE CONSTRAINTS;
CREATE TABLE Jourcours 
(
    dateJourCours VARCHAR(255) NOT NULL PRIMARY KEY 
);

--Creation de table Modulecours 
DROP TABLE  Modulecours CASCADE CONSTRAINTS;
CREATE TABLE Modulecours
(
    titreModule VARCHAR(255) NOT NULL PRIMARY KEY, 
    lecons VARCHAR(255) NOT NULL, 
    coursCodeCours VARCHAR(255) NOT NULL, 
    coursSyllabus VARCHAR(255)
);

--Creation de table Periodeacademique (SYNTHAXE OK)fini
DROP TABLE  Periodeacademique CASCADE CONSTRAINTS;
CREATE TABLE Periodeacademique
(
    idPeriode NUMBER(10) PRIMARY KEY NOT NULL, 
    intitulePeriode VARCHAR(255) NOT NULL, 
    durePeriode INT NOT NULL
);

--Creation de table Promotionacademique (SYNTHAXE OK)fini
DROP TABLE  Promotionacademique CASCADE CONSTRAINTS;
CREATE TABLE Promotionacademique
(
    intitulerAcadem VARCHAR(255)PRIMARY KEY  NOT NULL, 
    debut DATE , 
    fin DATE,
   SalleCoursNumero INT
);

--Creation de table Salledeclasse fini
DROP TABLE Salledeclasse CASCADE CONSTRAINTS;
CREATE TABLE Salledeclasse 
(
    intituler VARCHAR(255) NOT NULL, 
    classeNomClasse VARCHAR(255) NOT NULL
);

--Creation de table Typehoraire fini
DROP TABLE Typehoraire CASCADE CONSTRAINTS;
CREATE TABLE Typehoraire
(
    tranche INT  NOT NULL, 
    crsCodeCours VARCHAR(255) NOT NULL, 
    jourCoursDate VARCHAR(255), 
    crsSyllabus VARCHAR(255)NOT NULL 
);

--Creation de table Filiere (SYNTAXE OK) fini
DROP TABLE Filiere CASCADE CONSTRAINTS;
CREATE TABLE Filiere 
(
	codeFiliere INT PRIMARY KEY NOT NULL,
	designationActuel VARCHAR(255) NOT NULL
);

--Creation de table Cycleacademique (SYNTAXE OK) fini
DROP TABLE Cycleacademique CASCADE CONSTRAINTS;
CREATE TABLE Cycleacademique 
(
	nomCycl VARCHAR(255) PRIMARY KEY NOT NULL, 
	nbrAnnee INT NOT NULL,
	diplomeBase VARCHAR(255)	
);

--Creation de table Promotion(SYNTAXE OK)fini
DROP TABLE Promotion CASCADE CONSTRAINTS;
CREATE TABLE Promotion 
(
	dateDebut DATE NOT NULL,
	dateFin DATE NOT NULL, 
	departementCdeDep int , 
        filiereCdeFilire INT, 
	specialiteNomSpecial VARCHAR(255) , 
	nomDeptCourant VARCHAR(255), 
	nomFiliereCourant VARCHAR(255) , 
	nomCycleCourant VARCHAR(255) , 
	coursCodeCrs VARCHAR(255), 
	corsSyllabus VARCHAR(255)  , 
	cycleAcademiqueNomCycl VARCHAR(255) , 
	pourcentageAdmissionActulle INT
);

--Creation de table Niveau (SYNTHAXE OK)fini
DROP TABLE Niveau CASCADE CONSTRAINTS;
CREATE TABLE Niveau 
(
	idNiveau INT PRIMARY KEY NOT NULL,
	intituleNiveau VARCHAR(255) NOT NULL, 
	niveauAcademique INT NOT NULL
);

--Creation de table Classe (SYNTAXE OK) fini
DROP TABLE Classe CASCADE CONSTRAINTS;
CREATE TABLE Classe 
(
	designationActuelle VARCHAR(255) NOT NULL, 
	niveauIdNiveau INT, 
	specialiteNomSpec VARCHAR(255) , 
	idClasseSpecialitePrecedent INT, 
	idClasseNiveauPrecedent VARCHAR(255) 
);

--Creation de table Departement (SYNTAXE OK) fini
DROP TABLE  Departement CASCADE CONSTRAINTS;
CREATE TABLE Departement 
(
	codeDep INT PRIMARY KEY NOT NULL, 
	designationActuelle VARCHAR(255) NOT NULL, 
	chefDept VARCHAR(255) NOT NULL, 
	dateCreation DATE not NULL, 
	filCodeFilire INT  
);

--Creation de table Cycleacademiquedepartement fini
DROP TABLE  Cycleacademiquedepartement CASCADE CONSTRAINTS;
CREATE TABLE Cycleacademiquedepartement 
(
	dateDebut DATE , 
	dateFin DATE 
);

--Creation de table Specialite (SYNTAXE OK) fini
DROP TABLE Specialite CASCADE CONSTRAINTS;
CREATE TABLE Specialite
(
	codeSpec VARCHAR(255) NOT NULL PRIMARY KEY, 
	filiereCodeFilire INT NOT NULL, 
	designationActuelle VARCHAR(255) NOT NULL, 
	dateDebut DATE NOT NULL, 
	pourcentageAdmissionActulle INT NOT NULL, 
	noteVallidationActuelle INT NOT NULL
) ;
 
--Creation de table SalleCours fini
DROP TABLE SalleCours CASCADE CONSTRAINTS;
CREATE TABLE SalleCours
(
    numero INT PRIMARY KEY NOT NULL,
    nbrePlace INT NOT NULL
);