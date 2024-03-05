use formation
SELECT COUNT(numCINEtu) AS nombre_etudiants FROM etudiant 
SELECT numCINEtu, (DATEDIFF(CURDATE(), datenaissance))/365 AS age FROM etudiant ;
SELECT MAX(prixform) AS formation_plus_chere, MIN(prixform) AS formation_moins_chere FROM formation;
SELECT SUM(prixform) AS montant_total FROM formation;
SELECT codeSess, COUNT(numCINEtu) AS nombre_etudiants_inscrits FROM inscription GROUP BY codeSess ;
SELECT DISTINCT numCINEtu FROM inscription;
SELECT numCINEtu, COUNT(codeSess) AS nombre_inscriptions FROM inscription GROUP BY numCINEtu;
SELECT codeSess , 
       SUM(CASE WHEN TypeCours= 'Distanciel' THEN 1 ELSE 0 END) AS inscriptions_distancielles,
       SUM(CASE WHEN TypeCours = 'Présentiel' THEN 1 ELSE 0 END) AS inscriptions_presentielles
FROM inscription
GROUP BY codeSess;



USE chevauxdecurie;
SHOW TABLES;
SELECT * FROM chevauxdecurie.cheval
WHERE race = 'Arabian'
ORDER BY nomcheval DESC;
SELECT nomcheval, tailleType, Poidstype FROM chevauxdecurie.cheval
WHERE race = 'Arabian';
SELECT DISTINCT proprietaire FROM chevauxdecurie.chevale;
SELECT numPers FROM chevauxdecurie.personnes
WHERE supérieur IS NULL;
SELECT * FROM chevauxdecurie.concours
WHERE YEAR(AnneeConcours) = 2019;


