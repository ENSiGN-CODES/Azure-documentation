# Azure Terraform Modular Infrastructure – Submission

## Project Purpose

This project demonstrates a modular Infrastructure as Code deployment for Microsoft Azure using Terraform. The setup adheres to professional standards for scalability, security, and maintainability. Key highlights include:

- Modular code for reusability and clear separation of concerns
- Secure secrets management practices
- Organized and documented workflow from VS Code to GitHub to Azure deployment

---

## Structure of Our Work

The project is structured modularly to make management and scaling easier:

### Root Folder Structure

| File/Folder         | Description                                                   |
|---------------------|---------------------------------------------------------------|
| `main.tf`           | Root Terraform file that wires all modules together           |
| `variables.tf`      | Central definition for all input variables                     |
| `terraform.tfvars`  | Personalize deployment values like resource names, IDs, secrets |
| `output.tf`         | Outputs key resource IDs and info after deployment             |
| `.gitignore`        | Protects sensitive info (.tfstate, .terraform, tfvars files)   |
| `README.md`         | Documentation and instructions (this file)                     |

### Modules Folder (`Module/`)

| Module Name           | Description                                           |
|----------------------|-----------------------------------------------------|
| `Networking`          | Handles Virtual Network (VNet), Subnets, NSG        |
| `Compute`             | Deploys Virtual Machines (VMs)                       |
| `Load Balancer`       | Configures Azure Application Gateway / Load Balancer|
| `nginx_app`           | Docker container deployment for nginx app           |
| `SSL certificate`     | Creates a self-signed TLS certificate                |

Each module is isolated in its folder with Terraform code for specific Azure resources, making code reusable and easier to debug/extend.

---

## Setup & Usage

### 1. Prepare `terraform.tfvars`

Fill this with real and environment specific data:

- **Resource names/IDs:** Use Azure Portal → Resource → Properties tab
- **Region:** Choose from Azure supported locations (e.g., `UAENorth`)
- **Secrets & credentials:** Use strong passwords locally, env variables or Azure Key Vault in production
- **Networking CIDR blocks:** Design subnet prefixes as per your architecture
- **Docker image, container name:** Customize based on your app
- **Domain & org details:** For SSL certificate info


### 2. GitHub Setup

- Initialize git locally:


- Add remote origin and push:


Replace `<username>` and `<repo-name>` with your Github details.

Ensure your `.gitignore` is properly ignoring Terraform state, variables, and `.terraform/` directories.

### 3. Terraform Deployment

Run these commands in your terminal:


---

## Best Practices Followed

- **Modular Design:** Easier maintenance and reuse
- **Secure Handling:** Secrets kept out of code; `.gitignore` prevents secrets from GitHub
- **Version Control:** Commit only source code, exclude sensitive configs
- **Consistent Naming:** Follow Azure resource naming conventions uniformly
- **Documentation:** Clear comments and README for any developer or operator

---

## Troubleshooting & Support

- Verify resource IDs and region names are copied exactly from Azure portal
- Use `terraform plan` to preview infra changes safely
- Monitor Azure portal and Terraform output for deployment status
- For errors, check Azure and Terraform docs or open GitHub issues






