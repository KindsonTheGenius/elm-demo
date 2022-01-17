module Main exposing (main)

import String exposing (fromInt, toInt)
import Browser
import Html exposing (div, text, input, button)

import Html.Events exposing (onClick, onInput)

import Debug exposing (log)

type Messages = 
    Add
    | TextChanged String

add a b = a + b

parseInput text =
    let
        theMaybe = toInt text
    in
    case theMaybe of
        Just val ->
            val
        Nothing ->
            0

init = {
          firstname="Kindson"
        , lastname="Munonye"
        , score=100
    }


view model = 
    div [] [
        text ( model.firstname),
        div [] [],
        input [onInput TextChanged] [],
        button [onClick Add] [text "Add"]
    ]

update msg model = 
    let
        logmessage = log "here" "Button Clicked"
        logmessage2 = log "model" model
    in
    case msg of
        Add -> 
            {model | score=99}
        TextChanged newText ->
            let
                log3 = log "New Text" newText
            in
                {model | score = parseInput newText}

main = 
    Browser.sandbox
        {
            init = init,
            view = view,
            update = update
        }
