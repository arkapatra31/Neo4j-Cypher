// Reference: http://neo4j.com/docs/stable/cypher-query-lang.html#_boolean_operators
//Using Boolean operator (IN) in a WHERE clause
MATCH (p:Person)
WHERE p.born IN [1956, 1964]
RETURN p
LIMIT 10

//Using Boolean operator (NOT IN) in a WHERE clause
MATCH (p:Person)
WHERE NOT (p.born IN [1956, 1964])
RETURN p
LIMIT 10
