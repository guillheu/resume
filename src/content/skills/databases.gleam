import localization.{type Language, English, French}

pub const skills = [
  #(sql_title, sql_progress, sql_level),
  #(redis_title, redis_progress, redis_level),
]

pub fn category_title(lang: Language) -> String {
  case lang {
    English -> "Databases"
    French -> "Bases de données"
  }
}

// SQL

pub const sql_title = "SQL"

pub const sql_progress = 20

pub fn sql_level(lang: Language) -> String {
  case lang {
    English -> "Notions"
    French -> "Notions"
  }
}

// Redis

pub const redis_title = "Redis/ValKey"

pub const redis_progress = 40

pub fn redis_level(lang: Language) -> String {
  case lang {
    English -> "Average"
    French -> "Moyen"
  }
}
