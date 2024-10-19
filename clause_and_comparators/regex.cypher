//Match Movie nodes with title property value starting with 'The'
MATCH (m:Movie)
WHERE m.title =~ 'The.*'
RETURN m
LIMIT 10

//Match Movie nodes with title property value starting with 'The' with case insensitive
MATCH (m:Movie)
WHERE m.title =~ '(?i)The.*'
RETURN m
LIMIT 10

//Match Movie nodes with title property value having 'The' in the middle with case insensitive
MATCH (m:Movie)
WHERE m.title =~ '(?i).+The.*'
RETURN m
LIMIT 10

//Match Movie nodes with title property value starting with 'The' with case insensitive and ending with 'ing'
MATCH (m:Movie)
WHERE m.title =~ '(?i)The.*ing'
RETURN m
LIMIT 10
