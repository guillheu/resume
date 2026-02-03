import localization.{type Language, English, French}

pub const skills = [
  #(docker_title, docker_progress, docker_level),
  #(k8_title, k8_progress, k8_level),
  #(ci_title, ci_progress, ci_level),
  #(ansible_title, ansible_progress, ansible_level),
  #(git_title, git_progress, git_level),
  #(prom_title, prom_progress, prom_level),
]

pub fn category_title(lang: Language) -> String {
  case lang {
    English -> "DevOps"
    French -> "DevOps"
  }
}

// Kubernetes

pub const k8_title = "Kubernetes"

pub const k8_progress = 65

pub fn k8_level(lang: Language) -> String {
  case lang {
    English -> "Advanced"
    French -> "Avancé"
  }
}

// Docker

pub const docker_title = "Docker/Podman"

pub const docker_progress = 75

pub fn docker_level(lang: Language) -> String {
  case lang {
    English -> "Advanced"
    French -> "Avancé"
  }
}

// CI/CD

pub const ci_title = "CI/CD"

pub const ci_progress = 15

pub fn ci_level(lang: Language) -> String {
  case lang {
    English -> "Notions"
    French -> "Notions"
  }
}

// Ansible

pub const ansible_title = "Ansible"

pub const ansible_progress = 25

pub fn ansible_level(lang: Language) -> String {
  case lang {
    English -> "Notions"
    French -> "Notions"
  }
}

// Git

pub const git_title = "Git"

pub const git_progress = 40

pub fn git_level(lang: Language) -> String {
  case lang {
    English -> "Average"
    French -> "Moyen"
  }
}

// Prometheus/Grafana

pub const prom_title = "Prometheus & Grafana"

pub const prom_progress = 75

pub fn prom_level(lang: Language) -> String {
  case lang {
    English -> "Advanced"
    French -> "Avancé"
  }
}
