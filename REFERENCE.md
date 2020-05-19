# Reference
<!-- DO NOT EDIT: This document was generated by Puppet Strings -->

## Table of Contents

**Classes**

_Public Classes_

* [`rook`](#rook): This module installs and configures Rook on a Kubernetes cluster.
* [`rook::params`](#rookparams): This module installs and configures Rook on a Kubernetes cluster.

_Private Classes_

* `rook::packages`: Installs the Ceph packages.
* `rook::storage_class`: Installs and configures the Rook storage class for block level

**Tasks**

* [`install`](#install): Executes the kubectl tasks to install rook
* [`namespace`](#namespace): Creates the rook namespace on a kubernetes cluster

## Classes

### rook

This module installs and configures Rook on a Kubernetes cluster.

#### Parameters

The following parameters are available in the `rook` class.

##### `env`

Data type: `Array`

Specifies the environment variables for Kubectl to connect to the Kubernetes cluster.
Defaults to `['HOME=/root', 'KUBECONFIG=/etc/kubernetes/admin.conf']`.

Default value: $rook::params::env

##### `path`

Data type: `Array`

Specifies the PATH for all exec resources in the module.
Defaults to `['/usr/bin', '/bin']`.

Default value: $rook::params::path

##### `version`

Data type: `String`

Specifies the version of rook to install.
Defaults to `'v0.7.0'`.

Default value: $rook::params::version

##### `default_storage`

Data type: `Boolean`

Specifies whether to set the rook-block as the default storage class for the cluster
Defaults to `true`

Default value: $rook::params::default_storage

### rook::params

This module installs and configures Rook on a Kubernetes cluster.

## Tasks

### install

Executes the kubectl tasks to install rook

**Supports noop?** false

#### Parameters

##### `kubeconfig`

Data type: `[String[1]]`

Path of the config file for the KUBECONFIG environment variable

##### `config_file`

Data type: `String[1]`

Path of the rook configuration file

### namespace

Creates the rook namespace on a kubernetes cluster

**Supports noop?** false

#### Parameters

##### `kubeconfig`

Data type: `String[1]`

Path of the config file for the KUBECONFIG environment variable

##### `namespace`

Data type: `String[1]`

Kubernetes namespace to run rook
