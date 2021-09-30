INSERT INTO `jobs` (name, label) VALUES
  ('offpolice','Off-Duty'),
  ('offambulance','Off-Duty')
;

INSERT INTO `job_grades` (job_name, grade, name, label, salary, skin_male, skin_female) VALUES
  ('offpolice',0,'recruit','Constable',0,'{}','{}'),
  ('offpolice',1,'officer','Head-Constable',0,'{}','{}'),
  ('offpolice',2,'sergeant','Inspector',0,'{}','{}'),
  ('offpolice',2,'intendent','DSP',0,'{}','{}'),
  ('offpolice',3,'lieutenant','SSP',0,'{}','{}'),
  ('offpolice',3,'chief','DIG',0,'{}','{}'),
  ('offpolice',4,'boss','IG',0,'{}','{}'),
  ('offambulance',0,'ambulance','Ambulance',0,'{}','{}'),
  ('offambulance',1,'doctor','Doctor',0,'{}','{}'),
  ('offambulance',2,'chief_doctor','Chief-Doctor',0,'{}','{}'),
  ('offambulance',3,'boss','Boss',0,'{}','{}')
;