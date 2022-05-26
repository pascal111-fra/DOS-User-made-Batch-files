tasm -zi -l -c ..\myprog\%1.asm
md ..\myprog\%1
copy %1.* ..\myprog\%1
del %1.*
copy ..\myprog\%1.* ..\myprog\%1
del ..\myprog\%1.*
copy ..\myprog\%1\%1.asm ..\myprog
copy return2.bat ..\myprog\%1
tlink -v ..\myprog\%1\%1.obj
