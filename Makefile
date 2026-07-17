.PHONY: preview build check clean

preview:
	quarto preview site

build:
	quarto render site

check:
	./scripts/check-project.sh

clean:
	rm -rf site/_site site/.quarto .quarto

