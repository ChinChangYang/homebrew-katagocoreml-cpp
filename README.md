# homebrew-katagocoreml-cpp

Homebrew tap for [katagocoreml](https://github.com/chinchangyang/katagocoreml-cpp) - a C++ library for converting KataGo neural networks to Core ML format.

## Installation

```bash
brew tap chinchangyang/katagocoreml-cpp
brew install katagocoreml
```

## Usage

```bash
# Show model info
katago2coreml --info model.bin.gz

# Convert to Core ML
katago2coreml model.bin.gz KataGo.mlpackage

# With options
katago2coreml --optimize-identity-mask --float16 model.bin.gz KataGo.mlpackage
```

## More Information

See the [katagocoreml-cpp repository](https://github.com/chinchangyang/katagocoreml-cpp) for full documentation.
