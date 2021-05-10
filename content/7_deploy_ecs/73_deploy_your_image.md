---
title: "Deploy Your Image with ECS"
chapter: false
weight: 73
pre: "<b>7.3 </b>"
---

The Amazon ECS first-run wizard guides you through the process of getting started with Amazon ECS using the Fargate launch type. The wizard gives you the option of creating a cluster and launching your application. It is a great way to get started with deploying your application with Amazon ECS. We will use the wizard to deploy our NPM application Docker image from Artifactory.

1. Go to the [Amazon ECS console first-run wizard](https://console.aws.amazon.com/ecs/home#/firstRun).
2. In the **Container definition** section, click **Configure** on the **custom** option.
3. For the container name, specify ```npm-app```.
4. For the **Image** specify the Docker image name for our _npm-app_. This should be ```${domain}/docker-demo/npm-app:latest```. _domain_ is the JFrog Platform instance domain (_server name_.jfrog.io).
5. Check **Private repository autentication**.
6. For **Secrets Manager ARN** paste the **Secrets ARN** from the [Secrets Manager step](80_configure_ecs_secrets.html).
7. For port mapping, specify 443.
![ECS Container](/images/ecs-container.png)
8. Click **Update**.
9. Click **Edit** on the **Task definition**.
10. for the **Task definition name**, specify ```deploy-npm-app```.
11. For the **Task execution role** specify the ECS role that you created, _ecsWorkshop_.
![ECS Task Definition](/images/ecs-task-definition.png)
12. Click **Save**.
13. Click **Next**.
14. For **Define your service**, ensure **Application Load Balancer** is selected and port 443 is listed.
![ECS Service](/images/ecs-service.png)
15. Click **Next**.
16. For **Configure your cluster**, specify ```npm-app-cluster``` for your **Cluster name**.
17. Click **Next**.
18. Review your configuration.
19. Click **Create** after you validated your configuration.
20. Wait for your AWS services to be _completed_.
![ECS Fargate Services](/images/ecs-fargate-services.png)

It will take a few minutes for Amazon ECS to create your VPC, create a cluster, create services and deploy your image. When that is complete, we can view our application!

{{%expand "What is Amazon ECS first-run wizard doing?" %}}
![AWS Deploy Diagram](/images/aws-deploy-diagram.png)
.{{% /expand%}}
