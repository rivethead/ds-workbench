# Workbench

## Getting started

- Run `just create-virtual-env` to create the Python virtual environment
- Run `just install` to set up the virtual environment and install requirements
- Run `just delete-virtual-env` to remove the Python virtual environment

## Infrastructure

The workbench infrastructure is inspired and informed by https://emilygorcenski.com/post/configuring-a-data-science-workbench/

- Run `just env-up` to:

  - Start MLflow server - http://localhost:5555
  - Start PostgreSQL database
  - Start MinIO - http://localhost:9000

- Run `just env-down` to:

  - Stop MLflow server
  - Stop PostgreSQL database
  - Stop MinIO

- Passwords in default.env file

## Bench

### Wine example

- Navigate to the `bench/wine` directory and run `just`
- This will execute the `train.py` script and push the results to MLflow
- The `.env` controls the environment variables indicating where MLflow is running
