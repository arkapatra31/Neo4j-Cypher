//Match 2 nodes using a boolean expression with a path
//Here we want to return the person and movie nodes where the movie title is "Unforgiven" and the person has not reviewed the movie
MATCH (p:Person)-->(m:Movie)
WHERE m.title = "Unforgiven" AND NOT (p)-[:REVIEWED]->(m)
RETURN p, m
LIMIT 2
