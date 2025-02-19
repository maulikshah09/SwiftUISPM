//
//  KingFIsherDemo.swift
//  SwiftUISPM
//
//  Created by Maulik Shah on 2/19/25.
//

import SwiftUI
import Kingfisher

struct KingFIsherDemo: View {
    let url : String
    var conentMode : SwiftUI.ContentMode = .fill
    
    var body: some View {
        KFImage(URL(string: url))
            .placeholder {
                Color.red
            }
            .resizable()
            .scaledToFill()
            .aspectRatio(contentMode: conentMode)
            
        
//        KFImage.url(url)
//                 .placeholder(placeholderImage)
//                 .setProcessor(processor)
//                 .loadDiskFileSynchronously()
//                 .cacheMemoryOnly()
//                 .fade(duration: 0.25)
//                 .lowDataModeSource(.network(lowResolutionURL))
//                 .onProgress { receivedSize, totalSize in  }
//                 .onSuccess { result in  }
//                 .onFailure { error in }
        
        
    }
}

#Preview {
    KingFIsherDemo(url: "https://nokiatech.github.io/heif/content/images/ski_jump_1440x960.heic")
}
