//
//  ContentView.swift
//  SwiftUISPM
//
//  Created by Maulik Shah on 2/16/25.
//

import SwiftUI
import SDWebImageSwiftUI

struct ImageLoader: View {
    var url : String
    var contentMode : ContentMode = .fill
    
    var body: some View {
        SDWebImageLoader(url: url, conentMode: contentMode)
    }
}

struct SDWebImageLoader : View {
    let url : String
    var conentMode : ContentMode = .fill
    
    var body: some View {
        WebImage(url: URL(string: url)) { image in
            image.resizable()
            
        } placeholder: {
                Rectangle().foregroundColor(.gray)
        }
        
        .onSuccess { image, data, cacheType in
            // Success
            
        }
        .indicator(.activity) // Activity Indicator
        .transition(.fade(duration: 0.5)) // Fade Transition with duration
        .scaledToFit()
        .frame(width: 300, height: 300, alignment: .center)
    }
}
 
struct SDWebImage: View {
    var body: some View {
      
        ImageLoader(url: "https://nokiatech.github.io/heif/content/images/ski_jump_1440x960.heic", contentMode: .fit)
            .frame(width: 100,height: 100)
            .clipped()
    }
}

#Preview {
    SDWebImage()
}
