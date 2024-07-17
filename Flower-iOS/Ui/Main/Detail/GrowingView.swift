//
//  GrowingView.swift
//  Flower-iOS
//
//  Created by dgsw8th38 on 7/17/24.
//

import SwiftUI

struct GrowingView: View {
    @State var wight: CGFloat = 0.5
    @GestureState private var isLongPressed = false
    @State private var dragOffset: CGSize = .zero
    
    var body: some View {
        MainTopView("키우기", "leaf-green-icon 1", "16", backBtn: true) {
            VStack{
                Image("IMG_0004 4")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 140)
                GeometryReader { geometryProxy in
                    ZStack(alignment: .leading) {
                        Capsule()
                            .foregroundStyle(Color("back-gray"))
                            .frame(maxWidth: .infinity)
                            .frame(height: 20)
                        Capsule()
                            .foregroundStyle(Color.mainGreen)
                            .frame(width: geometryProxy.size.width * wight, height: 20)
                    }
                    .clipShape(Capsule())
                    .gesture(
                        DragGesture(coordinateSpace: .local)
                            .onChanged { newValue in
                                let value = newValue.location.x / geometryProxy.size.width
                                wight = max(min(value, 1), 0)
                            }
                    )
                }
                .frame(height: 40)
                .padding(.horizontal, 20)
                .padding(.bottom, 20)
                
                Button(action: {
                    if wight < 1{
                        wight += 0.03
                    }else{
                        wight += 0
                    }
                }){
                    Image("bug")
                        .padding(.bottom, 35)
                }
                Spacer()
            }
            .background(.white)
            .padding(.top, 16)
            .padding(.bottom, 36)

        }
        .background(Color("back-gray"))
    }
}

#Preview {
    GrowingView()
}
