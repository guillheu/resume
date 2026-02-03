import lustre/effect.{type Effect}
import model.{type Model}

pub type Msg

pub fn update(model: Model, _msg: Msg) -> #(Model, Effect(Msg)) {
  #(model, effect.none())
}
