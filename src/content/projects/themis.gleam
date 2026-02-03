import localization.{type Language, English, French}

pub const techs = ["Gleam", "Erlang", "ETS", "Mist", "BEAM"]

pub const links = [#("Github", "https://github.com/guillheu/Themis")]

pub fn title(lang: Language) -> String {
  case lang {
    English -> "Themis"
    French -> "Themis"
  }
}

pub fn description(lang: Language) -> String {
  case lang {
    English ->
      "An open-source Prometheus client library in Gleam. Uses Erlang's ETS tables for concurrent access from multiple BEAM processes"
    French ->
      "Une bibliothèque client Prometheus open source, en Gleam. Utilise les tables Erlang ETS pour accès parallèles depuis plusieurs processus BEAM"
  }
}
