---
title: "Configure JFrog Artifactory and Xray"
chapter: false
weight: 434
pre: "<b>4.3.4 </b>"
---

Now that we have the JFrog CLI installed and configured, we will use it to create the Artifactory NPM and docker repositories, Xray watches and policies. We will need these when we build and publish our NPM application later. The JFrog CLI uses the the [JFrog Platform REST APIs](https://www.jfrog.com/confluence/display/JFROG/REST+API). This is another way that you can manage and monitor the JFrog Platform. 


1. In your Cloud9 terminal, change directory to the _aws-modernization-with-jfrog_ directory.
2. Open the _scripts/create_entities.sh_ script file. As you browse the script, take notice of the _jfrog rt_ commands. These are the JFrog CLI commands that enables us to create Artifactory repositories and configure Xray.
![create entities](/images/create-entities.png)
3. Execute the script to create Artifactory repositories, Xray watches and policies. This command will take a few minutes to complete.

``
source scripts/create_entities.sh
``

4. Now let's see how the _scripts/create_entities.sh_ configured Artifactory and Xray for our workshop. In your JFrog Platform instance, go to **Artifactory** ► **Artifacts**.

5. In the pane on the left, you can see NPM and Docker repositories. These were created by the _create_entities.sh_ script. Three different types of repositories were created: local, remote and virtual.

- **Local repositories** are physical, locally-managed repositories into which you can deploy artifacts. These are repositories that are local to the JFrog Artifactory instance.
- A **remote repository** serves as a caching proxy for a repository managed at a remote URL (which may itself be another Artifactory remote repository). 
- A **virtual repository** (or "repository group") aggregates several repositories with the same package type under a common URL. A virtual repository can aggregate local and remote repositories.

![Repositories List](/images/repositories-list.png)

From the naming, we can see that we also created repositories to represent different stages in our process: dev, qa and prod. In our workshop, we will push an NPM package to the NPM repositories and Docker images to the Docker repositories. Take some time to explore this repository view.

![NPM Demo](/images/npm-demo-virtual.png) 

6. Now let's view the Xray configuration. Go to **Security & Compliance** ► **Policies**.
7. Click on the _demo-default-policy_. This single policy will generate security violations for high severity vulnerabilities.
![Demo Default Policy](/images/demo-default-policy.png) 

8. Go to **Security & Compliance** ► **Watches**.
![Xray Watches](/images/xray-watches.png) 

9. Click on any item in the watches list. This view shows the repositories, builds, bundles that are being scanned per a specified security or license policy. It will also show any existing violations.
![Xray Watch Detail](/images/xray-watch-detail.png) 

{{% notice info %}}
JFrog Xray scans your artifacts, builds and release bundles for OSS components, and detects security vulnerabilities and licenses in your software components. 
Policies and Watches allow you to enforce your organization governance standards. Setup up your Policies and Watches to reflect standard governance behaviour specifications for your organization across your software components.
{{% /notice %}}
