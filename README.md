# rff-data-gov-guidance
Repo for Resources for the Future's Data Governance Working Group's guidance on data science practices for RFF researchers

# Contribution Guidelines
## Adding a Page
1. First, create a file in the appropriate subfolder (i.e. `docs/data-management`) with an appropriate title (all lowercase, with dashes `-` in between words, like `sensitive-data.md`).  The title of the page should be at the top with a H1 header, like this:
```
# My Title
```  
2. Next, to let Quarto know about your new page, you will need to add it to the file outline in [`_quarto.yml`](_quarto.yml)
3. Add content.  For guidelines on Markdown syntax, please see [this guide](https://www.markdownguide.org/basic-syntax/)

## Previewing the Site
### Locally (for previewing either the main branch or a development branch)
1. If you haven't already, install the appropriate version of Quarto [here](https://quarto.org/docs/get-started/).
2. In a terminal like _Git Bash_ or _Command Prompt_ (you may need to restart your terminal after installing Quarto), simply navigate to the repository and enter `quarto preview`, which will launch Quarto and construct the site. It will create some files a `_site` folder and a `.quarto` folder, which you should NOT stage for commit.  These are already in the `.gitignore` file.
### In the GitHub browser (only for viewing main branch version)
1. At the top of the GitHub page, navigate to **Settings**
2. Navigate to **Pages** on the left-hand menu
3. Click the link at the top of the page, or click **Visit Site**