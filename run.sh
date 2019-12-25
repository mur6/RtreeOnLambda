docker run --rm \
  -v "$PWD"/task:/var/task:ro,delegated \
  lambci/lambda:python3.7 handler.get
