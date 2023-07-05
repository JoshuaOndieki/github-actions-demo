#!/bin/bash

npx parcel serve -p 8181 &
server_pid=$!

cypress run --exit-code-from cypress --env passed=true

kill $server_pid

exit $?