# Changelog

- Travis now uses the last Ansible

### Fixed

- URL of the signing key for Debian updated
- Fixed the JSON generation for rabbitmq_parameter. It seems that [#237](https://github.com/ansible/ansible-modules-extras/commit/e8391d69855b42d8108fd921f7d6375714494a0e) did not fix it after all...

## [1.4.0] - 2014-11-20

### Added

- Simple Travis-CI support
- Test to ensure the default configuration listen to the good port

### Changed

- Update the tasks directory layout to be more idiomatic

### Fixed

- item.vhost silently changed to item.name breaking the API involuntary.

## [1.3.0] - 2014-11-16

### Added

- Add support for Redhat

### Changed

- Allow the test to run with TLS by adding dummy certificates
- Allow a more flexible naming for the X.509 certificates

## [1.2.0] - 2014-11-06

### Added

- Add the possibility to define the VM to use for testing from the command line

### Changed

- Switch the default VM used for test to one from Vagrant cloud
- Support the default Debian package instead of the one distributed by RabbitMQ
- Reorganise and clean the code for to help future change (new OS/distrib,
  clustering)

## 1.1.0

* Add the possibility to use non default node name. See the new field `node` in
  the `rabbitmq_vhost_definitions` and `rabbitmq_users_definitions` variables.
  This field is optional.
* Add the possibility to generate a `rabbitmq-env.conf` file in the RabbitMQ
  configuration folder. See the `rabbitmq_conf_env` hash.

## 1.0.0

Initial version number
