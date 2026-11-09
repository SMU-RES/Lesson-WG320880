/********************************************************************************/
/*																		                                          */
/*	Kroenke and Auer - Database Processing (11th Edition) Chapter 12	        	*/
/*																		                                          */
/*	The View Ridge Gallery (VRG) - Create Views 							                  */
/*																		                                          */
/*	These are the MySQL 5.1 SQL code solutions                              		*/
/*																		                                          */
/********************************************************************************/

/*  SQL View - CustomerInsterestsView                                           */

CREATE VIEW CustomerInterestsView AS
	SELECT	C.LastName AS CustomerLastName,
			    C.FirstName AS CustomerFirstName,
			    A.LastName AS ArtistName
	FROM		CUSTOMER AS C JOIN CUSTOMER_ARTIST_INT AS CI
			ON	C.CustomerID = CI.CustomerID
				JOIN		ARTIST AS A
					ON	CI.ArtistID = A.ArtistID;

SELECT	  *
FROM		  CustomerInterestsView
ORDER BY	CustomerLastName, CustomerFirstName;

/*  SQL View - CustomerNameView                                                 */

CREATE VIEW CustomerNameView AS
	SELECT	LastName AS CustomerLastName,
				  FirstName AS CustomerFirstName
	FROM		CUSTOMER;

SELECT		*
FROM			CustomerNameView
ORDER BY	CustomerLastName, CustomerFirstName;

/*  SQL View - BasicCustomerDataView                                            */

CREATE VIEW BasicCustomerDataView AS
	SELECT	LastName AS CustomerLastName,
				  FirstName AS CustomerFirstName,
				  AreaCode, PhoneNumber
	FROM 	 CUSTOMER;

SELECT		*
FROM			BasicCustomerDataView
ORDER BY	CustomerLastName, CustomerFirstName;

/*  SQL View - BasicCustomerDataWAView                                          */

CREATE VIEW BasicCustomerDataWAView AS
	SELECT	LastName AS CustomerLastName,
				  FirstName AS CustomerFirstName,
				  AreaCode, PhoneNumber
	FROM 	 CUSTOMER
	WHERE   State = 'WA';

SELECT		*
FROM			BasicCustomerDataWAView
ORDER BY	CustomerLastName, CustomerFirstName;

/*  SQL View - CustomerPhoneView                                                */

CREATE VIEW CustomerPhoneView AS
	SELECT	LastName AS CustomerLastName,
				  FirstName AS CustomerFirstName,
				  CONCAT('(',AreaCode,') ',PhoneNumber) As CustomerPhone
	FROM 	CUSTOMER;

SELECT		*
FROM			CustomerPhoneView
ORDER BY		CustomerLastName, CustomerFirstName;

/*  SQL View - CustomerInsterestsView - at top of file                          */

/*  SQL View - ArtistWorkNetViewView                                            */

CREATE VIEW ArtistWorkNetView AS
	SELECT	W.WorkID,
				  LastName AS ArtistLastName,
				  FirstName AS ArtistFirstName,
				  Title, Copy, DateSold,
				  AcquisitionPrice, SalesPrice,
				  (SalesPrice - AcquisitionPrice) AS NetProfit
	FROM		TRANS AS T JOIN	WORK AS W
				ON 	T.WorkID = W.WorkID
						 JOIN 	ARTIST AS A
								ON  W.ArtistID = A.ArtistID;

SELECT		ArtistLastName, ArtistFirstName,
			    WorkID, Title, Copy, DateSold, NetProfit
FROM			ArtistWorkNetView
WHERE		 NetProfit > 5000
ORDER BY	DateSold;


/*  SQL View - ArtistWorkTotalNetViewView                                            */

CREATE VIEW ArtistWorkTotalNetView AS
	SELECT		ArtistLastName, ArtistFirstName,
					  WorkID, Title, Copy,
					  SUM(NetProfit) AS TotalNetProfit
	FROM			ArtistWorkNetView
	GROUP BY	ArtistLastName, ArtistFirstName,
					  WorkID, Title, Copy;

SELECT		*
FROM			ArtistWorkTotalNetView
WHERE		 TotalNetProfit > 5000
ORDER BY	TotalNetProfit;

/*************************************************************************************/