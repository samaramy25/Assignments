
proj=main
CC=$(CC)

run:$(proj).exe
	./$(proj).exe
	@echo *********************Running Done****************
$(proj).i:$(proj).c
	$(CC) $(proj).c -E -o $(proj).i	
	@echo *********************Preprocessing Done****************
$(proj).s:$(proj).i
	$(CC) $(proj).i -S -o $(proj).s
	@echo *********************compilation Done****************
$(proj).o:$(proj).s
	$(CC) $(proj).s -c -o $(proj).o
	@echo *********************assembly Done****************
$(proj).exe:$(proj).o
	$(CC) $(proj).o -o $(proj)
	@echo *********************linking Done****************

clean_all:
	rm $(proj).i $(proj).o $(proj).s $(proj).exe




	
