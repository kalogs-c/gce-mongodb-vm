# Creating a VM with MongoDB on Google Compute Engine using Terraform

This Terraform script allows you to easily create a virtual machine (VM) on
Google Compute Engine with the MongoDB image installed. You can customize
various aspects of the VM by passing variables to the script, such as the
username, password, IP address, machine type, project ID, and more.

## Prerequisites

Before using this Terraform script, ensure that you have the following
prerequisites:

1. [Terraform](https://www.terraform.io/) installed on your local machine.
2. A Google Cloud Platform (GCP) account with the necessary permissions to
   create and manage resources.
3. The GCP credentials JSON file (`service_account.json`) for the account or
   logged on your Google account using the `gcloud cli` on your desktop.

## Getting Started

To use this Terraform script, follow these steps:

1. Clone or download this repository to your local machine.

   ```bash
   git clone https://github.com/kalogs-c/gce-mongodb-vm.git
   ```

2. Navigate to the project directory:

   ```bash
   cd gce-mongodb-vm
   ```

3. Copy your GCP credentials JSON file (`service_account.json`) into the project
   directory (ignore if you are using the `gcloud cli` and are already logged in
   with your correct Google account).

4. Initialize the Terraform configuration:

   ```bash
   terraform init
   ```

5. Customize the variables:

   Open the `variables.tf` file in a text editor and modify the values according
   to your requirements or rename `terraform.tfvars.example` to just
   `terraform.tfvars`. You can change the following variables:

   - `project_id`: Your GCP project ID.
   - `region`: The GCP region where the VM should be created (default:
     `us-central1`).
   - `zone`: The GCP zone where the VM should be created (default:
     `us-central1-a`).
   - `mongo_username`: The desired username for MongoDB.
   - `mongo_password`: The desired password for MongoDB.
   - `ip_name`: Name of the static IP address to be assigned to the VM, if you
     already have one create on VPC you can use it.
   - `vm_name`: Name of the VM
   - `machine_type`: The desired machine type for the VM (default: `e2-medium`).

6. Review the other settings in the Terraform files and make any necessary
   changes.

7. Deploy the infrastructure by running:

   ```bash
   terraform apply
   ```

   Terraform will now create the VM with MongoDB using the provided variables.

8. Once the deployment is complete, Terraform will display the IP address and
   other relevant information about the created VM. You can use this information
   to connect to the VM and interact with MongoDB.

9. To tear down the infrastructure and delete all resources created by
   Terraform, run:

   ```bash
   terraform destroy
   ```

   Confirm the destruction when prompted.

## Additional Notes

- If you want to enable additional features or customize the MongoDB
  installation further, refer to the official
  [MongoDB documentation](https://docs.mongodb.com/) for more information.

- Make sure to keep your `service_account.json` file secure and do not commit it
  to version control systems.

## Troubleshooting

- If you encounter any issues or have questions, please open an issue in the
  repository's issue tracker.

- For general troubleshooting and assistance with Terraform, consult the
  official [Terraform documentation](https://learn.hashicorp.com/terraform).
