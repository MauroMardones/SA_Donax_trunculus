# Donax trunculus Stock Assessment using SS3

This repository contains all the files, models, and code used to evaluate the impact of different legal minimum sizes on the stock assessment of *Donax trunculus* (wedge clam) in the Gulf of Cádiz, using the Stock Synthesis (SS3) platform.

## Structure of the Repository

### Stock Assessment Scenarios

The repository is organized into four main model scenario folders:

- `s01/` — Scenario with minimum legal size at **22 mm**.
- `s1/` — Scenario with minimum legal size at **23 mm**.
- `s2/` — Scenario with minimum legal size at **24 mm**.
- `s3/` — **Reference model** with legal minimum size at **25 mm**.
- `s4/` — Scenario with minimum legal size at **26 mm**.

Each folder contains the necessary input/output files for SS3 and relevant configuration.
But this folder  must be ask to the author. to run the toy model, we displayed in this repository a simplified version of the model, which can be found in the `ref_model_ex/` folder.

- `ref_model_ex/` — A simplified version of the reference model (`s3`) with reduced data and iterations for quick testing and demonstration purposes.

---

### Supplementary Material

Three R Markdown documents (`Rmd`) accompany the scientific manuscript, each stored at the root or in their respective folders:

- `Suppl_Mat_1.Rmd` — Contains the full R code and workflow used to conduct the stock assessment in scenario `s01`.
- `Suppl_Mat_2.Rmd` — Simulates length-structure dynamics under different size-at-entry assumptions (not used in this analysiss).
- `Suppl_Mat_3.Rmd` — Performs a **bias evaluation** using non-parametric bootstrap analysis of the reference model (`s01`) (not used in this analysis).

---

### Other folders and files

- `Fig/` — Figures generated for the manuscript and supplementary materials.
- `executable/` — Contains the **SS3 executable files** (V. 3.30.23) for macOS (`M1` and `M4` architectures).
- `Donax.bib` — Bibliographic database file for citations in the manuscript.
- `README.md` — This file, providing an overview of the repository.

---

## How to Use

1. Download or clone the repository.
2. Open any of the `.Rmd` files in RStudio to reproduce the analysis.
3. Use the appropriate SS3 executable from the `executable/` folder when running models on macOS.
4. Explore `ref_model_ex/` for a demonstration of the reference model.
---

## Citation

If you use or refer to this work, please cite the associated scientific publication (link to be added once available) and this repository.

---

## Contact

**Mauricio Mardones**  
Chilean-Spanish Fisheries Researcher at Instituto Español de Oceanografía, Cádiz, Spain
[GitHub Profile](https://github.com/MauroMardones)
