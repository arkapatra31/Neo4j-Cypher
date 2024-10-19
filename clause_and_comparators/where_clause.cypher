// Matching a node with a specific property value using where clause
MATCH (p:Person)
WHERE p.name='Keanu Reeves'
 AND p.born >= 1964
RETURN p

//Match a node by a property value using not equal operator
MATCH (p:Person)
WHERE p.born <> 1964
RETURN p
LIMIT 10
