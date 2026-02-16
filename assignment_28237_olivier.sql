ALTER SESSION SET CONTAINER = CDB$ROOT;


CREATE PLUGGABLE DATABASE cy_pdb_28237 
ADMIN USER olivier_plsqlauca_28237 IDENTIFIED BY "Cyizaolivier@123"
FILE_NAME_CONVERT = ('pdbseed', 'cy_pdb_28237');


-- Open the database
ALTER PLUGGABLE DATABASE cy_pdb_28237 OPEN READ WRITE;

-- Move inside
ALTER SESSION SET CONTAINER = cy_pdb_28237;

-- Create the user 
CREATE USER olivier_plsqlauca_28237 IDENTIFIED BY "Cyizaolivier@123";

-- Grant the permissions
GRANT CONNECT, RESOURCE, DBA TO olivier_plsqlauca_28237;





-- 1. Switch back to the Root container
ALTER SESSION SET CONTAINER = CDB$ROOT;

-- 2. Create the temporary PDB 
-- (Note: We use a different name 'cy_to_delete' so it doesn't conflict)
CREATE PLUGGABLE DATABASE cy_to_delete_pdb_28237 
ADMIN USER temp_admin IDENTIFIED BY "Cyizaolivier@123"
FILE_NAME_CONVERT = ('pdbseed', 'cy_to_delete_pdb_28237');






--  Close the temporary PDB so it can be dropped
ALTER PLUGGABLE DATABASE cy_to_delete_pdb_28237 CLOSE IMMEDIATE;

-- Drop the PDB and delete all its files
DROP PLUGGABLE DATABASE cy_to_delete_pdb_28237 INCLUDING DATAFILES;

