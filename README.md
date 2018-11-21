# Linux Image Installer

## Description

A set of scripts to semi-automatically fetch and install the `linux-*` package files under Ubuntu for a specific version.

## Motivation

On my Macbook, the default kernel under `bionic` (4.15 series) causes significant graphical issues. While there may be progress in fixing this later, for now I am running Ubuntu `bionic` userland with the `xenial` kernel. As this requires `apt` to be configured to use the `bionic` suite, I can't rely on `apt` to bring in updated kernels, hence these scripts.
