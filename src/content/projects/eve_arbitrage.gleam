import localization.{type Language, English, French}

pub const techs = [
  "Gleam",
  "Lustre",
  "TailwindCSS",
  "Javascript",
  "REST",
  "Data processing",
  "v0.app",
]

pub const links = [
  #("Link ", "#"),
  #("Github", "https://github.com/guillheu/Eve-Arbitrage"),
  #("Youtube", "#"),
]

pub fn title(lang: Language) -> String {
  case lang {
    English -> "Eve-Arbitrage"
    French -> "Eve-Arbitrage"
  }
}

pub fn description(lang: Language) -> String {
  case lang {
    English ->
      "A real-time arbitration tool for the MMORPG \"Eve Online\". Presented at the Gleam Gathering conference in February 2026"
    French ->
      "Un outil d'arbitrage en temps réel sur le MMORPG \"Eve Online\". Présenté à la conférence Gleam Gathering en Février 2026"
  }
}
