FROM google/dart

WORKDIR /app

ADD ./dist/pubspec.* /app/

RUN pub get

ADD ./dist /app/

RUN pub get --offline

ENTRYPOINT ["/usr/bin/dart","/app/lib/2server.dart"]

EXPOSE 8080