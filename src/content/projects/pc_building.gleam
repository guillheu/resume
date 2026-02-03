import localization.{type Language, English, French}

pub const techs = ["Hardware", "IoT", "Clustering", "Linux"]

pub const links = []

pub fn title(lang: Language) -> String {
  case lang {
    English -> "PC/Server Building"
    French -> "Montage PC/Serveurs"
  }
}

pub fn description(lang: Language) -> String {
  case lang {
    English ->
      "Hardware selection and build for several systems: gaming PCs, servers, embedded systems, mini-clusters..."
    French ->
      "Selection de composants et montage de divers systèmes : PCs gaming, serveurs, systèmes embarqués, mini-clusters..."
  }
}
