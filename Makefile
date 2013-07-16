PROG = nosleep
CC = "$$PROGRAMFILES/Autohotkey/Compiler/Ahk2Exe.exe"

${PROG}.exe :: ${PROG}.ahk
	${CC} /in $< 

zip :: ${PROG}.zip

${PROG}.zip :: ${PROG}.exe
	rm $@
	cd .. && zip -r $@ ${PROG}/$< && mv $@ ${PROG}/

push :: ${PROG}.zip
	scp $< noah@www.birnel.org:~/birnel.org/birnel.org/~noah/software/${PROG}/

.PHONY : zip push
