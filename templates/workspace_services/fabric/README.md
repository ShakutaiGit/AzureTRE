# Azure Fabric Workspace Service
## IMPORTANT
- This workspace service does not work "out of the box." It requires additional configuration to work properly.
- You **must manually assign the VMSS Service Principal the Fabric Administrator role** in the Azure portal for this service to function correctly.

### Additional Notes
- To locate the service principal, please search for the following ID in the Azure portal: id-vmss-<tre-id>
- This service is configured to use private endpoints and DNS zones specific to Azure Fabric.
- Ensure that the required Terraform state storage and configuration variables are set before deployment.
- Enable fabric endpoint access from fabric portal the first step here (fabric_endpoint)[https://learn.microsoft.com/en-us/fabric/security/security-private-links-use]
