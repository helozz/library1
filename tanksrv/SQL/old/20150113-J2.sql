use [tankwars]

--1 detect players with incorrect experience
SELECT u.id, u.Name, u.UserLevel, u.Experience, l.l, l.e  
FROM Users u
LEFT JOIN Levels l ON u.UserLevel = l.l
WHERE u.Experience < l.e
ORDER BY u.UserLevel ASC


--2 update players with incorrect experience
UPDATE u
SET u.Experience = l.e
FROM Users AS u
LEFT JOIN Levels l ON u.UserLevel = l.l  
WHERE u.Experience < l.e
