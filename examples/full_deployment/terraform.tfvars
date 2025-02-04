#####################################################################################################################
## 1. Specify the Azure location where the Sentinel Workspace must be created.
#####################################################################################################################

arm_location = "canadacentral" # Input the region name where Sentinel must be deployed

#####################################################################################################################
## 2. Specify the Azure Sentinel SKU to deploy.
#####################################################################################################################

sentinel_sku = "PerGB2018" # This is default Sentinel SKU for all deployments
# sentinel_sku      = "Free"
# sentinel_sku      = "PerNode"
# sentinel_sku      = "Premium"
# sentinel_sku      = "Standard"
# sentinel_sku      = "Standalone"
# sentinel_sku      = "Unlimited"
# sentinel_sku      = "CapacityReservation"

#####################################################################################################################
## 3. Specify the Azure Sentinel Retention Period.
#####################################################################################################################

# retention_in_days = 30
# retention_in_days = 60
retention_in_days = 90 # Default retetion period
# retention_in_days = 120
# retention_in_days = 180
# retention_in_days = 270
# retention_in_days = 365 # 1 years
# retention_in_days = 547 # 1.5 years
# retention_in_days = 730 # 2 years

#####################################################################################################################
## 4. Specify a name for the Azure Sentinel Custom table.
#####################################################################################################################
web_log_config = {
  enabled    = true
  table_name = "table_1_web" # Input the name of your custom table
}

firewall_log_config = {
  enabled    = true
  table_name = "table_2_firewall" # Input the name of your custom table
}

dns_log_config = {
  enabled    = true
  table_name = "table_3_dns" # Input the name of your custom table
}

#####################################################################################################################
## 5. Data Collection Endpoint Kind. Supported values are Windows and Linux
##  Default value is Windows
dce_kind = "Windows"
# dce_kind = "Linux"
#####################################################################################################################

#####################################################################################################################
## 5. Specify the name of the Azure sentinel application.
##
application_display_name = "sentinelzscaler" # Input the name of your Azure AD Application
#####################################################################################################################

#####################################################################################################################
##### Custom BYO variables. Only applicable if Sentinel workspace will be deployed in an existing Resource Group  #####
#####################################################################################################################

## 6. By default, this script will create a new Resource Group and place all resources in this group.
##     Uncomment if you want to deploy all resources in an existing Resource Group? (true or false. Default: false)

#byo_rg                                     = true

## 7. Provide your existing Resource Group name. Only uncomment and modify if you set byo_rg to true

#byo_rg_name                                = "existing-rg"

# Reference: https://help.zscaler.com/zia/zia-microsoft-azure-sentinel-integration-guide

api_version = "api-version=2021-11-01-preview"
