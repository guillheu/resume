import localization.{type Language, English, French}

pub const skills = [
  #(fr_title, fr_progress, fr_level),
  #(en_title, en_progress, en_level),
]

pub fn category_title(lang: Language) -> String {
  case lang {
    English -> "Spoken languages"
    French -> "Langues parlées"
  }
}

// Français

pub const fr_title = "Français"

pub const fr_progress = 90

pub fn fr_level(lang: Language) -> String {
  case lang {
    English -> "Mother tongue"
    French -> "Langue maternelle"
  }
}

// English

pub const en_title = "English"

pub const en_progress = 80

pub fn en_level(lang: Language) -> String {
  case lang {
    English -> "Bilingual"
    French -> "Bilingue"
  }
}
