@echo off
call mvn clean package
call docker build -t ma.emsi/tpCustomerApplicationElalaouiHamza .
call docker rm -f tpCustomerApplicationElalaouiHamza
call docker run -d -p 9080:9080 -p 9443:9443 --name tpCustomerApplicationElalaouiHamza ma.emsi/tpCustomerApplicationElalaouiHamza