//Match two nodes with a relationship
MATCH (m:Movie)-[:IN_GENRE]->(g:Genre)
WHERE g.name = 'Comedy'
RETURN m.title AS Movie_Title

//Match movie node based on a property
MATCH (m:Movie)
WHERE m.title = 'The Matrix'
RETURN m
