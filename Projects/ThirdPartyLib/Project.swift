//
//  Project.swift
//  Config
//
//  Created by 강민성 on 2023/03/22.
//

import ProjectDescription
import ProjectDescriptionHelpers
import MyPlugin

let project = Project.makeModule(
    name: "ThirdPartyLib",
    product: .framework,
    packages: [],
    dependencies: [
        .SPM.RxSwift,
        .SPM.RxCocoa,
        .SPM.RxRelay,
        .SPM.Alamofire,
        .SPM.Moya,
        .SPM.ReactorKit,
        .SPM.SnapKit,
        .SPM.Then,
        .SPM.Reusable,
        .SPM.SkeletonView
    ],
    resourceSynthesizers: .assets()
)
