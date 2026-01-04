# CrudCrud-API-Automation-Framework-Postman-Newman-
CrudCrud provides a temporary REST backend used to simulate real production CRUD APIs.

# CrudCrud API Automation

Enterprise-grade API automation for validating dynamic REST services.

## Features
- Full CRUD lifecycle validation
- Postman test scripts
- Environment-based execution
- HTML reports using Newman

## Run Tests
newman run postman/CrudCrud.postman_collection.json -e postman/qa.postman_environment.json

## Coverage
Create → Fetch → Update → Delete → Verify
