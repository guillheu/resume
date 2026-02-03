import localization.{type Language, English, French}

pub const skills = [
  #(evm_title, evm_progress, evm_level),
  #(cosmos_title, cosmos_progress, cosmos_level),
  #(substrate_title, substrate_progress, substrate_level),
  #(solana_title, solana_progress, solana_level),
]

pub fn category_title(lang: Language) -> String {
  case lang {
    English -> "Blockchain technologies"
    French -> "Technologies Blockchain"
  }
}

// C

pub const evm_title = "EVM (Ethereum)"

pub const evm_progress = 55

pub fn evm_level(lang: Language) -> String {
  case lang {
    English -> "Average"
    French -> "Moyen"
  }
}

// Cosmos

pub const cosmos_title = "Cosmos"

pub const cosmos_progress = 25

pub fn cosmos_level(lang: Language) -> String {
  case lang {
    English -> "Foundations"
    French -> "Fondations"
  }
}

// Substrate

pub const substrate_title = "Substrate (Polkadot)"

pub const substrate_progress = 35

pub fn substrate_level(lang: Language) -> String {
  case lang {
    English -> "Foundations"
    French -> "Fondations"
  }
}

// Solana

pub const solana_title = "Solana"

pub const solana_progress = 5

pub fn solana_level(lang: Language) -> String {
  case lang {
    English -> "Beginner"
    French -> "Débutant"
  }
}
