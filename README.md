# Donax trunculus Stock Assessment using SS3

This repository contains all the files, models, and code used to evaluate the impact of different legal minimum sizes on the stock assessment of *Donax trunculus* (wedge clam) in the Gulf of Cádiz, using the Stock Synthesis (SS3) platform.

## Structure of the Repository

### Stock Assessment Scenarios

The repository is organized into four main model scenario folders:

- `s01/` — **Reference model** with legal minimum size at **25 mm**.
- `s02/` — Scenario with minimum legal size at **23 mm**.
- `s03/` — Scenario with minimum legal size at **24 mm**.
- `s04/` — Scenario with minimum legal size at **26 mm**.

Each folder contains the necessary input/output files for SS3 and relevant configuration.

---

### Supplementary Material

Three R Markdown documents (`Rmd`) accompany the scientific manuscript, each stored at the root or in their respective folders:

- `Suppl_Mat_1.Rmd` — Contains the full R code and workflow used to conduct the stock assessment in scenario `s01`.
- `Suppl_Mat_2.Rmd` — Simulates length-structure dynamics under different size-at-entry assumptions.
- `Suppl_Mat_3.Rmd` — Performs a **bias evaluation** using non-parametric bootstrap analysis of the reference model (`s01`).

---

### Other folders and files

- `Fig/` — Figures generated for the manuscript and supplementary materials.
- `executable/` — Contains the **SS3 executable files** for macOS (`M1` and `M4` architectures).
- `Donax.bib` — Bibliographic database file for citations in the manuscript.
- `aparte.csl` — Citation style file used to format references.

---

## How to Use

1. Download or clone the repository.
2. Open any of the `.Rmd` files in RStudio to reproduce the analysis.
3. Use the appropriate SS3 executable from the `executable/` folder when running models on macOS.
4. Explore each scenario folder (`s01/` to `s04/`) to compare model outputs under different minimum size regulations.

---

## Citation

If you use or refer to this work, please cite the associated scientific publication (link to be added once available) and this repository.

---

## Contact

**Mauricio Mardones**  
Chilean-Spanish Fisheries Researcher at Instituto Español de Oceanografía, Cádiz, Spain
[GitHub Profile](https://github.com/MauroMardones)
