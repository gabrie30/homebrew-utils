class Ghorg < Formula
  desc "easily clone an entire Github org into one directory "
  homepage "https://github.com/gabrie30/ghorg"
  url "https://github.com/gabrie30/ghorg/archive/v1.0.2.tar.gz"
  sha256 "68967136ead81cb6d98caa6ecd1b75ea5b2dea64e6b409759e41b081ff670e97"

  def install
    puts "hello ghorg"
    `touch $HOME/.ghorg`
    `echo hi >> $HOME/.ghorg`
    puts "done"
  end

  # def conf
  #   <<-EOF
  #   # Add your GitHub token
  #   # Defaults to using key returned by
  #   # $ security find-internet-password -s github.com  | grep "acct" | awk -F\" '{ print $4 }'
  #   GHORG_GITHUB_TOKEN=
  #   # This is where your org_ghorg directory will be created, use absolute pathing
  #   # Defaults to $HOME/Desktop/
  #   GHORG_ABSOLUTE_PATH_TO_CLONE_TO=
  #   # Branch ghorg resets and leaves checked out, defaults to master
  #   GHORG_BRANCH=
  #   EOF
  # end
end
