import localization.{type Language, English, French}

pub const company = "Coinpri"

pub const tasks = [task_1, task_2, task_3, task_4]

pub const techs = [
  "Proxmox",
  "Ubiquiti UDM Pro",
  "Geth",
  "CosmosSDK",
  "Kubernetes",
  "ArgoCD",
  "Nix",
  "Nebula VPN",
]

pub fn title(lang: Language) -> String {
  case lang {
    English -> "Site Reliability Specialist"
    French -> "Spécialiste fiabilité de site"
  }
}

pub fn location(lang: Language) -> String {
  case lang {
    English -> "Dubai (remotely)"
    French -> "Dubai (en distanciel)"
  }
}

pub fn duration(lang: Language) -> String {
  case lang {
    English -> "December 2022 - Present"
    French -> "Décembre 2022 - Présent"
  }
}

pub fn task_1(lang: Language) -> String {
  case lang {
    English ->
      "Infrastructure design for blockchain nodes for high availability"
    French ->
      "Design infrastructure pour noeuds blockchain pour de la haute disponibilité"
  }
}

pub fn task_2(lang: Language) -> String {
  case lang {
    English ->
      "Partnership with a small dozen of innovative blockchain projects"
    French -> "Partenariat avec une dixaine de projets blockchain innovants"
  }
}

pub fn task_3(lang: Language) -> String {
  case lang {
    English -> "8 blockchain nodes in production"
    French -> "8 noeuds blockchain en production"
  }
}

pub fn task_4(lang: Language) -> String {
  case lang {
    English -> "Hybrid infrastructure: on-premise servers & cloud services"
    French -> "Infrastructure hybride : serveurs sur site & services cloud"
  }
}
// pub fn template(lang: Language) -> String {
//     case lang {
//       English -> todo
//       French -> todo
//     }
// }
