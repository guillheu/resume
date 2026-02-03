import localization
import lustre/effect.{type Effect}
import model.{type Model, Model}

pub type Msg {
  UserChangedLanguage(localization.Language)
}

pub fn update(model: Model, msg: Msg) -> #(Model, Effect(Msg)) {
  case msg {
    UserChangedLanguage(new_lang) -> #(
      Model(..model, language: new_lang),
      effect.none(),
    )
  }
}
