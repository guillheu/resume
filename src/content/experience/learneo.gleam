import localization.{type Language, English, French}

pub const company = "Learneo"

pub const tasks = [task_1, task_2, task_3, task_4, task_5, task_6]

pub const techs = [
  "Cisco",
  "Huawei",
  "CCNA",
  "CCNP",
  "IINS",
  "HCIA",
  "HCIP",
  "IoT",
]

pub fn title(lang: Language) -> String {
  case lang {
    English -> "Network instructor"
    French -> "Instructeur réseaux"
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
    English -> "April 2019 - June 2020"
    French -> "Avril 2019 - Juin 2020"
  }
}

pub fn task_1(lang: Language) -> String {
  case lang {
    English ->
      "MIIT instructor, networking courses for people in career transition. Training lasting 3 months, 15-20 students"
    French ->
      "Instructeur MIIT, cours réseaux pour public en reconversion professionelle. Formation de 3 mois, 15‑20 élèves"
  }
}

pub fn task_2(lang: Language) -> String {
  case lang {
    English -> "IINS Certification obtained to be a recognized Cisco instructor"
    French ->
      "Obtention de certification IINS pour être instructeur Cisco reconnu"
  }
}

pub fn task_3(lang: Language) -> String {
  case lang {
    English ->
      "Cisco instructor for CCNA and CCNP courses. One to two week-long professional trainings per month, each with 2 to 4 students"
    French ->
      "Instructeur Cisco cours CCNA and CCNP. Une à deux formations professionelles d'une semaine chaque mois, chacune avec 2‑4 clients"
  }
}

pub fn task_4(lang: Language) -> String {
  case lang {
    English ->
      "Huawei instructor for HCIA and HCIP courses. 2 trainings lasting a week, 2-3 clients per session"
    French ->
      " Instructeur Huawei cours HCIA et HCIP. 2 formations d'une semaine, 2‑3 clients par session de formation"
  }
}

pub fn task_5(lang: Language) -> String {
  case lang {
    English ->
      "ICX instructor at RTE-Orange, specialized training for Organge employees at their data center"
    French ->
      "Instructeur ICX pour RTE‑Orange, formation spécialisée de professionels Orange dans leur data center"
  }
}

pub fn task_6(lang: Language) -> String {
  case lang {
    English ->
      "Research on IoT topics (Huawei) in preparation to provide training on the topic"
    French ->
      "Recherche sujets IoT (Huawei) en préparation pour donner un cours sur le sujet"
  }
}
// pub fn template(lang: Language) -> String {
//     case lang {
//       English -> todo
//       French -> todo
//     }
// }
