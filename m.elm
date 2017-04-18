import Html exposing (form, text, h1, label, input, button,  textarea, div)
import Html.Attributes exposing (class, id, for, type_, value, style)
import Html.Events exposing (..)



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
  , filter : String
  , logout : String
  , message : String
  , reply : String
  , send  : String
  }


model : Model
model = 
  { username = ""
  , password = ""
  , login = ""
  , filter = ""
  , logout = ""
  , message = ""
  , reply = ""
  , send = ""
  }

init : ( Model, Cmd Msg)
init = 
  ( model, Cmd.none)

-- Update
 
type Msg
    = Username  String
    | Password  String
    | Login  String
    | Filter String
    | Logout String
    | Reply String
    | Send String

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





       
update : Msg -> Model -> (Model, Cmd msg)
update msg model  =
  case msg of
   	Username ->
      let 
          if username "match" then
             "should login"

          else  
      in  
  		(model, Cmd.none)

  	Password ->
      let
         if Password "do not match" then
         	  "do not login"
            

         else 


      in
  		(model, Cmd.none)

  	Login ->
      let
         if
         
         else
      in
  	  (model, Cmd.none)

  	Logout ->
      let 
         if  
          

         else

        in 
  	  (model, Cmd.none)

  	Send ->

  	  (model, Cmd.none)

  	Reply ->
      let


      in
  	  (model, Cmd.none)


  	Filter ->
  	  (model, Cmd.none)


   

loginPage : Model -> Html Msg
loginPage model =
   let    
       if (color, message) = 
       	  (model.username == "user1" && model.password == "123")
       	 	("green", "OK")

         else 
         	("red", "Invalid login details.")
       
      ({ model | message = message}, Cmd.none)
   in



messagePage : Model -> Html Msg
messagePage model =
            div  [ id "message" ]
               , h1 [] [ text "Message" ]
               , textarea [ text "type your message/comment" ]
               , button [ onClick ( Filter "filter"), value "Filter" ] [ text "filter"]
               , button [ onClick ( Reply "delivered"), value "Reply" ] [ text "reply"]
               , button [ onClick ( Send "sent"), value "Send" ] [ text "send"]


    
-- View
view : Model -> Html Msg
view model =
    form [ id "login-form" ]
         , h1 [] [ text "Login Form" ]
         , input [ id "password-field"
         , input [ id "username-filed"
         , button [ onClick ( Login "welcome"), value "Login" ] [ text "login"]
         , button [ onClick ( Logout "thanks for visit"), value "Logout" ] [ text "logout"]
         ]       
 

-- Subscriptions

subscriptions : Model -> Sub Msg
subscriptions model =
 Sub.none