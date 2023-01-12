.PHONY: run_bundler_local run_bundler_staging run_bundler_staging_deamon

run_bundler_local:
	docker compose --env-file .env.dev -f docker-compose.local.yaml up

run_bundler_staging:
	docker compose --env-file .env.staging up

run_bundler_staging_daemon:
	run_bundler_staging -d
