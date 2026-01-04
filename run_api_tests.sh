#!/bin/bash

set -e

COLLECTION="postman/CrudCrud.postman_collection.json"
ENVIRONMENT="postman/qa.postman_environment.json"

REPORT_DIR="reports"
mkdir -p "$REPORT_DIR"

echo "=============================================="
echo "Running CrudCrud API Automation"
echo "=============================================="

echo "Generating Improved HTML UI Report..."
newman run "$COLLECTION" -e "$ENVIRONMENT" \
-r htmlextra \
--reporter-htmlextra-export "$REPORT_DIR/improve_html_ui_report.html"

echo "Improved HTML UI report created: $REPORT_DIR/improve_html_ui_report.html"

echo "Generating Basic HTML Report..."
newman run "$COLLECTION" -e "$ENVIRONMENT" \
-r html \
--reporter-html-export "$REPORT_DIR/basic_html_report.html"

echo "Basic HTML report created: $REPORT_DIR/basic_html_report.html"

echo "Generating JSON Report..."
newman run "$COLLECTION" -e "$ENVIRONMENT" \
-r json

echo "Running CLI execution..."
newman run "$COLLECTION" -e "$ENVIRONMENT" -r cli

echo "=============================================="
echo "All Newman executions completed successfully"
echo "Reports available in: $REPORT_DIR"
echo "=============================================="
