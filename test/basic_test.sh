#!/bin/bash

PASS="PASS"
FAIL="FAILED"

function test_start() {
  k.
  if [ $? -eq 0 ]; then
    echo "-> k. is installed"
  else
    echo "-> k. is not installed. Exiting..."
    exit 1
  fi

  echo "-> Running tests..."
}

function test_done() {
  echo "-> All tests done."
}

function assert_text(){
  if [ "$1" != "$2" ]; then
    echo $FAIL
  else
    echo $PASS
  fi
}

function test() {
  echo "-> $1"
  RESULT=$2
  echo $RESULT
}

test_start

# Assert that calling upon k. will return bye
COMMAND=`k.`
ANSWER="bye"
test "Test 1: Expecting 'k.' to answer 'bye'" `assert_text $COMMAND $ANSWER`

test_done
