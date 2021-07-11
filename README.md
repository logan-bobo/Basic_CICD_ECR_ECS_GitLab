# Basic_CICD_ERC_ECS_GitLab
A CICD process for a python-flask application using Docekr,GitLab, AWS-ECR and AWS-ECS

![CI](https://user-images.githubusercontent.com/51960546/125192320-28c8d700-e23f-11eb-86aa-957717461e6f.png)

We will create a system in which when a developer commits code to SCM, a container image will be build of the python application. This image, if the build is successful will be pushed to Amazon Elastic Container Registry. When we have this image in AWS ECR we will then deploy the image to be ran on Amazon Elastic Container Service. 

Tooling used :- 
- AWS ECR (Container registry)
- AWS ECS (Coitainer orchestration)
- GitHub - SCM
- GitLab - CI/CD
