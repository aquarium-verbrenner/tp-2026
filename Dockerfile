FROM redocly/cli
WORKDIR /src
COPY src/openAPI.yaml ./src
RUN redocly/cli lint /src/openapi.yaml