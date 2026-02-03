pub type Language {
  English
  French
}

pub type LocalizedString =
  fn(Language) -> String
