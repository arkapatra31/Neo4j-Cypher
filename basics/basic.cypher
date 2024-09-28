//Visualize the schema of the database
CALL db.schema.visualization

//Match specific nodes
MATCH (g:Genre)
RETURN g
LIMIT 10
