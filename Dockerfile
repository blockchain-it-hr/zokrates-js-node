FROM blockchainit/rust-wasm-env:latest
ARG WORKSPACE_DIR=/usr/src/app
WORKDIR ${WORKSPACE_DIR}
ARG USER
ARG PASS
ARG EMAIL
ENV USER=${USER}
ENV PASS=${PASS}
ENV EMAIL=${EMAIL}
COPY . .
RUN npm run build 
RUN sh scripts/publish.sh