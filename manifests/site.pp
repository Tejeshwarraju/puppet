
node 'ip-172-31-22-77.ap-southeast-1.compute.internal'{

 
  include mcollective


}


node "ip-172-31-21-213.ap-southeast-1.compute.internal" {
  class{"nats": }
}

