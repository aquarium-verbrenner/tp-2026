FROM redocly/cli
WORKDIR /src
COPY src/openAPI.yaml ./src
RUN redocly lint /src/openapi.yaml