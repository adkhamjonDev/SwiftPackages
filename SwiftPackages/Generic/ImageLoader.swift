//
//  ImageLoader.swift
//  SwiftPackages
//
//  Created by Adkhamjon Rakhimov on 05/12/24.
//

import SwiftUI 
import SDWebImageSwiftUI


struct ImageLoader: View {
    
    let url: String
    var contentMode: ContentMode = .fill
    
    var body: some View {
        SDWebImageLoader(
            url: url,
            contentMode: contentMode
        )
    }
}


fileprivate struct SDWebImageLoader: View {
    
    let url: String
    var contentMode: ContentMode = .fill
    
    var body: some View {
        WebImage(url: URL(string: url)) { image in
                image
                .resizable()
                .aspectRatio(contentMode: contentMode)
            } placeholder: {
                    Rectangle().foregroundColor(.gray)
            }
            
            .onSuccess { image, data, cacheType in
                
            }
           
            .transition(.fade(duration: 0.5))
            
            .frame(width: 300, height: 300, alignment: .center)
    }
}
