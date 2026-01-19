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

# With FP16 compute (mixed precision)
katago2coreml --optimize-identity-mask --float16 model.bin.gz KataGo.mlpackage

# Pure FP16 model (FP16 inputs/outputs)
katago2coreml --float16 --float16-io model.bin.gz KataGo.mlpackage

# Dynamic batch size for parallel inference
katago2coreml --dynamic-batch 1,8 model.bin.gz KataGo.mlpackage

# Add author and license metadata
katago2coreml --author "Your Name" --license MIT model.bin.gz KataGo.mlpackage
```

## More Information

See the [katagocoreml-cpp repository](https://github.com/chinchangyang/katagocoreml-cpp) for full documentation.
