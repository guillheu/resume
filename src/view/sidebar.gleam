import localization
import lustre/attribute.{attribute}
import lustre/element.{type Element, element}
import lustre/element/html
import lustre/element/svg
import lustre/event
import model.{type Model}
import update.{type Msg}
import view/education
import view/experience
import view/projects
import view/skills

fn get_language_title(lang: localization.Language) -> String {
  case lang {
    localization.English -> "Language"
    localization.French -> "Langue"
  }
}

pub fn get(model: Model) -> Element(Msg) {
  html.nav(
    [
      attribute.class(
        "sidebar fixed top-0 left-0 h-screen w-52 bg-neutral-50 border-r border-neutral-200 flex flex-col justify-between py-8 px-5 z-50",
      ),
    ],
    [
      html.div([attribute.class("flex flex-col gap-1")], [
        html.span(
          [
            attribute.class(
              "text-xs font-bold uppercase tracking-widest text-neutral-400 mb-3 px-3",
            ),
          ],
          [html.text("Navigation")],
        ),
        html.a(
          [
            attribute.class(
              "text-sm text-neutral-600 hover:text-teal-600 hover:bg-neutral-100 transition-colors px-3 py-2 rounded",
            ),
            attribute.href("#experience"),
          ],
          [html.text(experience.get_title(model.language))],
        ),
        html.a(
          [
            attribute.class(
              "text-sm text-neutral-600 hover:text-teal-600 hover:bg-neutral-100 transition-colors px-3 py-2 rounded",
            ),
            attribute.href("#education"),
          ],
          [html.text(education.get_title(model.language))],
        ),
        html.a(
          [
            attribute.class(
              "text-sm text-neutral-600 hover:text-teal-600 hover:bg-neutral-100 transition-colors px-3 py-2 rounded",
            ),
            attribute.href("#projects"),
          ],
          [html.text(projects.get_title(model.language))],
        ),
        html.a(
          [
            attribute.class(
              "text-sm text-neutral-600 hover:text-teal-600 hover:bg-neutral-100 transition-colors px-3 py-2 rounded",
            ),
            attribute.href("#skills"),
          ],
          [html.text(skills.get_title(model.language))],
        ),
      ]),
      html.div([attribute.class("flex flex-col gap-3")], [
        html.span(
          [
            attribute.class(
              "text-xs font-bold uppercase tracking-widest text-neutral-400 px-3",
            ),
          ],
          [html.text(get_language_title(model.language))],
        ),
        html.div([attribute.class("flex gap-3 px-3")], [
          html.button(
            [
              attribute.class(
                "cursor-pointer bg-transparent border-none p-0 opacity-80 hover:opacity-100 transition-opacity",
              ),
              attribute("title", "English"),
              event.on_click(update.UserChangedLanguage(localization.English)),
            ],
            [
              svg.svg(
                [
                  attribute.class("rounded"),
                  attribute("height", "36"),
                  attribute("width", "54"),
                  attribute("viewBox", "0 0 60 40"),
                  attribute("xmlns", "http://www.w3.org/2000/svg"),
                ],
                [
                  element("clippath", [attribute.id("a")], [
                    svg.rect([
                      attribute("rx", "2"),
                      attribute("height", "40"),
                      attribute("width", "60"),
                    ]),
                  ]),
                  svg.g([attribute("clip-path", "url(#a)")], [
                    svg.rect([
                      attribute("fill", "#012169"),
                      attribute("height", "40"),
                      attribute("width", "60"),
                    ]),
                    svg.path([
                      attribute("fill", "#fff"),
                      attribute(
                        "d",
                        "M0 0v4.5L53.5 40H60v-4.5L6.5 0zm60 0v4.5L6.5 40H0v-4.5L53.5 0z",
                      ),
                    ]),
                    svg.path([
                      attribute("fill", "#C8102E"),
                      attribute(
                        "d",
                        "M0 0v2.1L56.2 40H60v-2.1L3.8 0zm60 0v2.1L3.8 40H0v-2.1L56.2 0z",
                      ),
                    ]),
                    svg.path([
                      attribute("fill", "#fff"),
                      attribute("d", "M25 0v40h10V0zM0 13.3v13.4h60V13.3z"),
                    ]),
                    svg.path([
                      attribute("fill", "#C8102E"),
                      attribute("d", "M27 0v40h6V0zM0 16v8h60v-8z"),
                    ]),
                  ]),
                ],
              ),
            ],
          ),
          html.button(
            [
              attribute.class(
                "cursor-pointer bg-transparent border-none p-0 opacity-80 hover:opacity-100 transition-opacity",
              ),
              attribute("title", "Francais"),
              event.on_click(update.UserChangedLanguage(localization.French)),
            ],
            [
              svg.svg(
                [
                  attribute.class("rounded"),
                  attribute("height", "36"),
                  attribute("width", "54"),
                  attribute("viewBox", "0 0 60 40"),
                  attribute("xmlns", "http://www.w3.org/2000/svg"),
                ],
                [
                  svg.rect([
                    attribute("rx", "2"),
                    attribute("fill", "#fff"),
                    attribute("height", "40"),
                    attribute("width", "60"),
                  ]),
                  svg.rect([
                    attribute("fill", "#002395"),
                    attribute("height", "40"),
                    attribute("width", "20"),
                  ]),
                  svg.rect([
                    attribute("fill", "#ED2939"),
                    attribute("height", "40"),
                    attribute("width", "20"),
                    attribute("x", "40"),
                  ]),
                ],
              ),
            ],
          ),
        ]),
      ]),
    ],
  )
}
