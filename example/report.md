---
title: "Lorem ipsum"
subtitle: "Dolor sit amet, consectetur adipiscing elit."
date: \today
author:
- "John Doe"
- "Jane Roe"
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

# Introduction

Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque bibendum est
nisi, consequat volutpat massa imperdiet vitae. Curabitur vitae velit at felis
vulputate hendrerit. Phasellus at purus dui. Quisque eget urna vitae leo
pellentesque ultricies euismod sit amet quam. Nulla quis augue bibendum urna
laoreet sodales. Sed gravida, felis fringilla auctor dignissim, diam nulla
gravida purus, quis venenatis tortor eros eu nisi. Pellentesque convallis libero
quis purus egestas, ac sodales eros accumsan. Aliquam auctor pulvinar orci, ac
aliquet velit interdum at. Aenean molestie, risus at congue efficitur, est justo
pulvinar lacus, at fermentum massa nibh eget urna. Etiam eget lorem nec ex
consectetur venenatis.

::: note
Mauris tincidunt ligula eu dui malesuada aliquet vitae at dui. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Praesent vitae tortor magna. Fusce aliquet sit amet leo at tempus.
:::

# Research

Donec neque eros, tristique et hendrerit eu, condimentum sed elit. Proin nec
quam ac arcu finibus pharetra. In vel efficitur purus, vitae posuere mi.
Pellentesque aliquet id eros sit amet tempor. Maecenas quis ornare erat. Sed
tristique, metus eu pharetra consequat, ex ante cursus justo, nec consequat eros
ipsum at dolor. Morbi dui dolor, suscipit a suscipit in, cursus in arcu. Orci
varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus
mus.

## Advanded research

\begin{defn} Integer vel erat eget mi rutrum iaculis at nec elit. Nullam
iaculis quis elit quis sollicitudin. Proin sem nunc, auctor in magna ut, lacinia
eleifend augue. \end{defn}

Nullam tincidunt massa sed dignissim ultrices. In sit amet ligula gravida, molestie leo id, imperdiet diam. Pellentesque porttitor efficitur lectus, eu suscipit ipsum bibendum ut. Etiam elit massa, tristique at eros a, mattis faucibus nisi. Maecenas et tempus nunc. Etiam in malesuada urna. Suspendisse sit amet scelerisque risus. Quisque commodo interdum risus ac euismod. Nullam quis commodo urna. Mauris tincidunt ligula eu dui malesuada aliquet vitae at dui. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Praesent vitae tortor magna. Fusce aliquet sit amet leo at tempus. Aliquam lectus orci, pellentesque at nibh sed, lobortis fringilla quam. Quisque eget tincidunt tortor. 

\begin{exmp} Praesent egestas tincidunt elit faucibus vehicula. Morbi
accumsan nisl in lacinia iaculis. Fusce vestibulum sem a faucibus ultricies.
Nunc mi ligula, pharetra in mattis quis, egestas eu arcu. Integer porttitor nisi
eget ornare faucibus. Morbi ante nibh, maximus sit amet vehicula nec, elementum
eget lacus. Ut volutpat efficitur est eu maximus.

$$\lim_{x\to c}\frac{f(x)}{g(x)} = \lim_{x\to c}\frac{f'(x)}{g'(x)}$$
\end{exmp}

# Implementation

Ut est neque, lobortis non sapien eget, lobortis ultricies risus. Donec
porttitor at lectus in tempor. Etiam fermentum malesuada lacus vitae
pellentesque. Nunc congue, lacus non auctor accumsan, nibh velit luctus erat, eu
aliquet lectus eros a lorem. Proin nisi nisi, sodales at dolor eu, posuere
posuere urna. Suspendisse volutpat feugiat aliquam [@10.1145/358198.358210].

```python
def fib(n):
    a, b = 0, 1

    while a < n:
        print(a, end=' ')
        a, b = b, a+b
        print()

fib(1000)
```

# Bibliography