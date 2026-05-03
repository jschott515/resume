# Resume
A simple ATS-optimized resume written with LaTeX 

## Overview
```
resume/
│
├── main.tex (top-level resume LaTeX file)
├── Makefile
|
├── content/
│   └── (LaTeX resume content)
│
├── site/
│   └── (HTML for resume webpage)
│
└── .github/
    └── workflows/
        └── (CI/CD pipelines)
```

### Building
Compile the resume as PDF:
```
make
```

(Optional) publish the resume webpage:
```
make publish
```

### Webpage
When any changes are merged to the main branch, a workflow builds the PDF and publishes it to a webpage.

This is hosted at [jschott515.github.io/resume](https://jschott515.github.io/resume)
