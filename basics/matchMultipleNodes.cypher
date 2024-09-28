//Match multiple nodes with a relationship and properties
//WAY 1
MATCH (actor:Actor)-[:ACTED_IN]->(m:Movie)-[:IN_GENRE]->(g:Genre)
WHERE actor.name="Lillian Gish"
 AND g.name = "Comedy"
RETURN m

//WAY 2
MATCH (actor:Actor { name:"Lillian Gish" })-[:ACTED_IN]->(m:Movie)-[:IN_GENRE]->(g:Genre{name:"Comedy"})
RETURN m.title, actor.name, m.released, g.name
