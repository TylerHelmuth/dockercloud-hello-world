#!/bin/sh
sleep 30
if curl helloworld | grep -q '<p>This is a website to demonstrate CI with Docker</p>'; then
  echo "UI test passed!"
  exit 0
else
  echo "UI test failed!"
  exit 1
fi
