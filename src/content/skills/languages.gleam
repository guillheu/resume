import localization.{type Language, English, French}

pub const skills = [
  #(c_title, c_progress, c_level),
  #(java_title, java_progress, java_level),
  #(go_title, go_progress, go_level),
  #(gleam_title, gleam_progress, gleam_level),
  #(html_title, html_progress, html_level),
  #(js_title, js_progress, js_level),
  #(python_title, python_progress, python_level),
  #(rs_title, rs_progress, rs_level),
  #(sol_title, sol_progress, sol_level),
]

pub fn category_title(lang: Language) -> String {
  case lang {
    English -> "Programming languages"
    French -> "Langages de programmation"
  }
}

// C

pub const c_title = "C"

pub const c_progress = 10

pub fn c_level(lang: Language) -> String {
  case lang {
    English -> "Notions"
    French -> "Notions"
  }
}

// Java

pub const java_title = "Java"

pub const java_progress = 45

pub fn java_level(lang: Language) -> String {
  case lang {
    English -> "Average"
    French -> "Moyen"
  }
}

// Go

pub const go_title = "Go"

pub const go_progress = 40

pub fn go_level(lang: Language) -> String {
  case lang {
    English -> "Average"
    French -> "Moyen"
  }
}

// Gleam

pub const gleam_title = "Gleam"

pub const gleam_progress = 70

pub fn gleam_level(lang: Language) -> String {
  case lang {
    English -> "Advanced"
    French -> "Avancé"
  }
}

// HTML/CSS

pub const html_title = "HTML/CSS/TailwindCSS"

pub const html_progress = 30

pub fn html_level(lang: Language) -> String {
  case lang {
    English -> "Foundations"
    French -> "Fondations"
  }
}

// Javascript

pub const js_title = "Javascript"

pub const js_progress = 20

pub fn js_level(lang: Language) -> String {
  case lang {
    English -> "Notions"
    French -> "Notions"
  }
}

// Python

pub const python_title = "Python"

pub const python_progress = 55

pub fn python_level(lang: Language) -> String {
  case lang {
    English -> "Averarge"
    French -> "Moyen"
  }
}

// Rust

pub const rs_title = "Rust"

pub const rs_progress = 25

pub fn rs_level(lang: Language) -> String {
  case lang {
    English -> "Foundations"
    French -> "Fondations"
  }
}

// Solidity

pub const sol_title = "Solidity"

pub const sol_progress = 35

pub fn sol_level(lang: Language) -> String {
  case lang {
    English -> "Foundations"
    French -> "Fondations"
  }
}
