# Run on your localhost:

## Git clone with submodules:
```
git clone --recurse-submodules git@github.com:imagure/flowbuild-poc-modules.git
```

For updates:
```
git submodule update --init --recursive
git submodule foreach --recursive git fetch
git submodule foreach git merge origin master
```

## Run compose file with:
```
docker-compose up --build
```

You may also run with scaling options:
```
docker-compose up --build --scale orchestrator=2 --scale flowbuild_v2_nodes=2
```
## Swagger:
You may find swagger on route: 
```
/docs
```

## Authentication:
Flowbuild-API uses a own generated token (HS256) and may also use external configurations for token validations (RS256).

For "external" validations, Keycloak was used as a reference and it is currently provisioned on ```docker-compose.yml```.

For more information on Keycloak configuration, see the docs [here](https://github.com/imagure/flowbuild-poc-modules/tree/master/docs/keycloak). 

## What's implemented here:

![alt text](https://raw.githubusercontent.com/imagure/flowbuild-poc-modules/master/images/flowbuild-v3-update.drawio.png)


## Some Test Results:

* Climem (initial moment):

![alt text](https://raw.githubusercontent.com/imagure/flowbuild-poc-modules/master/images/climem-ramp-up.drawio.png)


* Climem (later):

![alt text](https://raw.githubusercontent.com/imagure/flowbuild-poc-modules/master/images/climem-established.drawio.png)


* Climem (jmeter results):

![alt text](https://raw.githubusercontent.com/imagure/flowbuild-poc-modules/master/images/jmeter-summary.png)