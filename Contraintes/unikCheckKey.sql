--CONSTRAINT nom_contrainte UNIQUE (liste_colonne)
-- CONTRAINTE UNIQUE
    -- SUR COURS
    ALTER TABLE cours
ADD UNIQUE (intituleCourt);

-- CONTRAINTE CHECK

 --SUR Niveau
ALTER TABLE Niveau 
ADD CONSTRAINT chk_Niveau CHECK (idNiveau > 0);
 --SUR ClassPeriodeAcademique
ALTER TABLE ClassePeriodeacademique
ADD CONSTRAINT chk_ClassPeriodeAcademique CHECK (  dateDebut != dateFin );
 --SUR PeriodeAcademique
ALTER TABLE  Periodeacademique
ADD CONSTRAINT chk_PeriodeAcademique CHECK ( durePeriode  IS NOT NULL );
 --SUR Utilisateur
ALTER TABLE Utilisateur
ADD CONSTRAINT chk_Utilisateur CHECK ( grade IS NOT NULL );
 --SUR Cours
ALTER TABLE Cours
ADD CONSTRAINT chk_Cours CHECK ( credits > 0 AND volumeH > 0 );
 --SUR Horaire
ALTER TABLE Horaires
ADD CONSTRAINT chk_Horaire CHECK (  heurDeb != heurFin);
 --SUR PromotionAcademique
ALTER TABLE Promotionacademique
ADD CONSTRAINT chk_PromotionAcademique CHECK (debut != fin );
 --SUR CycleAcademique
ALTER TABLE Cycleacademique 
ADD CONSTRAINT chk_CycleAcademique CHECK (nbrAnnee IS NOT NULL);
 --SUR Promotion
ALTER TABLE Promotion 
ADD CONSTRAINT chk_Promotion CHECK (dateDebut != dateFin);
 --SUR Departement
ALTER TABLE Departement
ADD CONSTRAINT chk_Departement CHECK (dateCreation IS NOT NULL);
 --SUR CycleAcademique
ALTER TABLE Cycleacademiquedepartement 
ADD CONSTRAINT ck_CycleAcademique CHECK (dateDebut != dateFin);
 --SUR Specialite
ALTER TABLE Specialite
ADD CONSTRAINT chk_Specialite CHECK (dateDebut IS NOT NULL);
