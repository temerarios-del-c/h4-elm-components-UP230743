module Helper exposing (..)

import Html
import Html.Attributes



-- Puedes usar una definición como la siguiente para probar y visualizar tus resultados, solo debes definir "headers" y "hyperlink"
--main : Html.Html msg
--main =
--    Html.div [] [ headers "Titulos", hyperlink "https://upa.edu.mx" "My School" ]
--Ejercicio 1 (joinWords)


joinWords : String -> String -> String
joinWords word1 word2 =
    word1 ++ word2



--Ejercicio 2 (upperChar)


isUpperChars : List Char -> List Bool
isUpperChars list =
    List.map Char.isUpper list



--Ejercicio 3 (evalChar)


evalChars : List Char -> (Char -> Bool) -> List Bool
evalChars list funTrans =
    List.map funTrans list



--EJERCICIOS DE HTML
--Ejercicio 1 (Headers)


headers : String -> Html.Html msg
headers param =
    Html.div [] [ Html.h1 [] [ Html.text param ], Html.h2 [] [ Html.text param ], Html.h3 [] [ Html.text param ], Html.h4 [] [ Html.text param ], Html.h5 [] [ Html.text param ], Html.h6 [] [ Html.text param ] ]



--Ejercicio 2 (hyperlink)


hyperlink : String -> String -> Html.Html msg
hyperlink url textoVisible =
    Html.a [ Html.Attributes.href url ] [ Html.text textoVisible ]
