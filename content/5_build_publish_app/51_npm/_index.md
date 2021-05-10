---
title: "Build and Publish the NPM Package"
chapter: false
weight: 51
pre: "<b>5.1 </b>"
---

In this section, we will focus on the NPM package of our application by validating NPM dependencies and publishing the resulting NPM package.

![NPM Logo](/images/npm-logo.png)

![JFrog CLI NPM](/images/jfrog-cli-npm.svg)

{{% notice info %}}
As we are building our NPM package and Docker image, the JFrog CLI is collecting build info along the way. Build info is referenced by the build name and build number. Build info is all the information collected during the build which includes details about the build itself. The build info includes the list of project modules, artifacts, dependencies, environment variables and more. When using one of the JFrog CLI to build the code, it can collect the build-info and publish it to Artifactory. When the build info is published to Artifactory, all the published details become visible in the Artifactory UI. 
{{% /notice %}}

1. In the Cloud9 terminal, change directory to  `` cd aws-modernization-with-jfrog/workshop-app ``. This directory contains the code for our NPM application.

2. Configure the NPM repositories with the JFrog CLI. This sets the _npm-demo_ as the NPM repository for deploying and resolving packages.

``
jfrog rt npmc --repo-resolve npm-demo --repo-deploy npm-demo --server-id-resolve $jfrog_server_id --server-id-deploy $jfrog_server_id
``

3. Perform an NPM install with the JFrog CLI command to verify NPM dependencies. _--build-name_ specifies the name for this build. _--build-number_ specifies the run. Each time this code is built, reference the same build name, but increment the build number. Build info is referenced to these values.

``
jfrog rt npm-install --build-name=npm_build --build-number=1
``

This command should result in successful install.
![NPM Install](/images/npm-install.png)

{{%expand "What's going on here?" %}}
_npm-demo_ is a virtual repository. With _npmjs_ as a remote repository. Artifactory proxies and caches your packages!
![NPM Demo](/images/npm-demo.png)
![NPM Remote](/images/npm-remote.png)
.{{% /expand%}}

4. Perform an NPM publish to package and deploy to the _npm-demo_ repository. You set this repository in _Step 2_.

``
jfrog rt npm-publish --build-name=npm_build --build-number=1
``

This command should result in successful publishing.
![NPM Publish](/images/npm-publish.png)

5. Now let's publish our build info. This contains all the properties including dependencies, versions, artifacts and environment variables associated with the _npm_build_. The following will publish the accumulated build info.

``
jfrog rt build-publish npm_build 1
``

{{%expand "Review what we have done." %}}
![NPM Review](/images/npm-review.png)
.{{% /expand%}}

6. In your JFrog Platform instance, go to **Artifactory** ► **Builds**.

7. Click on **npm_build**. This is our current build. 
![Artifactory Builds](/images/artifactory-builds.png)

8. Click on **1**. This is our current build run. This reveals all of our current build info including published artifacts and dependencies. This was collected through our previous JFrog CLI commands.

![Build Info](/images/npm-build-info.png)

9. Select the **Build Info JSON** tab. This provides a JSON view of all of our build info.

![Build Info](/images/npm-build-info-json.png)

10. Go to **Administration** ► **Xray Security & Compliance** ► **Indexed Resources**.
![Indexed Resources](/images/indexed-resources.png)

11. Select the **Build** tab.

12. Click **Manage Builds**.

13. Move the _npm_build_ to the included builds and click **Save**. This enables Xray to scan this build.

![Indexed Builds](/images/indexed-builds.png)

