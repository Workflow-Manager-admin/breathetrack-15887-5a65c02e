#!/bin/bash
cd /home/kavia/workspace/code-generation/breathetrack-15887-5a65c02e/breathexercise_app
npx eslint
ESLINT_EXIT_CODE=$?
npm run build
BUILD_EXIT_CODE=$?
if [ $ESLINT_EXIT_CODE -ne 0 ] || [ $BUILD_EXIT_CODE -ne 0 ]; then
   exit 1
fi

