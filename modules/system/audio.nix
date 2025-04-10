{ config, pkgs, lib, ... }:

{
  # Explicit PipeWire configuration
  services.pipewire = {
    enable = true;

    # Enable audio features
    audio.enable = true;
    alsa.enable = true;
    pulse.enable = true;
    wireplumber.enable = true;

    # Optional: enable JACK support (for pro audio)
    jack.enable = true;
  };

  # Ensure PulseAudio is disabled so PipeWire can take over
  services.pulseaudio.enable = false;

  # Optional: enable real-time permissions for audio group
  security.rtkit.enable = true;
}

