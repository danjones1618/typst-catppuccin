#!/usr/bin/env bash

whiskers catppuccin.tera
typst compile --font-path ./font --root . ./examples/demo.typ