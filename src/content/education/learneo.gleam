import localization.{type Language, English, French}

pub const school = "Learneo"

pub const tasks = [task_1, task_2, task_3]

pub const techs = [
  "CCNA",
  "TCP/IP",
  "VLAN",
  "STP",
  "OSPF",
  "EIGRP",
  "Wi-Fi",
  "DHCP",
  "DNS",
  "Cisco IOS",
  "NAT/PAT",
]

pub fn program(lang: Language) -> String {
  case lang {
    English -> "MIIT training (CCNA)"
    French -> "Formation MIIT (CCNA)"
  }
}

pub fn duration(lang: Language) -> String {
  case lang {
    English -> "January 2019 - April 2019"
    French -> "Janvier 2019 - Avril 2019"
  }
}

pub fn task_1(lang: Language) -> String {
  case lang {
    English -> "CCNA Certification (February 2019)"
    French -> "Certification CCNA (Février 2019)"
  }
}

pub fn task_2(lang: Language) -> String {
  case lang {
    English -> "Fundamental ITIL concepts"
    French -> "Concepts ITIL fondamentaux"
  }
}

pub fn task_3(lang: Language) -> String {
  case lang {
    English ->
      "Job offer at the training center itself to give the MIIT training"
    French ->
      "Offre d'emploi à l'institut de formation même pour donner la formation MIIT"
  }
}
