# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Icm < Formula
  desc "Generate or validate intermodal container markings."
  homepage "https://github.com/mrclmr/icm"
  version "3.2.9"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/mrclmr/icm/releases/download/3.2.9/icm_Darwin_x86_64.tar.gz"
      sha256 "f562e869fb1c2def3554c243dcb302d3277b7c89c94fe8726268a3edd3c99093"

      def install
        bin.install "icm"

        # Install bash completion
        bash_output = Utils.popen_read("#{bin}/icm completion bash")
        (bash_completion/"icm").write bash_output

        # Install zsh completion
        zsh_output = Utils.popen_read("#{bin}/icm completion zsh")
        (zsh_completion/"_icm").write zsh_output

        # Install fish completion
        fish_output = Utils.popen_read("#{bin}/icm completion fish")
        (fish_completion/"icm.fish").write fish_output

        # man-pages is also defined in Makefile
        man1.install Dir["docs/man-pages/man1/*.1"]
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/mrclmr/icm/releases/download/3.2.9/icm_Darwin_arm64.tar.gz"
      sha256 "7ee59e38de428410af371476f48395f0dd48d825ae60bc79f8becadeb3fd58f6"

      def install
        bin.install "icm"

        # Install bash completion
        bash_output = Utils.popen_read("#{bin}/icm completion bash")
        (bash_completion/"icm").write bash_output

        # Install zsh completion
        zsh_output = Utils.popen_read("#{bin}/icm completion zsh")
        (zsh_completion/"_icm").write zsh_output

        # Install fish completion
        fish_output = Utils.popen_read("#{bin}/icm completion fish")
        (fish_completion/"icm.fish").write fish_output

        # man-pages is also defined in Makefile
        man1.install Dir["docs/man-pages/man1/*.1"]
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mrclmr/icm/releases/download/3.2.9/icm_Linux_x86_64.tar.gz"
        sha256 "128bc355a06f0478311e65d6f657e794d957719dbf58be3a791edbda9db5bae1"

        def install
          bin.install "icm"

          # Install bash completion
          bash_output = Utils.popen_read("#{bin}/icm completion bash")
          (bash_completion/"icm").write bash_output

          # Install zsh completion
          zsh_output = Utils.popen_read("#{bin}/icm completion zsh")
          (zsh_completion/"_icm").write zsh_output

          # Install fish completion
          fish_output = Utils.popen_read("#{bin}/icm completion fish")
          (fish_completion/"icm.fish").write fish_output

          # man-pages is also defined in Makefile
          man1.install Dir["docs/man-pages/man1/*.1"]
        end
      end
    end
    if Hardware::CPU.arm?
      if !Hardware::CPU.is_64_bit?
        url "https://github.com/mrclmr/icm/releases/download/3.2.9/icm_Linux_armv6.tar.gz"
        sha256 "0eea7cb32a7b006e4227c63e5bc534d42a8f6193ba11a657aceb74926e6e8d5e"

        def install
          bin.install "icm"

          # Install bash completion
          bash_output = Utils.popen_read("#{bin}/icm completion bash")
          (bash_completion/"icm").write bash_output

          # Install zsh completion
          zsh_output = Utils.popen_read("#{bin}/icm completion zsh")
          (zsh_completion/"_icm").write zsh_output

          # Install fish completion
          fish_output = Utils.popen_read("#{bin}/icm completion fish")
          (fish_completion/"icm.fish").write fish_output

          # man-pages is also defined in Makefile
          man1.install Dir["docs/man-pages/man1/*.1"]
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mrclmr/icm/releases/download/3.2.9/icm_Linux_arm64.tar.gz"
        sha256 "378b7af76fd13cbca8cc9a99efa3611e4caca5c7eefc7d3a3d99aec154edcfe3"

        def install
          bin.install "icm"

          # Install bash completion
          bash_output = Utils.popen_read("#{bin}/icm completion bash")
          (bash_completion/"icm").write bash_output

          # Install zsh completion
          zsh_output = Utils.popen_read("#{bin}/icm completion zsh")
          (zsh_completion/"_icm").write zsh_output

          # Install fish completion
          fish_output = Utils.popen_read("#{bin}/icm completion fish")
          (fish_completion/"icm.fish").write fish_output

          # man-pages is also defined in Makefile
          man1.install Dir["docs/man-pages/man1/*.1"]
        end
      end
    end
  end

  test do
    system "#{bin}/icm --version"
  end
end
