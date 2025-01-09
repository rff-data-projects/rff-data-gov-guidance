# Storage Options at RFF

## Summary

* Always create an L: drive folder for your project. Store all data and code here.
* If working with external collaborators:
  * Use OneDrive to share select data. Only store data in OneDrive that is necessary for collaboration.
  * Use GitHub to share code. More about setting up version control is in the next section.
  * For small datasets, GitHub may be used for both data and code storage.
* For both L: drive and OneDrive project folder setup, contact ithelp@rff.org with specifications.

## L: Drive

The primary place to store project data and code is the L: drive.
All projects should have an L: drive folder, even when working with external collaborators.
It is optimized for data-intensive work, has large storage capacity, is regularly backed up, and is more secure than personal drives.
An RFF account is required to access the network, which can be accessed from work computers or remotely.
Git repositories can be setup within L drive project folders, as described in the Organization section below.

### L: Drive Storage Request
For both L: drive and OneDrive storage, coordinate with IT to ensure appropriate resources are available when you need them.
At the start of a project (or upon major changes to specifications, such as timeline or disk space), email ithelp@rff.org with the following information. Example answers are provided.

| Field | Response |
| --- | --- |
| Project name | SLR-Septic |
| Storage location | L drive |
| Folder name | L:/Project-SLR-Septic |
| Short description | This project analyzes problems with septic systems in areas subject to sea level rise and potential solutions |
| Principal Investigator(s) | Margaret Walls and Penny Liao |
| RFF collaborators  | Sophie Pesek |
| External collaborators | Several University of Maryland collaborators but they will not need access to the project folder |
| Data types | R, Stata, GIS datasets |
| Size requested | 80 GB |
| Estimated max. size | 150GB |
| Archival date | December 2026 |
| Data agreement or sensitive data security considerations | Proprietary data will be in raw data folder and will need to be made read-only |

## Working with External Collaborators

Because an RFF account is required for access to the L: drive, it may be necessary to incorporate additional storage options into the project.
In that case, there are a few options.

### OneDrive and GitHub
The recommended method for project data and code organization when working with external collaborators is to use a combination of OneDrive and GitHub.
If access to data is the main consideration, OneDrive may be ideal. If external collaborators will be contributing to the codebase, using GitHub for code and sufficiently small data (well below 100 MB) can work well.

#### For Data

Folders created on RFF's OneDrive account have an initial capacity of 5 TB and can be shared with non-RFF staff.
This folder can be accessed from any computer logged into a OneDrive account.
However, OneDrive is not accessible from RFF lab computers.
To accommodate this, use the L: drive project folder for all data storage, and copy only necessary data files to the OneDrive folder (for example, do not transfer over intermediate data files, only inputs and outputs).
Because lab computers don't have access to OneDrive, it might be necessary to copy files using the web browser.
If necessary, OneDrive storage capacity can be increased on a project basis (but not the OneDrive accounts of external collaborators).

External collaborators can choose to work directly from the OneDrive folder or use it for file transfer to their own preferred storage.
Directory structures should be mirrored across the L: and OneDrive folders to maintain consistency and code functionality.
For example, if a file is saved as `raw_data/fires/data.shp` in the L: drive, it should be shared with external collaborators in a OneDrive folder under the same directory structure.

One consideration when using this strategy is that if different copies of data are edited on both the L: drive and OneDrive, it can sometimes be difficult to determine who edited them and reconcile different versions.
One way to avoid this problem is to store data on GitHub and use version control when possible. 
Git version control is most applicable for data that is small (well below 100 MB) and not restricted by licenses or other sensitivities.

::: {.callout-note}
When a function to load data from a OneDrive folder is included in code, if the data is not already synchronized, it can sometimes automatically trigger the OneDrive program to download/sync the data. That may "freeze" the console where the code is running, without an informative message. This can be avoided by manually syncing the OneDrive folder before running code that depends on the data.
:::

#### Collaborative Coding

Use GitHub as the primary storage solution.
GitHub repositories can be "cloned" to a local computer.
This method leverages GitHub's distributed version control features to streamline collaboration, organization, and resilience by allowing users to "clone" GitHub repositories to a local computer (such as an RFF server folder or personal OneDrive folder), make changes independently, and then upload those changes to a shared workspace that can be accessed through any web browser or any computer with git installed
[LINK TO VC SECTION]

As with data organization, use the same folder structure for code across shared folders
In addition, it is particularly important to allow for easily configurable paths.
One way to do this would be to use relative paths [LINK TO SOFTWARE QUALITY SECTION ON RELATIVE FILE PATHS] so that other code users don't need to modify the absolute paths to be custom to their computer setup, and code can be run "out-of-the-box".

Considerations:

* __Storage limitations__: OneDrive is not suitable to support large data. There are synchronizations issues when working with single files bigger than 10GB.

  ::: {.callout-note}
  If external collaborators are "guests" in the OneDrive folder, they are also limited to your account's storage limits.
  :::

* __Security__: Consider the security implications of storing sensitive data on the cloud and specify access accordingly.

### Other Options for Collaborating with External Partners

#### Other Cloud Storage Options for large data

Alternatives to OneDrive, such as Azure, Google Bucket, or AWS S3, may be well suited to your project. Especially for short-term storage and file transfer.
Dropbox is also an option, but note that it can incur additional costs.
For Azure setups, contact IT at IThelp@rff.org. 

#### ArcGIS Online for Sharing and Exploring Spatial Data

ArcGIS Online is a cloud-based browser platform that allows users to upload, host, and share datasets (both geospatial and tabular).
In order to access the data and exploratory mapping interface, users need an ArcGIS Online account.
Online accounts cost $100 per user and data storage costs vary by data size.
Contact RFF's GIS Coordinator at [Thompson@rff.org](mailto:thompson@rff.org) for more information.

#### Enabling External Collaborator Access to the L: drive

While not recommended, it is possible to enable access to the L: drive for non-RFF staff.
Temporary accounts can be requested by contacting IT at [IThelp@rff.org](mailto:ithelp@rff.org).

#### Accessing raw data via Application Program Interfaces (APIs)

For large datasets, it is best to include lines in your code for downloading raw data from the web via an API, where available, rather than downloading data to disk and importing it.
If an API is not available, having code download data from remote servers via other methods (e.g., curl) is still preferable.

Using APIs is ideal for a variety of reasons:

* __Storage size__: An API allows the user/program to access specific data of relevance without needing to find room to store an entire, broader dataset (which is instead hosted on the data provider's server)
* __Reproducibility__: Using public APIs or other ways of accessing public data on the internet allows for code produced using other best practices to run "out of the box" on any computer/VM with internet access
* __Updates__: Code written using API queries can be programmed to retrieve new data periodically without needing to manually update a local dataset

APIs do require some special considerations:

* __Consistency__: Remote data may change. It is important to use version control and smaller intermediate datasets within a version control framework to ensure that past results can be reproduced consistently
* __Longevity__: APIs may stop being accessible/maintained. It is not always a safe assumption that data stored remotely will continue to be accessible via an API. However, public government datasets tend to be more reliable due to laws enforcing their accessibility. Even so, API packages and query formats may change, so project code may need to be debugged occasionally to maintain compatibility with an API.
* __Accessibility__: Not all online data sources have convenient API functions in a programmer's language of choice. Some have URL formats that allow data to be accessed regardless. The amount of documentation and the level of technical skill required to understand it can vary.


