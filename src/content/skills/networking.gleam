import localization.{type Language, English, French}

pub const skills = [
  #(cisco_title, cisco_progress, cisco_level),
  #(ospf_title, ospf_progress, ospf_level),
  #(bgp_title, bgp_progress, bgp_level),
  #(vpn_title, vpn_progress, vpn_level),
  #(ip_title, ip_progress, ip_level),
  #(fw_title, fw_progress, fw_level),
]

pub fn category_title(lang: Language) -> String {
  case lang {
    English -> "Networking"
    French -> "Réseaux"
  }
}

// Cisco IOS

pub const cisco_title = "Cisco IOS"

pub const cisco_progress = 40

pub fn cisco_level(lang: Language) -> String {
  case lang {
    English -> "Foundations"
    French -> "Fondations"
  }
}

// OSPF

pub const ospf_title = "OSPF"

pub const ospf_progress = 50

pub fn ospf_level(lang: Language) -> String {
  case lang {
    English -> "Intermediate"
    French -> "Intermédiaire"
  }
}

// BGP

pub const bgp_title = "BGP"

pub const bgp_progress = 20

pub fn bgp_level(lang: Language) -> String {
  case lang {
    English -> "Notions"
    French -> "Notions"
  }
}

// VPN config

pub const vpn_title = "VPNs"

pub const vpn_progress = 60

pub fn vpn_level(lang: Language) -> String {
  case lang {
    English -> "Intermediary"
    French -> "Intermédiaire"
  }
}

// DHCP/DNS/segmentation

pub const ip_title = "DHCP/DNS/IPv4"

pub const ip_progress = 70

pub fn ip_level(lang: Language) -> String {
  case lang {
    English -> "Advanced"
    French -> "Avancé"
  }
}

// Firewalling & security

pub const fw_title = "Firewall/NAT"

pub const fw_progress = 65

pub fn fw_level(lang: Language) -> String {
  case lang {
    English -> "Advanced"
    French -> "Avancé"
  }
}
