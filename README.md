# homebrew-utils

## Updating Ghorg
1. update changelog and bump version in `ghorg version` cmd
1. [Create new release](https://github.com/gabrie30/ghorg/releases)
2. run `brew create https://github.com/gabrie30/ghorg/archive/v1.0.x.tar.gz`
    - delete the old one if it exists
3. if new dependencies were added to ghorg, re-run [this](https://github.com/samertm/homebrew-go-resources)
2. Update ghorg.rb to have the new release sha, version, and dependencies

```

class Ghorg < Formula
  desc "easily clone an entire Github org into one directory "
  homepage "https://github.com/gabrie30/ghorg"
  url "https://github.com/gabrie30/ghorg/archive/v1.0.6.tar.gz"                 <---
  sha256 "3bc1c8ab5ef16e39db0a483695202ce7265dae25d90659fdcabf86eac3974b08"     <---
  
  ...
```
