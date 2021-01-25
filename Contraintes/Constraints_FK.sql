--Les contraintes 

--Table Classe **bien
ALTER TABLE Classe ADD CONSTRAINT fk_niveauIdNiveau FOREIGN KEY (niveauIdNiveau) REFERENCES Niveau (idNiveau) ON DELETE CASCADE;
ALTER TABLE Classe ADD CONSTRAINT fk_specialiteNomSpec FOREIGN KEY (specialiteNomSpec) REFERENCES Specialite (codeSpec) ON DELETE CASCADE;

--Table Etudiant **bien
ALTER TABLE Etudiant ADD CONSTRAINT fk_promoAcademiIntituleracadem FOREIGN KEY (promoAcademiIntituleracadem) REFERENCES Promotionacademique (intitulerAcadem) ON DELETE CASCADE;

--idPeriode de la classe Periodeacademique est une clé étrangère dans cours **bien
ALTER TABLE Cours ADD CONSTRAINT fk_periodeAcademiqueIdTrim FOREIGN KEY (periodeAcademiqueIdTrim) REFERENCES Periodeacademique (idPeriode) ON DELETE CASCADE;

--les identifiants(codeEns, idUtilisateur) des tables Enseignants et Utilisateur sont clés étrangères dans la table Role, car chacun d'eux a des tâches à effectuer **bien
ALTER TABLE Role ADD CONSTRAINT fk_utilisateurIdutlisateur FOREIGN KEY (utilisateurIdutlisateur) REFERENCES Utilisateur (idUtilisateur) ON DELETE CASCADE;
ALTER TABLE Role ADD  CONSTRAINT fk_enseignantsCodeEns FOREIGN KEY (ensCodeEns) REFERENCES Enseignants (codeEns) ON DELETE CASCADE;

--pour un enseignant donnant cours on veut savoir son matricule **bien
ALTER TABLE EnseignantsSalleCours ADD CONSTRAINT fk_enseignantCodeEns FOREIGN KEY (ensgtsCodeEns) REFERENCES Enseignants (codeEns) ON DELETE CASCADE;
ALTER TABLE EnseignantsSalleCours ADD CONSTRAINT fk_salleCoursNumero  FOREIGN KEY(salleCoursNumero) REFERENCES  SalleCours (numero) ON DELETE CASCADE;
ALTER TABLE EnseignantsSalleCours ADD CONSTRAINT fk_jourCoursDate FOREIGN KEY(jourCourDate) REFERENCES Jourcours (dateJourCours) ON DELETE CASCADE;

--la clé primaire de Filière se retrouve dans spécialité **bien
ALTER TABLE Specialite ADD CONSTRAINT fk_filiereCodeFilire FOREIGN KEY (filiereCodeFilire) REFERENCES Filiere (codeFiliere) ON DELETE CASCADE; 

--les attributs codeCours et syllabus de la table Cours se retrouvent comme clé étrangère dans la table Modulecours **bien
ALTER TABLE Modulecours ADD CONSTRAINT fk_coursCodeCours_courSyllabus FOREIGN KEY (coursCodeCours) REFERENCES Cours (codeCours) ON DELETE CASCADE;

--codeCours, syllabus et jourCourDate  sont des clés étrangères dans la table Typehoraire **bien
ALTER TABLE Typehoraire ADD CONSTRAINT fk_coursCdeCours_crsSyllabus FOREIGN KEY (crsCodeCours) REFERENCES Cours (codeCours) ON DELETE CASCADE;
ALTER TABLE Typehoraire ADD CONSTRAINT fk_jourCourDate FOREIGN KEY (jourCoursDate) REFERENCES Jourcours (dateJourCours) ON DELETE CASCADE;

--un enseignant peut-être chef de département, d'où l'identifiant de Enseignant se trouve comme clé etrangère dans la table Departement **bien
ALTER TABLE Departement ADD CONSTRAINT fk_filiereCdeFilire FOREIGN KEY (filCodeFilire) REFERENCES Filiere (codeFiliere) ON DELETE CASCADE;

--le niveau et la spécialité de la classe se retrouvent comme clé étrangère dans la table Classeperiodeacademique et ainsi que idPeriode de Periodeacademique **bien
ALTER TABLE Classeperiodeacademique ADD CONSTRAINT fk_classeNiveauIdniveau FOREIGN KEY (classeNiveauIdniveau) REFERENCES Niveau(idNiveau) ON DELETE CASCADE;
ALTER TABLE Classeperiodeacademique ADD CONSTRAINT fk_classeSpecialiteNomspec FOREIGN KEY(classeSpecialiteNomspec) REFERENCES Specialite(codeSpec) ON DELETE CASCADE;
ALTER TABLE Classeperiodeacademique ADD CONSTRAINT fk_periodAcademiqueIdtrim FOREIGN KEY (periodeacademiqueIdtrim) REFERENCES Periodeacademique (idPeriode) ON DELETE CASCADE;

