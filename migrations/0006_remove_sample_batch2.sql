-- Second phase-out step for the launch sample listings: 10 more Mardisandid samples
-- (7 Tallinn, 3 Tartu) and the first 10 Kadrisandid samples (7 Tallinn, 3 Tartu),
-- taken from the most crowded neighbourhoods so every area keeps at least one.
DELETE FROM houses WHERE id IN (
  -- Mardisandid: leaves 6 in Tallinn (Kose, Kadriorg, Pirita, Rahumäe, Lilleküla, Nõmme)
  -- and 4 in Tartu (Supilinn, Ränilinn, Veeriku, Karlova)
  'sample-mardi-02', 'sample-mardi-04', 'sample-mardi-05', 'sample-mardi-08',
  'sample-mardi-12', 'sample-mardi-13', 'sample-mardi-20',
  'sample-mardi-22', 'sample-mardi-24', 'sample-mardi-26',
  -- Kadrisandid: Hiiu ×3, Kalamaja ×2, Rahumäe, Lilleküla; Karlova, Supilinn, Veeriku
  'sample-kadri-04', 'sample-kadri-07', 'sample-kadri-11',
  'sample-kadri-12', 'sample-kadri-18',
  'sample-kadri-13', 'sample-kadri-20',
  'sample-kadri-22', 'sample-kadri-29', 'sample-kadri-30'
);
