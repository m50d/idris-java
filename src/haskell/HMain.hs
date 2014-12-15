module HMain where

import Idris.Core.TT
import Idris.AbsSyntax
import Idris.ElabDecls
import Idris.REPL

import IRTS.Compiler
import IRTS.CodegenJava

import System.Environment
import System.Exit

--import Foreign.C.Types

data Opts = Opts { inputs :: [FilePath],
                   output :: FilePath }

showUsage :: IO ()
showUsage = do putStrLn "Usage: idris-java <ibc-files> [-o <output-file>]"
               exitWith ExitSuccess

getOpts :: IO Opts
getOpts = do xs <- getArgs
             return $ process (Opts [] "a.out") xs
  where
    process opts ("-o":o:xs) = process (opts { output = o }) xs
    process opts (x:xs) = process (opts { inputs = x:inputs opts }) xs
    process opts [] = opts

java_main :: Opts -> Idris ()
java_main opts = do elabPrims
                    loadInputs (inputs opts) Nothing
                    mainProg <- elabMain
                    ir <- compile (Via "java") (output opts) mainProg
                    runIO $ codegenJava ir

hmain :: IO ([FilePath])
hmain = do opts <- getOpts
           inputs opts

--          if (null (inputs opts)) 
--             then showUsage
--             else runMain (java_main opts)

--foreign export ccall hmain :: IO ()

