all: idris-java

#idris-java: HMain.hs IMain.o
#	ghc -no-hs-main $^ -o $@

idris-java: IMain.idr IRTS/Java/ASTBuilding.o IRTS/CodegenJava.o HMain.o IRTS/Java/JTypes.o IRTS/Java/Mangling.o IRTS/Java/Pom.o
	idris $^ -o $@

%.o: %.hs
	ghc -c $< -o $@

clean:
	-rm -f *.o *.hi *.ibc *_stub.h
