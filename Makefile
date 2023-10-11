install:
	pip install -r requirements.txt

image:
	docker build -t fastapi-otus .

container:
	docker run --rm -d --name fastapi-otus -p 80:8000 fastapi-otus

hello:
	uvicorn 1_hello_world.main:app --reload

serve:
	python 1_hello_world/serve.py

parameters:
	python 2_parameters/serve.py

body_parameters:
	python 3_body/serve.py

pydantic:
	python 4_pydantic/serve.py