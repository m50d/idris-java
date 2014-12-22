all: idris-java

#idris-java: HMain.hs IMain.o
#	ghc -no-hs-main $^ -o $@

idris-java: IMain.idr ASTBuilding.o CodegenJava.o HMain.o JTypes.o Mangling.o Pom.o
	idris $^ -o $@

%.o: %.hs
	ghc -c $< -o $@
