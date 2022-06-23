 <img src="https://valueguard.se/static/media/valueguardlogo_black.f3a4c174.png" width="200">

# valueguard jupyter notebooks
### Data science notebooks for housing analysis in Swedens

#### About
Notebooks examples on how to interact with the Valueguard API

Documentation about the API: [Valueguard python client documentation](https://github.com/Valueguard-Index-Sweden/valueguard-python-client/wiki)

## Notebooks

### Valueguard-api

####  Residential Registry

* [Residential_registry (Full download)](./notebooks/valueguard_api/residential_registry/residential_registry_full_download.ipynb)
* [Residential_registry_markups (Update from public data)](./notebooks/valueguard_api/residential_registry/residential_registry_full_download.ipynb)

## Installation

### Run it from Docker (Linux)
1. Copy **docker_run_template.sh** to **docker_run.sh**  ```bash
cp docker_run_template.sh docker_run.sh```
2. Change the variables in `docker_run.sh`
3. Make it executable. `chmod +x ./docker_run.sh`
4. Make sure you have `Docker` installed
5. Run it. `./docker_run.sh`



