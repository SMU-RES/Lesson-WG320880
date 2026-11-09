/* Final Application Logic updates                            */


CREATE VIEW WorkAndTransView AS
	SELECT	Title, Copy, Medium, Description, ArtistID,
			DateAcquired, AcquisitionPrice
	FROM	WORK AS W JOIN TRANS AS T
		ON	W.WorkID = T.WorkID;




/* UPDATE Melinda Bench data and complete transaction         */

UPDATE	CUSTOMER
SET		isProblemAccount = 0
WHERE		LastName	= 'Bench'
	AND	FirstName	= 'Melinda';

UPDATE	TRANS
SET		DateSold = '2008-11-18',
		SalesPrice = 475.00,
		CustomerID = 1053
WHERE		TransactionID = 229;

/* Restock a copy of this print into the gallery               */


INSERT INTO WORK (Title, Copy, Medium, Description, ArtistID)
  VALUES(
	'Color Floating in Time', '493/500', 'High Quality Limited Print',
	'Northwest School Abstract Expressionist style', 18);

-- Obtain the new WorkID

SELECT	WorkID
FROM		WORK
WHERE	 ArtistID = 18
	AND	 Title = 'Color Floating in Time '
	AND	 Copy = '493/500';

-- Use the new WorkID value (598 in this case)

INSERT INTO TRANS (DateAcquired, AcquisitionPrice, WorkID)
 	VALUES ('2009-02-05', 250.00, 598);


SELECT * FROM WorkAndTransView
ORDER BY Title, Copy;