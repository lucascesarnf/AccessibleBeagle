//
//  BeagleConfig.swift
//  iOS
//
//  Created by Lucas Cesar on 25/08/20.
//  Copyright © 2020 Lucas Cesar. All rights reserved.
//

import Foundation
import Beagle

class BeagleConfig {
    static func configDependencies() {
        let dependencies = BeagleDependencies()
        dependencies.urlBuilder = UrlBuilder(
            baseUrl: URL(string: "http://localhost:8080")
        )
        dependencies.theme = AppTheme.theme
        Beagle.dependencies = dependencies
    }
}
