//
//  ListView.swift
//  FirebaseAuthentication
//
//  Created by Adesh Shah on 2023-11-13.
//

import SwiftUI

struct ListView: View {
    
    @EnvironmentObject var dataManager: DataManager
    
    var body: some View {
        NavigationView {
            List(dataManager.dogs, id: \.id) {
                dog in
                Text(dog.breed)
            }.navigationTitle("Dogs")
        }
    }
}

#Preview {
    ListView()
}
