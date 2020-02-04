curl --include --request POST "http://localhost:4741/favorites" \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "favorite" : {
      "user_id" : "'"${USERID}"'",
      "book_id" : "'"${BOOKID}"'"
    }
  }'
