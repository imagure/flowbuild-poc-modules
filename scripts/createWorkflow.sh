cat ./blueprint_examples/$1.json | grep -i 'name'

curl --location --request POST 'localhost:3000/workflow/create' \
--header 'Content-Type: application/json' \
--data '@./blueprint_examples/'$1'.json'