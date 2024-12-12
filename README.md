# PortAnalytics
PortAnalytics is your gateway to exploring my portfolio of data analysis projects. This dynamic collection showcases my expertise in extracting insights from complex datasets, leveraging Python, SQL, and cutting-edge tools to uncover meaningful patterns and trends.

From innovative data pipelines to actionable visualizations, PortAnalytics reflects my commitment to transforming raw data into impactful stories. Dive in to explore case studies, methodologies, and results that demonstrate the power of data-driven decision-making.

Whether you’re a fellow data enthusiast or a potential collaborator, PortAnalytics offers a glimpse into the world of analytics through my unique perspective.

## bdd\_data\_extractor

`bdd_data_extractor` is a Python script to extract data from the [Base dos Dados](https://basedosdados.org/) platform using SQL queries. The script reads an SQL file, executes the query using the Base dos Dados library, and saves the resulting dataset to a CSV file.

### Prerequisites

#### 1. Install Required Python Libraries

Ensure you have Python installed and install the `basedosdados` library:

```bash
pip install basedosdados
```

#### 2. Set Up Google Cloud Billing Project

To query the Base dos Dados platform, you need a Google Cloud Billing Project ID. Visit the [Base dos Dados documentation](https://basedosdados.github.io/mais/) to configure your Google Cloud credentials and enable billing.

#### 3. Prepare Your Query

Write your SQL query in a `.sql` file and ensure it aligns with the structure of the datasets available on Base dos Dados.

### Usage

#### Command-Line Arguments

The script expects the following arguments:

1. **Query File**: Path to the `.sql` file containing the query.
2. **Billing Project ID**: Your Google Cloud Billing Project ID.
3. **Output File**: Path where the resulting CSV file will be saved.

#### Running the Script

Run the script as follows:

```bash
python bdd_data_extractor.py <query_file> <billing_project_id> <output_file>
```

##### Example

```bash
python bdd_data_extractor.py resource/sql/br_ibge_pam.lavoura_permanente.sql my-billing-project-id output.csv
```

#### Script Description

1. **Validation**: The script checks that exactly three arguments (besides the script name) are provided. If the count is invalid, it raises an error:

   ```
   ValueError: Invalid number of arguments. Expected 3, but got X.
   ```

2. **SQL Query Execution**: Reads the SQL file and executes it against the Base dos Dados platform using the provided Billing Project ID.

3. **Output**: Saves the resulting data into a CSV file at the specified path.

### Notes

- Ensure your Google Cloud credentials are configured correctly and have permission to query Base dos Dados datasets.
- Review the documentation for the `basedosdados` library for advanced usage and query customization: [BasedosDados Documentation](https://basedosdados.github.io/mais/).

