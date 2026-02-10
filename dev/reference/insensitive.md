# Create a vector with case insensitive name matching.

Create a vector with case insensitive name matching.

## Usage

``` r
insensitive(x)
```

## Arguments

- x:

  vector to modify

## Examples

``` r
x <- c("abc" = 1, "def" = 2)
x["ABC"]
#> <NA> 
#>   NA 
y <- insensitive(x)
y["ABC"]
#> abc 
#>   1 
y[["ABC"]]
#> [1] 1
```
