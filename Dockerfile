##########################################################################
FROM alpine:3.8 as install

EXPOSE 3000

RUN apk --no-cache add cmake clang clang-dev make gcc g++ libc-dev linux-headers git

ADD . /service
WORKDIR /service/util
RUN ./install-modules.sh

##########################################################################
FROM install as build

WORKDIR /service/build
RUN cmake ..
RUN make

##########################################################################
FROM build AS final
WORKDIR /service

ARG COMMIT_SHA=<not-specified>
RUN echo "testcpp: $COMMIT_SHA" >> ./commit.sha

COPY --from=build /service/build .

LABEL maintainer="giulio.roggero" \
      name="testcpp" \
      description="testcpp" \
      eu.mia-platform.url="https://www.mia-platform.eu" \
      eu.mia-platform.version="0.1.0" \
      eu.mia-platform.language="c++" \
      eu.mia-platform.framework="uSockets"

CMD ["./mia-platform-cpp-helloworld-exe"]
