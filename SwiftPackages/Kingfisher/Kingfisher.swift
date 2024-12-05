//
//  Kingfisher.swift
//  SwiftPackages
//
//  Created by Adkhamjon Rakhimov on 05/12/24.
//

import SwiftUI
import Kingfisher

struct Kingfisher: View {
    var body: some View {
        KFImage(URL(string: "https://nokiatech.github.io/heif/content/images/ski_jump_1440x960.heic"))
            .placeholder {
                Color.red
            }
            .resizable()
            .scaledToFill()
//        KFImage.url(url)
//                  .placeholder(placeholderImage)
//                  .setProcessor(processor)
//                  .loadDiskFileSynchronously()
//                  .cacheMemoryOnly()
//                  .fade(duration: 0.25)
//                  .lowDataModeSource(.network(lowResolutionURL))
//                  .onProgress { receivedSize, totalSize in  }
//                  .onSuccess { result in  }
//                  .onFailure { error in }
    }
}

#Preview {
    Kingfisher()
}
