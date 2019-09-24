FROM blockchainit/rust-wasm-env:latest
COPY ./ ./
#RUN npm run build
RUN echo ${USER}
RUN sh scripts/publish.sh ${USER} ${PASS} ${EMAIL}