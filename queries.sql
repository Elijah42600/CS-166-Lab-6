--1

SELECT sid, COUNT(*)
FROM Catalog
GROUP BY sid;

--2

SELECT sid, COUNT(*)
FROM Catalog
GROUP BY sid
HAVING COUNT(*) > 2;

--3

SELECT sname, COUNT(*)
FROM Catalog c
INNER JOIN Suppliers s ON c.sid = s.sid
INNER JOIN Parts p ON c.pid = p.pid
GROUP BY sname
HAVING EVERY (p.color = 'Green');

--4

SELECT s.sname, MAX(c.cost)
FROM Catalog c
INNER JOIN Suppliers s ON c.sid = s.sid
INNER JOIN Parts p ON c.pid = p.pid
GROUP BY s.sname
HAVING ANY (P.color = ’Green’) AND ANY (P.color = ’Red’);
