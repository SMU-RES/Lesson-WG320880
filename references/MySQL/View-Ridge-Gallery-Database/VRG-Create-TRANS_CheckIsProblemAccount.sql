DELIMITER //

CREATE TRIGGER TRANS_CheckIsProblemAccount
BEFORE INSERT ON TRANS
FOR EACH ROW

BEGIN

	DECLARE	varTransactionID		 Int;
	DECLARE	varCustomerID			  Int;
	DECLARE	varIsProblemAccount	BOOLEAN;

	SET  	  varTransactionID = NEW.TransactionID;
	SET      varCustomerID	= NEW.CustomerID;


	/* This trigger will fire for every update of TRANS.
	 * This includes updates without a Customer participating,
   * such as an update of AskingPrice using the
   * TRANS_AfterInsertSetAskingPrice tigger.
   * Therefore, make sure there is a Customer particpating
   * in the Update of TRANS
   */

	# Check if Customer ID is NULL and if so go to end of trigger.
	# Do not ROLLBACK the transaction, just don't complete this trigger.

	IF (varCustomerID IS NOT NULL) THEN

    # Valid CustomerID.
  	# Obtain value of @isProblemAcocunt.

	  SELECT  isProblemAccount
	  FROM	  CUSTOMER AS C
	  WHERE	 C.CustomerID = varCustomerID
    INTO    varIsProblemAccount;

  	IF (varisProblemAccount = 1) THEN
		  # This is a problem account.
		  # Rollback the transaction.
      ROLLBACK;
		END IF;
  END IF;
END;
//

DELIMITER ;