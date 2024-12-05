//
//  SwiftfulRoute.swift
//  SwiftPackages
//
//  Created by Adkhamjon Rakhimov on 05/12/24.
//

import SwiftUI
import SwiftfulRouting

struct SwiftfulRoute: View {
    var body: some View {
        RouterView { _ in
        
            MyHomeView()
            
        }
    }
}


struct MyHomeView: View {
    @Environment(\.router) var router
    
    let route: AnyRoute = AnyRoute(.push) { _ in
    
        MyThirdScreen()
    }
    
    var body: some View {
        Button("click me"){
            //router.showScreen(route)
//            router.showAlert(.alert, title: "Title Alert",subtitle: "Subtitle") {
//                Button("OK") {
//                    
//                }
//            }
            router.showBasicModal {
                Text("Basic Modal")
            }
        }
            .navigationTitle("Home")
    }
}

struct MyThirdScreen: View {
    @Environment(\.router) var router

    var body: some View {
        Button("click me"){
            router.dismissScreen()
        }
            .navigationTitle("SCREEN 3")
    }
}

#Preview {
    SwiftfulRoute()
}
