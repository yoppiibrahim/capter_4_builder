

run: install
	cd src && poetry run python runner.py

install: pyproject.toml
	poetry install

clean:
	for /d /r %%d in (__pycache__) do rmdir /s /q "%%d"

check: 
	poetry run flake8 src/	

runner: check run clean
	