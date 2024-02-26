
alter table only medline_master
	add constraint uni_medline_master unique (pmid);

alter table only medline_grant
	add constraint uni_medline_grant unique (pmid,grant_ctr);
alter table only medline_grant
	add constraint fk_medline_grant foreign key (pmid) references medline_master(pmid) on delete cascade;

alter table only medline_databank
	add constraint uni_medline_databank unique (pmid,databank_ctr);
alter table only medline_databank
	add constraint fk_medline_databank foreign key (pmid) references medline_master(pmid) on delete cascade;

alter table only pubmedhistory
	add constraint uni_pubmedhistory unique (pmid,pubmed_ctr);
alter table only pubmedhistory
	add constraint fk_pubmedhistory foreign key (pmid) references medline_master(pmid) on delete cascade;

alter table only medline_investigators
	add constraint uni_medline_investigators unique (pmid,investigator_ctr);
alter table only medline_investigators
	add constraint fk_medline_investigators foreign key (pmid) references medline_master(pmid) on delete cascade;

alter table only medline_article_date
	add constraint uni_medline_article_date unique (pmid,article_ctr);
alter table only medline_article_date
	add constraint fk_medline_article_date foreign key (pmid) references medline_master(pmid) on delete cascade;

alter table only pubmedstatus
	add constraint uni_pubmedstatus unique (pmid,pmstatid_ctr);
alter table only pubmedstatus
	add constraint fk_pubmedstatus foreign key (pmid) references medline_master(pmid) on delete cascade;

alter table only medline_other_id
	add constraint uni_medline_other_id unique (pmid,id_ctr);
alter table only medline_other_id
	add constraint fk_medline_other_id foreign key (pmid) references medline_master(pmid) on delete cascade;

alter table only pubmed_data_ref
	add constraint uni_pubmed_data_ref unique (pmid,ref_ctr);
alter table only pubmed_data_ref
	add constraint fk_pubmed_data_ref foreign key (pmid) references medline_master(pmid) on delete cascade;

alter table only pubmed_data_ref_article
	add constraint uni_pubmed_data_ref_article unique (pmid,article_id);
alter table only pubmed_data_ref_article
	add constraint fk_pubmed_data_ref_article foreign key (pmid) references medline_master(pmid)on delete cascade;

alter table only medline_other_abstract
	add constraint uni_medline_other_abstract unique (pmid,abstract_ctr);
alter table only medline_other_abstract
	add constraint fk_medline_other_abstract foreign key (pmid) references medline_master(pmid) on delete cascade;

alter table only medline_keyword_list
	add constraint uni_medline_keyword_list unique (pmid,list_ctr);
alter table only medline_keyword_list
	add constraint fk_medline_keyword_list foreign key (pmid) references medline_master(pmid) on delete cascade;

alter table only medline_comments_corrections
	add constraint uni_medline_comments_corrections unique (pmid,comment_ctr);
alter table only medline_comments_corrections
	add constraint fk_medline_comments_corrections foreign key (pmid) references medline_master(pmid) on delete cascade;

alter table only medline_general_note
	add constraint uni_medline_general_note unique (pmid,note_ctr);
alter table only medline_general_note
	add constraint fk_medline_general_note foreign key (pmid) references medline_master(pmid) on delete cascade;

alter table only medline_citation_subset
	add constraint uni_medline_citation_subset unique (pmid,subset_ctr);
alter table only medline_citation_subset
	add constraint fk_medline_citation_subset foreign key (pmid) references medline_master(pmid) on delete cascade;

alter table only medline_language
	add constraint uni_medline_language unique (pmid,language_ctr);
alter table only medline_language
	add constraint fk_medline_language foreign key (pmid) references medline_master(pmid) on delete cascade;

alter table only medline_chemical
	add constraint uni_medline_chemical unique (pmid,chemical_ctr);
alter table only medline_chemical
	add constraint fk_medline_chemical foreign key (pmid) references medline_master(pmid) on delete cascade;

alter table only medline_elocationid
	add constraint uni_medline_elocationid unique (pmid,eloc_ctr);
alter table only medline_elocationid
	add constraint fk_medline_elocationid foreign key (pmid) references medline_master(pmid) on delete cascade;

alter table only medline_personal_name_subject
	add constraint uni_medline_personal_name_subject unique (pmid,subject_ctr);
alter table only medline_personal_name_subject
	add constraint fk_medline_personal_name_subject foreign key (pmid) references medline_master(pmid) on delete cascade;

alter table only medline_abstract_text
	add constraint uni_medline_abstract_text unique (pmid,abstract_ctr);
alter table only medline_abstract_text
	add constraint fk_medline_abstract_text foreign key (pmid) references medline_master(pmid) on delete cascade;

alter table only medline_publicationtype
	add constraint uni_medline_publicationtype unique (pmid,pubtype_ctr);
alter table only medline_publicationtype
	add constraint fk_medline_publicationtype foreign key (pmid) references medline_master(pmid) on delete cascade;

