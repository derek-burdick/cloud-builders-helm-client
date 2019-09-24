#!/bin/bash

if [ "$DEBUG" = true ]; then
    echo "Running: helm $@"
fi
helm "$@"
