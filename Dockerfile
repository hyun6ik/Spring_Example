FROM adoptopenjdk/openjdk11

COPY . app/

WORKDIR app

RUN sudo chmod +x ./gradlew || ./gradlew clean bootJar

ENTRYPOINT ["java", "-jar", "-Duser.timezone=Asia/Seoul", "build/libs/spring_example-0.0.1-SNAPSHOT.jar"]