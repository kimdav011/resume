.PHONY: src

CC = xelatex
SRC_DIR = src
RESUME_DIR = src/resume
SRC_FILES = $(shell find $(RESUME_DIR) -name '*.tex')

resume: $(foreach x, resume, $x.pdf)

resume.pdf: $(SRC_DIR)/resume.tex $(SRC_FILES)
	$(CC) -output-directory=$(SRC_DIR) $<

clean:
	rm -rf $(SRC_DIR)/*.pdf
