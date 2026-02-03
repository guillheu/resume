import localization.{type Language, English, French}

pub const school = ""

pub const tasks = [task_1, task_2]

pub const techs = []

pub fn program(_lang: Language) -> String {
  "Certifications"
}

pub fn duration(_lang: Language) -> String {
  ""
}

pub fn task_1(lang: Language) -> String {
  case lang {
    English -> "CCNA (Cisco networking)"
    French -> "CCNA (réseaux Cisco)"
  }
}

pub fn task_2(lang: Language) -> String {
  case lang {
    English -> "IINS (Cisco instructor)"
    French -> "IINS (instructeur Cisco)"
  }
}
