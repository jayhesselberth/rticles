
### Installation

You can install and use **rticles** from CRAN as follows:

```S
install.packages("rticles", type = "source")
```

If you wish to install the development version from GitHub you can do this:

```S
devtools::install_github("rstudio/rticles")
```

#### Sandbox Version

Prior to submitting **rticles** to CRAN a number of formats that were not passing tests on all platforms were removed from the package (we expect that these formats will be restored eventually once their authors arrange for the tests to pass). If you are an existing user of one of these **rticles** formats you can install the "sandbox" version of the package which retains these formats as follows:

```S
devtools::install_github("rstudio/rticles", ref = "sandbox")
```

### Overview

The **rticles** package provides a suite of custom [R Markdown](http://rmarkdown.rstudio.com) LaTeX formats and templates for varoius formats, including:

- [JSS](http://www.jstatsoft.org/) articles

- [R Journal](http://journal.r-project.org/) articles

- [CTeX](http://ctex.org) documents

- [ACM](http://www.acm.org/) articles

- [Elsevier](https://www.elsevier.com) journal submissions

Under the hood, LaTeX templates are used to ensure that documents conform precisely to submission standards. At the same time, composition and formatting can be done using lightweight [markdown](http://rmarkdown.rstudio.com/authoring_basics.html) syntax, and R code and its output can be seamlessly included using [knitr](http://yihui.name/knitr/).

Using **rticles** has some prerequisites which are described below. You can get most of these pre-requisites automatically by installing the latest release of RStudio (instructions for using **rticles** without RStudio are also provided).

### Using rticles from RStudio

To use **rticles** from RStudio:

1) Install the latest [RStudio](http://www.rstudio.com/products/rstudio/download/).

2) Install the **rticles** package: 

    ```S
    devtools::install_github("rstudio/rticles")
    ```

3) Use the **New R Markdown** dialog to create an article from one of the templates:

 ![New R Markdown](http://rmarkdown.rstudio.com/images/new_r_markdown.png)
    
    
### Using rticles outside of RStudio

1) Install [pandoc](http://johnmacfarlane.net/pandoc/) using the [instructions for your platform](https://github.com/rstudio/rmarkdown/blob/master/PANDOC.md).

2) Install the **rmarkdown** and **rticles** packages:

    ```S
    install.packages("rmarkdown")
    devtools::install_github("rstudio/rticles")
    ```
    
3) Use the `rmarkdown::draft` function to create articles:

    ```S
    rmarkdown::draft("MyJSSArticle.Rmd", template = "jss_article", package = "rticles")
    rmarkdown::draft("MyRJournalArticle", template = "rjournal_article", package = "rticles")
    ```

