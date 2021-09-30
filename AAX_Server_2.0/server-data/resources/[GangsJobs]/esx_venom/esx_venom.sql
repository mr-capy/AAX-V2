USE `essentialmode`;

INSERT INTO `addon_account` (name, label, shared) VALUES
	('society_venom', 'venom', 1);

INSERT INTO `datastore` (name, label, shared) VALUES
	('society_venom', 'venom', 1);

INSERT INTO `addon_inventory` (name, label, shared) VALUES
	('society_venom', 'venom', 1);

INSERT INTO `jobs` (name, label) VALUES
	('venom', 'Venom');

INSERT INTO `job_grades` (job_name, grade, name, label, salary, skin_male, skin_female) VALUES
	('venom', 0, 'recruit', 'New Guy', 0, '{}', '{}'),
	('venom', 1, 'officer', 'Member', 0, '{}', '{}'),
	('venom', 2, 'sergeant', 'Trusted', 0, '{}', '{}'),
	('venom', 3, 'intendent', 'Family', 0, '{}', '{}'),
	('venom', 4, 'lieutenant', 'Left-Hand', 0, '{}', '{}'),
	('venom', 5, 'chief', 'Right-Hand', 0, '{}', '{}'),
	('venom', 6, 'boss', 'Don', 0, '{}', '{}');

;
