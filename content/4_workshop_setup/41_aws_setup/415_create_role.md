---
title: "Create an IAM role for your workspace"
chapter: false
weight: 415
pre: "<b>4.1.5 </b>"
---

1. Follow [this link to create an IAM role with Administrator access.](https://console.aws.amazon.com/iam/home#/roles$new?step=review&commonUseCase=EC2%2BEC2&selectedUseCase=EC2&policies=arn:aws:iam::aws:policy%2FAdministratorAccess)
2. Confirm that **AWS service** and **EC2** are selected, then click **Next** to view permissions.
3. Confirm that **AdministratorAccess** is checked, then click **Next** through to **Review**.
4. Enter `JFrog-Workshop-Admin` for the role name.
5. Click **Create Role**.
![createrole](/images/createrole.png)
