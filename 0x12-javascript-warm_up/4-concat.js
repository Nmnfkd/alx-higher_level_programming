#!/usr/bin/node

function printArguments(arg1, arg2) {
  console.log(arg1 + " is " + arg2);
}

printArguments("c", "cool");
printArguments("c", undefined);
printArguments(undefined, undefined);
