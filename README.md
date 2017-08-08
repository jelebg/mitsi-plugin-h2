# Mitsi plugin for H2 databases

## What is this plugin

this plugin can be uses with mitsi in order to provide connection with H2 databases

## Installation

1. Download it in the releases or compile it using :
mvn clean install -DskipTests

2. Copy the .jar generated in the folder target/ inside the plugins/ folder of your Mitsi's intallation. Place the JDBC driver's jar in the same folder.

3. Configure a datasource using your plugin in mitsi-datasources.json. Do not forget to configure the "provider" as "h2"

4. restart mitsi and enjoy.



