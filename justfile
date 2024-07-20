import 'bench/wine/justfile'

list:
    @just --list

create-virtual-env:
  @python3 -m venv .env_bench
  @echo "source .env_bench/bin/activate"

delete-virtual-env:
  @rm -rf .env_bench

install:
  source .env_bench/bin/activate && \
    pip install -r requirements.txt

env-up:
  docker-compose -f infrastructure/docker-compose.yml --env-file infrastructure/default.env up -d
  @echo "MLflow server - http://localhost:5555"
  @echo "MinIO - http://localhost:9000"
  @echo "JupyterLab - http://localhost:8888/?token=neely"

env-down:
  docker-compose -f infrastructure/docker-compose.yml --env-file infrastructure/default.env down

