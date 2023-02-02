# Run on your localhost:

## Git clone with submodules:
```
git clone --recurse-submodules git@github.com:imagure/flowbuild-poc-modules.git
```

## Run compose file with:
```
docker-compose up --build
```

You may also run with scaling options:
```
docker-compose up --build --scale orchestrator=2 --scale flowbuild_v2_nodes=2
```

## What's implemented here:

![alt text](https://raw.githubusercontent.com/imagure/flowbuild-poc-modules/master/flowbuild-v3.drawio.png)
