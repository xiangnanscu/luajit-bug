# luajit-bug
a minimal repo that shows bug

# how to test
just paste this snippet in the bash
```sh
for ((i=1; i<=500; i++)); do resty test.lua; done
```
you will get output like
```
root@DESKTOP-S3UK088:~/rsks# for ((i=1; i<=50; i++)); do resty test.lua; done
you shouldn't see this via index -1
-1 index happends:26
you shouldn't see this via index -1
-1 index happends:6
you shouldn't see this via index -1
-1 index happends:77
```
