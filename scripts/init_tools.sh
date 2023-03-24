#!/usr/bin/env bash
set -x
set -eo pipefail

cargo install cargo-deny
cargo install cargo-udeps
cargo install cargo-nextest
cargo install sqlx-cli
cargo install bunyan
