CC = xelatex
CV_MAIN_FILE = src/cv.tex
CV_BUILD_DIR = _build/cv

.PHONY: all clean cv.pdf

all: setup cv.pdf

cv.pdf: $(CV_MAIN_FILE)
	$(CC) -output-directory=$(CV_BUILD_DIR) $<

setup:
	@mkdir -p $(CV_BUILD_DIR)

clean:
	@rm -rf $(CV_BUILD_DIR)
