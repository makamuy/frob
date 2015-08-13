
module Main where

import Ast
import Bytecode
import CodeGenerator

program :: WillieAST
program = E_Root [
            E_Fun "INPUT_DISTANCE" [] (E_Value 1),
            E_Fun "INPUT_COLOR_LEFT" [] (E_Value 2),
            E_Fun "INPUT_COLOR_RIGHT" [] (E_Value 3),
            E_Fun "OUTPUT_ENGINE_LEFT" [] (E_Value 1),
            E_Fun "OUTPUT_ENGINE_RIGHT" [] (E_Value 2),
            E_Fun "MIN_DISTANCE" [] (E_Value 100),
            E_Fun "MIN_GREY" [] ( E_Value 50 )
            E_Fun "hay_casa" ["d"]
            (
              E_If
                (E_BinExpr E_LT (E_Var "d") (E_Var "MIN_DISTANCE"))
                (E_Value 1)
                (E_Value 0)
            ),
            E_Fun "distinto" ["a", "b"]
            (
              E_If
                (E_BinExpr E_Neq (E_Var "a") (E_Var "b"))
                (E_Value 1)
                (E_Value 0)
            ),
            E_Fun "velocidad_casa" ["num"]
            (
              E_If
                (E_BinExpr E_GTe (E_Var "num") (E_Value 5))
                (E_Value 0)
                (E_Value 100)
            ),
            E_Fun "and" ["a", "b"]
            (
              E_If
                (E_BinExpr E_And (E_Var "a") (E_Var "b"))
                (E_Value 1)
                (E_Value 0)
            ),
            E_Fun "suma" ["a", "b"]
            (
              E_BinExpr E_Add (E_Var "a") (E_Var "b")
            ),
            E_Fun "multiplicar" ["a", "b"]
            (
              E_BinExpr E_Mul (E_Var "a") (E_Var "b")
            ),
            E_Fun "color_a_vel" ["gris"]
            (
              E_If
                (E_BinExpr E_GT (E_Var "gris") (E_Var "MIN_GREY"))
                (E_Value 10)
                (E_Value 5)
            )]
            [
              E_Read "distance" (E_Call (E_Var "INPUT_DISTANCE") []),
              E_Read "color_izq" (E_Call (E_Var "INPUT_COLOR_LEFT") []),
              E_Read "color_der" (E_Call (E_Var "INPUT_COLOR_RIGHT") []),

              E_Lift "viendo_casa" "distance" "hay_casa",
              E_Folds "cambio" "viendo_casa" "distinto" (E_Value 0),
              E_Lift2 "nueva_casa" "viendo_casa" "cambio" "and",
              E_Folds "cuenta" "nueva_casa" "suma" (E_Value 0),
              E_Lift "velocidad" "cuenta" "velocidad_casa",
              
              E_Lift "multip_izq" "color_izq" "color_a_vel",
              E_Lift "multip_der" "color_der" "color_a_vel",

              E_Lift2 "speed_left" "velocidad" "multip_izq" "multiplicar",
              E_Lift2 "speed_right" "velocidad" "multip_der" "multiplicar",

              E_Output "speed_left" (E_Call "OUTPUT_ENGINE_LEFT" []),
              E_Output "speed_right" (E_Call "OUTPUT_ENGINE_RIGHT" [])
            ]

main = do
  putStrLn "Alf? Willie? Alf? Willie? Alf! Willie!"
  putStrLn $ show program
  putStrLn "Compilando... Alf? Willie!"
  putStrLn "-----------------------------"
  mapM_ (putStrLn . show) (gen_bc program)
  putStrLn "-----------------------------"