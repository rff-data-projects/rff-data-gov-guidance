
# Basic

project_name/
  ├── data/
  ├── scripts/
  ├── results/
  ├── docs/
  

# Basic expanded
  
project_name/
  ├── data/
  │   ├── raw/
  │   ├── intermediate/
  │   ├── clean/ (optional)
  ├── scripts/
  │   ├── processing/
  │   ├── analysis/
  │   ├── tools/ (optional)
  ├── results/
  ├── docs/
  
  
# Repos option 1 (vc only scripts)
  
## Version 1 (without .git)
  
project_name/
  ├── data/
  │   ├── raw/
  │   ├── intermediate/
  │   ├── clean/ (optional)
  ├── results/
  ├── docs/  
  ├── repos/
  │   ├── baker/
  │   │   ├── scripts/
  │   │   │   ├── processing/
  │   │   │   ├── analysis/
  │   │   │   ├── tools/
  │   ├── johnson/
  │   │   ├── scripts/
  │   │   │   ├── processing/
  │   │   │   ├── analysis/
  │   │   │   ├── tools/
  
  
## Version 2 (with .git)
  
project_name/
  ├── data/
  │   ├── raw/
  │   ├── intermediate/
  │   ├── clean/ (optional)
  ├── results/
  ├── docs/  
  ├── repos/
  │   ├── baker/
  │   │   ├── .git/
  │   │   ├── scripts/
  │   │   │   ├── processing/
  │   │   │   ├── analysis/
  │   │   │   ├── tools/
  │   ├── johnson/
  │   │   ├── .git/
  │   │   ├── scripts/
  │   │   │   ├── processing/
  │   │   │   ├── analysis/
  │   │   │   ├── tools/
  
  


# Repos option 2 (vc also results, docs)
  
## Version 1, no .git
  
project_name/
  ├── data/
  │   ├── raw/
  │   ├── intermediate/
  │   ├── clean/ (optional)
  ├── repos/
  │   ├── baker/
  │   │   ├── scripts/
  │   │   │   ├── processing/
  │   │   │   ├── analysis/
  │   │   │   ├── tools/
  │   │   ├── results/
  │   │   ├── docs/
  │   ├── johnson/
  │   │   ├── scripts/
  │   │   │   ├── processing/
  │   │   │   ├── analysis/
  │   │   │   ├── tools/
  │   │   ├── results/
  │   │   ├── docs/
  
## Version 2, .git

project_name/
  ├── data/
  │   ├── raw/
  │   ├── intermediate/
  │   ├── clean/ (optional)
  ├── repos/
  │   ├── baker/
  │   │   ├── .git/
  │   │   ├── scripts/
  │   │   │   ├── processing/
  │   │   │   ├── analysis/
  │   │   │   ├── tools/
  │   │   ├── results/
  │   │   ├── docs/
  │   ├── johnson/
  │   │   ├── .git/
  │   │   ├── scripts/
  │   │   │   ├── processing/
  │   │   │   ├── analysis/
  │   │   │   ├── tools/
  │   │   ├── results/
  │   │   ├── docs/
  