//
//  Project.swift
//  Config
//
//  Created by 강민성 on 2023/03/22.
//

import ProjectDescription
import ProjectDescriptionHelpers
import MyPlugin

let proejct = Project.makeModule(
    name: "SkeletonView-Example",
    platform: .iOS,
    product: .app,
    dependencies: [
        .Project.FeatureModule
    ],
    resources: ["Resources/**"],
    infoPlist: .file(path: "Support/Info.plist"),
    resourceSynthesizers: .assets()
)
