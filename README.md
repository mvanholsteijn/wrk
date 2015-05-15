# wrk
Docker image of Wrk:  a command line interface to Trello.


## install your token
To run wrk you need to obtain a token from Trello for your user and place it in file [ ~/.wrk/token ].
  Wrk's key to use when obtaining your token is 8d56bbd601877abfd13150a999a840d0
  For example, to give wrk read/write access; use url:
    https://trello.com/1/authorize?key=8d56bbd601877abfd13150a999a840d0&name=Wrk&expiration=never&response_type=token&scope=read,write
  See https://trello.com/docs/gettingstarted/index.html#getting-a-token-from-a-user for more information.

## to run
docker run \
	--env WRK_USR_TOKEN=$(<~/.wrk/token) \
	-t -i mvanholsteijn/wrk wrk boards
