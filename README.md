tesseract4-output
=========

This repository contains output files produced from a master build of [tesseract](https://github.com/tesseract-ocr/tesseract)

The output exists in three formats:
1. hocr XML 
2. simple XML
3. plain text

The [simple XML format](https://raw.githubusercontent.com/ub-leipzig/tesseract4-output/master/hocr/0_9999_deu%2Beng.xml) 
is generated from the hocr XML format using XSLT.

It contains page references for the OCR output.

The [tesseract process](https://github.com/tesseract-ocr/tesseract/wiki/NeuralNetsInTesseract4.00) using both deu and eng trained data required over 3 hours to complete on 10,000 cards. 

With just the deu trained data, the process took about 2 hours.

The system under test used an Intel® Core™ i7-6700 CPU @ 3.40GHz × 8 with 16 GB of RAM.

