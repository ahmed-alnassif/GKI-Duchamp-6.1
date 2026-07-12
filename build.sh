name: Build Kernel
on:
  push:
    branches: [ "bore-port" ]

jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - name: Checkout Code
        uses: actions/checkout@v3

      - name: Build
        run: |
          chmod +x build.sh
          ./build.sh
        env:
          KSU: "KSU"
          GH_TOKEN: ${{ secrets.GH_TOKEN }}
          
