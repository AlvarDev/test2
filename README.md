# cloud-build-demo-2
This is a demo

gunicorn -b 0.0.0.0:8080 main:app


curl -X POST \
    http://localhost:8080/echo \
    -H 'Content-Type: application/json' \
    -d '{"name": "AlvarDev"}'