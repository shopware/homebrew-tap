# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
require_relative "lib/custom_download_strategies"
class DashyCli < Formula
  desc ""
  homepage ""
  version "0.0.17-dev"
  license "Closed Source"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/shopware/dashy-cli/releases/download/v0.0.17-dev/dashy-cli_Darwin_x86_64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "be69dcfcf857a91737e5a8a558ddba3c90cf5ea4768bddd73db317add43c35c7"

      def install
        bin.install "dashy"
        bash_completion.install "completions/dashy.bash" => "_dashy"
        zsh_completion.install "completions/dashy.zsh" => "_dashy"
        fish_completion.install "completions/dashy.fish"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/shopware/dashy-cli/releases/download/v0.0.17-dev/dashy-cli_Darwin_arm64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "fda053088ad5782a36b2fc4daa1bf000facb9a1bde408d386eda69e77f304f86"

      def install
        bin.install "dashy"
        bash_completion.install "completions/dashy.bash" => "_dashy"
        zsh_completion.install "completions/dashy.zsh" => "_dashy"
        fish_completion.install "completions/dashy.fish"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/shopware/dashy-cli/releases/download/v0.0.17-dev/dashy-cli_Linux_x86_64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
        sha256 "ac020294932fd656ec7dc6b6de5ef8ef805eff75b1c099b6037fa9d3fc774b6c"

        def install
          bin.install "dashy"
          bash_completion.install "completions/dashy.bash" => "_dashy"
          zsh_completion.install "completions/dashy.zsh" => "_dashy"
          fish_completion.install "completions/dashy.fish"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/shopware/dashy-cli/releases/download/v0.0.17-dev/dashy-cli_Linux_arm64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
        sha256 "b6152ee44bffa0702c4627affb42499b9fc70fd42d7d2a675532fae1c72cc9b8"

        def install
          bin.install "dashy"
          bash_completion.install "completions/dashy.bash" => "_dashy"
          zsh_completion.install "completions/dashy.zsh" => "_dashy"
          fish_completion.install "completions/dashy.fish"
        end
      end
    end
  end
end
