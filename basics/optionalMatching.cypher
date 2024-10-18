MATCH (p1:Person)-[:HAS_CONTACT]->(p2:Person)-[:HAS_CONTACT]->(p3:Person)
WHERE p1 <> p3
RETURN p1, p2, p3
LIMIT 10

MATCH (p1:Person)-[:HAS_CONTACT]->(p2:Person)
OPTIONAL MATCH (p2)-[:DIRECTED]->(m:Movie)
RETURN p1, p2, m
LIMIT 2