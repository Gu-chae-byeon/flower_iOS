//
//  EditViewModel.swift
//  Flower-iOS
//
//  Created by dgsw8th38 on 7/18/24.
//

import SwiftUI

class EditViewModel: ObservableObject {
    
    @Published var name: String = "zi존 짱짱맨 123"
    @Published var nickName: String = "어둠의 군주 플로워"
    @Published var cnt: Int = 0
    @Published var nameText: String = ""
    @Published var nickNameText: String = ""
}
