module Stat.Statistics exposing (findLen, geomult, harmonmap, irange, mean, onedivide, powerfunc, range, sum)


range : Int -> Int -> List Int
range a b =
    if a == b then
        []

    else
        a :: range (a + 1) b


irange : Int -> Int -> List Int
irange a b =
    if a == b then
        [ b ]

    else
        a :: irange (a + 1) b


sum : List Float -> Float
sum liste =
    List.foldl (+) 0 liste


powerfunc : Float -> Float -> Float
powerfunc number power =
    number ^ power


geomult : List Float -> Float
geomult liste =
    List.foldl (*) 1 liste


mean : List Float -> Float
mean list =
    sum list / findLen list


findLen : List Float -> Float
findLen list =
    toFloat (List.length list)


onedivide : Float -> Float
onedivide number =
    1 / number


harmonmap : List Float -> Float
harmonmap liste =
    List.map onedivide liste
        |> sum
