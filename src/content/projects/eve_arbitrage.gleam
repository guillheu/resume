import localization.{type Language, English, French}
import lustre/attribute.{attribute}
import lustre/element/html

const video_code = "dQw4w9WgXcQ"

pub const techs = [
  "Gleam",
  "Lustre",
  "TailwindCSS",
  "Javascript",
  "REST",
  "Data processing",
  "v0.app",
]

const video_title = "Gleam Gathering 2026 - Eve Online Arbitrage - Guillaume Heu"

pub const links = [
  #("Link ", "https://eve-arbitrage.guillheu.dev/"),
  #("Github", "https://github.com/guillheu/Eve-Arbitrage"),
  // #("Youtube", "https://youtu.be/" <> video_code),
]

pub fn title(lang: Language) -> String {
  case lang {
    English -> "Eve-Arbitrage"
    French -> "Eve-Arbitrage"
  }
}

pub fn description(lang: Language) -> String {
  case lang {
    English ->
      "A real-time arbitration tool for the MMORPG \"Eve Online\". Presented at the Gleam Gathering conference in February 2026 (Youtube video available soon)"
    French ->
      "Un outil d'arbitrage en temps réel sur le MMORPG \"Eve Online\". Présenté à la conférence Gleam Gathering en Février 2026 (Video Youtube bientôt disponible)"
  }
}

pub fn get_embed() {
  html.div([attribute.class("relative w-full h-full")], [
    html.h2([attribute.class("hidden print:block text-center")], [
      html.text(video_title),
    ]),
    html.iframe([
      attribute.class("w-full h-full object-cover rounded-lg print:hidden"),
      attribute("allowfullscreen", ""),
      attribute(
        "allow",
        "accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share",
      ),
      attribute("frameborder", "0"),
      attribute("title", ""),
      attribute.src("https://www.youtube.com/embed/" <> video_code),
      attribute.height(500),
      attribute.width(500),
    ]),
    html.img([
      attribute.class("hidden print:block object-cover rounded-lg"),
      attribute.alt("Video thumbnail"),
      attribute.src(
        "https://img.youtube.com/vi/" <> video_code <> "/hqdefault.jpg",
      ),
    ]),
  ])
}
