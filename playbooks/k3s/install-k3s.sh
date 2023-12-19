#!/bin/bash

curl -sfL https://get.k3s.io | INSTALL_K3S_VERSION=v1.26.11+k3s2 sh -s - --write-kubeconfig-mode 644

