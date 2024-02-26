# pubmed

files brought down from fpt://ftp.ncbi.nlm.nih.gov/pubmed/baseline

for 2019:
* pubmed19n0001.xml to pubmed19n1015.xml
* using medline_schema19.sql and medline_schema19_constraints.sql

for 2020: (removed to save space)
* pubmed20n0001.xml to pubmed20n1430.xml (as of Oct 13,2020)
* using medline_schema20.sql and medline_schema20_constraints.sql

for 2021-2023: not loaded, issues with ReferenceList values

for 2024: 
* using medline_schema20.sql and medline_schema20_constraints.sql
* update to add pubmed_ref_article table and constraints.

SchemaSpy Analysis:
* [Database Documentation - 19](https://demo.cns.iu.edu/dbdocs/pubmed19/)

