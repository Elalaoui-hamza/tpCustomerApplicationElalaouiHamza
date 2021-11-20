#!/bin/sh
mvn clean package && docker build -t ma.emsi/tpCustomerApplicationElalaouiHamza .
docker rm -f tpCustomerApplicationElalaouiHamza || true && docker run -d -p 9080:9080 -p 9443:9443 --name tpCustomerApplicationElalaouiHamza ma.emsi/tpCustomerApplicationElalaouiHamza