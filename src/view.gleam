import lustre/attribute
import lustre/element.{type Element}
import lustre/element/html
import model.{type Model}
import update.{type Msg}
import view/skills

import view/education
import view/experience
import view/header
import view/projects

pub fn view(model: Model) -> Element(Msg) {
  let header = header.get(model)
  let experience = experience.get(model)
  let education = education.get(model)
  let projects = projects.get(model)
  let skills = skills.get(model)

  html.div([attribute.class("resume max-w-[850px] mx-auto py-12 px-8")], [
    header,
    experience,
    education,
    projects,
    skills,
  ])
}
