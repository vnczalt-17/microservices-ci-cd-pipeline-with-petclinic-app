# build-dev-docker-images.sh
./mvnw clean package
docker build --force-rm -t "petclinic-admin-server:dev" ./spring-petclinic-admin-server
docker build --force-rm -t "petclinic-api-gateway:dev" ./spring-petclinic-api-gateway
docker build --force-rm -t "petclinic-config-server:dev" ./spring-petclinic-config-server
docker build --force-rm -t "petclinic-customer-server:dev" ./spring-petclinic-customer-server
docker build --force-rm -t "petclinic-discovery-server:dev" ./spring-petclinic-discovery-server
docker build --force-rm -t "petclinic-hystrix-dashboard:dev" ./spring-petclinic-hystrix-dashboard
docker build --force-rm -t "petclinic-vets-server:dev" ./spring-petclinic-vets-server
docker build --force-rm -t "petclinic-visits-server:dev" ./spring-petclinic-visits-server
docker build --force-rm -t "petclinic-prometheus-server:dev" ./docker/prometheus
docker build --force-rm -t "petclinic-grafana-server:dev" ./docker/grafana