--CREAR INDICE
curl -XPUT 'http://localhost:9200/topic-wordapp/' -d '{"settings" : {"index" : {"number_of_shards" : 5, "number_of_replicas" : 1 } }}'
curl -XPUT 'http://localhost:9200/topic-wordcountapp/' -d '{"settings" : {"index" : {"number_of_shards" : 5, "number_of_replicas" : 1 } }}'
curl -XPUT 'http://localhost:9200/topic-meetuprsvp/' -d '{"settings" : {"index" : {"number_of_shards" : 5, "number_of_replicas" : 1 } }}'


--PONER MAPPING
--rule name y result, string not_analyzed
curl -XPUT 'http://localhost:9200/topic-wordapp/_mapping/{rule_name}' -d '{"properties": { "rule_name": { "type": "string", "index": "not_analyzed" }}}'
curl -XPUT 'http://localhost:9200/topic-wordapp/_mapping/{rule_name}' -d '{"properties": { "time": { "type": "date" }}}'
curl -XPUT 'http://localhost:9200/topic-wordapp/_mapping/{rule_name}' -d '{"properties": { "result": {"type": "string", "index": "not_analyzed"}}}'

curl -XPUT 'http://localhost:9200/topic-wordcountapp/_mapping/{rule_name}' -d '{"properties": { "rule_name": { "type": "string", "index": "not_analyzed" }}}'
curl -XPUT 'http://localhost:9200/topic-wordcountapp/_mapping/{rule_name}' -d '{"properties": { "time": { "type": "date" }}}'
curl -XPUT 'http://localhost:9200/topic-wordcountapp/_mapping/{rule_name}' -d '{"properties": { "result": {"type": "string", "index": "not_analyzed"}}}'


curl -XPUT 'http://localhost:9200/topic-meetuprsvp/_mapping/{rule_name}' -d '{"properties": { "rule_name": { "type": "string", "index": "not_analyzed" }}}'
curl -XPUT 'http://localhost:9200/topic-meetuprsvp/_mapping/{rule_name}' -d '{"properties": { "time": { "type": "date" }}}'
curl -XPUT 'http://localhost:9200/topic-meetuprsvp/_mapping/{rule_name}' -d '{"properties": { "result": {"type": "string", "index": "not_analyzed"}}}'