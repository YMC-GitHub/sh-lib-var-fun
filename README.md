# sh lib var-fun

## desc

some function for handle var for ymc shell lib

## apis

- [x] var_has
- [x] var_set
- [x] var_get
- [x] var_del

## feats

- [x] basic `curd` var

```sh
cat src/index.sh | grep "function " | sed "s/function */- [x] /g"  | sed "s/() *{//g"
```

## how to use for poduction?

```sh
# get the code

# run the index file
# ./src/index.sh

# or import to your sh file
# source /path/to/the/index file

# simple usage
var_has "ymc"
var_set "ymc"
var_del "ymc"
```

## how to use for developer?

```sh
# get the code

# run test
./src/test.sh
#2 get some fail test
#./test.sh | grep "it is false"
```

## author

yemiancheng <ymc.github@gmail.com>

## license

MIT
