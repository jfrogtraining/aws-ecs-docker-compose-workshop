---
title: "Set up your Cloud9 IDE"
chapter: false
weight: 414
pre: "<b>4.1.4 </b>"
---

[AWS Cloud9](https://aws.amazon.com/cloud9/) is a cloud-based integrated development environment (IDE) that lets you write, run, and debug your code with just a browser. It includes a code editor, debugger, and terminal. Cloud9 comes prepackaged with essential tools for popular programming languages, including JavaScript, Python, PHP, and more, so you don’t need to install files or configure your development machine to start new projects.

1. Within the AWS console, use the region drop list to select **us-west-2 (Oregon)**.  The workshop script will provision the resources in this region.

![image](/images/aws-pick-region.png)

2. Navigate to the [Cloud9 console](https://console.aws.amazon.com/cloud9/home) or just search for it under the **AWS services** search.

![image](/images/c9-search.png)

3. Click the **Create environment** button.

![image](/images/c9-create.png)

4. For the name, enter `jfrog-workshop` and click **Next Step**.


5. Select **Other instance type** and choose **t3.medium**.


6. Leave all the other settings as default.

![image](/images/c9-settings.png)

7. Click **Next Step**.

8. On the **Review** page, click **Create environment**. The Cloud9 environment will take a few minutes to provision.

7. When the environment comes up, close the **Welcome** page tab.

8. Close the lower work area tab.

9. Open a new terminal tab in the main work area.

![c9before](/images/c9before.png)

Your workspace should now look like this and can hide the left hand environment explorer by clicking on the left side **environment** tab.

![c9after](/images/c9after.png)

{{% notice tip %}}
If you don't like this dark theme, you can change it from the **View** ► **Themes** menu.
{{% /notice %}}

{{% notice tip %}}
Cloud9 requires third-party-cookies. You can whitelist the [specific domains]( https://docs.aws.amazon.com/cloud9/latest/user-guide/troubleshooting.html#troubleshooting-env-loading).  You are having issues with this, Ad blockers, javascript disablers, and tracking blockers should be disabled for the Cloud9 domain, or connecting to the workspace might can be impacted.
{{% /notice %}}
