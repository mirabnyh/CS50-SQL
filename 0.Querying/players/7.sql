/*write a SQL query to count the number of players who bat (or batted) right-handed and throw (or threw) left-handed, or vice versa.*/
SELECT COUNT("id") FROM "players"
WHERE ("bats" = 'L' AND "throws" = 'R')
OR ("bats" = 'R' AND "throws" = 'L');

