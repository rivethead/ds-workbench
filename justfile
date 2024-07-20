list:
    @just --list

env-up:
  docker-compose --env-file default.env up -d

env-down:
  docker-compose --env-file default.env down

