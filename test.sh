#!/bin/bash

npx parcel serve -p 8181 &
server_pid=$!

cypress run --exit-code-from cypress --env passed=true

exit_code=$?

kill $server_pid

# if [ $exit_code -eq 0 ]; then
#     echo "Passed -> $exit_code"
# else
#     echo $exit_code
#     echo "The exit code is: $exit_code-> Failed"
# fi

exit $exit_code