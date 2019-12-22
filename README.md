# The Last Recipe
Open Information Systems Project 2019-2020 of:
* Khaïm Berkane
* Aaron Lippeveldts
* Kelvin Schoofs
* Stijn Vissers

# Installation instructions
* Install Protege with the required plugins (Ontop, SPARQL)
* Download the SHACL plugin, or use the one provided in this repository
* Place the .jar in ~/Protege-5.5.0/plugins/
* Create a H2 database
  * Execute the following command: `java -cp h2-1.4.200.jar org.h2.tools.Shell`
  * Fill in the right parameters according to those in `Ontology.properties`
  * Once you are in the Shell, execute all the SQL commands from `create.sql`
  * Then, populate the tables by executing all the SQL commands from `data.sql`
  * Quit the shell and start the server
* Start up protege
* In File --> preferences --> JDBC Drivers: add the H2 Connection (class name: org.h2.Driver, jar same as before)
* Test the datasource connection in the 'Ontop Mappings' tab
* The mappings should be loaded from the `Ontology.obda` file
* Start reasoning with the ontop reasoner
* You can now:
  * Check all the mappings
  * Materialize all the triples
  * Load the `shacl.ttl` file in the 'SHACL editor' tab and validate all the constraints
