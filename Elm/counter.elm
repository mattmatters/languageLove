import Html exposing (Html, button, div, text)
import Html.Events exposing (onClick)

main : Program Never Model Msg
main =
  Html.beginnerProgram { model = model, view = view, update = update }


-- MODEL

type alias Model = Int

model : Model
model =
  0


-- UPDATE

type Msg = Increment
         | Decrement
         | Square
         | Reset

update : Msg -> Model -> Model
update msg model =
  case msg of
    Increment ->
      model + 1

    Decrement ->
      model - 1

    Square ->
      model * model

    Reset ->
      0


-- VIEW

view : Model -> Html Msg
view model =
  div []
    [ div [] [ text (toString model) ]
    , button [ onClick Decrement ] [ text "-" ]
    , button [ onClick Increment ] [ text "+" ]
    , button [ onClick Square ] [ text "^2" ]
    , button [ onClick Reset ] [ text "Reset" ]
    ]
