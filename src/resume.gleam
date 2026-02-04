import lustre
import lustre/effect.{type Effect}
import model.{type Model}
import update.{type Msg}
import view

pub fn main() {
  let app = lustre.application(init, update.update, view.view)
  let assert Ok(_) = lustre.start(app, "#app", Nil)

  Nil
}

fn init(_args: Nil) -> #(Model, Effect(Msg)) {
  #(model.new(), effect.none())
}
