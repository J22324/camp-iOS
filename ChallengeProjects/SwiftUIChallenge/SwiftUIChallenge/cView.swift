//
//  SwiftUIChallenge
//  画像と同じようなViewを実装してみよう！
//
// C. テキストを四角形の左下に配置
//

import SwiftUI

struct cView: View {
    var body: some View {
        Text("C. テキストを四角形の左下に配置")
        
        ZStack(alignment: .bottomLeading){
            Rectangle()
                .fill(Color.green)
                .frame(width: 200, height: 100)
            Text("左下")
                .foregroundColor(.white)
                .padding(8)
        }
    }
}

#Preview {
    cView()
}
