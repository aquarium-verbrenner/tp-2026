FROM redocly/cli AS build
WORKDIR /src
COPY src/openAPI.yaml .
RUN redocly build-docs openAPI.yaml --output=index.html

FROM nginx
COPY --from=build src/index.html /usr/share/nginx/html 