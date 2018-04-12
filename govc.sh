     #!/bin/bash/
     curl https://github.com/vmware/govmomi/releases/download/v0.16.0/govc_linux_amd64.gz
     gunzip govc_linux_amd64.gz && mv govc_linux_amd64 /usr/local/bin/govc && chmod 755 /usr/local/bin/govc
     echo -e "\nThe version of govc is"
     govc version

     export GOVC_INSECURE=1
     export GOVC_URL=10.234.96.69
     export GOVC_USERNAME="lab\nirekr1"
     export GOVC_PASSWORD="ChangeMe!"
     export GOVC_DATASTORE="VNX5400-SW-Build-02"
     export GOVC_NETWORK=SW_Build_198
     export GOVC_RESOURCE_POOL=*/Resources/*
     export GOVC_DATACENTRE=Infrastructure
     export GOVC_CLUSTER=SW-Build
     
     govc import.ova -options=vro.json /OVAs/VMware-vRO-Appliance-7.3.0.21553-5521409_OVF10.ova
     echo "\n\nDeployment Complete. All Done!"
