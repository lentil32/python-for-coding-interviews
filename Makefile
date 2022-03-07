INPUT_FILE = README.md
OUTPUT_FILE = artifacts/python-for-coding-interview.pdf

.PHONY: linter
linter:
	markdownlint README.md --disable MD013

.PHONY: pdf
pdf:
	pandoc $(INPUT_FILE) \
		--pdf-engine=xelatex \
		-M date="`date "+%B%e, %Y"`" \
		-o $(OUTPUT_FILE)
