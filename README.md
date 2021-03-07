# homebrew-utils

## Updating Ghorg
1. update changelog and bump version in `ghorg version` cmd
1. [Create new release](https://github.com/gabrie30/ghorg/releases)
2. run `brew create https://github.com/gabrie30/ghorg/archive/v1.x.x.tar.gz`
    - delete the old one if it exists
2. Update ghorg.rb to have the new release sha, and ghorg_version

```

class Ghorg < Formula
  ghorg_version = "1.3.0" <-----

  desc "Quickly clone an entire org/users repositories into one directory"
  homepage "https://github.com/gabrie30/ghorg"
  url "https://github.com/gabrie30/ghorg/archive/#{ghorg_version}.tar.gz"
  version ghorg_version
  sha256 "1a219f47e5e7a221680128999b13d095fbd12dd79f1a9ae823027987d62c4325" <-----
  license "Apache-2.0"
  
  ...
```
