# Supplementary materials and tables

**Giampiero Federici — Metagenomic and Phylogenomic Analysis of Microbial Communities in Fermented Meat Products.**

## Downloads

- [All supplementary materials (ZIP)](Supplementary_Thesis_All.zip)
- [Appendices A–E (PDF)](Supplementary_Appendices_A-E.pdf): tables, captions and methodological notes.
- [Literature synthesis materials (ZIP)](Supplementary_Review.zip)
- [Literature synthesis: definitions, sources and limitations](Review_README.md)
- [SHA-256 checksums](SHA256SUMS.txt)

## Table map

| Appendix | Printed identifier | CSV file |
|---|---|---|
| A | Table 1, samples and metadata | Table_1_samples_metadata.csv |
| B | Table 2, software and parameters | Table_2_software_parameters.csv |
| C.1 | Table 3A, prokaryotic representatives | Table_3A_prokaryotic_representatives.csv |
| C.2 | Table 3B, eukaryotic genomic groups | Table_3B_eukaryotic_groups.csv |
| C.3 | Table 3C, curated wild-type reference set | Table_3C_wild_type_reference.csv |
| C.4 | Table 3D, summary counts | Table_3D_summary_counts.csv |
| D | Table 4, Ciauscolo comparison | Table_4_Ciauscolo_literature_comparison.csv |
| E | Table E1, reporting frequencies | Table_E1_reporting_frequencies.csv |
| E | Table E2, panels A/B/C | Table_E2A_PERMANOVA.csv; Table_E2B_variation_partitioning.csv; Table_E2C_PERMDISP.csv |

The CSV files are literal cell-text exports, not reanalysed or reformatted data. Consult the PDF for captions, merged-cell layout, units and interpretive cautions. Original review tables use the separate Table_S* naming scheme; they are not the same numbering series as the thesis appendix tables.

## Literature synthesis and network

The literature dataset comprises 128 publications, 282 analytical units, 974 entries and 4,083 presence marks. Definitions and limitations are provided in Review_README.md.

- [Study inventory](Table_S1_studies_inventory.xlsx)
- [Presence/absence matrix](Table_S2_microbial_matrix.xlsx)
- [Top-50 reporting frequencies](Table_S4_Top50_taxa_frequency.xlsx)
- [Network nodes](Table_S5_network_nodes.csv)
- [Network edges](Table_S6_network_edges_significant.csv)

The network considers the 50 most frequently reported taxa and 1,225 pairs, using two-sided Fisher exact tests. Associations are retained at Benjamini–Hochberg adjusted p < 0.01 and |phi| > 0.15: 309 associations, comprising 304 positive and five negative edges. These are associations in literature records and do not establish biological interactions.

## Interpretation and limitations

Source documentation contains unresolved differences in search descriptions and taxonomic grouping. Extraction documents and prompts are methodological records, not evidence that extraction accuracy or search completeness has been validated. The multivariate results are a selected source extract; they do not represent a new analysis.

Genomic representatives derive from product-level co-assemblies. A MAG may combine signals from multiple conspecific strains and is neither an isolated strain nor a validated starter culture.

The read-based analysis pipeline is available separately at [profilemetananni](https://github.com/GiampieroFederici/profilemetananni).

## Citation and file integrity

Cite the thesis and the original publications where appropriate. No blanket licence is asserted for third-party material. SHA256SUMS.txt lists the checksums of the downloadable files; the manifest itself is excluded.
