FROM eu.gcr.io/travix-com/java-run:stable-jdk-11

COPY ./target/${ESTAFETTE_LABEL_APP}-${ESTAFETTE_BUILD_VERSION}.jar /

CMD java ${JAVA_OPTS} -jar /${ESTAFETTE_LABEL_APP}-${ESTAFETTE_BUILD_VERSION}.jar


## local
#FROM alpine:latest
#RUN apk --update add openjdk8-jre
#COPY target/spring-boot-demo-0.0.1-SNAPSHOT.jar app.jar
#ENTRYPOINT ["java", "-jar", "app.jar"]
