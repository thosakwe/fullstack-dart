FROM google/dart-runtime:2.0-dev

RUN pub run webdev:webdev build -o build
