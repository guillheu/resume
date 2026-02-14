import lustre/effect.{type Effect}
import model.{type Model, Model}
import update/message.{type Msg}

pub fn update(model: Model, msg: Msg) -> #(Model, Effect(Msg)) {
  case msg {
    message.UserChangedLanguage(new_lang) -> #(
      Model(..model, language: new_lang),
      effect.none(),
    )
  }
}
