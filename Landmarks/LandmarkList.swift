//
//  LandmarkList.swift
//  Landmarks
//
//  Created by George Nyakundi on 16/10/2020.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        //using ListView
        NavigationView{
            List(landmarkData){landmark in
                NavigationLink(
                    destination: LandmarkDetail(landmark: landmark)){
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationTitle(Text("Landmarks"))
        }
        //Using ScrollView
        //start
//        NavigationView{
//            ScrollView(/*@START_MENU_TOKEN@*/.vertical/*@END_MENU_TOKEN@*/, showsIndicators: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/){
//                ForEach(landmarkData){ landmark in
//                    NavigationLink(
//                        destination: LandmarkDetail(landmark: landmark)){
//                        LandmarkRow(landmark: landmark)
//                    }
//                }
//            }
//            .navigationTitle("Landmarks ")
//        }
        //end
        
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View{
        ForEach(["iPhone SE","iPhone XS"],id:\.self){deviceName in
            LandmarkList()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
        
    }
}
