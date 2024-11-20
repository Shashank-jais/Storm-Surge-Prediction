# Predictive-Project : Storm-Surge-Prediction

This document provides instructions and details to set up and execute the **Predictive-Project**. Follow the steps outlined to ensure a smooth workflow.

---

## Prerequisites

Ensure the following dependencies are installed with the specified versions to avoid compatibility issues:

| Dependency   | Version  |
|--------------|----------|
| numpy        | 1.24.3   |
| pandas       | 2.0.3    |
| matplotlib   | 3.7.2    |
| scikit-learn | 1.3.0    |
| torch        | 2.4.1    |
| torchaudio   | 2.4.1    |
| torchvision  | 0.20.0   |
| python       | 3.8.20   |

**Note:** Any deviation from the specified versions may cause issues due to package deprecations or incompatibility.

---

## Dataset Information

The dataset required for this project can be downloaded from the **National Centers for Environmental Information (NCEI)** website. Follow these steps to retrieve the data:

1. Go to: [NCEI Dataset Site](https://www.ncdc.noaa.gov/cdo-web/search).
2. **Conditions:**
   - **Select Weather Observation Type/Dataset:** Daily summaries.
   - **Date Range:** 1st Jan 2000 - 1st Jan 2024.
   - **Search For:** Stations.
   - **Search Term:** Jacksonville International Airport.
3. Download the relevant dataset and organize it as per project requirements.

---

## Abbreviations

Refer to the file `Label-Info.txt` for any required abbreviations used in the project.

---

## Setup and Execution

### Steps to Run the Script File

1. **Navigate to the project directory:**
   Ensure you are in the `Predictive-Project` folder before executing the following commands.
   
2. **Make the script file executable:**
   Run the command:
   ```bash
   chmod +x run.sh
   ```
   
3. **Execute the script file:**
   Run the command:
   ```bash
   ./run.sh
   ```

This will set up the environment and execute the Python notebook.

### Alternate Execution

If running the script file is not preferred, manually set up the Python environment using the specified dependencies and execute the notebook through a compatible IDE or Jupyter Notebook.

---

## Notes

- Ensure all dependencies are properly installed before proceeding.
- Use the specified dataset and ensure its structure aligns with the project requirements.
- If any errors occur during execution, refer to `Label-Info.txt` for clarification on dataset labels or abbreviations.

---

**Author:** [Your Name/Team Name]  
**Last Updated:** [Date]  
