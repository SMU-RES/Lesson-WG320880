/********************************************************************************/
/*																		                                          */
/*	Kroenke and Auer - Database Processing (11th Edition) Chapter 12	        	*/
/*																		                                          */
/*	The View Ridge Gallery (VRG) - Create PriceList Table 		                  */
/*																		                                          */
/*	These are the MySQL 5.1 SQL code solutions                              		*/
/*																		                                          */
/********************************************************************************/

CREATE TABLE PRICELIST (
	TransactionID		Int 				  NOT NULL,
  AskingPrice      Numeric(8,2)	NOT NULL,
	CONSTRAINT 	PriceListPK			 PRIMARY KEY(TransactionID),
	CONSTRAINT 	TransPriceListFK	FOREIGN KEY(TransactionID)
						       REFERENCES TRANS(TransactionID)
 							        ON UPDATE NO ACTION
                       ON DELETE NO ACTION
	);