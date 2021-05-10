---
title: "View Results in JFrog"
chapter: false
weight: 6
pre: "<b>6 </b>"
---

We have built and published our NPM package and Docker image. Let's view these results in JFrog Artifactory.

1. Go to your JFrog Platform instance and switch to the **Packages** view in Artifactory. Go to **Artifactory** ► **Packages**.
2. Type ```workshop-app``` and search. This will show the NPM package that was published with the JFrog CLI.
3. Click on it to view the details.
![Npm Workshop App](/images/npm-workshop-app.png)
2. Go back to the **Packages** view and search for  ```npm-app```. This shows the Docker image that was published.
3. Click on the docker _npm-app_ listing.
![Npm App Package](/images/npm-app-package.png)
4. This will show a list of the versions. Click on the _latest_ version that was built.
![Npm Build Published Modules](/images/npm-app-versions.png)
5. In the **Xray Data** tab, view the security violations. License violations are available in the JFrog Platform Pro and Enterprise tiers.
![Npm Build Xray Data](/images/npm-build-xray-data.png)
6. Click on any violation to see the details and impact in the **Issue Details** tab.
![Npm Build Xray Detail](/images/npm-build-xray-detail.png)
7. Scroll down to the **References** section to access links to documentation that can help you remediate the issue.
![Npm Build Xray Detail References](/images/npm-build-xray-detail-references.png)

    In many cases, you just need to update the component and Xray will indicate this.
![Npm Build Xray Detail Versions](/images/npm-build-xray-detail-version.png)

{{% notice info %}}
Xray supports all major package types, understands how to unpack them, and uses recursive scanning to see into all of the underlying layers and dependencies of components, even those packaged in Docker images, and zip files.
The comprehensive vulnerability intelligence databases are constantly updated giving the most up-to-date understanding of the security and compliance of your binaries.
{{% /notice %}}

8. Close the **Issue Details** tab.
9. View the Docker configuration for the image in the **Docker Layers** tab.
10. On the **Builds** tab, click on _npm\_build_ in the list.
![Npm Build List](/images/npm-build-list.png)
11. Then click on your most recent build.
12. In the **Published Modules** tab, view the set of artifacts and dependencies for your build.
![Npm Published Modules](/images/npm-published-modules.png)

Our JFrog CLI CI/CD "pipeline" provided an overview of a typical build, docker build and push, security scan and promotion process using Artifactory and Xray.

Next, we will deploy your docker image from the "staging" repository using ECS.
