This example shows a problem using yaml multiline in debos

Without passing any variable, it works.
```
$ ./debos.sh example.yaml
```

When we use multiline it fails
```
$ ./debos.sh -t multiline:"true" example.yaml
2020/08/20 02:08:26 Action add string failed at stage Verify, error: yaml: line 11: could not find expected ':'
```
