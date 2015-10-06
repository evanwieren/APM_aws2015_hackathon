#!/bin/bash

foo=$1

echo $foo

#curl -X POST -u "ffa1aa61-1cfd-4cd1-ad6c-3b5186ed601e":"Pd0HfKWfyWlj" "https://stream.watsonplatform.net/speech-to-text/api/v1/sessions"

curl -u "ffa1aa61-1cfd-4cd1-ad6c-3b5186ed601e":"Pd0HfKWfyWlj" "https://stream.watsonplatform.net/speech-to-text/api/v1/sessions"


#curl -u "ffa1aa61-1cfd-4cd1-ad6c-3b5186ed601e":"Pd0HfKWfyWlj" "https://stream.watsonplatform.net/speech-to-text/api/v1/models"
echo

curl -X POST -u "ffa1aa61-1cfd-4cd1-ad6c-3b5186ed601e":"Pd0HfKWfyWlj" "https://stream.watsonplatform.net/speech-to-text/api/v1/sessions"
curl -u "ffa1aa61-1cfd-4cd1-ad6c-3b5186ed601e":"Pd0HfKWfyWlj" "https://stream.watsonplatform.net/speech-to-text/api/v1"
echo
