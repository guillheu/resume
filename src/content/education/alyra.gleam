import localization.{type Language, English, French}

pub const school = "Alyra"

pub const tasks = [task_1, task_2, task_3, task_4]

pub const techs = ["Ethereum", "Solidity", "web3.py", "web3.js"]

pub fn program(lang: Language) -> String {
  case lang {
    English -> "Blockchain Developer training (Alyra certification)"
    French -> "Formation Développeur Blockchain (certification Alyra)"
  }
}

pub fn duration(lang: Language) -> String {
  case lang {
    English -> "October 2020 - May 2021"
    French -> "Octobre 2020 - Mai 2021"
  }
}

pub fn task_1(lang: Language) -> String {
  case lang {
    English ->
      "Blockchain foundations, PoW/PoS/PoA, mining, reliability, limitations"
    French ->
      "Fondamentaux des réseaux blockchain, PoW/PoS/PoA, minage, fiabilité, limitations"
  }
}

pub fn task_2(lang: Language) -> String {
  case lang {
    English -> "Solidity programming on EVM blockchain"
    French -> "Programmation Solidity sur blockchain EVM"
  }
}

pub fn task_3(lang: Language) -> String {
  case lang {
    English -> "Development of decentralized applications (DApps)"
    French -> "Développement d'applications décentralisées (DApps)"
  }
}

pub fn task_4(lang: Language) -> String {
  case lang {
    English ->
      "Final project: DeSign, decentralized digital signature (github.com/guillheu/DeSign)"
    French ->
      "Projet final : DeSign, Signature electronique décentralisée (github.com/guillheu/DeSign)"
  }
}
