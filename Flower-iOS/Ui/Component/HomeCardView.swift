//
//  HomeCardView.swift
//  Flower-iOS
//
//  Created by dgsw8th38 on 7/17/24.
//

import SwiftUI

struct HomeCardView<C: View>: View  {
    let content: () -> C
    let title: String
    
    init(_ title: String, @ViewBuilder content: @escaping () -> C){
        self.title = title
        self.content = content
    }
    var body: some View {
        VStack{
            HStack{
                Text(title)
                    
                    .foregroundStyle(.gray)
                    .padding(.leading, 12)
                    .padding(.top, 12)
                Spacer()
                Image("arrow-right")
                    .padding(.trailing, 20)
                    .padding(.top, 5)
            }
            Spacer()
            content()
        }
        .background(.white)
    }
}

#Preview {
    HomeCardView("키우기"){
        Text("sdafx")
    }
}
