//
//  LottieAnimationDemo.swift
//  SwiftUISPM
//
//  Created by Maulik Shah on 2/19/25.
//

import SwiftUI
import Lottie

// .json <- old
// .dotlotie <- new

struct LottieHealperView: View {
    var fileName = "star.json"
    var contentMode : UIView.ContentMode = .scaleToFill
    var playMode : LottieLoopMode = .playOnce
    var onAnimationdidFinish :(() -> Void)? = nil
    
    var body: some View {
        LottieView(animation: .named(fileName))
            .configure({ lottieAnimationView in
                lottieAnimationView.contentMode = contentMode
            })
            .playbackMode(.playing(.toProgress(1, loopMode: .playOnce)))
            .animationDidFinish { completed in
                // got next screen or any operation
                onAnimationdidFinish?()
            }
    }
}

#Preview {
    LottieHealperView()
}
