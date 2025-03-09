//
//  SwiftUIChallenge
//  画像と同じようなViewを実装してみよう！
//
// D. 四角形の中に3つのテキストを等間隔に配置（異なるアライメント）
//

import SwiftUI

struct dView: View {
    var body: some View {
        Text("D. 四角形の中に3つのテキストを等間隔に配置（異なるアライメント）")
        
        //
        VStack{
            ZStack(alignment: .center){
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 200, height: 100)
                Text("右上")
                    .frame(width:200, height: 100, alignment: .topLeading)
                Text("真ん中")
                    .zIndex(1)
                    .frame(width:200, height: 100,alignment: .center)
                Text("左下")
                    .frame(width:200, height: 100,alignment: .bottomTrailing)
                
            }
        }
    }
}

#Preview {
    dView()
}
