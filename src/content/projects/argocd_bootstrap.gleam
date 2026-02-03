import localization.{type Language, English, French}

pub const techs = ["Kubernetes", "Helm", "ArgoCD", "Yaml"]

pub const links = [#("Github", "https://github.com/guillheu/ArgoCD-bootstrap")]

pub fn title(lang: Language) -> String {
  case lang {
    English -> "ArgoCD-bootstrap"
    French -> "ArgoCD-bootstrap"
  }
}

pub fn description(lang: Language) -> String {
  case lang {
    English ->
      "Helm chart to quickly create an \"app of apps\" pattern for for ArgoCD. Allows rapidly deploying applions on a Kubernetes cluster"
    French ->
      "Charte Helm pour rapidement créer un pattern \"app of apps\" pour ArgoCD. Permet de rapidement déployer des applications sur cluster Kubernetes"
  }
}
