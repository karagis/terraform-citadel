resource "azurerm_resource_group" "rg" {
  name = "${var.storageRg}"
  location = "${var.loc}"
}

resource "azurerm_storage_account" "terrasa" {
  name = "${var.storageName}"
  resource_group_name = "${azurerm_resource_group.rg.name}"
  location = "${azurerm_resource_group.rg.location}"
  account_tier = "Standard"
  account_replication_type = "LRS"

  tags = "${var.tags}"
}

resource "azurerm_storage_container" "tfstatecont" {
  name = "tfstate"
  resource_group_name = "${azurerm_resource_group.rg.name}"
  storage_account_name = "${azurerm_storage_account.terrasa.name}"
  container_access_type = "private"
}
