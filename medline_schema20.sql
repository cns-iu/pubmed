create table medline_master (
	pmid varchar,
	file_number varchar,
	journal_country varchar,
	journal_medline_ta varchar,
	indexing_method varchar,
	issue varchar,
	completed_month varchar,
	pub_year varchar,
	created_year varchar,
	complete_grants varchar,
	journal_issnlinking varchar,
	abstract_copyright_info varchar,
	iso_abbrev varchar,
	version_date varchar,
	vernacular_title varchar,
	coistatement varchar,
	pagination varchar,
	pub_day varchar,
	created_month varchar,
	journal_nlmuniqueid varchar,
	pub_season varchar,
	created_day varchar,
	issn_type varchar,
	revised_day varchar,
	end_page varchar,
	start_page varchar,
	status varchar,
	completed_day varchar,
	issn varchar,
	revised_month varchar,
	complete_databanks varchar,
	number_of_references varchar,
	pubmodel varchar,
	medium varchar,
	mc_pmid_version varchar,
	owner varchar,
	pub_medlinedate varchar,
	article_title varchar,
	journal_title varchar,
	volume varchar,
	version varchar,
	complete_authors varchar,
	revised_year varchar,
	filename varchar,
	completed_year varchar,
	pub_month varchar
);

create table medline_grant (
	pmid varchar,
	grant_ctr int,
	country varchar,
	acronym varchar,
	agency varchar,
	grant_id varchar
);

create table medline_databank (
	pmid varchar,
	databank_ctr int,
	databankname varchar
);

create table pubmedhistory (
	pmid varchar,
	pubmed_ctr int,
	hour varchar,
	minute varchar,
	month varchar,
	status varchar,
	day varchar,
	year varchar
);

create table medline_investigators_list (
    pmid varchar,
	investigator_list_id varchar
);

create table medline_investigators (
	pmid varchar,
	investigator_list_id varchar,
	investigator_ctr int,
	initials varchar,
	collective_name varchar,
	suffix varchar,
	fore_name varchar,
	last_name varchar,
	valid varchar
);

create table medline_article_date (
	pmid varchar,
	article_ctr int,
	article_month varchar,
	article_day varchar,
	article_year varchar,
	datetype varchar
);

create table pubmedstatus (
	pmid varchar,
	pmstatid_ctr int,
	ppublish varchar
);

create table medline_other_id (
	pmid varchar,
	id_ctr int,
	id_source varchar,
	other_id varchar
);

create table pubmed_data_ref_list (
	pmid varchar,
	ref_list_ctr int,
	title varchar
);

create table pubmed_data_ref_article
(
    pmid varchar,
    ref_ctr integer,
    art_ctr integer,
    idtype varchar,
    article_id varchar
);

create table pubmed_data_ref (
	pmid varchar,
	ref_ctr int,
	article_id varchar,
	idtype varchar,
	citation varchar
);

create table medline_other_abstract (
	pmid varchar,
	abstract_ctr int,
	language varchar,
	abstract_type varchar,
	copyright_info varchar
);

create table medline_keyword_list (
	pmid varchar,
	list_ctr int,
	owner varchar
);

create table medline_comments_corrections (
	pmid varchar,
	comment_ctr int,
	refpmidver varchar,
	reftype varchar,
	refpmid varchar,
	note varchar,
	refsource varchar
);

create table medline_general_note (
	pmid varchar,
	note_ctr int,
	owner varchar,
	note varchar
);

create table medline_citation_subset (
	pmid varchar,
	subset_ctr int,
	citation_subset varchar
);

create table medline_language (
	pmid varchar,
	language_ctr int,
	language varchar
);

create table medline_chemical (
	pmid varchar,
	chemical_ctr int,
	registry_number varchar,
	ui varchar,
	substance_name varchar
);

create table medline_elocationid (
	pmid varchar,
	eloc_ctr int,
	eid_type varchar,
	eid_valid varchar,
	elocation varchar
);

create table medline_personal_name_subject (
	pmid varchar,
	subject_ctr int,
	initials varchar,
	suffix varchar,
	fore_name varchar,
	last_name varchar
);

create table medline_abstract_text (
	pmid varchar,
	abstract_ctr int,
	abstract_text varchar,
	nlmcategory varchar,
	label varchar
);

create table medline_publicationtype (
	pmid varchar,
	pubtype_ctr int,
	publicationtype varchar,
	ui varchar
);

create table medline_mesh_heading (
	pmid varchar,
	heading_ctr int,
	major_topic varchar,
	ui varchar,
	descriptor_type varchar,
	descriptor_name varchar
);

create table medline_supp_mesh (
	pmid varchar,
	mesh_ctr int,
	ui varchar,
	mesh_name varchar,
	mesh_type varchar
);

create table medline_space_flight (
	pmid varchar,
	flight_ctr int,
	space_flight varchar
);

create table medline_gene_symbol (
	pmid varchar,
	gene_ctr int,
	gene_symbol varchar
);

create table pubmedidlist (
	pmid varchar,
	pmidlist_ctr int,
	article_id varchar,
	idtype varchar
);

create table medline_author (
	pmid varchar,
	author_ctr int,
	initials varchar,
	fore_name varchar,
	last_name varchar,
	author_valid varchar,
	collective_name varchar,
	equalcontrib varchar,
	suffix varchar
);

create table medline_author_identifier (
	pmid varchar,
	author_ctr int,
	identifier_ctr int,
	source varchar,
	identifier varchar
);

create table medline_author_affiliation (
	pmid varchar,
	author_ctr int,
	affiliation_ctr int,
	affiliation varchar
);

create table medline_author_affiliation_identifier (
	pmid varchar,
	author_ctr int,
	affiliation_ctr int,
	affiliation_identifier_ctr int,
	source varchar,
	identifier varchar
);

create table medline_investigator_identifier (
	pmid varchar,
	investigator_list_id varchar,
	investigator_ctr int,
	identifier_id_ctr int,
	source varchar,
	investigator_id varchar
);

create table medline_investigator_affiliation (
	pmid varchar,
	investigator_ctr int,
	affiliation_ctr int,
	affiliation varchar
);

create table medline_investigator_affiliation_identifier (
	pmid varchar,
	investigator_id varchar,
	investigator_ctr int,
	affiliation_ctr int,
	affiliation_identifier_ctr int,
	source varchar
);

create table medline_accession_number (
	pmid varchar,
	databank_ctr int,
	accession_ctr int,
	accession_number varchar
);

create table medline_mesh_qualifier (
	pmid varchar,
	heading_ctr int,
	qualifier_ctr int,
	major_topic varchar,
	ui varchar,
	qualifier_name varchar
);

create table medline_keywords (
	pmid varchar,
	list_ctr int,
	keyword_ctr int,
	major_topic varchar,
	keyword varchar
);

create table medline_other_abstract_text (
	pmid varchar,
	abstract_ctr int,
	para_ctr int,
	abstract_text varchar,
	nlmcategory varchar,
	label varchar
);