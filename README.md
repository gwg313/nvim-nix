# Configuration Guide

Welcome to my Neovim setup, powered by [NixVim](https://github.com/nix-community/nixvim).

## Local Setup

To get started with this configuration locally, ensure you have Nix installed. If not, you can find installation instructions [here](https://nixos.org/manual/nix/stable/installation/installation.html).

Once Nix is ready, you can proceed with the following steps:

```bash
# Clone the Repository
git clone https://github.com/gwg313/nvim-nix.git
cd nvim-nix

# Run the Configuration
nix run .
```

Alternatively, you can use the following command to run the configuration without cloning the repository:

```bash
nix run github:gwg313/nvim-nix
```

## Integration with NixOS or Home Manager
If you'd like to integrate this Neovim configuration into your NixOS or Home Manager setup, follow these steps:

```nix
# Add This Repository as an Input
{
  inputs = {
    nixvim-flake.url = "github:gwg313/nvim-nix";
  };
}

```

Now, incorporate the Neovim setup into your personal config. Depending on whether you're using NixOS or Home Manager, use one of the following sections:

### For NixOS:
```nix
{ inputs, system, ... }:
{
  environment.systemPackages = [ inputs.nixvim-flake.packages.${system}.default ];
}
```

### For Home Manager:
```nix
{ inputs, ... }:
{
  home.packages = [ inputs.nixvim-flake.packages.${system}.default ];
}
```

### Installing as an Overlay

For those who prefer to overlay their custom build over the standard Neovim package from nixpkgs, you can use this method. While it may be a bit more intricate, it allows you to install Neovim just as you normally would. This method entails replacing the default Neovim package in nixpkgs with a custom derivation of Neovim.

To implement this approach, you can include the following code in your Nix configuration:
```nix
{
  pkgs = import inputs.nixpkgs {
    inherit system;
    overlays = [
      (final: prev: {
        neovim = inputs.nixvim-flake.packages.${system}.default;
      })
    ];
  }
}
```
By following these steps, you can seamlessly integrate a custom Neovim setup into your existing environment and enjoy a tailored Neovim experience.

After making the necessary changes, update your NixOS or Home Manager configuration to apply the Neovim setup.

🚀 Happy coding with Neovim! 🚀
