## AWS ECS and Docker Compose with JFrog Workshop

The goal of DevOps is to allow your development teams to deliver quality software faster to your customers through continuous process improvement, leveraging the best of breed development tools and infrastructure, and utilizing software development and IT operations best practices. Your team must deliver software faster than your competitors in order to get features and fixes to your customers sooner.

> Looking forward, as release cycles get shorter and microservices get smaller, we can imagine a world in which at any one time, our systems’ software is being updated. Effectively, software will become liquid in that products and services will be connected to “software pipes” that constantly stream updates into our systems and devices; liquid software continuously and automatically updating our systems with no human intervention.

A critical aspect of DevOps is infrastructure. Cloud computing infrastructure has allowed DevOps to advance and come closer to realizing liquid software. Cloud computing has allowed development teams to build these software pipes by:

- Using ephemeral cloud infrastructure to scale their development process and software delivery at levels not achievable with on-premise infrastructure.
- Providing applications on a global scale with real-time response and resiliency.
- Leveraging new cloud services in their application and software development processes to improve the quality, security and delivery of their applications.
- Allowing multi-discipline teams to collaborate in the cloud across the software lifecycle to ensure quality, security, velocity and scale of applications.

This workshop walks you through a typical build, docker build and push, security scan, promotion process and docker compose deployment using Artifactory and Xray on AWS cloud infrastructure using Amazon ECS.
## Building this Workshop with [Hugo](https://gohugo.io/)

### Hugo Theme Installation
The Hugo Learn Theme is referenced by [git submodule](.gitmodules). To download it, run the following commands:

```

$ git submodule update --init --recursive

$ git submodule update --remote --merge

```

### Hugo Installation

On Mac, use brew to install the Hugo server.

```
$ brew install hugo
```

### Start the Hugo Server for Local Development
Start the Hugo server to view your website. This will render in memory.

```
hugo server
```

### Generate Your Content to Disk
To render your pages to disk (for publishing), you can run your server with the following flag:

```
hugo server --renderToDisk
```

or use the hugo command to perform a one-time generation.

```
hugo
```

## Security

See [CONTRIBUTING](CONTRIBUTING.md#security-issue-notifications) for more information.

## License

This library is licensed under the MIT-0 License. See the LICENSE file.

