---
title: "Self-paced: Create an AWS account"
chapter: false
weight: 413
pre: "<b>4.1.3 </b>"
---

{{% notice warning %}}
Only complete this section if you are running the workshop on your own. If you are at an AWS hosted event, go to [Start the workshop at an AWS event](212_aws_event_account.html).
Your account must have the ability to create new IAM roles and scope other IAM permissions.
{{% /notice %}}

1. If you don't already have an AWS account with Administrator access, create
one now by going to [AWS Getting Started](https://aws.amazon.com/getting-started/).

1. Once you have an AWS account, ensure you are using an IAM user with **Administrator Access** to the AWS account. Go to [AWS IAM](https://console.aws.amazon.com/iam/home?#/users$new) to create a new user.

1. Enter the user details.
![Create User](/images/iam-1-create-user.png)

1. Attach the **AdministratorAccess** IAM Policy.
![Attach Policy](/images/iam-2-attach-policy.png)

1. Click **Create user**.
![Confirm User](/images/iam-3-create-user.png)

1. Copy and save the sign-in URL.
![Login URL](/images/iam-4-save-url.png)

