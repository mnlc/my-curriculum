CC = xelatex

EN_CV_DIR = cv/english
FR_CV_DIR = cv/french
EN_CV_SRCS = $(shell find $(CV_DIR) -name '*.tex')
FR_CV_SRCS = $(shell find $(CV_DIR) -name '*.tex')

en_cv.pdf: $(EN_CV_DIR)/cv.tex $(EN_CV_SRCS)
	$(CC) -output-directory=$(EN_CV_DIR)/output $<

fr_cv.pdf: $(FR_CV_SRCS)/cv.tex $(FR_CV_SRCS)
	$(CC) -output-directory=$(FR_CV_DIR)/output $<
