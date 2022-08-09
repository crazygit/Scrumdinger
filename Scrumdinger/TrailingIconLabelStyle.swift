//
//  TrailingIconLabelStyle.swift
//  Scrumdinger
//
//  Created by Crazygit on 2022/8/9.
//

import SwiftUI

// 自定义Label的显示样式
struct TrailingIconLabelStyle: LabelStyle {
    func makeBody(configuration: Configuration) -> some View {
        HStack {
            configuration.title
            configuration.icon
        }
    }
}

// 通过扩展LabelStyle方便通过LabelStyle.trailingIcon来使用自定义的样式
extension LabelStyle where Self == TrailingIconLabelStyle {
    static var trailingIcon: Self { Self() }
}
