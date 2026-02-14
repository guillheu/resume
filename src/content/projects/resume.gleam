import localization.{type Language, English, French}

pub const techs = ["Gleam", "Lustre", "TailwindCSS", "v0.app"]

pub const links = [
  #("Link", "#"),
  #("Github", "https://github.com/guillheu/resume"),
]

pub fn title(lang: Language) -> String {
  case lang {
    English -> "This resume"
    French -> "Ce CV"
  }
}

pub fn description(lang: Language) -> String {
  case lang {
    English ->
      "Interactible web page (Single Page Application). AI web design, integrated to the Lustre framework"
    French ->
      "Page web (Application à page unique) interactive. Web design par IA, intégré au framework Lustre"
  }
}
