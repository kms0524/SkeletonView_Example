//
//  Workspace.swift
//  Config
//
//  Created by 강민성 on 2023/03/22.
//

import ProjectDescription

let workspace = Workspace(
    name: "SkeletonView_Example",
    projects: [
        "Projects/App",
        "Projects/FeatureModule",
        "Projects/ServiceModule",
        "Projects/ThirdPartyLib"
    ]
)
