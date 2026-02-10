# SHA1 hash

Creates a SHA1 hash of data using either HMAC or RSA.

## Usage

``` r
sha1_hash(key, string, method = "HMAC-SHA1")
```

## Arguments

- key:

  The key to create the hash with

- string:

  data to securely hash

- method:

  The method to use, either HMAC-SHA1 or RSA-SHA1
