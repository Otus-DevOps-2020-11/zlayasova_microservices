USERNAME=zlayasova
TAG_VERSION=latest

#Docker login

docker-login::
    docker login -u $(USERNAME)

#Docker build

build:: build-ui build-comment build-post build-prometheus build-mongodb-exporter build-blackbox-exporter

build-ui::
    cd src/ui && \
    USER_NAME=$(USERNAME) bash docker_build.sh
build-comment::
    cd src/comment && \
    USER_NAME=$(USERNAME) bash docker_build.sh
build-post::
    cd src/post-py && \
    USER_NAME=$(USERNAME) bash docker_build.sh
build-prometheus::
    cd monitoring/prometheus && \
    docker build -t $(USERNAME)/prometheus:$(TAG_VERSION) .
build-mongodb-exporter::
    cd monitoring/mongodb && \
    docker build -t $(USERNAME)/mongodb_exporter:$(TAG_VERSION) .
build-blackbox-exporter::
    cd monitoring/blackbox && \
    docker build -t $(USERNAME)/blackbox-exporter:$(TAG_VERSION) .

#Docker push

push:: push-ui push-comment push-post push-prometheus push-mongodb-exporter push-blackbox-exporter

push-ui:: build-ui docker-login
    docker push $(USERNAME)/ui:$(TAG_VERSION)
push-comment:: build-comment docker-login
    docker push $(USERNAME)/comment:$(TAG_VERSION)
push-post:: build-post docker-login
    docker push $(USERNAME)/post:$(TAG_VERSION)
push-prometheus:: build-prometheus docker-login
    docker push $(USERNAME)/prometheus:$(TAG_VERSION)
push-mongodb-exporter:: build-mongodb-exporter docker-login
    docker push $(USERNAME)/mongodb_exporter:$(TAG_VERSION)
push-blackbox-exporter:: build-blackbox-exporter docker-login
    docker push $(USERNAME)/blackbox_exporter:$(TAG_VERSION)
