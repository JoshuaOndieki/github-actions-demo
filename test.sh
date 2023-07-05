#!/bin/bash

npx parcel serve -p 8181 &
server_pid=$!

cypress run

kill $server_pid

exit $?