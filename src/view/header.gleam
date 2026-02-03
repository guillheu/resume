import localization
import lustre/attribute.{attribute}
import lustre/element.{type Element}
import lustre/element/html
import lustre/element/svg
import lustre/event
import model.{type Model}
import update.{type Msg}

pub fn get(model: Model) -> Element(Msg) {
  let picture = picture()
  let name = name(model)
  let links = links(model)
  // let flags = flags(model.language)
  html.header(
    [
      attribute.class(
        "flex flex-col sm:flex-row justify-between items-start gap-8 pb-8 border-b border-neutral-200 mb-8",
      ),
    ],
    [
      html.div(
        [
          attribute.class(
            "flex flex-col sm:flex-row items-center sm:items-start gap-6 text-center sm:text-left",
          ),
        ],
        [
          picture,
          name,
        ],
      ),
      links,
    ],
  )
}

fn picture() -> Element(Msg) {
  html.img([
    attribute.class(
      "w-24 h-24 rounded-full object-cover border-[3px] border-neutral-200 shrink-0",
    ),
    attribute.alt("Alex Morgan"),
    attribute.src("resume/image/profile-photo.jpg"),
  ])
}

fn name(model: Model) -> Element(Msg) {
  html.div([], [
    html.h1([attribute.class("text-3xl font-bold tracking-tight")], [
      html.text(model.fullname),
    ]),
  ])
}

fn links(model: Model) -> Element(Msg) {
  html.div(
    [attribute.class("flex flex-col gap-2 text-sm text-left sm:text-right")],
    [
      html.a(
        [
          attribute.class(
            "flex items-center gap-2 text-neutral-600 hover:text-teal-600 transition-colors sm:justify-end",
          ),
          attribute.href("mailto:" <> model.email),
        ],
        [
          email_icon(),
          html.span([], [html.text(model.email)]),
        ],
      ),
      html.a(
        [
          attribute.class(
            "flex items-center gap-2 text-neutral-600 hover:text-teal-600 transition-colors sm:justify-end",
          ),
          attribute.href("https://linkedin.com/in/" <> model.linkedin),
        ],
        [
          linkedin_icon(),
          html.span([], [html.text(model.linkedin)]),
        ],
      ),
      html.a(
        [
          attribute.class(
            "flex items-center gap-2 text-neutral-600 hover:text-teal-600 transition-colors sm:justify-end",
          ),
          attribute.href("https://github.com/" <> model.github),
        ],
        [
          github_icon(),
          html.span([], [html.text(model.github)]),
        ],
      ),
      flags(model.language),
    ],
  )
}

fn flags(lang: localization.Language) -> Element(Msg) {
  let #(fr_fade, en_fade) = case lang {
    localization.English -> #(" opacity-50", "")
    localization.French -> #("", " opacity-50")
  }

  html.div([attribute.class("flex gap-4 h-10 w-10 ml-15 cursor-pointer")], [
    html.img([
      attribute.src("/resume/image/france.png"),
      attribute.alt("Français"),
      attribute.class(fr_fade),
      event.on_click(update.UserChangedLanguage(localization.French)),
    ]),

    html.img([
      attribute.src("/resume/image/uk.png"),
      attribute.alt("English"),
      attribute.class(en_fade),
      event.on_click(update.UserChangedLanguage(localization.English)),
    ]),
  ])
}

fn github_icon() -> Element(Msg) {
  svg.svg(
    [
      attribute("fill", "currentColor"),
      attribute("viewBox", "0 0 24 24"),
      attribute("height", "16"),
      attribute("width", "16"),
      attribute("xmlns", "http://www.w3.org/2000/svg"),
    ],
    [
      svg.path([
        attribute(
          "d",
          "M12 0c-6.626 0-12 5.373-12 12 0 5.302 3.438 9.8 8.207 11.387.599.111.793-.261.793-.577v-2.234c-3.338.726-4.033-1.416-4.033-1.416-.546-1.387-1.333-1.756-1.333-1.756-1.089-.745.083-.729.083-.729 1.205.084 1.839 1.237 1.839 1.237 1.07 1.834 2.807 1.304 3.492.997.107-.775.418-1.305.762-1.604-2.665-.305-5.467-1.334-5.467-5.931 0-1.311.469-2.381 1.236-3.221-.124-.303-.535-1.524.117-3.176 0 0 1.008-.322 3.301 1.23.957-.266 1.983-.399 3.003-.404 1.02.005 2.047.138 3.006.404 2.291-1.552 3.297-1.23 3.297-1.23.653 1.653.242 2.874.118 3.176.77.84 1.235 1.911 1.235 3.221 0 4.609-2.807 5.624-5.479 5.921.43.372.823 1.102.823 2.222v3.293c0 .319.192.694.801.576 4.765-1.589 8.199-6.086 8.199-11.386 0-6.627-5.373-12-12-12z",
        ),
      ]),
    ],
  )
}

fn linkedin_icon() -> Element(Msg) {
  svg.svg(
    [
      attribute("fill", "currentColor"),
      attribute("viewBox", "0 0 24 24"),
      attribute("height", "16"),
      attribute("width", "16"),
      attribute("xmlns", "http://www.w3.org/2000/svg"),
    ],
    [
      svg.path([
        attribute(
          "d",
          "M20.447 20.452h-3.554v-5.569c0-1.328-.027-3.037-1.852-3.037-1.853 0-2.136 1.445-2.136 2.939v5.667H9.351V9h3.414v1.561h.046c.477-.9 1.637-1.85 3.37-1.85 3.601 0 4.267 2.37 4.267 5.455v6.286zM5.337 7.433c-1.144 0-2.063-.926-2.063-2.065 0-1.138.92-2.063 2.063-2.063 1.14 0 2.064.925 2.064 2.063 0 1.139-.925 2.065-2.064 2.065zm1.782 13.019H3.555V9h3.564v11.452zM22.225 0H1.771C.792 0 0 .774 0 1.729v20.542C0 23.227.792 24 1.771 24h20.451C23.2 24 24 23.227 24 22.271V1.729C24 .774 23.2 0 22.222 0h.003z",
        ),
      ]),
    ],
  )
}

fn email_icon() -> Element(Msg) {
  svg.svg(
    [
      attribute("stroke-linejoin", "round"),
      attribute("stroke-linecap", "round"),
      attribute("stroke-width", "2"),
      attribute("stroke", "currentColor"),
      attribute("fill", "none"),
      attribute("viewBox", "0 0 24 24"),
      attribute("height", "16"),
      attribute("width", "16"),
      attribute("xmlns", "http://www.w3.org/2000/svg"),
    ],
    [
      svg.rect([
        attribute("rx", "2"),
        attribute("y", "4"),
        attribute("x", "2"),
        attribute("height", "16"),
        attribute("width", "20"),
      ]),
      svg.path([
        attribute("d", "m22 7-8.97 5.7a1.94 1.94 0 0 1-2.06 0L2 7"),
      ]),
    ],
  )
}
