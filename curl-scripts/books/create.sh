curl --include --request POST "http://localhost:4741/books" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "book" : {
      "title" : "'"${TITLE}"'",
      "author" : "'"${AUTHOR}"'",
      "rating" : "'"${RATING}"'"
    }
  }'
