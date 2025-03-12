#!/bin/bash

echo "Running flutter clean..."
fvm flutter clean

echo "Running flutter pub get..."
fvm flutter pub get

echo "Running build_runner build..."
fvm dart run build_runner build --delete-conflicting-outputs