INSERT INTO Filiere (codeFiliere, designationActuel) VALUES (001,'TIC');

INSERT INTO Specialite (codeSpec,filiereCodeFilire,designationActuelle,dateDebut,pourcentageAdmissionActulle,noteVallidationActuelle) 
VALUES('TIPAM',001,'PAM',TO_DATE('12-06-2019','DD-MM-YYYY'),'83','12');
INSERT INTO Specialite (codeSpec,filiereCodeFilire,designationActuelle,dateDebut,pourcentageAdmissionActulle,noteVallidationActuelle)
VALUES('TIRSI',001,'RSI',TO_DATE('12-06-2019','DD-MM-YYYY'),'83','12'