--le coursSyllabus, le coursCodeCours ,classeNiveauidNiveau et classeSpecialiteNomSpec sont des clés étrangères de Coursdeclasse **bien
ALTER TABLE Coursdeclasse ADD CONSTRAINT fk_classeNividNiveau FOREIGN KEY (classNiveauidNiveau) REFERENCES Niveau(idNiveau)ON DELETE CASCADE;
ALTER TABLE Coursdeclasse ADD CONSTRAINT fk_classeSpecialNomspec FOREIGN KEY(classSpecialiteNomspec) REFERENCES Specialite(codeSpec) ON DELETE CASCADE;
ALTER TABLE Coursdeclasse ADD CONSTRAINT fk_crsCodeCours_crsSyllabus FOREIGN KEY (crsCodeCours) REFERENCES Cours (codeCours) ON DELETE CASCADE;


--on doit savoir des étudiants qui sont dans une salle de classe leur matricule et le code du cours sans oublier le syllabus du cours **bien
ALTER TABLE Etudiantdeclasse ADD CONSTRAINT fk_etudiantMatricule FOREIGN KEY (etudiantMatricule) REFERENCES Etudiant (matricule) ON DELETE CASCADE;
ALTER TABLE Etudiantdeclasse ADD CONSTRAINT fk_courCdeCours_courSyllabus FOREIGN KEY (courCodeCours) REFERENCES Cours (codeCours) ON DELETE CASCADE;

--insertion des clés étrangères dans la table Promotion *bien
ALTER TABLE Promotion ADD CONSTRAINT fk_filCodeFilire FOREIGN KEY(filiereCdeFilire) REFERENCES Filiere(codeFiliere) ON DELETE CASCADE;
ALTER TABLE Promotion ADD CONSTRAINT fk_departCodeDep FOREIGN KEY (departementCdeDep) REFERENCES Departement(codeDep) ON DELETE CASCADE;
ALTER TABLE Promotion ADD CONSTRAINT fk_specNomSpec FOREIGN KEY (specialiteNomSpecial) REFERENCES Specialite (codeSpec) ON DELETE CASCADE;
ALTER TABLE Promotion ADD CONSTRAINT fk_crsCodeCour_courSyllabus FOREIGN KEY (coursCodeCrs) REFERENCES Cours (codeCours) ON DELETE CASCADE;
ALTER TABLE Promotion ADD CONSTRAINT fk_cycleAcademiqueNomCycl FOREIGN KEY (cycleAcademiqueNomCycl) REFERENCES Cycleacademique (nomCycl) ON DELETE CASCADE;

--dans une prommotion des étudiants on doit savoir d'abord le matricule et la filière et aussi le département d'étude des étudiants **bien
ALTER TABLE EtudiantPromotion ADD CONSTRAINT fk_etudiantMatricul FOREIGN KEY (etdtMatricule) REFERENCES Etudiant (matricule) ON DELETE CASCADE;
ALTER TABLE EtudiantPromotion ADD CONSTRAINT fk_promotionFiliereCodeFiliere FOREIGN KEY (promotionFiliereCodeFiliere) REFERENCES Filiere (codeFiliere) ON DELETE CASCADE;
ALTER TABLE EtudiantPromotion ADD CONSTRAINT fk_promotionDepartementCodeDep FOREIGN KEY( promotionDepartementCodeDep) REFERENCES Departement(codeDep) ON DELETE CASCADE;

--l'identifiant matricule d'étudiant devient une clé etrangère dans la table Validation sans compter aussi que les attributs filiereCodeFilire et departementCodeDep sont aussi des clés étrangères **bien
ALTER TABLE Validation ADD CONSTRAINT fk_validation FOREIGN KEY (PROMOfiliereCodefiliere) REFERENCES Filiere (codefiliere) ON DELETE CASCADE;
ALTER TABLE Validation ADD CONSTRAINT fk_promoDEPARTEMENTCodedep FOREIGN KEY(promoDEPARTEMENTCodedep) REFERENCES Departement(codeDep) ON DELETE CASCADE;
ALTER TABLE Validation ADD CONSTRAINT fk_etudiantMatriculee FOREIGN KEY (etudtMatricule) REFERENCES Etudiant (matricule) ON DELETE CASCADE;

--insertion de la cle etrangère coursCodeCours dans la table Enseignants provenant de la table Cours **bien
ALTER TABLE Enseignants ADD CONSTRAINT fk_CrsCodeCour_crSyllabus FOREIGN KEY (CrsCodeCour) REFERENCES Cours (codeCours) ON DELETE CASCADE;
