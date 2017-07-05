-- 1. Get all users from Chicago
SELECT * FROM "syntax_practice"
WHERE "city" ILIKE 'Chicago' LIMIT 10;

-- 2. Get all usernames that contain the letter a.
SELECT "username" FROM "syntax_practice"
WHERE "username" ILIKE '%a%' LIMIT 10;

-- 3. Update bank records
UPDATE "syntax_practice" SET "account_balance" = '10.00'
WHERE "account_balance" = '0.00' AND "transactions_attempted" = 0;

-- 4. Select users > 9 transactions
SELECT * FROM "syntax_practice"
WHERE "transactions_attempted" >= 9 LIMIT 10;

-- 5. Get username and account balance 3 highest balances
SELECT "username", "account_balance" FROM "syntax_practice"
ORDER BY "account_balance" DESC LIMIT 3;

-- 6. Same as 5 but lowest
SELECT "username", "account_balance" FROM "syntax_practice"
ORDER BY "account_balance" ASC LIMIT 3;

-- 7. Get users with account balance > $100
SELECT * FROM "syntax_practice"
WHERE "account_balance" > 100 LIMIT 10;

-- 8. Add a new record
INSERT INTO "syntax_practice" ("username", "city", "transactions_completed", "transactions_attempted", "account_balance")
VALUES ('peter', 'minneapolis', 13, 32, 2500.00);

-- 9. Delete records
SELECT * FROM "syntax_practice"
WHERE ("city" ILIKE 'miami' OR "city" ILIKE 'phoenix') AND "transactions_completed" < 5;

DELETE FROM "syntax_practice"
WHERE ("city" ILIKE 'miami' OR "city" ILIKE 'phoenix') AND "transactions_completed" < 5;
