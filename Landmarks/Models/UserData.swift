//
//  UserData.swift
//  Landmarks
//
//  Created by George Nyakundi on 26/10/2020.
//

import SwiftUI
import Combine

final class UserData: ObservableObject{
    @Published var showFavoritesOnly = false
    @Published var landmarks = landmarkData
}
