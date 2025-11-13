{pkgs, config, ...}:

{
  services.nirinit = {
    enable = true;

    settings = {
      skip = {
        
      };
    };
  };
}
