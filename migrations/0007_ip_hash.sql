-- Per-IP limit on new listings: a salted hash of the creator's IP (never the IP itself).
ALTER TABLE houses ADD COLUMN ip_hash TEXT;
CREATE INDEX houses_ip_hash ON houses (ip_hash, event_date);
