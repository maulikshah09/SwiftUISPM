//
//  ImageLoader.swift
//  SwiftUISPM
//
//  Created by Maulik Shah on 2/19/25.
//

import SwiftUI

struct ImageLoader: View {
    var url : String
    var contentMode : ContentMode = .fill
    
    var body: some View {
        SDWebImageLoader(url: url, conentMode: contentMode)
    }
}

#Preview {
    ImageLoader(url: "https://nokiatech.github.io/heif/content/images/ski_jump_1440x960.heic", contentMode: .fit)
        .frame(width: 100,height: 100)
        .clipped()
}

