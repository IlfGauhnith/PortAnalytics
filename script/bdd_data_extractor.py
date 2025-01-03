import basedosdados as bd
import sys
import os

# script name counts as argument. 
EXPECTED_SYS_ARG_COUNT = 4

if __name__ == '__main__':
    
    # validating arguments
    if len(sys.argv) != EXPECTED_SYS_ARG_COUNT:
        raise ValueError(f"Invalid number of arguments. Expected {EXPECTED_SYS_ARG_COUNT - 1}, but got {len(sys.argv) - 1}.")
    
    query_file = sys.argv[1]
    billing_project_id = sys.argv[2]
    output_file = sys.argv[3]

    if os.path.splitext(output_file)[1] != '.csv':
        raise ValueError("Invalid extension for output file. Expected .csv extension.")
    
    if os.path.exists(output_file):
        print(f"Data already downloaded. Available at {os.path.abspath(output_file)}")
        exit()

    query = open(query_file).read()

    df = bd.read_sql(query = query, billing_project_id = billing_project_id)
    df.to_csv(output_file, index=False)