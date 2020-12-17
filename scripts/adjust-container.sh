#!/bin/bash

#
# Used to download the example file from the GitHub repository.
#
function download_code_example {
    # Takes everything after the last forward slash as a file name.
    local fileName="${EXAMPLE_DOWNLOAD_URL##*/}"
    echo $(curl -s -X GET "$EXAMPLE_DOWNLOAD_URL" -o "$EXAMPLE_DOWNLOAD_DIR/$fileName")
}

# Start executing script logic.
download_code_example
