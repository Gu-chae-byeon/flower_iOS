//
//  LoginView.swift
//  Flower-iOS
//
//  Created by dgsw8th38 on 7/17/24.
//

import SwiftUI
import FlowKit

struct LoginView: View {
    @State var nameText: String = ""
    @State var pwText: String = ""
    @Flow var flow
    
    var body: some View{
        TopNavView("로그인"){
            VStack{
                VStack(alignment: .leading){
                    HStack(spacing: 4){
                        Text("*")
                            .font(.system(size: 14, weight: .medium))
                            .foregroundStyle(.red)
                        Text("아이디")
                            .font(.system(size: 14, weight: .medium))
                            .foregroundStyle(.black)
                    }.padding(.leading, 4)
                    TextField("아이디를 입력해주세요", text: $nameText)
                        .frame(height: 48)
                        .padding(.leading, 12)
                        .background(RoundedRectangle(cornerRadius: 12)
                            .strokeBorder(Color.gray, lineWidth: 1))
                    
                }
                .padding(.top, 20)
                .padding(.horizontal, 20)
                VStack(alignment: .leading){
                    HStack(spacing: 4){
                        Text("*")
                            .font(.system(size: 14, weight: .medium))
                            .foregroundStyle(.red)
                        Text("아이디")
                            .font(.system(size: 14, weight: .medium))
                            .foregroundStyle(.black)
                    }.padding(.leading, 4)
                    TextField("아이디를 입력해주세요", text: $nameText)
                        .frame(height: 48)
                        .padding(.leading, 12)
                        .background(RoundedRectangle(cornerRadius: 12)
                            .strokeBorder(Color.gray, lineWidth: 1))
                    
                }
                .padding(.horizontal, 20)
                .padding(.top, 20)
            }
            Spacer()
            
            LargeButton("로그인"){
                flow.push(MainView())
            }
                .padding(.horizontal, 20)
        }
    }
}

#Preview {
    FlowPreview{
        LoginView()
    }
}
