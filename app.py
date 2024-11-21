import os
import mysql.connector
from flask import Flask, request, render_template, jsonify, redirect, url_for
import pdfplumber

app = Flask(__name__)

# Ensure uploads directory exists
if not os.path.exists('uploads'):
    os.makedirs('uploads')

# Function to establish a MySQL connection
def get_db_connection():
    conn = mysql.connector.connect(
        host='localhost',
        user='root',
        password='',  # Replace with your MySQL password
        database='pdf_tables'      # Ensure the correct database name is used
    )
    return conn

# Initialize the MySQL database (create tables if they don't exist)
def init_db():
    conn = get_db_connection()
    c = conn.cursor()
    c.execute('''
        CREATE TABLE IF NOT EXISTS tables (
            id INT AUTO_INCREMENT PRIMARY KEY,
            column1 TEXT,
            column2 TEXT,
            column3 TEXT,
            column4 TEXT  -- Corrected to include column4
        )
    ''')
    conn.commit()
    conn.close()

# Route to display the upload form
@app.route('/')
def index():
    return render_template('upload.html')

# Route to handle the PDF upload and table extraction
@app.route('/upload', methods=['POST'])
def upload_pdf():
    # Check if the PDF file is part of the request
    if 'pdfFile' not in request.files:
        return jsonify({'error': 'No file part'}), 400

    pdf_file = request.files['pdfFile']

    # Ensure a file is selected
    if pdf_file.filename == '':
        return jsonify({'error': 'No selected file'}), 400

    # Define the file path to save the uploaded PDF file
    pdf_path = os.path.join('uploads', pdf_file.filename)

    try:
        # Save the PDF file to the 'uploads' directory
        pdf_file.save(pdf_path)
    except Exception as e:
        return jsonify({'error': 'Failed to save file'}), 500

    # Extract tables from the uploaded PDF
    tables = extract_tables_from_pdf(pdf_path)

    # Store extracted table data into the database
    store_table_data(tables)

    # Redirect to the 'tables' route after successful upload and processing
    return redirect(url_for('display_tables'))

# Function to extract tables from the PDF using pdfplumber
def extract_tables_from_pdf(pdf_path):
    tables = []
    try:
        with pdfplumber.open(pdf_path) as pdf:
            for page in pdf.pages:
                table = page.extract_tables()
                if table:
                    tables.extend(table)  # Flatten the list of tables from all pages
    except Exception as e:
        print(f"Error extracting tables: {e}")
    return tables

# Function to store extracted table data into the MySQL database
def store_table_data(tables):
    conn = get_db_connection()
    c = conn.cursor()

    for table in tables:
        if len(table) > 1:  # Ensure the table has more than 1 row (i.e., has data besides the header)
            for row in table[1:]:  # Skip the first row (the header)
                # Ensure each row has at least 4 columns to avoid errors
                if len(row) >= 4:
                    # Clean up the row by ensuring no lists or invalid data are inserted
                    clean_row = [str(item).strip() if item else '' for item in row[:4]]  # Adjusted to handle 4 columns
                    if all(isinstance(item, str) for item in clean_row):  # Ensure valid row items
                        c.execute('INSERT INTO tables (column1, column2, column3, column4) VALUES (%s, %s, %s, %s)', 
                                  (clean_row[0], clean_row[1], clean_row[2], clean_row[3]))  # Inserting data for 4 columns
    
    conn.commit()
    conn.close()

# Route to display the extracted tables from the database
@app.route('/tables')
def display_tables():
    conn = get_db_connection()
    c = conn.cursor()
    c.execute('SELECT * FROM tables')
    rows = c.fetchall()
    conn.close()
    return render_template('tables.html', rows=rows)

# Start the app
if __name__ == '__main__':
    init_db()  # Initialize the database when the app starts
    app.run(debug=True)
