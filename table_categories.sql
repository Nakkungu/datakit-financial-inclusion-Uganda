CREATE TABLE respondent (
    wpid_random BIGINT PRIMARY KEY,
    wgt FLOAT,
    gender VARCHAR(25),
    age INT,
    educ VARCHAR(255),
    inc_q INT,
    emp_in VARCHAR(255),
    urbanicity_f2f VARCHAR(25)
    );
ALTER TABLE respondent ALTER COLUMN inc_q TYPE VARCHAR(50);

CREATE TABLE Account (
    wpid_random BIGINT PRIMARY KEY,
    account VARCHAR(25),
    account_fin VARCHAR(25),
    account_mob VARCHAR(25),
    FOREIGN KEY (wpid_random) REFERENCES respondent(wpid_random)
);

CREATE TABLE FinancialWorries (
    wpid_random INT,
    fin44a VARCHAR(25),
    fin44b VARCHAR(25),
    fin44c VARCHAR(25),
    fin44d VARCHAR(25),
    fin45 VARCHAR(255),
    fin45_1 BOOLEAN,
    fin45_1_China VARCHAR(25),
    FOREIGN KEY (wpid_random) REFERENCES Respondent(wpid_random)
);

ALTER TABLE financialworries ALTER COLUMN fin45_1 TYPE VARCHAR(50);

CREATE TABLE PaymentMethods (
    wpid_random INT,
    fin27_1 VARCHAR(25),
    fin27c1 VARCHAR(25),
    fin27c2 VARCHAR(25),
    fin29_1 VARCHAR(25),
    fin29c1 VARCHAR(25),
    fin29c2 VARCHAR(25),
    fin31a VARCHAR(25),
    fin31b VARCHAR(25),
    fin31b1 VARCHAR(25),
    fin31b1_China VARCHAR(25),
    fin31c VARCHAR(25),
    fin34a VARCHAR(25),
    fin34b VARCHAR(25),
    fin34d VARCHAR(25),
    fin34e VARCHAR(25),
    fin39a VARCHAR(25),
    fin39b VARCHAR(25),
    fin39d VARCHAR(25),
    fin39e VARCHAR(25),
    fin43a VARCHAR(25),
    fin43b VARCHAR(25),
    fin43d VARCHAR(25),
    fin43e VARCHAR(25),
    FOREIGN KEY (wpid_random) REFERENCES Respondent(wpid_random)
);

ALTER TABLE PaymentMethods ALTER COLUMN fin31b1 TYPE VARCHAR(250);

CREATE TABLE DigitalPayments (
    wpid_random BIGINT,
    fin14_1 VARCHAR(25),
    fin14_2 VARCHAR(25),
    fin14_2_China VARCHAR(25),
    fin14a VARCHAR(25),
    fin14a1 VARCHAR(25),
    fin14b VARCHAR(25),
    fin14c VARCHAR(25),
    fin14c_2 VARCHAR(25),
    fin14c_2_China VARCHAR(25),
    anydigpayment VARCHAR(25),
    merchantpay_dig VARCHAR(25),
    FOREIGN KEY (wpid_random) REFERENCES respondent(wpid_random)
);

ALTER TABLE DigitalPayments ALTER COLUMN fin14_2 TYPE VARCHAR(250);


CREATE TABLE SavingsAndBorrowings (
    wpid_random BIGINT,
    fin16 VARCHAR(25),
    fin17a VARCHAR(25),
    fin17a1 VARCHAR(25),
    fin17b VARCHAR(25),
    fin20 VARCHAR(25),
    fin22a VARCHAR(25),
    fin22b VARCHAR(25),
    fin22c VARCHAR(25),
    saved VARCHAR(25),
    borrowed VARCHAR(25),
    FOREIGN KEY (wpid_random) REFERENCES respondent(wpid_random)
);

