# KCL Github Actions

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
