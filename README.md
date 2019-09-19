# zokrates.js
JavaScript bindings for [ZoKrates](https://github.com/Zokrates/ZoKrates) project. The goal of this project is to provide ZoKrates JavaScript API supporting both node.js and the web. ZoKrates is a toolbox for zkSNARKs on Ethereum. It helps you use verifiable computation in your DApp, from the specification of your program in a high level language to generating proofs of computation to verifying those proofs in Solidity.

## Package
Install zokrates.js with [npm](https://www.npmjs.com/package/zokrates.js):

```bash
npm install zokrates.js
```

### Usage
```js
import * as zokrates from 'zokrates-js'

function importResolver(location, path) {
  // implement your resolving logic here
  return { 
    source: "def main() -> (): return", 
    location: path 
  };
}

zokrates.initialize(importResolver).then(() => {
    // we have to initialize wasm module before calling api functions
    zokrates.compile("def main() -> (): return")
});
```

## Installation
Install rustup and wasm-pack:

```bash
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
curl https://rustwasm.github.io/wasm-pack/installer/init.sh -sSf | sh
```

In order to compile this project you need the *nightly* version of Rust, and the ability to compile to WebAssembly (wasm). You can install all of this by running:

```bash
rustup install nightly
rustup target add wasm32-unknown-unknown --toolchain nightly
rustup default nightly
```

## Development
Anyone is welcome to help progress and improve this library. Tasks and issues can be found in the [issues tab](https://github.com/dark64/zokrates-js/issues). If your problem/task is not in the tasks, feel free to create a new issue explaining your problem/task.