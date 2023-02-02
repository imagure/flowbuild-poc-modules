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

## Run a manual test:
For that you may use two scripts:

* To create Workflow:
```
./scripts/createWorkflow.sh <workflow name from blueprint_examples>
```

* To start processes:
```
./scripts/runWorkflow.sh <workflow name> <total requests> <parallel requests>
```

* Example:
```
./scripts/createWorkflow.sh basicHttpNode
./scripts/runWorkflow.sh basicHttpNode 10 5
```

## What's implemented here:

![alt text](https://raw.githubusercontent.com/imagure/flowbuild-poc-modules/master/flowbuild-v3.drawio.png)
