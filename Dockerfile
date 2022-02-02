FROM adoptopenjdk/openjdk11

COPY . app/

WORKDIR app

RUN ./gradlew clean bootJar

ENTRYPOINT ["java", "-jar", "-Duser.timezone=Asia/Seoul", "build/libs/spring_example-0.0.1-SNAPSHOT.jar"]