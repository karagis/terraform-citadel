resource "azurerm_resource_group" "coreId" {
  name = "core"
  location = "${var.loc}"
  tags = "${var.tags}"
}
