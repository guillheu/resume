import localization.{type Language, English, French}

pub const skills = [
  #(linux_title, linux_progress, linux_level),
  #(shell_title, shell_progress, shell_level),
  #(nix_title, nix_progress, nix_level),
  #(virt_title, virt_progress, virt_level),
  #(zfs_title, zfs_progress, zfs_level),
]

pub fn category_title(lang: Language) -> String {
  case lang {
    English -> "SysAdmin"
    French -> "SysAdmin"
  }
}

// Linux

pub const linux_title = "Linux"

pub const linux_progress = 55

pub fn linux_level(lang: Language) -> String {
  case lang {
    English -> "Average"
    French -> "Moyen"
  }
}

// Shell scripting

pub const shell_title = "Shell scripts"

pub const shell_progress = 20

pub fn shell_level(lang: Language) -> String {
  case lang {
    English -> "Notions"
    French -> "Notions"
  }
}

// Nix/NixOS

pub const nix_title = "Nix/NixOS"

pub const nix_progress = 40

pub fn nix_level(lang: Language) -> String {
  case lang {
    English -> "Foundations"
    French -> "Fondations"
  }
}

// Virtualization

pub const virt_title = "Virtualisation"

pub const virt_progress = 50

pub fn virt_level(lang: Language) -> String {
  case lang {
    English -> "Average"
    French -> "Moyen"
  }
}

// ZFS

pub const zfs_title = "ZFS"

pub const zfs_progress = 65

pub fn zfs_level(lang: Language) -> String {
  case lang {
    English -> "Intermediate"
    French -> "Intermédiaire"
  }
}
