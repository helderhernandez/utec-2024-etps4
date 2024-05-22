//
//  HomeView.swift
//  SwiftBetaCRUD
//
//  Created by user208646 on 5/22/24.
//

import SwiftUI

struct HomeView: View {
    @StateObject var linkViewModel : LinkViewModel = LinkViewModel()
    
    var body: some View {
        //Text("Hello, world! XD")

        LinkView(linkViewModel: linkViewModel)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
