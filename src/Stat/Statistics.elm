module Stat.Statistics exposing (findLen, geometricalmean, geomult, harmonicalmean, harmonmap, mean, onedivide, powerfunc, sum)

--its calculating for list summation


sum : List Float -> Float
sum liste =
    List.foldl (+) 0 liste



--Power function


powerfunc : Float -> Float -> Float
powerfunc number power =
    number ^ power



--function for average value


mean : List Float -> Float
mean list =
    sum list / findLen list



--function for list length


findLen : List Float -> Float
findLen list =
    toFloat (List.length list)



--divider for harmonical mean


onedivide : Float -> Float
onedivide number =
    1 / number



--function summation function which divided values for harmonical mean


harmonmap : List Float -> Float
harmonmap liste =
    List.map onedivide liste
        |> sum



--harmonical mean function


harmonicalmean : List Float -> Float
harmonicalmean liste =
    findLen liste * (harmonmap liste ^ -1.0)



--geometrical multiplication


geomult : List Float -> Float
geomult liste =
    List.foldl (*) 1 liste



--geometrical mean


geometricalmean : List Float -> Float
geometricalmean liste =
    geomult liste ^ (1 / findLen liste)
