{ ... }:

{
  programs.ssh = {
    enable = true;
    addKeysToAgent = "yes";
    hashKnownHosts = true;
  };

  services.ssh-agent.enable = true;

  home.sessionVariables = {
    # Ensure the SSH key has to be unlocked only once.
    SSH_AUTH_SOCKET = "$XDG_RUNTIME_DIR/ssh-agent";
  };
}
