// Actor -> Movie <- User
MATCH (:Actor { name:"Lillian Gish" })-[:ACTED_IN]->(m:Movie)<-[r:RATED]-(u:User)
RETURN m.title, m.imdbRating, avg(r.rating)
