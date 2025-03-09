//
//  SwiftUIChallenge
//  画像と同じようなViewを実装してみよう！
//
// E. 商品アイテム
//

import SwiftUI

struct eView: View {
    var body: some View {
        VStack{
            ZStack(alignment: .center){
                Rectangle()
                    .fill(Color.white)
                    .frame(width: 350, height: 300)
                    .cornerRadius(20
                    )
                    .shadow(color: .gray, radius: 5, x: 2, y: 2)
                
                // 画像だけは最初に提示しておきます
                AsyncImage(url: URL(string: "https://picsum.photos/300/200")!)
                    .frame(width: 350, height: 300)
                    .scaleEffect(0.9)
                    .cornerRadius(20
                    )
                
                
                Text("商品名：おしゃれなバッグ")
                    .padding(10)
                    .font(.headline)
                    .frame(width:350, height: 300,alignment: .top)
                
                Text("¥12,800")
                    .padding(5)
                    .frame(width:350, height: 300,alignment: .bottom
                    )
                    .font(.largeTitle)
                    .foregroundColor(.green)
                
            }

        }
        
    }
}

#Preview {
    eView()
}
