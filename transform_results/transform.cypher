//Match the actors that acted in the movie 'Top Gun' and return the actors and the movie they acted in. Order the results by the actor's name in descending order.
MATCH (actor:Person)-[role:ACTED_IN]->(m:Movie)
WHERE m.title = 'Top Gun'
RETURN actor, m
 ORDER BY actor.name DESC

//Return last 3 actors from the previous query
MATCH (actor:Person)-[role:ACTED_IN]->(m:Movie)
WHERE m.title = 'Top Gun'
RETURN actor, m
 ORDER BY actor.name DESC
SKIP 3
LIMIT 3

//Return the actor name as Name and the movie title as Movie
MATCH (actor:Person)-[role:ACTED_IN]->(m:Movie)
WHERE m.title = 'Top Gun'
RETURN actor.name AS Name, m.title AS Movie
 ORDER BY actor.name DESC
SKIP 3
LIMIT 3
