FROM blockchainit/rust-wasm-env:latest
COPY ./ ./
RUN npm run build
RUN sh scripts/publish.sh