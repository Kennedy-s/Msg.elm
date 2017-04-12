module Main exposing (..)

import Html.Attributes exposing (id, for, type_, value, class)
import Html.Events exposing (..)
import Html exposing (..)
import Http 


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
  , message : String
  , reply : String
  , filter : String
  , send  : String
  }

model : Model
model = 
  { username = ""
  , password = ""
  , login = ""
  , logout =  ""
  }

init : ( Model, Cmd Msg)
init = 
  ( model, Cmd.none)

-- Update
 
type Msg
    = Username  String
    | Password  String
    | Login  
    | Logout 
    | Message
    | Reply
    | Filter
    | Send 

type alias User =
   { user1 : User1
   , user2 : user2
   , user3 : user3 
   }

user : Model -> Html Msg
user model =
        { user1 = "1234"
        , user2 = "5678"
        }



update msg model =
  case msg of
    login ->
      ( model, Cmd.none)
    


messagePage : Model -> Html Msg
messagePage model =
    div [ id "message" ]
        [ h1 ] [] [ text "Message" ]
                  [ textarea [ text "type your message/comment" ]
                  , button  [ onClick ( Filter "filter"), value "Filter" ] [ text "filter"]
                  , button  [ onClick ( Reply "delivered"), value "Reply" ] [ text "reply"]
                  , button  [ onClick ( Send "sent"), value "Send" ] [ text "send"]
                  ]
                  []       
           
-- View

view : Model -> Html Msg
view model =
  form [ id "login-form" ] 
       [ h1 [] [ text "Login Form" ]
       , label []
               [ text "username" ]
       , input [ id "username-filed"
               , type_ "text"
               , value model.username 
               ] 
               []
       , label [] 
               [ text "password: " ]
       , input [ id "password-field"
               , type_ "password"
               , value model.password              
               ]
               []
       , button [ onClick Login ] [ text "Login" ]
       , button [ onClick Logout ] [ text "Logout" ]
       ]




-- Subscriptions

subscriptions : Model -> Sub Msg
subscriptions model =
 Sub.none
