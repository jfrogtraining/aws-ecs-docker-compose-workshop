---
title: "View Your Application"
chapter: false
weight: 74
pre: "<b>7.4 </b>"
---
In the previous section, you deployed your image with Amazon ECS. Now let's check it out!

1. When _complete_, click on your deployed service, _npm-app-service_.
![NPM APP Service](/images/npm-app-service.png)
2. Click on the **Tasks** tab.
![NPM APP Service Tasks](/images/npm-app-service-tasks.png)
3. Ensure the **Last status** shows _RUNNING_ before going to the next step.
4. Click on the _deploy-npm-app_ task.
5. On the **Details** page of the task, locate the **Public IP**.
![NPM APP Task Detail](/images/npm-app-service-task-detail.png)
6. In your browser, go to https://\<Public IP\> to view your deployed web application. 
7. Click through the self-signed certificate warning. You should see the following web application.

![NPM Application](/images/npm-app.png)


Congratulations! You have used Amazon ECS Fargate to deploy the image that you built with the JFrog Platform.
