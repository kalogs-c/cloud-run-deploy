# Deploying an App to Google Cloud Run with Terraform

This Terraform application enables you to deploy an application to Google Cloud
Run. You can customize various aspects of the deployment by passing variables to
the script, such as the project ID, region, zone, backend Cloud Storage bucket
name (which needs to be created beforehand), app name, and the container image.

## Prerequisites

Before using this Terraform script, ensure that you have the following
prerequisites:

1. [Terraform](https://www.terraform.io/) installed on your local machine.
2. A Google Cloud Platform (GCP) account with the necessary permissions to
   create and manage resources.
3. A billing account set up for your GCP project.

## Getting Started

To use this Terraform script, follow these steps:

1. Clone or download this repository to your local machine.

   ```bash
   git clone https://github.com/kalogs-c/cloud-run-deploy.git
   ```

2. Navigate to the project directory:

   ```bash
   cd cloud-run-deploy
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
   to your requirements. You can change the following variables:

   - `project_id`: Your GCP project ID.
   - `region`: The GCP region where you want to deploy the app (e.g.,
     `us-central1`).
   - `zone`: The GCP zone within the chosen region (e.g., `us-central1-a`).
   - `backend_bucket`: The name of the existing Cloud Storage bucket to use as
     the backend for Terraform state.
   - `app_name`: The desired name for your app.
   - `image`: The URL or name of the container image to deploy.

6. Review the other settings in the Terraform files and make any necessary
   changes.

7. Deploy the infrastructure by running:

   ```bash
   terraform apply
   ```

   Terraform will now create the necessary resources and deploy your app to
   Google Cloud Run using the provided variables.

8. Once the deployment is complete, Terraform will display the URL and other
   relevant information about the deployed app.

9. To tear down the infrastructure and delete all resources created by
   Terraform, run:

   ```bash
   terraform destroy
   ```

   Confirm the destruction when prompted.

## Additional Notes

- Ensure that the Cloud Storage bucket specified in the `bucket_name` variable
  exists before running the script.

- If you need more advanced configuration options for your app deployment,
  consult the official
  [Google Cloud Run documentation](https://cloud.google.com/run/docs) for more
  information.

- Make sure that your GCP project has a valid billing account associated with it
  before running this script, as some resources may incur charges.

- Keep your `service_account.json` file secure and avoid committing it to
  version control systems.

## Troubleshooting

- If you encounter any issues or have questions, please open an issue in the
  repository's issue tracker.

- For general troubleshooting and assistance with Terraform, consult the
  official [Terraform documentation](https://learn.hashicorp.com/terraform).
