import gleam/list
import localization
import lustre/attribute
import lustre/element.{type Element}
import lustre/element/html
import model.{type Model}
import update.{type Msg}

pub fn get(model: Model) -> Element(Msg) {
  let title =
    html.h2(
      [
        attribute.class(
          "section-title text-sm font-bold uppercase tracking-widest text-neutral-900 mb-5 py-2 px-4 bg-neutral-100 border-l-4 border-teal-600",
        ),
      ],
      [html.text(get_title(model.language))],
    )

  let educations = list.map(model.educations, make_education(_, model.language))

  let contents = [title, ..educations]

  html.section(
    [attribute.class("section mb-8"), attribute.id("education")],
    contents,
  )
}

pub fn get_title(lang: localization.Language) -> String {
  case lang {
    localization.English -> "Education"
    localization.French -> "Éducation"
  }
}

fn make_education(
  education: model.Education,
  language: localization.Language,
) -> Element(Msg) {
  let tasks = list.map(education.tasks, make_education_task(_, language))
  let techs = list.map(education.techs, make_education_tech)
  html.div(
    [attribute.class("education-item mb-6 pb-6 border-b border-neutral-200")],
    [
      html.div(
        [
          attribute.class(
            "flex flex-col sm:flex-row justify-between items-start gap-1 mb-2",
          ),
        ],
        [
          html.div([], [
            html.div([attribute.class("font-semibold")], [
              html.text(education.program(language)),
            ]),
            html.div([attribute.class("text-neutral-600")], [
              html.text(education.school),
            ]),
          ]),
          html.span([attribute.class("text-sm text-neutral-500")], [
            html.text(education.duration(language)),
          ]),
        ],
      ),
      html.div([attribute.class("text-neutral-600 mb-3")], [
        html.ul([attribute.class("ml-5 list-disc")], tasks),
      ]),
      html.div([attribute.class("flex flex-wrap gap-1.5")], techs),
    ],
  )
}

fn make_education_task(
  task: localization.LocalizedString,
  language: localization.Language,
) -> Element(Msg) {
  html.li([attribute.class("mb-1")], [
    html.text(task(language)),
  ])
}

fn make_education_tech(tech: String) -> Element(Msg) {
  html.span(
    [
      attribute.class(
        "text-xs py-1 px-2.5 bg-neutral-50 border border-neutral-200 rounded text-neutral-600",
      ),
    ],
    [html.text(tech)],
  )
}
