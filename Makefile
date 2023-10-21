install:
	#install
	pip install --upgrade pip &&\
	pip install -r requirements.txt
format:
	#format
	black *.py src/*.py
lint:
	#pylint
	pylint --disable=R,C *.py src/*.py
test:
	#testing
	python3 -m pytest -vv --cov=src test_logic.py
build:
	#build containers
deploy:
	#deploy
all: install format lint test deploy
