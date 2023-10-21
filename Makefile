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
deploy:
	#deploy
all: install format lint test deploy
