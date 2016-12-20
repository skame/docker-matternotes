FROM openjdk:8-jdk-alpine

RUN apk add --update --update --no-cache libstdc++ git
RUN git clone https://github.com/ldziedziul/matternotes && cd matternotes && ./gradlew build

CMD ["java", "-jar", "matternotes/build/libs/matternotes-0.0.1-SNAPSHOT.jar", "--spring.config.location=file:/matternotes/src/main/resources/application.properties"]

