module App exposing (..)

import Html exposing (Html, text, div, button, br)
import Navigation
import UrlParser
import Model exposing (..)
import HomeFrame


init : Navigation.Location -> ( Model, Cmd Msg )
init location =
    ( { message = ""
      , page = Home
      , location = UrlParser.parsePath route location
      }
    , Cmd.none
    )


getRouteUrl : Route -> String
getRouteUrl route =
    case route of
        Home ->
            "/"

        Potato ->
            "/potato"

        Temp url ->
            url


route : UrlParser.Parser (Route -> a) a
route =
    UrlParser.oneOf
        [ UrlParser.map Home UrlParser.top
        , UrlParser.map Potato (UrlParser.s "potato")
        ]


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        NavigateTo Home ->
            ( { model | message = "at home" }, Navigation.newUrl (getRouteUrl Home) )

        NavigateTo Potato ->
            ( { model | message = "in potato town!" }, Navigation.newUrl (getRouteUrl Potato) )

        NavigateTo route ->
            ( { model | message = "lost somewhere..." }, Navigation.newUrl (getRouteUrl route) )

        RouteChange newRoute ->
            ( model, Cmd.none )

        NoOp ->
            ( model, Cmd.none )


view : Model -> Html Msg
view model =
    case model.page of
        Home ->
            HomeFrame.view model

        Potato ->
            div [] []

        Temp whocares ->
            div [] []



-- div []
--     [ Html.text model.message
--     , br [] []
--     , button [ onClick (NavigateTo Potato) ] [ Html.text "go to potato town!" ]
--     , br [] []
--     , button [ onClick (NavigateTo Home) ] [ Html.text "go back home!" ]
--     , br [] []
--     , button [ onClick (NavigateTo (Temp "TODO")) ] [ Html.text "TODO: IMPLEMENT ME!" ]
--     ]
--


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none