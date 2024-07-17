import SwiftUI

struct ChangeView: View {
    var goodsList: [Goods] = [Goods(iamge: "12", pointCnt: "4", title: "문화상품권 5,000원"),
                              Goods(iamge: "opieo", pointCnt: "5", title: "따릉이 1시간"),
                              Goods(iamge: "Rectangle 340", pointCnt: "4", title: "햄버거 교환권"),
                              Goods(iamge: "vc", pointCnt: "1", title: "내 정보 수정권"),
                              Goods(iamge: "xcv", pointCnt: "9", title: "도미노 피자")]
    
    var body: some View {
        MainTopView("교환하기", "leaf-green-icon 1", "16", backBtn: true) {
            ScrollView(.vertical) {
                LazyVStack(spacing: 0) {
                    ForEach(goodsList.indices, id: \.self) { index in
                        GoodsItem(
                            title: goodsList[index].title,
                            pointCnt: goodsList[index].pointCnt,
                            image: goodsList[index].iamge
                        )
                        .background(Color.white)
                    }
                }
            }
            .padding(.top, 16)
            .scrollIndicators(.never)
        }
        .background(Color("back-gray"))
    }
}

#Preview {
    ChangeView()
}
