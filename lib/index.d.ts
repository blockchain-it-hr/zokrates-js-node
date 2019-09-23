declare module 'zokrates-js-node' {
  export interface ResolverResult {
    source: string,
    location: string
  }

  export function initialize(callback: (location: string, path: string) => ResolverResult): Promise<void>;
  export function compile(source: string, location: string): Uint8Array;
  export function computeWitness(program: Uint8Array, args: string[]): string;
  export function setup(program: Uint8Array): [string, Uint8Array];
  export function exportSolidityVerifier(verifyingKey: string, isAbiv2: boolean): string;
  export function generateProof(program: Uint8Array, witness: string, provingKey: Uint8Array): string;
  export function getStdLib(): object;
}