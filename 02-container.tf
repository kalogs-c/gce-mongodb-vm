module "gce-container" {
  source  = "terraform-google-modules/container-vm/google"
  version = "~> 2.0"

  container = {
    image = "mongo:latest"
    env = [
      {
        name  = "MONGO_INITDB_ROOT_USERNAME",
        value = var.mongo_username,
      },
      {
        name  = "MONGO_INITDB_ROOT_PASSWORD",
        value = var.mongo_password,
      }
    ]

    volumes = var.with_volumes == true ? [
      {
        name      = "data"
        mountPath = "/data/db"
        readOnly  = false
      }
    ] : []
  }

  volumes = var.with_volumes == true ? [
    {
      name = "data"

      gcePersistentDisk = {
        pdName = "data_disk_0"
        fsType = "ext4"
      }
    }
  ] : []

  restart_policy = "Always"
}
