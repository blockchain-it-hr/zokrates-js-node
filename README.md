# zokrates-js-node
[ZoKrates](https://github.com/Zokrates/ZoKrates) JavaScript bindings for node platform.

## Package
Install zokrates-js-node with [npm](https://www.npmjs.com/package/zokrates-js-node):

```bash
npm install zokrates-js-node
```

## API
| Function | Description |
| ------ | ------ |
| initialize | Loads binding wasm module and returns a promise with ZoKrates provider |
| compile | Compiles source code into ZoKrates internal representation of arithmetic circuits |
| computeWitness | Computes a valid assignment of the variables, which include the results of the computation |
| setup | Generates a trusted setup for the compiled program |
| exportSolidityVerifier | Generates a Solidity contract which contains the generated verification key and a public function to verify a solution to the compiled program |
| generateProof | Generates a proof for a computation of the compiled program |

### Usage
```js
let { initialize } = require('zokrates-js-node');

function importResolver(location, path) {
  // implement your resolving logic here
  return { 
    source: "def main() -> (): return", 
    location: path 
  };
}

initialize().then((zokratesProvider) => {
    // we have to initialize wasm module before calling api functions
    let result = zokratesProvider.compile("def main() -> (): return", "main", importResolver);
    console.log(result)
});
```

## Installation
Install rustup and wasm-pack:

```bash
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
curl https://rustwasm.github.io/wasm-pack/installer/init.sh -sSf | sh
```

In order to compile this project you need the *nightly* version of Rust:

```bash
rustup install nightly
rustup target add wasm32-unknown-unknown --toolchain nightly
rustup default nightly
```

## Development
Anyone is welcome to help progress and improve this library. Tasks and issues can be found in the [issues tab](https://github.com/blockchain-it-hr/zokrates-js-node/issues). If your problem/task is not in the tasks, feel free to create a new issue explaining your problem/task.
