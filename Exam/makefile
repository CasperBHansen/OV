build: backup
	./SRC/compile.sh

ti:
	./BIN/Paladim -ti $(SRC)

c:
	./BIN/Paladim -c $(SRC)

backup:
	cp -r ../Exam ~/Shared

clean: backup
	rm DATA/*.asm
