module StatTest exposing (..)

import Expect exposing (..)
import Fuzz exposing (..)
import Test exposing (..)
import Stat.Statistics exposing(powerfunc)



powerfunctest : Test
powerfunctest =
    describe "power func test"
        [ fuzz2 float float  "power func testing" <|
            \x y ->
                powerfunc x y
                    |> Expect.within (Absolute 0.00000001) (x ^ y)
        ]

