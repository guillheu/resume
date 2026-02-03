import localization.{type Language, English, French}

pub const company = "Smart-chain"

pub const tasks = [task_1, task_2, task_3]

pub const techs = [
  "Docker",
  "Kubernetes",
  "Helm",
  "ArgoCD",
  "Grafana",
  "Prometheus",
  "Sealed-secrets",
  "Python",
  "Nginx",
  "Cert-manager",
]

pub fn title(lang: Language) -> String {
  case lang {
    English -> "DevOps specialist & chief developer"
    French -> "Spécialiste DevOps & chef développeur"
  }
}

pub fn location(lang: Language) -> String {
  case lang {
    English -> "Paris"
    French -> "Paris"
  }
}

pub fn duration(lang: Language) -> String {
  case lang {
    English -> "June 2021 - April 2022"
    French -> "Juin 2021 - Avril 2022"
  }
}

pub fn task_1(lang: Language) -> String {
  case lang {
    English ->
      "Audit and design refactor of a blockchain anchoring service, becoming responsible for the project. Notable clients: Edith-et-Nous, SACEM (Musicstart)"
    French ->
      "Audit et refonte du design du service d'ancrage sur blockchain. Prise de responsabilité du projet. Clients notables: Edith-et-Nous, SACEM (Musicstart)"
  }
}

pub fn task_2(lang: Language) -> String {
  case lang {
    English ->
      "Management and maintenance of internal and external services using Scaleway's kubernetes platform"
    French ->
      "Gestion et maintenance des services internes et externes via la plateforme Kubernetes de Scaleway"
  }
}

pub fn task_3(lang: Language) -> String {
  case lang {
    English ->
      "Internal docker training for developers to ensure security compliance"
    French ->
      "Formation Docker interne à destination des développeurs pour conformité de sécurité"
  }
}
