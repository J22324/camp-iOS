//
//  SwiftUIChallenge
//  画像と同じようなViewを実装してみよう！
//
// E. 商品アイテム
//

import SwiftUI

struct eView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            AsyncImage(url: URL(string: "https://picsum.photos/300/200")!)
                .frame(width: 300, height: 200)
                .cornerRadius(10)
            Text("商品名: おしゃれなバッグ")
                .font(.headline)
                .foregroundColor(.primary)
            Text("¥12,800")
                .font(.title2)
                .fontWeight(.bold)
                .foregroundColor(.green)
        }
        .padding()
        .background(Color.white)
        .cornerRadius(15)
        .shadow(color: .black.opacity(0.1), radius: 10, x: 0, y: 5)
    }
}

#Preview {
    eView()
}
