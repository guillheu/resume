import localization.{type Language, English, French}

pub const skills = [
  #(web_title, web_progress, web_level),
  #(crypto_title, crypto_progress, crypto_level),
  #(netsec_title, netsec_progress, netsec_level),
  #(eidas_title, eidas_progress, eidas_level),
]

pub fn category_title(lang: Language) -> String {
  case lang {
    English -> "Security & compliance"
    French -> "Sécurité & conformité"
  }
}

// Web

pub const web_title = "Web (HTTPS/HSTS/CORS)"

pub const web_progress = 60

pub fn web_level(lang: Language) -> String {
  case lang {
    English -> "Average"
    French -> "Moyen"
  }
}

// Cryptography

pub const crypto_title = "Cryptography"

pub const crypto_progress = 45

pub fn crypto_level(lang: Language) -> String {
  case lang {
    English -> "Average"
    French -> "Moyen"
  }
}

// Network security

pub const netsec_title = "Network security"

pub const netsec_progress = 60

pub fn netsec_level(lang: Language) -> String {
  case lang {
    English -> "Advanced"
    French -> "Avancé"
  }
}

// EIDAS

pub const eidas_title = "EIDAS"

pub const eidas_progress = 35

pub fn eidas_level(lang: Language) -> String {
  case lang {
    English -> "Foundations"
    French -> "Fondations"
  }
}
