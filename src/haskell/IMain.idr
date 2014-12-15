hs_init : IO ()
hs_init = mkForeign (FFun "hs_init" [FInt] FUnit) 0
