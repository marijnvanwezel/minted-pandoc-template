---
title: "INSERT TITLE HERE"
subtitle: "INSERT SUBTITLE HERE"
date: \today
author:
- "INSERT AUTHOR NAME HERE"
biblio-style: apa
bibliography: references.bib
colorlinks: true
fontfamily: fourier
fontsize: 11pt
geometry: "margin=2.5cm"
lang: en
numbersections: true
toc: true
minted:
  block_attributes: ["linenos","numbersep=18pt"]
  inline_attributes: ["bgcolor=mintedbg"]
pandoc-latex-environment:
  noteblock: [note]
  tipblock: [tip]
  warningblock: [warning]
  cautionblock: [caution]
  importantblock: [important]
header-includes: |
  \usepackage{amsmath}
  \usepackage{amssymb}
  \usepackage{amsthm}
  \usepackage{awesomebox}
  \usepackage[T1]{fontenc}
  \usepackage{footmisc}
  \usepackage[utf8]{inputenc}
  \usepackage{listings}
  \usepackage{mdframed}
  \usepackage{microtype}
  \usepackage[outputdir=temp]{minted}
  \usepackage{textcomp}
  \usepackage{xpatch}

  \usemintedstyle{tango}

  \definecolor{mintedbg}{rgb}{0.95,0.95,0.95}
  \mdfsetup{
    skipabove=12pt,skipbelow=12pt,
    innertopmargin=10pt,innerbottommargin=10pt,
    backgroundcolor=mintedbg,
    leftline=false,topline=false,rightline=false,bottomline=false
  }
  \surroundwithmdframed{minted}

  \AtBeginEnvironment{minted}{\let\itshape\relax}
  \xpatchcmd{\mintinline}{\begingroup}{\begingroup\let\itshape\relax}{}{}
---

INSERT CONTENT HERE