---
title: "Cleanup"
chapter: false
weight: 0
---

- **Your JFrog Platform Instance** - The JFrog Platform instance that you used in this workshop will automatically be destroyed after the workshop. There isn't anything you need to do. If you would like keep it, you can upgrade to one of the premium plans. Do this by clicking on the **Upgrade** button.
![Upgrade](/images/upgrade.png)

- **Amazon Resources**
    1. **Amazon ECS Resources** - To cleanup your Amazon ECS resources, go to your [npm-app-cluster in your Amazon ECS console](https://console.aws.amazon.com/ecs/home#/clusters/npm-app-cluster/services) and click **Delete Cluster**.
![Delete ECS Cluster](/images/delete-ecs-cluster.png)
    2. **AWS Secrets** - To cleanup your Amazon secrets, go to your [secrets list in the Secrets Manager console](https://console.aws.amazon.com/secretsmanager/home#/listSecrets). Select the secret and click **Delete secret**.
![Delete ECS Cluster](/images/delete-secrets.png)
    3. **IAM Roles** - To delete your _ecsWorkshop_ role, go to your [role in the IAM console](https://console.aws.amazon.com/iam/home#/roles/ecsWorkshop) and click **Delete role**.
![Delete Role](/images/delete-role.png)
    4. **IAM Policy** - To delete your _ecsAccessToSecrets_ policy, go to your [policy in the IAM console](https://console.aws.amazon.com/iam/home#/policies). Select it and click **Delete policy**.
![Delete Policy](/images/delete-policy.png)


