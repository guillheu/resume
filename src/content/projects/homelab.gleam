import localization.{type Language, English, French}

pub const techs = [
  "Kubernetes",
  "Proxmox",
  "TrueNAS",
  "ZFS",
  "SAMBA",
  "DynDNS",
  "Tailscale",
  "Nix/NixOS",
  "PiKVM",
]

pub const links = []

pub fn title(lang: Language) -> String {
  case lang {
    English -> "Homelab"
    French -> "Homelab"
  }
}

pub fn description(lang: Language) -> String {
  case lang {
    English ->
      "Set of self-built servers and network equipment running personal services. Endless source of self-learning opportunities."
    French ->
      "Ensemble de serveurs montés à la main et équipements réseau faisant tourner des services personnels. Source d'apprentissage en auto-didacte"
  }
}
