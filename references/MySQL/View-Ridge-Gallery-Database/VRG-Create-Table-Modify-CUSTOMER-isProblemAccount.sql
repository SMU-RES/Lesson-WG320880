/* Use the following statements to modify the CUSTOMER table      */

ALTER TABLE CUSTOMER
	ADD isProblemAccount	BOOLEAN NULL DEFAULT '0';

UPDATE	 CUSTOMER
	SET		isProblemAccount = 0;

UPDATE	 CUSTOMER
	SET		isProblemAccount = 1
	WHERE	LastName	= 'Gliddens'
		AND	FirstName	= 'Melinda';

/* Use the following SELECT statement to display the modifications */

SELECT	 CustomerID, LastName, FirstName, isProblemAccount
FROM		 CUSTOMER;

/* Use the following CALL statement to test the stored procedure   */

 CALL TransWithCheckIsProblemAccount (229, 1053, '2008-11-18', 475.00);