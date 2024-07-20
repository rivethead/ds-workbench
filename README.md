# Workbench

## Getting started

- Run `just install` to set up the virtual environment and install requirements

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
