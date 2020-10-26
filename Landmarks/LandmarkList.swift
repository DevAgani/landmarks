//
//  LandmarkList.swift
//  Landmarks
//
//  Created by George Nyakundi on 16/10/2020.
//

import SwiftUI

struct LandmarkList: View {
    @EnvironmentObject var userData: UserData
    var body: some View {
        //using ListView
        NavigationView{
            List {
                Toggle(isOn: $userData.showFavoritesOnly) {
                    Text("Favorites only")
                }
                ForEach(userData.landmarks) { landmark in
                    if !self.userData.showFavoritesOnly || landmark.isFavorite {
                        NavigationLink(
                            destination: LandmarkDetail(landmark: landmark)){
                            LandmarkRow(landmark: landmark)
                        }
                    }
                }
            }
            .navigationTitle(Text("Landmarks"))
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View{
        ForEach(["iPhone SE","iPhone XS"],id:\.self){deviceName in
            LandmarkList()
                .environmentObject(UserData())
        }
        
    }
}
