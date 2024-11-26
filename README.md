# rff-data-gov-guidance
Repo for Resources for the Future's Data Governance Working Group's guidance on data science practices for RFF researchers

# Contribution Guidelines
* ***Only members of the Data Governance Working Group may make changes to the content. To submit questions or suggestions, --LINK TO SUBSECTION ON HOW TO USE ISSUES, TO BE DEVELOPED--***
## Local editing (on your computer)

1. In your _Git Bash_ terminal or other Git GUI, navigate to the relevant development branch, e.g., _git checkout feat-data-management_
2. Make changes to (or create new) one of the Markdown files in an editor of your choice (e.g., RStudio)
3. Stage and commit changes in the _Git Bash_ terminal with a descriptive message, for example:
```
git add <filepath>
git commit -m 'update readme with local editing guidelines'
```
4. Repeat until you have finished your round of revisions / additions.
5. Push your changes to the remote branch in _Git Bash_ with `git push`.
6. Create a Pull Request (further instruction below).

## Remote editing (in the browser)
1. On the GitHub repository website, navigate to the relevant development branch using the dropdown menu on the top left.
2. Click the file and click the pencil icon on the top right. Make edits in the file editor.
3. Once finished, click *Commit changes* at the bottom of the page. Add a descriptive commit message, e.g., `update readme with remote editing guidelines`.
4. Repeat until you have finished your round of revisions / additions.
5. Create a Pull Request (further instruction below).

## Review procedure (Pull Requests)
Once you've made changes to the relevant development branch, create a Pull Request. This will allow others to review the changes you've made.
1. Navigate to the Pull Request page
  - GitHub will often show a banner that suggests creating a pull request for the branch you've just pushed. If you see this banner, click on "Compare & pull request".
  - If you don’t see the banner, go to the "Pull requests" tab, and then click the "New pull request" button.
2. Select the correct branches. In the PR creation interface:
_Base branch_: Select the branch you want to merge your changes into (usually main or develop).
_Compare branch_: Select your branch (the branch with your changes).
GitHub will show you a preview of the changes that will be merged.
3. Write a Pull Request description:
```
  Title: Add a descriptive title for the pull request (e.g., "Fix typo in README").
  Description: Write a brief description of what the PR does.
```
4. Click *Create pull request*
5. Review the Pull Request. After creating the PR:
  - Click on the *Files Changed* tab to view highlighted changes or conflicts. Additions will be highlighted and green and deletions will be higlighted in red.
  - Reviewers can leave comments, suggest changes, or approve the PR.
6. Respond to feedback as needed
  - Make the changes in your local branch.
  - Commit and push the changes to the same branch on GitHub:
  - The PR will automatically update with your new commits.


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