all: idris-java

#idris-java: HMain.hs IMain.o
#	ghc -no-hs-main $^ -o $@

idris-java: IMain.idr IRTS/Java/ASTBuilding.o IRTS/CodegenJava.o HMain.o IRTS/Java/JTypes.o IRTS/Java/Mangling.o IRTS/Java/Pom.o
	idris $^ -o $@

%.hi: %.o
	true

%.o: %.hs
	ghc -c $< -o $@

clean:
	-rm -f *.o *.hi *.ibc *_stub.h

#generated with ghc -M - should be part of the build really
# DO NOT DELETE: Beginning of Haskell dependencies
IRTS/Java/Pom.o : IRTS/Java/Pom.hs
IRTS/Java/Mangling.o : IRTS/Java/Mangling.hs
IRTS/Java/JTypes.o : IRTS/Java/JTypes.hs
IRTS/Java/ASTBuilding.o : IRTS/Java/ASTBuilding.hs
IRTS/Java/ASTBuilding.o : IRTS/Java/JTypes.hi
IRTS/CodegenJava.o : IRTS/CodegenJava.hs
IRTS/CodegenJava.o : IRTS/Java/Pom.hi
IRTS/CodegenJava.o : IRTS/Java/Mangling.hi
IRTS/CodegenJava.o : IRTS/Java/JTypes.hi
IRTS/CodegenJava.o : IRTS/Java/ASTBuilding.hi
HMain.o : HMain.hs
HMain.o : IRTS/CodegenJava.hi
# DO NOT DELETE: End of Haskell dependencies
