terraform {
    backend "azurerm" {
        storage_account_name = "terrastoragetfstate"
        container_name = "tfstate"
        key = "testtfstateblob"
        access_key = "TjNyw5hQLWjM33v2WR/mTBpSA2tdyR0iFWHT3l7WwkH5PBBqEihVc/v3pxuK5fcYFbC4gpOJwrdk6YK2VtN6uQ=="
    }
}