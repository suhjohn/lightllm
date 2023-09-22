#!/bin/bash

cd /
python -u src/download_model.py
python -m lightllm.server.api_server --model_dir ${MODEL_BASE_PATH}${MODEL_NAME}     \
                                     --host 0.0.0.0                 \
                                     --port ${PORT}                    \
                                     --tp 1                         \
                                     --max_total_token_num ${MAX_TOTAL_TOKEN_NUM}
