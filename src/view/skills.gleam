import gleam/int
import gleam/list
import localization
import lustre/attribute.{attribute}
import lustre/element.{type Element}
import lustre/element/html
import model.{type Model}
import update.{type Msg}

pub fn get(model: Model) -> Element(Msg) {
  let skill_categories =
    list.map(model.skills, make_category(_, model.language))
  html.section([attribute.class("section mb-8")], [
    html.h2(
      [
        attribute.class(
          "section-title text-sm font-bold uppercase tracking-widest text-neutral-900 mb-5 py-2 px-4 bg-neutral-100 border-l-4 border-teal-600",
        ),
      ],
      [html.text("Skills")],
    ),
    html.div(
      [
        attribute.class(
          "skills-grid grid grid-cols-1 sm:grid-cols-2 gap-6 mb-6 pb-3 border-b border-neutral-200",
        ),
      ],
      skill_categories,
    ),
  ])
}

fn make_category(
  category: model.SkillCategory,
  lang: localization.Language,
) -> Element(Msg) {
  let skills = list.map(category.skills, make_skill(_, lang))
  let title =
    html.h3(
      [
        attribute.class("text-sm font-semibold mb-3 text-neutral-900"),
      ],
      [html.text(category.title(lang))],
    )

  html.div([attribute.class("skill-category")], [title, ..skills])
}

fn make_skill(skill: model.Skill, lang: localization.Language) -> Element(Msg) {
  html.div([attribute.class("mb-1")], [
    html.div([attribute.class("flex justify-between mb-1")], [
      html.span([attribute.class("text-sm text-neutral-600")], [
        html.text(skill.title),
      ]),
      html.span([attribute.class("text-xs text-neutral-500")], [
        html.text(skill.level(lang)),
      ]),
    ]),
    html.div(
      [
        attribute.class("h-1.5 bg-neutral-200 rounded-full overflow-hidden"),
      ],
      [
        html.div(
          [
            attribute(
              "style",
              "width: " <> int.to_string(skill.progress) <> "%;",
            ),
            attribute.class("h-full bg-teal-600 rounded-full"),
          ],
          [],
        ),
      ],
    ),
  ])
}
