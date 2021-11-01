SHELL := /bin/bash

local-airflow:
	docker-compose -f docker-compose.yml up -d

local-airflow-bash:
	docker exec -it $(shell docker ps -aqf "name=airflow-study_airflow-worker_1") sh -c "stty rows 50 && stty cols 150 && bash"