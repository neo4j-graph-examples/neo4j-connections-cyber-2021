// Add constraints - schema
CREATE CONSTRAINT group_name IF NOT EXISTS ON (g:Group) ASSERT g.name IS UNIQUE;
CREATE CONSTRAINT domain_name IF NOT EXISTS ON (d:Domain) ASSERT d.name IS UNIQUE;
CREATE CONSTRAINT group_object_id IF NOT EXISTS ON (g:Group) ASSERT (g.objectid) IS UNIQUE;
CREATE CONSTRAINT ou_name IF NOT EXISTS ON (o:OU) ASSERT (o.name) IS UNIQUE;
CREATE CONSTRAINT domain_object_id IF NOT EXISTS ON (d:Domain) ASSERT (d.objectid) IS UNIQUE;
CREATE CONSTRAINT ou_object_id IF NOT EXISTS ON (o:OU) ASSERT (o.objectid) IS UNIQUE;
CREATE CONSTRAINT user_name IF NOT EXISTS ON (u:User) ASSERT (u.name) IS UNIQUE;
CREATE CONSTRAINT computer_objectid IF NOT EXISTS ON (c:Computer) ASSERT (c.objectid) IS UNIQUE;
CREATE CONSTRAINT computer_name IF NOT EXISTS ON (c:Computer) ASSERT (c.name) IS UNIQUE;
CREATE CONSTRAINT user_objectid IF NOT EXISTS ON (u:User) ASSERT (u.objectid) IS UNIQUE;
CREATE CONSTRAINT gpo_name IF NOT EXISTS ON (g:GPO) ASSERT (g.name) IS UNIQUE;


// Import from json
CALL apoc.import.json("https://gist.githubusercontent.com/chintan196/ac8107e8545ef91738812099ee9f1acf/raw/da9ceff33e22dd25419c6707f6c8d84cc6552ab2/ad-data")

// Export to json
CALL apoc.export.json.all("all.json",{useTypes:true})