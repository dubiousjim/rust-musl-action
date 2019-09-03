# GitHub Action for Rust and MUSL

Action provides an environment with stable Rust 1.37, MUSL and x86_64-unknown-linux-musl target.

## Usage

To compile a rust binary/library with x86_64-unknown-linux-musl target:

```yaml
name: Static Musl Build

on: [push]

jobs:
  build:

    runs-on: ubuntu-latest
    steps:
    - uses: davidgraeff/rust-musl-action@master
    - uses: actions/checkout@master
    - name: Build and Test
      run: cargo test --target x86_64-unknown-linux-musl
```

## License

The Dockerfile and associated scripts and documentation in this project are released under the [MIT License](LICENSE).