alter table only medline_mesh_heading
	add constraint uni_medline_mesh_heading unique (pmid,heading_ctr);
alter table only medline_mesh_heading
	add constraint fk_medline_mesh_heading foreign key (pmid) references medline_master(pmid) on delete cascade;

alter table only medline_supp_mesh
	add constraint uni_medline_supp_mesh unique (pmid,mesh_ctr);
alter table only medline_supp_mesh
	add constraint fk_medline_supp_mesh foreign key (pmid) references medline_master(pmid) on delete cascade;

alter table only medline_space_flight
	add constraint uni_medline_space_flight unique (pmid,flight_ctr);
alter table only medline_space_flight
	add constraint fk_medline_space_flight foreign key (pmid) references medline_master(pmid) on delete cascade;

alter table only medline_gene_symbol
	add constraint uni_medline_gene_symbol unique (pmid,gene_ctr);
alter table only medline_gene_symbol
	add constraint fk_medline_gene_symbol foreign key (pmid) references medline_master(pmid) on delete cascade;

alter table only pubmedidlist
	add constraint uni_pubmedidlist unique (pmid,pmidlist_ctr);
alter table only pubmedidlist
	add constraint fk_pubmedidlist foreign key (pmid) references medline_master(pmid) on delete cascade;

alter table only medline_author
	add constraint uni_medline_author unique (pmid,author_ctr);
alter table only medline_author
	add constraint fk_medline_author foreign key (pmid) references medline_master(pmid) on delete cascade;

alter table only medline_author_identifier
	add constraint uni_medline_author_identifier unique (pmid,author_ctr,identifier_ctr);
alter table only medline_author_identifier
	add constraint fk_medline_author_identifier foreign key (pmid,author_ctr) references medline_author(pmid,author_ctr) on delete cascade;

alter table only medline_keywords
	add constraint uni_medline_keywords unique (pmid,list_ctr,keyword_ctr);
alter table only medline_keywords
	add constraint fk_medline_keywords foreign key (pmid,list_ctr) references medline_keyword_list(pmid,list_ctr) on delete cascade;

alter table only medline_other_abstract_text
	add constraint uni_medline_other_abstract_text unique (pmid,abstract_ctr,para_ctr);
alter table only medline_other_abstract_text
	add constraint fk_medline_other_abstract_text foreign key (pmid,abstract_ctr) references medline_other_abstract(pmid,abstract_ctr) on delete cascade;

alter table only medline_author_affiliation
	add constraint uni_medline_author_affiliation unique (pmid,author_ctr,affiliation_ctr);
alter table only medline_author_affiliation
	add constraint fk_medline_author_affiliation foreign key (pmid,author_ctr) references medline_author(pmid,author_ctr) on delete cascade;

alter table only medline_mesh_qualifier
	add constraint uni_medline_mesh_qualifier unique (pmid,heading_ctr,qualifier_ctr);
alter table only medline_mesh_qualifier
	add constraint fk_medline_mesh_qualifier foreign key (pmid,heading_ctr) references medline_mesh_heading(pmid,heading_ctr) on delete cascade;

alter table only medline_investigator_identifier
	add constraint uni_medline_investigator_identifier unique (pmid,investigator_ctr,identifier_id_ctr);
alter table only medline_investigator_identifier
	add constraint fk_medline_investigator_identifier foreign key (pmid,investigator_ctr) references medline_investigators(pmid,investigator_ctr) on delete cascade;

alter table only medline_investigator_affiliation
	add constraint uni_medline_investigator_affiliation unique (pmid,investigator_ctr,affiliation_ctr);
alter table only medline_investigator_affiliation
	add constraint fk_medline_investigator_affiliation foreign key (pmid,investigator_ctr) references medline_investigators(pmid,investigator_ctr) on delete cascade;

alter table only medline_accession_number
	add constraint uni_medline_accession_number unique (pmid,databank_ctr,accession_ctr);
alter table only medline_accession_number
	add constraint fk_medline_accession_number foreign key (pmid,databank_ctr) references medline_databank(pmid,databank_ctr) on delete cascade;

alter table only medline_investigator_affiliation_identifier
	add constraint uni_medline_investigator_affiliation_identifier unique (pmid,investigator_ctr,affiliation_ctr,affiliation_identifier_ctr);
alter table only medline_investigator_affiliation_identifier
	add constraint fk_medline_investigator_affiliation_identifier foreign key (pmid,investigator_ctr,affiliation_ctr) references medline_investigator_affiliation(pmid,investigator_ctr,affiliation_ctr) on delete cascade;

alter table only medline_author_affiliation_identifier
	add constraint uni_medline_author_affiliation_identifier unique (pmid,author_ctr,affiliation_ctr,affiliation_identifier_ctr);
alter table only medline_author_affiliation_identifier
	add constraint fk_medline_author_affiliation_identifier foreign key (pmid,author_ctr,affiliation_ctr) references medline_author_affiliation(pmid,author_ctr,affiliation_ctr) on delete cascade;
