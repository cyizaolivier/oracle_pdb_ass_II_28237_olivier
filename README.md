Oracle PDB Management Assignment
Student Name: CYIZA Olivier

Student ID: 28237

1. Integrity Statement
I, CYIZA Olivier (28237), declare that this assignment is my original work and has been completed in accordance with the academic integrity policy.

2. Overview of Tasks
This project demonstrates the management of Oracle Pluggable Databases (PDBs), including creation, user privilege management, and lifecycle operations (dropping databases).

3. Oracle Environment Used
Database: Oracle Database 21c XE.

Tools: VS Code with Oracle SQL Developer Extension and Oracle Enterprise Manager (OEM) Express.

4. Explanation of Tasks
Task 1: PDB & User Setup - Created a permanent PDB named cy_pdb_28237 and an administrative user olivier_plsqlauca_28237 with DBA privileges.

Task 2: PDB Lifecycle - Demonstrated the ability to create and completely remove a temporary PDB (cy_to_delete_pdb_28237) including its data files.

Task 3: OEM Dashboard - Verified the database status and health using the web-based Oracle Enterprise Manager interface.

5. Challenges Faced & Solutions
Challenge: Encountered ORA-00922 (missing/invalid option) when creating users with special characters in the password.

Solution: Enclosed the password in double quotes ("Cyizaolivier@123") to ensure Oracle correctly parsed the @ symbol.

Challenge: User conflict errors (ORA-01920) when re-running scripts.

Solution: Used DROP commands to clean the environment before running a fresh "clean sweep" script.
