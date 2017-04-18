import Html.Attributes exposing (..)
import Html.Events exposing (onClick)
import Html exposing (text, h1, div, input, button, label)
import Http 
import Svg exposing (..)

main =
  Html.program
    { init = init
    , view = view
    , update = update
    , subscriptions = subscriptions
    }


-- Model

type alias Model =
  { username : String
  , password : String
  , login : String
  , logout : String
  }

model : Model
model = 
  { username = ""
  , password = ""
  , login = ""
  , logout = ""
  }

init : ( Model, Cmd Msg)
init = 
  ( model, Cmd.none)

-- Update
 
type Msg
    = Username  String
    | Password  String
    | Login  String
    | Logout String




update msg model =
  case msg of
    loginPage ->
      ( model, Cmd.none)
    
    messagePage ->
      ( model, Cmd.none)
    

    
-- View
view : Model -> Html Msg
view model =
 div
     form [ id "login-form" ] 
       [ h1 [] [ Html.text "Login Form" ]
       , label [ for "username-filed" ] [ Html.text "username" ]
       , input [ id "username-filed"
               , type_ "text"
               , value model.username 
               ] 
               []
       , label [ for "passwortd-field"] [ Html.text "password: " ]
       , input [ id "password-field"
               , type_ "password"
               , value model.password 
               ]
               []
        , button [ onClick Login ] [ Html.text "Login" ]
        , button [ onClick Logout ] [ Html.text "Logout" ]
       ]


-- Subscriptions

subscriptions : Model -> Sub Msg
subscriptions model =
 Sub.none