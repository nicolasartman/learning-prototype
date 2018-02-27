-- Do not manually edit this file, it was auto-generated by Graphqelm
-- https://github.com/dillonkearns/graphqelm


module API.Object.SectionPreviousValues exposing (..)

import API.InputObject
import API.Interface
import API.Object
import API.Scalar
import API.Union
import Graphqelm.Field as Field exposing (Field)
import Graphqelm.Internal.Builder.Argument as Argument exposing (Argument)
import Graphqelm.Internal.Builder.Object as Object
import Graphqelm.Internal.Encode as Encode exposing (Value)
import Graphqelm.OptionalArgument exposing (OptionalArgument(Absent))
import Graphqelm.SelectionSet exposing (SelectionSet)
import Json.Decode as Decode


{-| Select fields to build up a SelectionSet for this object.
-}
selection : (a -> constructor) -> SelectionSet (a -> constructor) API.Object.SectionPreviousValues
selection constructor =
    Object.selection constructor


id : Field API.Scalar.Id API.Object.SectionPreviousValues
id =
    Object.fieldDecoder "id" [] (Decode.string |> Decode.map API.Scalar.Id)


title : Field String API.Object.SectionPreviousValues
title =
    Object.fieldDecoder "title" [] Decode.string
