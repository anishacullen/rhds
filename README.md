This README file has been developed for use in the mini project in the Reporducible health data sciences course

To create the environment:

git clone <github URL>
cd rhds
mamba env create -f environment.yml
mamba activate rhds
Rscript install.r

For analysis run the scripts in order:
1. extract-data.r
2. clean-clinical.r 
3. predict-proteins.r
4. combine.r
5. analysis.r

Run the analysis.qmd and initial_analysis.ipynb to generate an RMarkdown and Jupyter Notebook document