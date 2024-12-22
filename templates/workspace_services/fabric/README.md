# Azure Fabric Workspace Service
## IMPORTANT
- This workspace service does not work "out of the box." It requires additional configuration to work properly.
- You **must manually assign the VMSS Service Principal the Fabric Administrator role** in the Azure portal for this service to function correctly.

### Additional Notes
- This service is configured to use private endpoints and DNS zones specific to Azure Fabric.
- Ensure that the required Terraform state storage and configuration variables are set before deployment.
