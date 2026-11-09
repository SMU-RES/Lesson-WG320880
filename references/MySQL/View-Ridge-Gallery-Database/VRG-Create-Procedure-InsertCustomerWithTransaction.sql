DELIMITER //

CREATE PROCEDURE InsertCustomerWithTransaction
			(IN		newCustomerLastName		Char(25),
			 IN		newCustomerFirstName	Char(25),
			 IN		newCustomerAreaCode		Char(3),
			 IN		newCustomerPhoneNumber	Char(8),
			 IN		newCustomerEmail			Varchar(100),
			 IN		transArtistLastName		Char(25),
			 IN		transWorkTitle			Char(35),
			 IN		transWorkCopy				Char(12),
			 IN		transTransSalesPrice	Numeric(8,2))

BEGIN

	DECLARE	varRowCount			Int;
	DECLARE	varArtistID			Int;
	DECLARE	varCustomerID			Int;
	DECLARE	varWorkID				Int;
	DECLARE	varTransactionID		Int;

	# Check to see if Customer already exist in database

	SELECT	 	varRowCount = COUNT(*)
	FROM		CUSTOMER
	WHERE		LastName = newCustomerLastName
		AND		FirstName = newCustomerFirstName
		AND 	AreaCode = newCustomerAreaCode
		AND 	PhoneNumber = newCustomerPhoneNumber
		AND 	Email = newCustomerEmail;

	# IF varRowCount > 0 THEN Customer already exists.
	IF (varRowCount > 0)
		THEN
		SELECT 'Customer already exists';
		ROLLBACK;
	END IF;

	# IF varRowCount = 0 THEN Customer does not exist in database.
	# Start transaction - Rollback everything if unable to complete it.
	START TRANSACTION;

	# Insert new Customer data.
	INSERT INTO CUSTOMER (LastName, FirstName, AreaCode, PhoneNumber, Email)
		VALUES(newCustomerLastName, newCustomerFirstName,
				 newCustomerAreaCode, newCustomerPhoneNumber, newCustomerEmail);

	# Get new CustomerID surrogate key value.
	SET varCustomerID = LAST_INSERT_ID();

	# Get ArtistID surrogate key value, check for validity.
	SELECT		ArtistID
		FROM	ARTIST
		WHERE	LastName = transArtistLastName
		INTO	varArtistID;

	IF varArtistID IS NULL THEN
		SELECT 'Invalid ArtistID';
		ROLLBACK;
	END IF;

 
	# Get WorkID surrogate key value, check for validity.
	SELECT		WorkID
	FROM		WORK
	WHERE		ArtistID = varArtistID
		AND		Title = transWorkTitle
		AND 	Copy = transWorkCopy
	INTO		varWorkID;

	IF varWorkID IS NULL THEN
		SELECT 'Invalid WorkID';
		ROLLBACK;
	END IF;

	# Get TransID surrogate key value, check for validity.
	SELECT		TransactionID
	FROM		TRANS
	WHERE		WorkID = varWorkID
		AND		SalesPrice IS NULL
	INTO		varTransactionID;

	IF varTransactionID IS NULL THEN
		SELECT 'Invalid TransactionID';
		ROLLBACK;
	END IF;

	# All surrogate key values of OK, complete the transaction
	# Update TRANS row
	UPDATE 	TRANS
	SET			DateSold = CURRENT_DATE(),
				SalesPrice = transTransSalesPrice,
				CustomerID = varCustomerID
	WHERE		TransactionID = varTransactionID;

	# Commit the Transaction
	COMMIT;

	# Create CUSTOMER_ARTIST_INT row
	INSERT INTO CUSTOMER_ARTIST_INT (CustomerID, ArtistID)
		VALUES(varCustomerID, varArtistID);

	# The transaction is completed. Print message
	SELECT 'The new customer and transaction are now in the database,'
    AS InsertCustomerWithTransactionResults;

END
//

DELIMITER ;

