# We pick a random region from this list.
locals {
  azure_regions = [
    "westus2",
    "centralus",
    "eastus2",
    "westeurope",
    "eastasia"
  ]
  azurerm_private_dns_zone_resource_name = "privatelink.${local.reformatted_subdomain}"
  default_host_name                      = module.staticsite.azurerm_static_site.default_host_name
  reformatted_subdomain                  = join(".", slice(local.split_subdomain, 1, length(local.split_subdomain)))
  split_subdomain                        = split(".", local.default_host_name)
}
