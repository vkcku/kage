{ ... }:

{
  # NOTE: Not a part of home manager.
  services.kanata = {
    enable = true;
    keyboards = {
      all = {
        # not configuring devices here so that kanata will handle the inputs from all
        # keyboards automatically
        config = builtins.readFile ./config.kbd;
      };
    };
  };
}
