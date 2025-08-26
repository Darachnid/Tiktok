# Tiktok

This repository is organized to keep data, code, and results clearly separated.  
The structure makes it easier to reproduce analyses, track changes, and share outputs.

## Folder Structure

### `/data`
Raw and processed datasets used in this project.  
- **Raw data**: Unaltered input files as originally obtained.  
- **Processed data**: Cleaned or transformed files ready for analysis.  

---

### `/src`
All source code for this project.  
- Scripts for data cleaning, analysis, and visualization.  
- Utility functions, configuration files, and experiment notebooks.  

Keep code modular so analyses can be reproduced end-to-end.

---

### `/output/tables`
Generated tables, usually in formats like `.csv`, `.tsv`, or `.xlsx`.  
- Summaries, descriptive statistics, and model outputs.  
- Meant for export, reporting, or further analysis.

---

### `/output/plots`
Figures and visualizations generated from the code in `/src`.  
- Static images (`.png`, `.jpg`, `.svg`, `.pdf`)  
- Interactive plots (e.g., `.html`)  

Organize plots by analysis or date if there are many.

---

## Usage

1. Place input data in `/data`.
2. Run scripts from `/src` to process and analyze.
3. Review outputs in `/output/tables` and `/output/plots`.
