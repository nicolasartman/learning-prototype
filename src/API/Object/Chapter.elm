-- Do not manually edit this file, it was auto-generated by Graphqelm
-- https://github.com/dillonkearns/graphqelm


module API.Object.Chapter exposing (..)

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
selection : (a -> constructor) -> SelectionSet (a -> constructor) API.Object.Chapter
selection constructor =
    Object.selection constructor


createdAt : Field API.Scalar.DateTime API.Object.Chapter
createdAt =
    Object.fieldDecoder "createdAt" [] (Decode.string |> Decode.map API.Scalar.DateTime)


id : Field API.Scalar.Id API.Object.Chapter
id =
    Object.fieldDecoder "id" [] (Decode.string |> Decode.map API.Scalar.Id)


number : Field Int API.Object.Chapter
number =
    Object.fieldDecoder "number" [] Decode.int


part : Field Int API.Object.Chapter
part =
    Object.fieldDecoder "part" [] Decode.int


updatedAt : Field API.Scalar.DateTime API.Object.Chapter
updatedAt =
    Object.fieldDecoder "updatedAt" [] (Decode.string |> Decode.map API.Scalar.DateTime)
