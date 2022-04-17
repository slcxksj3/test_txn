
## test transaction - deposit usdc into aave on avalanche

#### build image
run: `docker build -t <name> .`

### start image
add .env file following .env.example or replace with relevant fireblocks info
run: `docker run -v $PWD:/project -p 8888:8888 --env-file .env -it <name>`
password is `password`

### TO DO: set brownie `acc` object with fireblocks account