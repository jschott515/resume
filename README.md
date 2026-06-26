# Resume
A simple ATS-optimized resume written with LaTeX 

## Overview
```
resume/
│
├── resume/
|   ├── main.tex (top-level resume LaTeX file)
|   └── content/
|       └── (LaTeX resume content)
│
├── site/
│   └── (HTML for resume webpage)
│
└── .github/
    └── workflows/
        └── (CI/CD pipeline)
```

### Webpage
When any changes are merged to the main branch, a workflow builds the PDF and publishes it to a webpage.

This is hosted at [jschott515.github.io/resume](https://jschott515.github.io/resume)
