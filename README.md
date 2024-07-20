# Workbench

The workbench is inspired and informed by https://emilygorcenski.com/post/configuring-a-data-science-workbench/

- Run `just env-up` to:
  - Start MLflow server - http://localhost:5555
  - Start PostgreSQL database
  - Start MinIO - http://localhost:9000
- Run `just env-down` to:
  - Stop MLflow server
  - Stop PostgreSQL database
  - Stop MinIO

## Notes

- Passwords in default.env file
