-- Do not manually edit this file, it was auto-generated by Graphqelm
-- https://github.com/dillonkearns/graphqelm


module API.Interface.Node exposing (..)

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
import Graphqelm.SelectionSet exposing (FragmentSelectionSet(FragmentSelectionSet), SelectionSet(SelectionSet))
import Json.Decode as Decode


{-| Select only common fields from the interface.
-}
commonSelection : (a -> constructor) -> SelectionSet (a -> constructor) API.Interface.Node
commonSelection constructor =
    Object.selection constructor


{-| Select both common and type-specific fields from the interface.
-}
selection : (Maybe typeSpecific -> a -> constructor) -> List (FragmentSelectionSet typeSpecific API.Interface.Node) -> SelectionSet (a -> constructor) API.Interface.Node
selection constructor typeSpecificDecoders =
    Object.interfaceSelection typeSpecificDecoders constructor


onChapter : SelectionSet decodesTo API.Object.Chapter -> FragmentSelectionSet decodesTo API.Interface.Node
onChapter (SelectionSet fields decoder) =
    FragmentSelectionSet "Chapter" fields decoder


onFile : SelectionSet decodesTo API.Object.File -> FragmentSelectionSet decodesTo API.Interface.Node
onFile (SelectionSet fields decoder) =
    FragmentSelectionSet "File" fields decoder


onSection : SelectionSet decodesTo API.Object.Section -> FragmentSelectionSet decodesTo API.Interface.Node
onSection (SelectionSet fields decoder) =
    FragmentSelectionSet "Section" fields decoder


onUser : SelectionSet decodesTo API.Object.User -> FragmentSelectionSet decodesTo API.Interface.Node
onUser (SelectionSet fields decoder) =
    FragmentSelectionSet "User" fields decoder


{-| The id of the object.
-}
id : Field API.Scalar.Id API.Interface.Node
id =
    Object.fieldDecoder "id" [] (Decode.string |> Decode.map API.Scalar.Id)
