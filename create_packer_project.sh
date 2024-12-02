#!/bin/bash

# Define the base directory
BASE_DIR="packer-project"



# packer-project/
# ├── packer.json         # Main Packer template (optional if using HCL files)
# ├── main.pkr.hcl        # Primary HCL configuration file
# ├── variables.pkr.hcl   # Separate variables file for clarity
# ├── source/             # Source definitions (e.g., builders and credentials)
# │   ├── aws/
# │   │   ├── aws.pkr.hcl
# │   │   └── variables.pkr.hcl
# │   ├── azure/
# │   │   ├── azure.pkr.hcl
# │   │   └── variables.pkr.hcl
# │   └── vmware/
# │       ├── vmware.pkr.hcl
# │       └── variables.pkr.hcl
# ├── scripts/            # Custom scripts for provisioning
# │   ├── install-nginx.sh
# │   ├── setup-docker.sh
# │   └── cleanup.sh
# ├── files/              # Files to be copied to the image
# │   ├── index.html
# │   └── config.json
# ├── ansible/            # Ansible playbooks (if Ansible is used for provisioning)
# │   ├── playbook.yml
# │   └── roles/
# ├── output/             # Output directory for built images
# │   ├── aws/
# │   ├── azure/
# │   └── vmware/
# ├── logs/               # Logs for debugging and audit
# │   ├── build.log
# │   └── provision.log
# ├── docs/               # Documentation
# │   ├── README.md
# │   └── CHANGELOG.md
# └── tests/              # Testing scripts or Packer validate scripts
#     ├── test-build.sh
#     └── validate.pkr.hcl





# Create the folder structure
mkdir -p $BASE_DIR/{source/{aws,azure,vmware},scripts,files,ansible/roles,output/{aws,azure,vmware},logs,docs,tests}

# Create placeholder files
touch $BASE_DIR/{packer.json,main.pkr.hcl,variables.pkr.hcl}
touch $BASE_DIR/source/aws/{aws.pkr.hcl,variables.pkr.hcl}
touch $BASE_DIR/source/azure/{azure.pkr.hcl,variables.pkr.hcl}
touch $BASE_DIR/source/vmware/{vmware.pkr.hcl,variables.pkr.hcl}
touch $BASE_DIR/scripts/{install-nginx.sh,setup-docker.sh,cleanup.sh}
touch $BASE_DIR/files/{index.html,config.json}
touch $BASE_DIR/ansible/{playbook.yml}
touch $BASE_DIR/logs/{build.log,provision.log}
touch $BASE_DIR/docs/{README.md,CHANGELOG.md}
touch $BASE_DIR/tests/{test-build.sh,validate.pkr.hcl}

# Add initial content to README
cat <<EOL > $BASE_DIR/docs/README.md
# Packer Project

This project contains a structured setup for building and managing images using Packer.

## Folder Structure
- **source/**: Definitions for different cloud providers (e.g., AWS, Azure, VMware).
- **scripts/**: Provisioning scripts for configuring the images.
- **files/**: Static files used in the image.
- **ansible/**: Ansible playbooks for provisioning (optional).
- **output/**: Generated image files.
- **logs/**: Logs for build and provision steps.
- **docs/**: Documentation for the project.
- **tests/**: Scripts for validation and testing.
EOL

# Add executable permission to scripts
chmod +x $BASE_DIR/scripts/*.sh
chmod +x $BASE_DIR/tests/test-build.sh

# Print completion message
echo "Packer project folder structure has been created in the '$BASE_DIR' directory."
