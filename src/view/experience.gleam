import gleam/list
import localization
import lustre/attribute
import lustre/element.{type Element}
import lustre/element/html
import model.{type Model}
import update/message.{type Msg}

pub fn get(model: Model) -> Element(Msg) {
  let section_title =
    html.h2(
      [
        attribute.class(
          "section-title text-sm font-bold uppercase tracking-widest text-neutral-900 mb-5 py-2 px-4 bg-neutral-100 border-l-4 border-teal-600",
        ),
      ],
      [html.text(get_title(model.language))],
    )
  let experiences =
    list.map(model.experiences, make_experience(_, model.language))

  html.section(
    [attribute.class("section mb-8"), attribute.id("experience")],
    list.prepend(experiences, section_title),
  )
}

pub fn get_title(lang: localization.Language) -> String {
  case lang {
    localization.English -> "Professional Experience"
    localization.French -> "Expérience professionnelle"
  }
}

fn make_experience(
  experience: model.Experience,
  language: localization.Language,
) -> Element(Msg) {
  let tasks = list.map(experience.tasks, make_task(_, language))
  let techs = list.map(experience.techs, make_tech)

  html.div(
    [attribute.class("experience-item mb-3 pb-3 border-b border-neutral-200")],
    [
      html.div(
        [
          attribute.class(
            "flex flex-col sm:flex-row justify-between items-start gap-1 mb-2 ",
          ),
        ],
        [
          html.div([], [
            html.div([attribute.class("text-[17px] font-semibold")], [
              html.text(experience.title(language)),
            ]),
            html.div([attribute.class("text-neutral-800 font-medium")], [
              html.text(experience.company),
            ]),
          ]),
          html.div([attribute.class("text-right")], [
            html.span(
              [
                attribute.class("text-sm text-neutral-700 whitespace-nowrap"),
              ],
              [html.text(experience.duration(language))],
            ),
            html.div([attribute.class("text-sm text-neutral-500")], [
              html.text(experience.location(language)),
            ]),
          ]),
        ],
      ),
      html.div([attribute.class("text-neutral-600 mb-1")], [
        html.ul([attribute.class("ml-5 list-disc")], tasks),
      ]),
      html.div([attribute.class("flex flex-wrap gap-1.5")], techs),
    ],
  )
}

fn make_task(
  task: localization.LocalizedString,
  language: localization.Language,
) -> Element(Msg) {
  html.li([attribute.class("mb-1")], [
    html.text(task(language)),
  ])
}

fn make_tech(tech: String) -> Element(Msg) {
  html.span(
    [
      attribute.class(
        "text-xs py-1 px-2.5 bg-neutral-50 border border-neutral-200 rounded text-neutral-600",
      ),
    ],
    [html.text(tech)],
  )
}
