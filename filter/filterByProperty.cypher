// Match a node by a property value filtering
MATCH (n:Person { name: "Keanu Reeves", born: 1964 })
RETURN n
