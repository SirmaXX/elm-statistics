module StatTest exposing (powerfunctest,gmeantest,harmonictest)

import Expect exposing (..)
import Fuzz exposing (..)
import Test exposing (..)
import Stat.Statistics exposing(powerfunc,geometricalmean,harmonicalmean)
{--
import Expect exposing (Expectation,Absolute)
import Fuzz exposing (Fuzzer, int, list, string, float)
import Test exposing (..)

--}

powerfunctest : Test
powerfunctest =
    describe "power func test"
         [ fuzz2 (floatRange 1.0 10.0) (floatRange 1.0 10.0)  "power func testing" <|
            \x y ->
                powerfunc x y
                    |> Expect.within (Absolute 0.000000001) (x ^ y)
        ]

gmeantest :Test
gmeantest =
     describe "geometric mean test"
         [  test "geometrical mean func " <|
              \x ->
                 geometricalmean [18,2]
                 |> Expect.equal 6

         ]


harmonictest :Test
harmonictest =
          describe "harmonical mean test"
         [  test "harmonical mean  func" <|
              \x ->
                 harmonicalmean [1,2,3,4]
                 |> Expect.within (Absolute 0.000000001)1.92

         ]
