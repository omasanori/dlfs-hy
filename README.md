# Deep Learning from Scratch in Hy

## What is this?

This is an attempt to follow 『ゼロから作るDeep Learning』 (Deep Learning from
Scratch), a series of Japanese books describing internals of deep learning
algorithms. The original code is written in Python, but I decided to use the
[Hy](https://hylang.org) programming language. Why? Just for fun.

## How to run

To prepare the development environment, install the [Nix](https://nixos.org)
package manager and run `nix-shell`. On Ubuntu, the `nix-bin` package is
available out-of-box.

```shell
sudo apt install nix-shell
git clone https://github.com/omasanori/dlfs-hy.git
cd dlfs-hy
nix-shell
hy dlfs-hy/vol1/ch01/hello.hy # or ./dlfs-hy/vol1/ch01/hello.hy
hy2py dlfs-hy/vol1/ch01/hello.hy
```
