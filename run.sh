echo as -arch arm64 -o hello.o hello.s
echo ld -o hello hello.o -lSystem -syslibroot `xcrun -sdk macosx --show-sdk-path` -e _start -arch arm64 

