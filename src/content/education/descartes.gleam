import localization.{type Language, English, French}

pub const school = "IUT Paris Descartes"

pub const tasks = [task_1, task_2, task_3, task_4]

pub const techs = [
  "Java JEE",
  "C",
  "C++",
  "HTML",
  "CSS",
  "PHP",
  "SQL",
  "IPv4",
  "Linux",
]

pub fn program(lang: Language) -> String {
  case lang {
    English -> "DUT (Associate's degree) in computer science"
    French -> "DUT Informatique"
  }
}

pub fn duration(lang: Language) -> String {
  case lang {
    English -> "July 2018"
    French -> "Juillet 2018"
  }
}

pub fn task_1(lang: Language) -> String {
  case lang {
    English -> "Programming in multiple languages"
    French -> "Programmation dans plusieurs langages"
  }
}

pub fn task_2(lang: Language) -> String {
  case lang {
    English -> "Networking configuration fundamentals"
    French -> "Fondamentaux des configurations réseaux"
  }
}

pub fn task_3(lang: Language) -> String {
  case lang {
    English -> "Introduction to Linux systems"
    French -> "Introduction aux systèmes Linux"
  }
}

pub fn task_4(lang: Language) -> String {
  case lang {
    English -> "Final project: AI SaaS to answer FAQs via email (IBM's Watson)"
    French ->
      "Projet de fin de cursus : SaaS d'IA de FAQ automatisée par email (Watson de IBM)"
  }
}
