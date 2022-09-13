//
//  Home.swift
//  ListMovie
//
//  Created by TuPT on 12/09/2022.
//

import SwiftUI

struct Home: View {
    var body: some View {
        NavigationView{
            VStack{
                Text("Hello Word")
            }
        }.navigationBarHidden(true)
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
