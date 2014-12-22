all: idris-java

#idris-java: HMain.hs IMain.o
#	ghc -no-hs-main $^ -o $@

IMain.o: IMain.idr 
	idris -c $< -o $@
