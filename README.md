# minted-pandoc-template

This repository contains the setup necessary to compile Markdown templates using Pandoc with Minted.

## Prerequisites

* LaTeX
* Pandoc 2.11 or higher
* Latexmk 4.76 or higher
* `pandoc-latex-environment`
* `entr` (for watch mode)

## Usage

Open and alter the provided `report.md` file. This file contains a metadata block with some defaults I think are nice, but you can change it to your desires.

To compile the Markdown document to a PDF, simply run `make`. To enable watch mode (where the document is automatically re-compiled), install `entr` and run `make watch`.
