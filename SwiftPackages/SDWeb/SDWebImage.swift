//
//  SDWebImage.swift
//  SwiftPackages
//
//  Created by Adkhamjon Rakhimov on 05/12/24.
//

import SwiftUI
import SDWebImageSwiftUI




struct SDWebImage: View {
    var body: some View {
        
        
        ImageLoader(
            url: "https://nokiatech.github.io/heif/content/images/ski_jump_1440x960.heic",
            contentMode: .fill
        )
    }
}

#Preview {
    SDWebImage()
}
