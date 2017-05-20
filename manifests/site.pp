
#client only node
node 'ip-172-31-1-237.us-west-2.compute.internal'{

 
  include mcollective
  
  file { '/usr/local/bin/mco':
  
  ensure => link,
  target => '/opt/puppetlabs/bin/mco',
  }
  


}


#server (All other nodes other than clients"
node 'ip-172-31-14-240.us-west-2.compute.internal'{
 include mcollective
 file { '/usr/local/bin/mco':
  
  ensure => link,
  target => '/opt/puppetlabs/bin/mco',
  }
 
 
 
}

#puppet server

node "ip-172-31-18-91.us-west-2.compute.internal" {
  class{"nats": }
  file { '/usr/local/bin/mco':
  
  ensure => link,
  target => '/opt/puppetlabs/bin/mco',
  }
}

