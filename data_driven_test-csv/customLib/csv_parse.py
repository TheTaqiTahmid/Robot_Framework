import csv

def read_CSV_file(csv_file):
    rows = []
    with open(csv_file, 'r') as csv_doc:
        reader = csv.reader(csv_doc)
        for r in reader:
            rows.append(r)
    return rows
