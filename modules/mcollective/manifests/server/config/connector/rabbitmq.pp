# private class
class mcollective::server::config::connector::rabbitmq {
  if $caller_module_name != $module_name {
    fail("Use of private class ${name} by ${caller_module_name}")
  }

  # Oh puppet!  Fake iteration of the indexes (+1 as plugin.activemq.pool is
  # 1-based)
  $pool_size = size(flatten([$mcollective::middleware_hosts]))
  $indexes = mco_array_to_string(range('1', $pool_size))
  mcollective::server::config::connector::rabbitmq::hosts_iteration { $indexes: }
}
