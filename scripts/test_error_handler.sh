#!/usr/bin/env zsh

export TEST_LOG=true
export RUST_LOG="sqlx=error,info"
export path=(~/.cargo/bin $path)
cargo t subscribe_fails_if_there_is_a_fatal_database_error | bunyan
