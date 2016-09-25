# rtrules-storage

Datos necesarios para la creacion de la bd de MongoDB, ElasticSearch y Kibana para el proyecto fin de master del Experto en Big Data de la U-Tad Curso 2015-2016.

Para la correcta puesta en marcha de los casos de prueba del proyecto RTRules, será necesario tener en local los siguientes componentes con la siguiente informacion:

## MongoDB

Será necesario tener una instancia de mongoDB corriendo en la IP 192.168.33.1:27017

Esta instancia tendrá que tener la base de datos `rtrules_db` con las siguientes colecciones:
* connectors
* fieldtypes
* topics
* user_rules

En la ruta mongodb-docs de este repositorio existen varios documentos JSON de prueba que se pueden insertar probar ver la funcionalidad de la web y del api


## ElasticSearch y Kibana

Para el almacenamiento de los resultados del procesamiento streaming, será necesario que exista una instancia de Elasticsearch en la IP 192.168.33.1:9200 y otra de kibana en la IP 192.168.33.1:5601

En elasticsearch deberemos crear los indices y los mapeso con el contenido del fichero `elastic-search-indices.sh`. Estos indices son los correspondientes a cada topic de prueba

Para kibana, habrá que importar los indices creados en Elasticsearch y despues importar los objetos contenidos en `kibana-rtrules-objects.json`. Ésto nos creará las visualizaciones para cada topic de los casos de prueba.

