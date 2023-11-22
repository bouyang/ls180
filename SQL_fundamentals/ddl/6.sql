ALTER TABLE stars
DROP CONSTRAINT CHECK (spectral_type);

CREATE TYPE spectral_type_enum AS ENUM ('O', 'B', 'A', 'F', 'G', 'K', 'M');

ALTER TABLE stars
ALTER COLUMN spectral_type TYPE spectral_type_enum USING spectral_type::spectral_type_enum;