import gleam/list
import gleam/option
import localization
import lustre/attribute
import lustre/element.{type Element}
import lustre/element/html
import model.{type Model}
import update/message.{type Msg}

pub fn get(model: Model) -> Element(Msg) {
  let projects = list.map(model.projects, make_project(_, model.language))
  // |> list.append([make_large_project()])

  html.section([attribute.class("section mb-8"), attribute.id("projects")], [
    html.h2(
      [
        attribute.class(
          "section-title text-sm font-bold uppercase tracking-widest text-neutral-900 mb-5 py-2 px-4 bg-neutral-100 border-l-4 border-teal-600",
        ),
      ],
      [html.text(get_title(model.language))],
    ),
    html.div(
      [
        attribute.class("projects-grid grid grid-cols-1 sm:grid-cols-2 gap-4"),
      ],
      projects,
    ),
  ])
}

pub fn get_title(lang: localization.Language) -> String {
  case lang {
    localization.English -> "Personal projects"
    localization.French -> "Projets personnels"
  }
}

fn make_project(
  project: model.Project,
  language: localization.Language,
) -> Element(Msg) {
  let title = project.title(language)
  let links = list.map(project.links, make_link)
  let techs = list.map(project.techs, make_tech)
  let description = project.description(language)
  case project.embed {
    option.Some(embed) -> fn(title, links, techs, desc) {
      project_with_embed(title, links, techs, desc, embed)
    }
    option.None -> project_no_embed
  }(title, links, techs, description)
}

fn project_with_embed(
  title: String,
  links: List(Element(Msg)),
  techs: List(Element(Msg)),
  description: String,
  embed: Element(Msg),
) -> Element(Msg) {
  html.div(
    [
      attribute.class(
        "project-card sm:col-span-2 flex flex-col sm:flex-row border border-neutral-200 rounded-lg bg-neutral-50 overflow-hidden",
      ),
    ],
    [
      html.div(
        [
          attribute.class(
            "sm:w-1/2 shrink-0 flex items-center justify-center p-2 overflow-hidden",
          ),
        ],
        [embed],
      ),
      html.div([attribute.class("p-5 flex flex-col justify-between")], [
        html.div([], [
          html.div([attribute.class("flex justify-between items-start mb-2")], [
            html.span([attribute.class("text-lg font-semibold")], [
              html.text(title),
            ]),
            html.div([attribute.class("flex gap-2")], links),
          ]),
          html.p([attribute.class("text-sm text-neutral-600 mb-3")], [
            html.text(description),
          ]),
        ]),
        html.div([attribute.class("flex flex-wrap gap-1.5")], techs),
      ]),
    ],
  )
}

fn project_no_embed(
  title: String,
  links: List(Element(Msg)),
  techs: List(Element(Msg)),
  description: String,
) -> Element(Msg) {
  html.div(
    [
      attribute.class(
        "project-card p-4 border border-neutral-200 rounded-lg bg-neutral-50",
      ),
    ],
    [
      html.div([attribute.class("flex justify-between items-start mb-2")], [
        html.span([attribute.class("font-semibold")], [
          html.text(title),
        ]),
        html.div([attribute.class("flex gap-2")], links),
      ]),
      html.p([attribute.class("text-sm text-neutral-600 mb-3")], [
        html.text(description),
      ]),
      html.div([attribute.class("flex flex-wrap gap-1.5")], techs),
    ],
  )
}

fn make_tech(tech: String) -> Element(Msg) {
  html.span(
    [
      attribute.class(
        "text-xs py-1 px-2.5 bg-white border border-neutral-200 rounded text-neutral-600",
      ),
    ],
    [html.text(tech)],
  )
}

fn make_link(link: #(String, String)) -> Element(Msg) {
  let #(display, url) = link

  html.a(
    [
      attribute.class("text-[13px] text-teal-600 hover:underline"),
      attribute.href(url),
      attribute.target("_blank"),
    ],
    [html.text(display)],
  )
}
