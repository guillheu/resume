import localization.{type Language, English, French}

pub const techs = ["Kubernetes", "Helm", "Docker", "Python", "Vue.js"]

pub const links = [#("Github", "https://github.com/guillheu/K8-ingress-hub")]

pub fn title(lang: Language) -> String {
  case lang {
    English -> "K8-ingress-hub"
    French -> "K8-ingress-hub"
  }
}

pub fn description(lang: Language) -> String {
  case lang {
    English ->
      "A Kubernetes application to quickly viualize and access all \"Ingress\" resources of a cluster"
    French ->
      "Une application Kubernetes permettant de rapidement visualiser et accéder aux differentes ressources \"Ingress\" d'un cluster"
  }
}
