@./Insertions/Classe.sql
@./Insertions/cours.sql
@./Insertions/Courdeclasse.sql
@./Insertions/Cycleacademique.sql
@./Insertions/Cycleacademiquedepartement.sql
@./Insertions/Etudiants.sql
@./Insertions/EtudiantPromotion.sql
@./Insertions/InserssionClassePeriodeacademique.sql
@./Insertions/InserssionHoraires.sql
@./Insertions/InserssionTypehoraire.sql
@./Insertions/Insert_Etudiantdeclasse.sql
@./Insertions/Jourcours.sql
@./Insertions/Niveau.sql
@./Insertions/Periodeacademique.sql
@./Insertions/Promotion.sql
@./Insertions/Promotionacademique.sql
@./Insertions/SalleCours.sql
@./Insertions/Salledeclasse.sql
@./Insertions/Validation.sql

INSERT INTO Specialite (codeSpec,filiereCodeFilire,designationActuelle,dateDebut,pourcentageAdmissionActulle,noteVallidationActuelle) 
VALUES('TIPAM',001,'PAM',TO_DATE('12-06-2019','DD-MM-YYYY'),'83','12');
INSERT INTO Specialite (codeSpec,filiereCodeFilire,designationActuelle,dateDebut,pourcentageAdmissionActulle,noteVallidationActuelle)
VALUES('TIRSI',002,'RSI',TO_DATE('12-06-2019','DD-MM-YYYY'),'83','12');

 