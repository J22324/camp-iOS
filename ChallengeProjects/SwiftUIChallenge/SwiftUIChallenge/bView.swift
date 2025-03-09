//
//  SwiftUIChallenge
//  画像と同じようなViewを実装してみよう！
//
// B. 二重に丸を配置
//

import SwiftUI

struct bView: View {
    var body: some View {
        Text("B. 二重に丸を配置")
        ZStack{
            Circle()
                .fill(Color.red)
                .frame(width: 200, height: 200)
            
            Circle()
                .fill(Color.orange)
                .frame(width: 100, height: 100)
        }

    }
}

#Preview {
    bView()
}
