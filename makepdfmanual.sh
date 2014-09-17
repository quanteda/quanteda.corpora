#! /bin/bash

rm quantedaData.pdf
R CMD Rd2pdf . --title=quantedaData --output=quantedaData.pdf

