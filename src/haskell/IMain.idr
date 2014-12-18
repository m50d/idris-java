module Main

%include C "hmain.h"
%link C "HMain.o"
%link C "IRTS/CodegenJava.o"
%link C "IRTS/Java/ASTBuilding.o"
%link C "IRTS/Java/JTypes.o"
%link C "IRTS/Java/Mangling.o"
%link C "IRTS/Java/Pom.o"

hs_init : IO ()
hs_init = mkForeign (FFun "hs_init" [FInt] FUnit) 0

main : IO ()
main = do x <- hs_init
          putStrLn "herp"
