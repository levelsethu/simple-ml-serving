#!/bin/bash
# tests that launching a single classifier worker works and we are able to POST to it

cd "$HOME"

bash tf_classify_server.sh &
echo 'started server ; sleeping 5'
sleep 5
curl -v -XPOST localhost:12480 -F"data=@$HOME/flower_photos/daisy/21652746_cc379e0eea_m.jpg"
