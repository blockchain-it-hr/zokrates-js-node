#!/bin/bash

npm install -g npm-cli-login
NPM_USER=blockchain-it NPM_PASS=JRf*c_3PmDJYCJ! NPM_EMAIL=info@blockchain-it.hr npm-cli-login

npm install -g publish
npm version patch
npm publish