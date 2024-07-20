list:
    @just --list

install:
  python3 -m venv .env_bench
  source .env_bench/bin/activate
  pip install -r requirements.txt

env-up:
  docker-compose -f infrastructure/docker-compose.yml --env-file infrastructure/default.env up -d

env-down:
  docker-compose -f infrastructure/docker-compose.yml --env-file infrastructure/default.env down

