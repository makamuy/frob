module Parser where

import UU.Parsing
import UU.Scanner.Token
import UU.Scanner.TokenParser
import UU.Scanner.GenTokenOrd()
import UU.Scanner.GenTokenSymbol()
import UU.Scanner.TokenShow()
import UU.Scanner.Position
import Data.List
import UU.Pretty
import System.Environment
import System.IO
import Data.Char

import Html

-- Parser with starting nonterminal Root
-- Semantic functions generated by UUAG
pRoot :: Parser Token T_Root
pRoot
  = sem_Root_Root <$> pDocs

pDocs :: Parser Token T_Docs
pDocs
  = pFoldr_gr (sem_Docs_Cons, sem_Docs_Nil) pDoc

pDoc :: Parser Token T_Doc
pDoc
  =   sem_Doc_Section   <$ pKey "begin" <*> pString <*> pDocs <* pKey "end"
  <|> sem_Doc_Paragraph <$ pKey "paragraph" <*> pString <* pKey "end"

trim :: String -> String
trim
  = (reverse . trimAtFront . reverse) . trimAtFront
  where trimAtFront = dropWhile isSpace

