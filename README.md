# Terraform AWS 3-Tier Infrastructure with Jenkins CI/CD 🚀

This project provisions a complete **3-tier AWS infrastructure** using **Terraform**, with a **CI/CD pipeline powered by Jenkins**. It is designed for freshers or junior cloud engineers to learn hands-on DevOps, Terraform, and cloud fundamentals in a real-world project format.

---

## 🧱 Architecture Overview

      Internet
          |
      [ ALB (Public) ]
          |
     -------------
     |           |
 EC2 Web     EC2 Web (optional)
(Public Subnet)
     |
 Private Subnet
     |
   [ RDS DB ]

   
---

## 💡 Key Features

- 🧭 **3-tier architecture** (VPC, Public/Private Subnets, EC2, RDS, ALB)
- 🛡️ Security Groups for web, DB, and ALB
- 🔄 Automated provisioning with **Terraform**
- ⚙️ **Jenkins CI/CD pipeline** for full automation
- 🌎 Public ALB to access deployed web server

---

## 🛠️ Tech Stack

- **Terraform** (v1.5+)
- **AWS** (VPC, EC2, RDS, ALB, SG, Subnets)
- **Jenkins** (for automation pipeline)
- **Bash** (for user data and Terraform install)

---

---

## ⚙️ Prerequisites

- AWS account with IAM credentials
- Jenkins server with:
  - Git
  - Terraform installed (or install via Jenkinsfile)
- AWS credentials added to Jenkins:
  - Go to: `Jenkins > Manage Credentials`
  - Add `aws-access-key-id` and `aws-secret-access-key`

---

## 🚀 Getting Started

Clone the Repo


```
git clone https://github.com/yourname/terraform-aws-3tier-jenkins.git
cd terraform-aws-3tier-jenkins
```
Update tfvarfile

aws_region           = "us-east-1"
vpc_cidr             = "10.0.0.0/16"
public_subnet_cidr   = "10.0.1.0/24"
private_subnet_cidr  = "10.0.2.0/24"

Setup Jenkins Pipeline
Create a new Pipeline Job in Jenkins

Point it to your GitHub repo

Use the Jenkinsfile for pipeline definition
Update the AWS credentials in Jenkinsfile

Run the pipeline

Access Your Web Server
After a successful pipeline run, you can access:

✅ Public Website: http://<ALB_DNS_NAME>

✅ RDS Endpoint: via AWS console (private)

alb_dns_name      = ###########
rds_endpoint      = ###########



🧽 Cleanup
To avoid AWS charges:
```
terraform destroy -auto-approve
```

🧠 Author
Your Name – Cloud/DevOps Enthusiast
GitHub: @Nurarihyon122
LinkedIn: https://www.linkedin.com/in/utsav-kumar-4a148b279

📜 License
This project is open-source and free to use under the MIT License.





