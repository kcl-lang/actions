# KCL Github Actions
[![FOSSA Status](https://app.fossa.com/api/projects/git%2Bgithub.com%2Fkcl-lang%2Factions.svg?type=shield)](https://app.fossa.com/projects/git%2Bgithub.com%2Fkcl-lang%2Factions?ref=badge_shield)


## Usage

```yaml
on: [push]

jobs:
  hello_world_job:
    runs-on: ubuntu-latest
    name: A job to run action
    steps:
      - uses: actions/checkout@v3
      - uses: kcl-lang/actions@main
        with:
          subcommand: version
      - uses: kcl-lang/actions@main
        with:
          subcommand: run
          arguments: ./examples/kubernetes.k
```


## License
[![FOSSA Status](https://app.fossa.com/api/projects/git%2Bgithub.com%2Fkcl-lang%2Factions.svg?type=large)](https://app.fossa.com/projects/git%2Bgithub.com%2Fkcl-lang%2Factions?ref=badge_large)