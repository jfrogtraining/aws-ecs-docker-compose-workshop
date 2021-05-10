---
title: "Configure an IAM Role for ECS"
chapter: false
weight: 72
pre: "<b>7.2 </b>"
---
We now have our Artifactory credentials in the AWS Secrets Manager. Next, we must create an IAM role that will allow ECS to access our Artifactory secrets and deploy our image. 

{{% notice info %}}
Before you can launch ECS container instances and register them into a cluster, you must create an IAM role for those container instances to use when they are launched. The Amazon ECS container agent makes calls to the Amazon ECS API on your behalf using this role. We add an additional policy to allow ECS to access our secrets.
{{% /notice %}}

1. Go to [IAM Roles](https://us-east-1.console.aws.amazon.com/iam/home?#/roles).
2. Click on **Create role**.
3. Select the **Elastic Container Service** service and **Elastic Container Service Task** use case.
![AWS ECS_IAM](/images/iam-ecs.PNG)

4. Click on **Create Policy**.
5. Click on the **JSON** tab and paste the following.

```
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": [
        "kms:Decrypt",
        "secretsmanager:GetSecretValue"
      ],
      "Resource": [
        "<secret_arn>"   
      ]
    }
  ]
}

```

6. Substitute your copied **Secret ARN** for \<secret_arn\>.

7. Click on **Review policy**.
8. Name the policy ```ecsAccessToSecrets``` and create the policy by clicking **Create policy**. This creates a policy that allows ECS to access your Artifactory credentials that are stored in the Secrets Manager.
![Inline Policy](/images/inline-policy.png)
9. Now go back to your role and search for your new policy ```ecsAccessToSecrets``` and attach it. You may need to refresh the policy list. 
10. Also attach the ```AmazonECSTaskExecutionRolePolicy```. This policy allows the execution of Amazon ECS tasks.
11. Click through the next steps and then create the role with the name ```ecsWorkshop```.
![IAM Role](/images/iam-role.png)

You have now created an IAM role that will allow ECS to deploy images from Artifactory.
