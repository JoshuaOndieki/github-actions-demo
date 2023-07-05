#!/bin/bash

npx parcel serve -p 8181 &
server_pid=$!

cypress run

exit_code=$?

kill $server_pid

exit $exit_code
