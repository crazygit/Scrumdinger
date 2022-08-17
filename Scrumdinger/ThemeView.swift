//
//  ThemeView.swift
//  Scrumdinger
//
//  Created by Crazygit on 2022/8/11.
//

import SwiftUI

struct ThemeView: View {
    let theme: Theme
    var body: some View {
        // Zstack里面的组件越后面出现的组件，越靠近顶层
        ZStack {
           
            RoundedRectangle(cornerRadius: 4)
                .fill(theme.mainColor)
            Label(theme.name, systemImage: "paintpalette")
                .padding(4)
          
        }
        .foregroundColor(theme.accentColor)
        .fixedSize(horizontal: false, vertical: true)
    }
}
struct ThemeView_Previews: PreviewProvider {
    static var previews: some View {
        ThemeView(theme: .buttercup)
    }
}
