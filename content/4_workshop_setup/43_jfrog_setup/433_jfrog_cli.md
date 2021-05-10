---
title: "Install and Configure the JFrog CLI"
chapter: false
weight: 433
pre: "<b>4.3.3 </b>"
---

JFrog CLI is a client that provides a simple CLI interface that automates the management of JFrog products. JFrog CLI works with JFrog Artifactory, JFrog Mission Control, JFrog Bintray and JFrog Xray (through their respective [REST APIs](https://www.jfrog.com/confluence/display/JFROG/REST+API)) making your scripts more efficient and reliable. You can use the JFrog CLI to assist in your builds, create artifacts, promote artifacts, trigger security scans and much more. It is powerful to that you can use in your CI/CD process and general automation. You can learn more [here](https://www.jfrog.com/confluence/display/CLI/JFrog+CLI). 

1. In your Cloud9 terminal, run the following shell commands to install the JFrog CLI.

```
echo "[jfrog-cli]" > jfrog-cli.repo;
echo "name=jfrog-cli" >> jfrog-cli.repo;
echo "baseurl=https://releases.jfrog.io/artifactory/jfrog-rpms" >> jfrog-cli.repo;
echo "enabled=1" >> jfrog-cli.repo; echo "gpgcheck=0" >> jfrog-cli.repo;
sudo mv jfrog-cli.repo /etc/yum.repos.d/;
sudo yum install -y jfrog-cli;
```

2. Execute the following to test the JFrog CLI and check the version.

``
jfrog --version
``

3. Set the following environment variables. Substitute your JFrog Platform credentials (username and API key).

``
export jfrog_user=<username/email>
``

``
export jfrog_apikey=<api key>
``

4. Next, we will configure the JFrog CLI to use our JFrog Platform credentials (username and API key). Execute the following command. 

``
jfrog rt config --user $jfrog_user --apikey $jfrog_apikey
``

5. When prompted, enter a unique _Artifactory server ID_ such as your JFrog Platform server name. Remember this ID.
6. Enter the URL for the JFrog Artifactory server which has the _artifactory_ path.
7. Then accept the remaining default values. If you make a mistake, you can rerun the command again.

![JFrog CLI Config](/images/jfrog-cli-config.png)

8. And let's set an environment variable for our _Artifactory server ID_.

``
export jfrog_server_id=<server ID>
``

9. Execute the following to list your Artifactory servers that are configured in the JFrog CLI.

``
jfrog rt config show
``

10. Execute the following command to check connectivity to the server. You should get an _OK_ response.

``
jfrog rt ping
``
