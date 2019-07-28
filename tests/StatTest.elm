module StatTest exposing (powerfunctest)

import Expect exposing (..)
import Fuzz exposing (..)
import Stat.Statistics exposing (powerfunc)
import Test exposing (..)


powerfunctest : Test
powerfunctest =
    describe "power func test"
        [ fuzz (tuple ( float, float )) "power func testing" <|
            \( x, y ) ->
                powerfunc x y
                    |> Expect.within (Absolute 0.00000001) (x ^ y)
        ]
