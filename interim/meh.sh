#!/bin/bash

echo 'curl -u "ffa1aa61-1cfd-4cd1-ad6c-3b5186ed601e":"Pd0HfKWfyWlj" -X POST --limit-rate 40000 --header "Content-Type: audio/wav" --header "Transfer-Encoding: chunked" --data-binary @$1 "https://stream.watsonplatform.net/speech-to-text/api/v1/recognize?continuous=true&timestamps=true&max_alternatives=1&word_confidence=false" > $1.output &'

curl -u "ffa1aa61-1cfd-4cd1-ad6c-3b5186ed601e":"Pd0HfKWfyWlj" -X POST --limit-rate 40000 --header "Content-Type: audio/wav" --header "Transfer-Encoding: chunked" --data-binary @$1 "https://stream.watsonplatform.net/speech-to-text/api/v1/recognize?continuous=true&timestamps=true&max_alternatives=1&word_confidence=false" > $1.output &
