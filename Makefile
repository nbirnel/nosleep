PROG = nosleep
CC = "$$PROGRAMFILES/Autohotkey/Compiler/Ahk2Exe.exe"

${PROG}.exe :: ${PROG}.ahk
	${CC} /in $< 

dist :: ${PROG}.exe
	cd .. && zip -r ${PROG}.zip ${PROG}/$<

push ::
	scp ${PROG}.zip noah@www.birnel.org:~/birnel.org/birnel.org/~noah/software/${PROG}/
