#!/bin/bash
rm -rf node_modules;
rm -rf ./simple-app-release.zip;
rm -rf package-lock.json;
rm -rf yarn.lock;
npm i;
npm run build --if-present;
npm run test --if-present;
zip -r ./simple-app-release.zip ./*

