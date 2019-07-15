USE db_zootest
GO

/* Drill 1 */
SELECT * FROM  tbl_habitat

/* Drill 2 */
SELECT species_name FROM tbl_species WHERE species_order = 3

/* Drill 3 */
SELECT nutrition_type FROM tbl_nutrition WHERE nutrition_cost < 600

/* Drill 4 */
SELECT * FROM tbl_species WHERE species_nutrition > 2202 AND species_nutrition < 2206

/* Drill 5 */
SELECT * FROM tbl_species

/* Drill 6 */
SELECT
		s1.species_name, s2.specialist_fname, s2.specialist_lname, s2.specialist_contact
		FROM tbl_species s1
		INNER JOIN tbl_specialist s2 ON s2.specialist_id = s1.species_id
		INNER JOIN tbl_care s3 ON s3.care_id = s1.species_care
		WHERE	species_name = 'penguin'
