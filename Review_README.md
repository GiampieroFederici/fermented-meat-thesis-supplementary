# Supplementary data for the literature synthesis

This package documents the literature synthesis and associated supplementary tables. The statistical CSV contains selected results from the review workbook.

## Files and scope

| File | Contents and use |
|---|---|
| Data_S1_search_strings.xlsx | Original search documentation. Read the search-documentation limits below. |
| Table_S1_studies_inventory.xlsx | Inventory of the 128 source publications. |
| Table_S2_microbial_matrix.xlsx | Full source matrix and coding notes: 282 analysis units, 974 entries and 4,083 recorded presences. |
| Table_S4_Top50_taxa_frequency.xlsx | Reporting frequencies of the 50 most frequently recorded entries. |
| Table_S5_network_nodes.csv | Node data for the network of 50 taxa. |
| Table_S6_network_edges_significant.csv | The 309 retained associations: 304 positive and five negative. |
| Review_multivariate_M1_verified_extract.csv | Seventeen source rows covering single-factor PERMANOVA, PERMDISP, full-model variation partitioning and partial dbRDA. Source cells, source workbook SHA256 and analysis-unit counts are included. |
| Supplementary_Extraction_Strategy.docx | Original account of extraction and curation. Preserved as a method record, not as independent validation of extraction accuracy. |
| Supplementary_Prompts_Archive.docx | Original extraction and audit prompts. Their inclusion does not certify execution or completion of each described audit. |
| Review_entry_frequencies.csv | Frequencies independently counted from all 974 source-matrix entries, with the source row and denominator. Includes the non-taxonomic starter entry. |
| Review_coverage_metadata.csv | The 282 unit identifiers and their continent/method labels used for Figure 1. |
| Review_coverage_figure.R | Base-R script reproducing Figure 1 from the coverage metadata. Run `Rscript Review_coverage_figure.R Review_coverage_metadata.csv output`. |
| Review_coverage_figure.pdf | Vector version of the new coverage figure. |

## Definitions and denominators

An analysis unit is a product, analytical method, country and inoculation-status combination. A publication can contribute several units; these are not necessarily independent biological samples.

The full matrix uses 282 units. An X records a presence in the assembled source records. Missing marks do not prove biological absence. The source rules also include declared starter organisms. Reporting frequency is not relative abundance, and frequencies across taxa do not sum to 100%.

The 974 entries include mixed taxonomic ranks and one non-taxonomic entry for an unspecified starter. The starter entry has one recorded presence and is included in the total of 539 entries recorded only once. Inoculation status is a separate unit-level attribute.

Frequencies refer to individual source-matrix entries, without merging spelling variants. Table E1 uses the Staphylococcus genus entry at source row 461 (98 units) and the Pseudomonas genus entry at row 368 (74 units). The source also contains separate labels with a final full stop at rows 619 (three units) and 624 (one unit). These have not been merged or added to the displayed counts; typography in the thesis is standardised. The row identifiers in Review_entry_frequencies.csv preserve this distinction.

All tests in the selected statistical extract use 278 units after excluding the four North American units under the minimum group-size criterion of five. This denominator applies to single-factor PERMANOVA and PERMDISP as well as full-model variation partitioning. It is supported by the common filter in the source script TableS3_rigenera_n243.R. Values were checked against the source cells; the calculations were not rerun.

The three unique adjusted-R2 fractions are 0.0132020767 for continent, 0.0242700254 for product category and 0.0305885195 for analytical technique. The residual is 0.9219556505. Four shared fractions are retained in their original row order. These adjusted fractions differ from the unadjusted R2 values of the single-factor PERMANOVA. The residual is not an estimate of unknown microbial diversity.

## Network and shared set

The network selected the top 50 taxa by reporting frequency, with a minimum frequency of five. All 1,225 pairs were tested using two-sided Fisher exact tests with Benjamini-Hochberg adjustment. Retained edges have adjusted p < 0.01 and absolute phi > 0.15. All 309 rows satisfy these thresholds and their contingency-table counts sum to 282. Associations in these records do not establish cooperation, antagonism or causal interactions.

The 57-entry cross-category bacterial set is a summary obtained from 74 entries shared across all five product categories. Seventeen genus-level entries were removed from the summary when a named species of the same genus was already in that shared set. This display convention does not change the original matrix and does not prove that genus-level and species-level records describe identical organisms. Presence in one unit of each category does not imply presence in every product.

## Limits of the preserved source records

The source matrix retains unresolved differences between its kingdom fields and an unspecified-starter entry. No corrected taxonomy database is supplied here. The thesis uses the checked totals and appropriate entry-level terminology rather than a disputed kingdom breakdown.

The original Country row contains alternative spellings of Turkey and a combined India/Nepal label. The thesis therefore does not report the disputed count of 33 countries.

The molecular-only M2 results are deliberately excluded from the statistical extract and from the revised chapter. Different source scripts apply different subgroup filters. A script consistent with the workbook retains 159 units, while other scripts reapply the filter within the molecular subset. Their agreement was not established in this revision.

Search documentation is preserved as supplied. Data S1 identifies PubMed and Scopus as primary literature databases, Google Scholar as verification and SRA as a complementary sequence-data search. Its queries focus on shotgun metagenomics of fermented foods. The main review manuscript separately names Web of Science, which is not documented by a query in Data S1. These records do not by themselves verify an exhaustive search for all three analytical-method groups in the final matrix. Search logs and screening decisions were not independently reconstructed for the thesis revision; no claim of verified PRISMA completeness or search exhaustiveness is made here.

The extraction records describe human curation and several audit stages. The completed final manual reference and final precision, recall and F1 values have not been established by this package. Agreement between extractions is not a measurement of accuracy against independently verified source annotations.

## Statistical source

The statistical extract refers to `Table_S3_PERMANOVA_ANOSIM_varpart.xlsx`, sheet `Table_S3`, rows 5–7, 29–31, 35–42 and 58–60. Blank source values remain blank. Shared fractions retain source order without an inferred combination label. Source rows and workbook fingerprints are included in the statistical CSV.
