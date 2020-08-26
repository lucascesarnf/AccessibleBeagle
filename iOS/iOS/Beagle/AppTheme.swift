//
//  AppTheme.swift
//  iOS
//
//  Created by Lucas Cesar on 25/08/20.
//  Copyright © 2020 Lucas Cesar. All rights reserved.
//

import UIKit
import Beagle
import BeagleSchema

struct AppTheme {
    static var blue = #colorLiteral(red: 0.3333333333, green: 0.7450980392, blue: 0.9764705882, alpha: 1)
    static let theme = Beagle.AppTheme(styles: [
        "Style.Text.Bold.System.16": styleTextBoldSystem20,
        "Style.Button.White.System.Bold.16": styleButtonWhiteSystemSemibold,
        "Style.TextInput": designSystemTextInput,
    ])
    
    static func styleTextBoldSystem20() -> (UITextView?) -> Void {
        return {
            $0?.font = .boldSystemFont(ofSize: 20)
        }
    }
    
    static func styleButtonWhiteSystemSemibold() -> (UIButton?) -> Void {
        return BeagleStyle.button(withTitleColor: .white)
            <> {
                $0?.titleLabel |> BeagleStyle.label(withFont: .systemFont(ofSize: 16, weight: .bold))
        }
    }

    static func designSystemTextInput() -> (UITextField?) -> Void {
        return {
            $0?.borderStyle = .roundedRect
            $0?.font = .systemFont(ofSize: 20.0)
            let color = blue
            $0?.layer.borderColor = color.cgColor
            $0?.layer.borderWidth = 1
            $0?.textColor = UIColor.lightGray
            $0?.layer.cornerRadius = 8
        }
    }
}
