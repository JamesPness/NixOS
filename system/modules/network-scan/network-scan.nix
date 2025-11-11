{ config, ... }:
let
  system = "x86_64-linux";
in
{
  systemd.services.network-scan = {

    Unit = {
      description = "A systemd-service for scanning for know networks at boot.";
      after = [ "nss-user.lookup.target" ];
    };
    
    Install = {
      WantedBy = [ "deafault.target" ]; 
    };

    Service = {
      ExecStart = "chmod -x network-scan.sh; ./network-scan.sh";
      

    };
  };
}

