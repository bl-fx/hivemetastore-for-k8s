FROM apache/hive:4.0.0-beta-2-SNAPSHOT
LABEL authors="bl-fx"
LABEL company="Neoflex"
ADD https://repo1.maven.org/maven2/com/amazonaws/aws-java-sdk-bundle/1.12.562/aws-java-sdk-bundle-1.12.562.jar /opt/hive/lib/
ADD https://repo1.maven.org/maven2/org/apache/hadoop/hadoop-aws/3.3.6/hadoop-aws-3.3.6.jar /opt/hive/lib/
ADD https://jdbc.postgresql.org/download/postgresql-42.6.0.jar /opt/hive/lib/
ADD https://repo1.maven.org/maven2/org/apache/hadoop/hadoop-common/3.3.6/hadoop-common-3.3.6.jar /opt/hive/lib/
USER root
RUN chmod 644 /opt/hive/lib/aws-java-sdk-bundle-1.12.562.jar /opt/hive/lib/hadoop-aws-3.3.6.jar /opt/hive/lib/postgresql-42.6.0.jar /opt/hive/lib/hadoop-common-3.3.6.jar
USER hive

