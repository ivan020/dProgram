# the D-program
A bash function to go up a directory:
```bash
d 2
```
is equivalent to `cd ../..`. `d ` to go to the home directory.

## Making a valid program
make executable progarm
```bash
chmod +x ./dProg.sh
```
then add to the rc-file, like so:
```bash
d() { . ~/scripts/dProg.sh "$@"; }
```

