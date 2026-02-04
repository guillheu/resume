import content/education/alyra
import content/skills/blockchain
import content/skills/databases
import content/skills/languages
import content/skills/security
import content/skills/spoken_languages
import gleam/int
import gleam/order

// import content/education/certifications
import content/education/descartes
import content/education/learneo as ed_learneo
import content/experience/coinpri
import content/experience/learneo
import content/experience/smart_chain
import content/personal
import content/projects/argocd_bootstrap
import content/projects/eve_arbitrage
import content/projects/evm_gleam
import content/projects/homelab
import content/projects/k8_ingress_hub
import content/projects/pc_building
import content/projects/resume
import content/projects/themis
import content/skills/devops
import content/skills/networking
import content/skills/sysadmin
import gleam/list
import localization.{type Language, type LocalizedString, French}

pub type Model {
  Model(
    language: Language,
    fullname: String,
    email: String,
    linkedin: String,
    github: String,
    experiences: List(Experience),
    educations: List(Education),
    projects: List(Project),
    skills: List(SkillCategory),
  )
}

pub type Experience {
  Experience(
    title: LocalizedString,
    company: String,
    duration: LocalizedString,
    location: LocalizedString,
    tasks: List(LocalizedString),
    techs: List(String),
  )
}

pub type Education {
  Education(
    program: LocalizedString,
    school: String,
    duration: LocalizedString,
    tasks: List(LocalizedString),
    techs: List(String),
  )
}

pub type Project {
  Project(
    title: LocalizedString,
    description: LocalizedString,
    techs: List(String),
    links: List(#(String, String)),
  )
}

pub type SkillCategory {
  SkillCategory(title: LocalizedString, skills: List(Skill))
}

pub type Skill {
  Skill(title: String, progress: Int, level: LocalizedString)
}

pub fn new() -> Model {
  Model(
    language: French,
    fullname: personal.fullname,
    email: personal.email,
    linkedin: personal.linkedin,
    github: personal.github,
    experiences: [
      Experience(
        title: coinpri.title,
        company: coinpri.company,
        duration: coinpri.duration,
        location: coinpri.location,
        tasks: coinpri.tasks,
        techs: coinpri.techs,
      ),
      Experience(
        title: smart_chain.title,
        company: smart_chain.company,
        duration: smart_chain.duration,
        location: smart_chain.location,
        tasks: smart_chain.tasks,
        techs: smart_chain.techs,
      ),
      Experience(
        title: learneo.title,
        company: learneo.company,
        duration: learneo.duration,
        location: learneo.location,
        tasks: learneo.tasks,
        techs: learneo.techs,
      ),
    ],
    educations: [
      Education(
        program: alyra.program,
        school: alyra.school,
        duration: alyra.duration,
        tasks: alyra.tasks,
        techs: alyra.techs,
      ),
      Education(
        program: ed_learneo.program,
        school: ed_learneo.school,
        duration: ed_learneo.duration,
        tasks: ed_learneo.tasks,
        techs: ed_learneo.techs,
      ),
      Education(
        program: descartes.program,
        school: descartes.school,
        duration: descartes.duration,
        tasks: descartes.tasks,
        techs: descartes.techs,
      ),
      // Education(
    //   program: certifications.program,
    //   school: certifications.school,
    //   duration: certifications.duration,
    //   tasks: certifications.tasks,
    //   techs: certifications.techs,
    // ),
    ],
    projects: [
      Project(
        title: themis.title,
        description: themis.description,
        techs: themis.techs,
        links: themis.links,
      ),
      Project(
        title: homelab.title,
        description: homelab.description,
        techs: homelab.techs,
        links: homelab.links,
      ),
      Project(
        title: pc_building.title,
        description: pc_building.description,
        techs: pc_building.techs,
        links: pc_building.links,
      ),
      Project(
        title: eve_arbitrage.title,
        description: eve_arbitrage.description,
        techs: eve_arbitrage.techs,
        links: eve_arbitrage.links,
      ),
      Project(
        title: evm_gleam.title,
        description: evm_gleam.description,
        techs: evm_gleam.techs,
        links: evm_gleam.links,
      ),
      Project(
        title: resume.title,
        description: resume.description,
        techs: resume.techs,
        links: resume.links,
      ),
      Project(
        title: argocd_bootstrap.title,
        description: argocd_bootstrap.description,
        techs: argocd_bootstrap.techs,
        links: argocd_bootstrap.links,
      ),
      Project(
        title: k8_ingress_hub.title,
        description: k8_ingress_hub.description,
        techs: k8_ingress_hub.techs,
        links: k8_ingress_hub.links,
      ),
    ],
    skills: [
      SkillCategory(
        title: languages.category_title,
        skills: languages.skills
          |> list.map(tuple_to_skill)
          |> list.sort(sort_skills),
      ),
      SkillCategory(
        title: sysadmin.category_title,
        skills: sysadmin.skills
          |> list.map(tuple_to_skill)
          |> list.sort(sort_skills),
      ),
      SkillCategory(
        title: networking.category_title,
        skills: networking.skills
          |> list.map(tuple_to_skill)
          |> list.sort(sort_skills),
      ),
      SkillCategory(
        title: devops.category_title,
        skills: devops.skills
          |> list.map(tuple_to_skill)
          |> list.sort(sort_skills),
      ),
      SkillCategory(
        title: blockchain.category_title,
        skills: blockchain.skills
          |> list.map(tuple_to_skill)
          |> list.sort(sort_skills),
      ),
      SkillCategory(
        title: security.category_title,
        skills: security.skills
          |> list.map(tuple_to_skill)
          |> list.sort(sort_skills),
      ),
      SkillCategory(
        title: databases.category_title,
        skills: databases.skills
          |> list.map(tuple_to_skill)
          |> list.sort(sort_skills),
      ),
      SkillCategory(
        title: spoken_languages.category_title,
        skills: spoken_languages.skills
          |> list.map(tuple_to_skill)
          |> list.sort(sort_skills),
      ),
    ],
  )
}

fn sort_skills(skill1: Skill, skill2: Skill) -> order.Order {
  int.compare(skill2.progress, skill1.progress)
}

fn tuple_to_skill(from: #(String, Int, LocalizedString)) -> Skill {
  let #(title, progress, level) = from
  Skill(title, progress, level)
}
