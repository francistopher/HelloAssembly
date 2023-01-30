# Hello Sillicon Assembly

Getting better at Assembly
<br>To appreciate what C offers I must understand Assembly

# Execution
```
as -arch arm64 -o hello.o hello.s
ld -o hello hello.o -lSystem -syslibroot `xcrun -sdk macosx --show-sdk-path` -e _start -arch arm64 
./hello
```
