#!/bin/sh

THIS_FILE_PATH=$(
  cd $(dirname $0)
  pwd
)
THIS_FILE_NAME=$(basename $0)

source "$THIS_FILE_PATH/index.sh"
source "$THIS_FILE_PATH/sh-lib-time-cost.sh"


recordTime "var.curd.cost"
echo "var is str"
# style 01:ok
#var_has "a"
#var_set "a" "255.0.0.0"
#var_get "a"
#var_del "a"

# style 02:ok
[ $(var_has "a") = "false" ] && var_set "a" "255.0.0.0"
[ $(var_has "a") = "true" ] && var_get "a"
[ $(var_has "a") = "true" ] && var_del "a"

echo "var is num"
# style 02:ok
[ $(var_has "a") = "false" ] && var_set "a" "1"
[ $(var_has "a") = "true" ] && var_get "a"
[ $(var_has "a") = "true" ] && var_del "a"

echo "var is arr"
var_has "a"
var_set "a" "(255 0 0 0)"
var_get "{a[@]}"
var_get "{#a[@]}"
var_get "{a[1]}"
var_del "a"

caculateTime "var.curd.cost"

## file-usage
# ./src/test.sh
