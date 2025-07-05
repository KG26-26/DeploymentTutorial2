FROM openjdk:8

WORKDIR /DeploymentTutorial2

EXPOSE 8080
ADD target/kubernetes.jar kubernetes.jar
ENTRYPOINT ["java","-jar","/kubernetes.jar"]
