CREATE INDEX genre_id_idx IF NOT EXISTS FOR (g1:Genre) ON (g1.id);
CREATE INDEX genre_name_idx IF NOT EXISTS FOR (g2:Genre) ON (g2.name);
CREATE INDEX podcast_id_idx IF NOT EXISTS FOR (p1:Podcast) ON (p1.id);
CREATE INDEX podcast_name_idx IF NOT EXISTS FOR (p2:Podcast) ON (p2.name);
CREATE INDEX country_name_idx IF NOT EXISTS FOR (c:Country) ON (c.name);
CREATE INDEX rating_id_idx IF NOT EXISTS FOR (r:Ratings) ON (r.id);


CALL apoc.periodic.iterate("MATCH (n) RETURN n", "DETACH DELETE n", {batchSize:5000, parallel:true})


string("MATCH (p:Podcast{id:")+$id$+ string("}) MATCH (r1:Ratings{id:1}) CALL apoc.create.relationship(p, \"HAS_RATINGS\", {count:[") + $1$ + string("]}, r1) YIELD rel RETURN rel;")

string("MATCH (p:Podcast{id:")+$id$+ string("}) MATCH (r1:Ratings{id:2}) CALL apoc.create.relationship(p, \"HAS_RATINGS\", {count:[") + $2$ + string("]}, r1) YIELD rel RETURN rel;")

string("MATCH (p:Podcast{id:")+$id$+ string("}) MATCH (r1:Ratings{id:3}) CALL apoc.create.relationship(p, \"HAS_RATINGS\", {count:[") + $3$ + string("]}, r1) YIELD rel RETURN rel;")

string("MATCH (p:Podcast{id:")+$id$+ string("}) MATCH (r1:Ratings{id:4}) CALL apoc.create.relationship(p, \"HAS_RATINGS\", {count:[") + $4$ + string("]}, r1) YIELD rel RETURN rel;")

string("MATCH (p:Podcast{id:")+$id$+ string("}) MATCH (r1:Ratings{id:5}) CALL apoc.create.relationship(p, \"HAS_RATINGS\", {count:[") + $5$ + string("]}, r1) YIELD rel RETURN rel;")


string("  MATCH (p:Podcast) MATCH (r1:Ratings{id:1}) where p.id=") + $id$ + string(" CREATE (p)-[:HAS_RATINGS{count:") + $1$ + string("}]->(r1) ;")

string("  MATCH (p:Podcast) MATCH (r1:Ratings{id:2}) where p.id=") + $id$ + string(" CREATE (p)-[:HAS_RATINGS{count:") + $2$ + string("}]->(r1) ;")

string("  MATCH (p:Podcast) MATCH (r1:Ratings{id:3}) where p.id=") + $id$ + string(" CREATE (p)-[:HAS_RATINGS{count:") + $3$ + string("}]->(r1) ;")

string("  MATCH (p:Podcast) MATCH (r1:Ratings{id:4}) where p.id=") + $id$ + string(" CREATE (p)-[:HAS_RATINGS{count:") + $4$ + string("}]->(r1) ;")

string("  MATCH (p:Podcast) MATCH (r1:Ratings{id:5}) where p.id=") + $id$ + string(" CREATE (p)-[:HAS_RATINGS{count:") + $5$ + string("}]->(r1) ;")



string("  MATCH (p:Podcast) MATCH (r1:Ratings{id:1}) where p.id=") + $id$ + string(" MERGE (p)-[:HAS_RATINGS{count:") + $1$ + string("}]->(r1) ;")

string("  MATCH (p:Podcast) MATCH (r1:Ratings{id:2}) where p.id=") + $id$ + string(" MERGE (p)-[:HAS_RATINGS{count:") + $2$ + string("}]->(r1) ;")

string("  MATCH (p:Podcast) MATCH (r1:Ratings{id:3}) where p.id=") + $id$ + string(" MERGE (p)-[:HAS_RATINGS{count:") + $3$ + string("}]->(r1) ;")

string("  MATCH (p:Podcast) MATCH (r1:Ratings{id:4}) where p.id=") + $id$ + string(" MERGE (p)-[:HAS_RATINGS{count:") + $4$ + string("}]->(r1) ;")

string("  MATCH (p:Podcast) MATCH (r1:Ratings{id:5}) where p.id=") + $id$ + string(" MERGE (p)-[:HAS_RATINGS{count:") + $5$ + string("}]->(r1) ;")



string("MATCH (p:Podcast{id:")+$id$+ string("}) MATCH (r1:Ratings{id:1}) MERGE (p)-[:HAS_RATINGS{count:") + $1$ + string("}]->(r1) ;")

string("MATCH (p:Podcast{id:")+$id$+ string("}) MATCH (r1:Ratings{id:2}) MERGE (p)-[:HAS_RATINGS{count:") + $2$ + string("}]->(r1) ;")

string("MATCH (p:Podcast{id:")+$id$+ string("}) MATCH (r1:Ratings{id:3}) MERGE (p)-[:HAS_RATINGS{count:") + $3$ + string("}]->(r1) ;")

string("MATCH (p:Podcast{id:")+$id$+ string("}) MATCH (r1:Ratings{id:4}) MERGE (p)-[:HAS_RATINGS{count:") + $4$ + string("}]->(r1) ;")

string("MATCH (p:Podcast{id:")+$id$+ string("}) MATCH (r1:Ratings{id:5}) MERGE (p)-[:HAS_RATINGS{count:") + $5$ + string("}]->(r1) ;")



string("MATCH (p:Podcast{id:")+$id$+ string("}) MATCH (c:Country{id:1}) MERGE (p)-[:HAS_RATINGS{count:") + $1$ + string("}]->(r1) ;")



string("MATCH (p:Podcast) where p.id =")  +$id$+  string(" MATCH (g:Genre) where g.name = '"+ $primary_genre$  +"'  MERGE (p)-[:IS_PART_OF]->(g); ")

string("MATCH (p:Podcast{id:")+$id$+ string("}) MATCH (g:Genre{id:")+$g.id$+ string("}) MERGE (p)-[:IS_PART_OF]->(g);   ")


