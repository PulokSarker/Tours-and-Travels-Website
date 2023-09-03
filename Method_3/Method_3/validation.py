import csv
import os

# Folder paths
first_folder_path = r'F:\AIUB\semi 12\Thesis\Code meterial\SHAREABLE\Method_3\metadata'
second_folder_path = r'F:\AIUB\semi 12\Thesis\Code meterial\SHAREABLE\Method_3\decrypt'

# Prompt user for the two file names to match
first_file_name = input("Enter the name of the first file to match: ")
second_file_name = input("Enter the name of the second file to match: ")

def get_non_empty_cells(csv_path):
    non_empty_cells = []
    with open(csv_path, 'r') as csv_file:
        reader = csv.reader(csv_file)
        for row in reader:
            non_empty_row = [cell for cell in row if cell.strip() != '']
            non_empty_cells.extend(non_empty_row)
    return non_empty_cells

def compare_csv_values(value, csv_path):
    with open(csv_path, 'r') as csv_file:
        reader = csv.reader(csv_file)
        for row in reader:
            for cell_value in row:
                if cell_value == value:
                    return True
    return False

all_values_matched = True

# Get non-empty cell values from the first CSV
for root, dirs, files in os.walk(first_folder_path):
    for file in files:
        if file.lower().endswith('.csv') and file.lower() == first_file_name.lower():
            first_csv_path = os.path.join(root, file)
            non_empty_values = get_non_empty_cells(first_csv_path)
            if non_empty_values:
                for value in non_empty_values:
                    value_matched = False
                    for root2, dirs2, files2 in os.walk(second_folder_path):
                        for file2 in files2:
                            if file2.lower().endswith('.csv') and file2.lower() == second_file_name.lower():
                                second_csv_path = os.path.join(root2, file2)
                                if compare_csv_values(value, second_csv_path):
                                    value_matched = True
                                    break  # Break if a match is found
                    if not value_matched:
                        all_values_matched = False
                        break  # Break if a value doesn't match
            else:
                print(f"No non-empty cell values found in {os.path.basename(first_csv_path)}.")

if all_values_matched:
    print("Meta Data Matched. Video is legit.")
else:
    print("Meta data not matched. Video is edited.")
