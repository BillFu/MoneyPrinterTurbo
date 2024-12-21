#!/bin/bash

# If you could not download the model from the official site, you can use the mirror site.
# export HF_ENDPOINT=https://hf-mirror.com

# Get the absolute path of the current directory
CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Add the current directory to PYTHONPATH
export PYTHONPATH="${CURRENT_DIR}:${PYTHONPATH}"

# Print the current directory and PYTHONPATH for debugging
echo "***** Current directory: ${CURRENT_DIR} *****"
echo "***** PYTHONPATH: ${PYTHONPATH} *****"

# Run the Streamlit app
streamlit run "${CURRENT_DIR}/webui/Main.py" \
    --browser.serverAddress="0.0.0.0" \
    --server.enableCORS=True \
    --browser.gatherUsageStats=False