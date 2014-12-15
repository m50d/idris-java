module Main

%include C "hmain.h"

hs_init : IO ()
hs_init = mkForeign (FFun "hs_init" [FInt] FUnit) 0

main : IO ()
main = do x <- hs_init
          putStrLn "herp"
