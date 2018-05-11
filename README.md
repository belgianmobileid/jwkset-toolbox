You can execute jwkset-toolbox on github Pages : https://belgianmobileid.github.io/jwkset-toolbox/

execute `git clone https://github.com/belgianmobileid/jwkset-toolbox` 

move to `jwkset-toolbox/mkjwkset`

create your keys with `bash mkjwkset.sh jwks.json private.jwks.json`

Backup the private keys `private.jwkse.json` and expose the public JWKSet file `jwks.json` on a public HTTPS endpoint.
