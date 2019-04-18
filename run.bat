helm install --name apollo --namespace kr-infra ./ ^
             --set devconfigservicemysql.enabled=true ^
             --set devconfigservice.enabled=true ^
             --set devconfigservice.extraEnv."eureka.instance.hostname"="apollo-devconfigservice" ^
             --set devconfigservice.extraEnv."eureka.instance.preferIpAddress"="false" ^
             --set devadminservice.enabled=true ^
             --set devadminservice.extraEnv."eureka.instance.hostname"="apollo-devadminservice" ^
             --set devadminservice.extraEnv."eureka.instance.preferIpAddress"="false" ^
             ^
             --set fatconfigservicemysql.enabled=false ^
             --set fatconfigservice.enabled=false ^
             --set fatconfigservice.extraEnv."eureka.instance.hostname"="apollo-fatconfigservice" ^
             --set fatconfigservice.extraEnv."eureka.instance.preferIpAddress"="false" ^
             --set fatadminservice.enabled=false ^
             --set fatadminservice.extraEnv."eureka.instance.hostname"="apollo-fatadminservice" ^
             --set fatadminservice.extraEnv."eureka.instance.preferIpAddress"="false" ^
             ^
             --set uatconfigservicemysql.enabled=false ^
             --set uatconfigservice.enabled=false ^
             --set uatconfigservice.extraEnv."eureka.instance.hostname"="apollo-uatconfigservice" ^
             --set uatconfigservice.extraEnv."eureka.instance.preferIpAddress"="false" ^
             --set uatadminservice.enabled=false ^
             --set uatadminservice.extraEnv."eureka.instance.hostname"="apollo-uatadminservice" ^
             --set uatadminservice.extraEnv."eureka.instance.preferIpAddress"="false" ^
             ^
             --set proconfigservicemysql.enabled=false ^
             --set proconfigservice.enabled=false ^
             --set proconfigservice.extraEnv."eureka.instance.hostname"="apollo-proconfigservice" ^
             --set proconfigservice.extraEnv."eureka.instance.preferIpAddress"="false" ^
             --set proadminservice.enabled=false ^
             --set proadminservice.extraEnv."eureka.instance.hostname"="apollo-proadminservice" ^
             --set proadminservice.extraEnv."eureka.instance.preferIpAddress"="false" ^
            ^
            --set portal.ingress.enabled=true ^
            --set portal.ingress.hosts={apollo-portal.k8s-dev.com}


@REM Set local storage
@REM            --set portalmysql.persistence.storageClass="local-storage" ^
@REM            --set devconfigservicemysql.persistence.storageClass="local-storage" ^
@REM            --set uatconfigservicemysql.persistence.storageClass="local-storage" ^
@REM            --set fatconfigservicemysql.persistence.storageClass="local-storage" ^
@REM            --set proconfigservicemysql.persistence.storageClass="local-storage"

@REM For debug
@REM            --set configservice.extraEnv."logging\.level\.root"=debug
