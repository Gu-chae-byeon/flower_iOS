//
//  HomeView.swift
//  Flower-iOS
//
//  Created by dgsw8th38 on 7/17/24.
//

import SwiftUI



struct HomeView: View {
    var companyList: [Company] =
    [Company(image: "image 6", text: "국경없는의사"),
     Company(image: "image 7", text: "초록 우산"),
     Company(image: "image 8", text: "회망 친구"),
     Company(image: "image 9", text: "WWF")]
    
    var goodsList: [Goods] =
    [Goods(iamge: "12", pointCnt: "4", title: "문화상품권 5,000원"),
     Goods(iamge: "opieo", pointCnt: "4", title: "따릉이 1시간"),
     Goods(iamge: "Rectangle 340", pointCnt: "4", title: "햄버거 교환권"),
     Goods(iamge: "vc", pointCnt: "4", title: "내 정보 수정권"),
     Goods(iamge: "xcv", pointCnt: "4", title: "도미노 피자"),
     
    ]
    var body: some View {
        MainTopView("홈", "leaf-green-icon 1", "15"){
            ScrollView {
                VStack {
                    HomeCardView("키우기"){
                        VStack{
                            Image("IMG_0004 4")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 100, height: 140)
                            Image("Group 28")
                        }.padding(.bottom, 36)
                    }
                    HomeCardView("기부하기"){
                        ScrollView(.horizontal){
                            LazyHStack{
                                ForEach(companyList, id: \.self.id){ data in
                                    VStack{
                                        Image(data.image)
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 120, height: 120)
                                        Text(data.text)
                                            .font(.system(size: 14, weight: .medium))
                                    }
                                    .padding(.horizontal, 10)
                                }
                            }
                        }.padding(.vertical, 20)
                    }
                    HomeCardView("교환하기"){
                        ScrollView(.vertical){
                            LazyVStack{
                                ForEach(0..<4){index in
                                    Text(goodsList[index].title)
                                }
                            }
                        }
                    }
                }
                .padding(.vertical, 10)
            }
            .scrollIndicators(.never)
        }.background(Color("back-gray"))
    }
}

#Preview {
    HomeView()
}
