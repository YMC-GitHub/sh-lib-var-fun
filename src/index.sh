#!/bin/sh

THIS_FILE_PATH=$(
  cd $(dirname $0)
  pwd
)
THIS_FILE_NAME=$(basename $0)

# var_add
function var_set (){
  #[ -n "$1" ] && key="$1"
  #[ -n "$2" ] && val="$2"
  sh_code=$(cat <<EOF
$1=$2
#echo "\$$1"
EOF
)
  #echo "$sh_code"
  eval "$sh_code"
}
#
# var_get
function var_get (){
  #[ -n "$1" ] && key="$1"
  #eval "echo \$$key"
  sh_code=$(cat <<EOF
echo "\$$1"
EOF
)
  eval "$sh_code"
}
function var_del (){
  #[ -n "$1" ] && key="$1"
  #eval "echo \$$key"
  sh_code=$(cat <<EOF
unset $1
EOF
)
  eval "$sh_code"
}
function var_has (){
  #[ -n "$1" ] && key="$1"
  #eval "echo \$$key"
  sh_code=$(cat <<EOF
if [ \$$1 ] ; then
    echo "true"
  else
    echo "false"
fi
EOF
)
  eval "$sh_code"
}



## file usage
# src/index.sh
