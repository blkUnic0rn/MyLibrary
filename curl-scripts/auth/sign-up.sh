#!/bin/bash

curl "http://localhost:4741/sign-up" \
  --include \
  --request POST \
  --data '{
    "credentials": {
      "email": "'"${EMAIL}"'",
      "password": "'"${PASSWORD}"'",
      "password_confirmation": "'"${PASSWORD}"'"
    }
  }'

echo
