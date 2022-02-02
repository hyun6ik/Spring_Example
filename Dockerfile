FROM adoptopenjdk/openjdk11

COPY . app/

WORKDIR app

RUN chmod +x gradlew || ./gradlew build

ENTRYPOINT ["java", "-jar", "-Duser.timezone=Asia/Seoul", "build/libs/spring_example-0.0.1-SNAPSHOT.jar"]