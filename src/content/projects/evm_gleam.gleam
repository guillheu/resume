import localization.{type Language, English, French}

pub const techs = ["Gleam", "EVM", "secp256k1", "keccak"]

pub const links = [#("Github", "https://github.com/guillheu/EVM_Gleam")]

pub fn title(lang: Language) -> String {
  case lang {
    English -> "EVM_Gleam"
    French -> "EVM_Gleam"
  }
}

pub fn description(lang: Language) -> String {
  case lang {
    English ->
      "Proto-library in Gleam to interact with EVM Blockchains (Ethereum). Capable of RPC queries and signing and sending transactions on a blockchain"
    French ->
      "Proto-bibliothèque Gleam pour interagir avec des Blockchains EVM (Ethereum). Capable de requêtes RPC et de signer et envoyer des transactions sur une blockchain"
  }
}
