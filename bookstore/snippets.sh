curl -X POST https://bookstore-dido-relaxed-impala.cfapps.sap.hana.ondemand.com/odata/v4/OrdersService/Orders \
-H "Content-Type: application/json" \
-d '{ "currency_code": "USD", "items": [ { "book_ID": "b7bca6dd-0497-465e-9a5a-56f244174c8c", "amount": 1000 } ] }' 



cds deploy --to hana:bookstore-hana-dido
cf push bookstore-dido-db --no-manifest -p ./db/
cf push --no-manifest -p srv/target/bookstore-1.0-SNAPSHOT.jar