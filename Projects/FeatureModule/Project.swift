//
//  Project.swift
//  ProjectDescriptionHelpers
//
//  Created by 강민성 on 2023/03/22.
//

import ProjectDescription
import ProjectDescriptionHelpers
import MyPlugin

let project = Project.makeModule(
    name: "FeatureModule",
    product: .staticFramework,
    dependencies: [
        .Project.ServiceModule
    ],
    resources: ["Resources/**"],
    resourceSynthesizers: .assets()
)
