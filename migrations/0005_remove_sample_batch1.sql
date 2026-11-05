-- First step of phasing out the launch sample listings as real households join:
-- 10 of the 30 Mardisandid samples (7 Tallinn, 3 Tartu), taken from the most crowded
-- neighbourhoods so every area keeps at least one. Kadrisandid samples are untouched.
DELETE FROM houses WHERE id IN (
  'sample-mardi-06', 'sample-mardi-19',  -- Merivälja
  'sample-mardi-10', 'sample-mardi-17',  -- Mähe
  'sample-mardi-11',                     -- Pirita
  'sample-mardi-15',                     -- Kadriorg
  'sample-mardi-16',                     -- Rahumäe
  'sample-mardi-28',                     -- Ihaste
  'sample-mardi-29',                     -- Karlova
  'sample-mardi-30'                      -- Raadi-Kruusamäe
);
