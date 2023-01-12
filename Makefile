run_bundler_local:
	docker compose --env-file .env.dev -f docker-compose.local.yaml up

run_bundler_staging:
	docker compose --env-file .env.staging up

run_bundler_staging_daemon:
	docker compose --env-file .env.staging up -d

run_bundler_production:
	docker compose --env-file .env.production up

run_bundler_production_daemon:
	docker compose --env-file .env.production up -d
