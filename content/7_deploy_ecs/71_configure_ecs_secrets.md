---
title: "Configure AWS Secrets Manager for ECS"
chapter: false
weight: 71
pre: "<b>7.1 </b>"
---
In the previous sections, we set up the JFrog CLI to authenticate and publish Docker images to Artifactory. In the next sections, we will add the same Artifactory credentials to AWS Secrets Manager. We will then use an IAM Role to allow Amazon ECS to authenticate with Artifactory, pull the image and deploy it.

![ECS Steps](/images/ecs-steps-diagram.svg) 

{{% notice info %}}
Private registry authentication for ECS tasks using AWS Secrets Manager enables you to store your credentials securely and then reference them in your container definition. This allows your ECS tasks to use images from private repositories. 
{{% /notice %}}

1. Go to your [AWS Secrets Manager Console](https://console.aws.amazon.com/secretsmanager/).
2. Click on **Store a new secret**.
3. Select **Other type of secrets**.
4. Select the **Plaintext** format.
5. And paste your Artifactory username and API Key.

```
{
  "username" : "<username>",
  "password" : "<password>"
}
```

6. Click **Next**.
7. Provide a **Secret name** like ```awsworkshop/jfrog-npm-app```. Remember this name.
8. Click **Next**.
9. Leave the default settings on this next **Configure automatic rotation** page and click **Next**.
10. On the **Sample code** page, click **Store**. You should now see your new secret listed.
![AWS Secrets](/images/aws-secrets.png)
11. Click on your new secret.
12. Copy the **Secret ARN** for the next steps.
![Secret ARN](/images/secret-arn.png)

Next, we must create an IAM role that allows ECS to access these credentials.
