module Main exposing (..)

import Browser
import Html exposing (div, text)
import String exposing (fromInt)
import Html.Events. exposing(onClick)

-- Funtion to add two numbers and return the sum
add a b = a + b

init = 
    {value = 56}

view model =
    div [] [
        text (fromInt model.value)
        div [] [],
        input [] [],
        button [onClick message] [text, "Add"]
    ]

update model = 
    model

main = 
    Browser.sandbox
        {
            init = init,
            view = view,
            update = update
        }