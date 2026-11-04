-- Sandid go round on the evening before the feast day, so listings move from the feast day
-- (mardipäev 10.11, kadripäev 25.11) to that evening (9.11, 24.11). Listings created by the
-- new code already carry the evening's date and are not matched here.
UPDATE houses SET event_date = date(event_date, '-1 day')
WHERE (event = 'mardi' AND substr(event_date, 6) = '11-10')
   OR (event = 'kadri' AND substr(event_date, 6) = '11-25');
