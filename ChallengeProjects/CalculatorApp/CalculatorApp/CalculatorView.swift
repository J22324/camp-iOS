
//
//  CalculatorView.swift
//  CalculatorApp
//
//  ChallengeProjects
//

import SwiftUI

struct CalculatorView: View {
    // 最初に利用する変数を定義しています
    // @State: プロパティが変更されたときにビューを自動的に再描画するためのおまじない
    @State var firstNumber: String = ""
    @State var secondNumber: String = ""
    @State var result: String = "?"
    @State var threeNumber: String = ""
    @State var fourNumber: String = ""
    @State var result_2: String = "?"
    @State var fiveNumber: String = ""
    @State var sixNumber: String = ""
    @State var result_3: String = "?"
    
    
    var body: some View {
        VStack(spacing: 20) {
            Text("足し算電卓")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            HStack(spacing: 10) {
                // 1つ目の入力フィールド
                // @Stateのついたプロパティには$をつけるというおまじない。
                TextField("?", text: $firstNumber)
                    .keyboardType(.numberPad)
                    .frame(width: 60)
                    .multilineTextAlignment(.center)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                Text("+")
                    .font(.title)
                
                // 2つ目の入力フィールド
                TextField("?", text: $secondNumber)
                    .keyboardType(.numberPad)
                    .frame(width: 60)
                    .multilineTextAlignment(.center)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                Text("=")
                    .font(.title)
                
                // 結果の表示
                Text(result)
                    .font(.title)
                    .fontWeight(.bold)
                    .frame(width: 100)
                    .multilineTextAlignment(.center)
            }
            
            // 計算ボタン
            Button(action: {
                calculateSum()
            }) {
                Text("足し算する")
                    .fontWeight(.bold)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .padding(.horizontal)
            
            Spacer()
        }
        .padding()
        
        Divider()
        
        Text("引き算電卓")
            .font(.largeTitle)
            .fontWeight(.bold)
        
        HStack(spacing: 10) {
            // 1つ目の入力フィールド
            // @Stateのついたプロパティには$をつけるというおまじない。
            TextField("?", text: $threeNumber)
                .keyboardType(.numberPad)
                .frame(width: 60)
                .multilineTextAlignment(.center)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            Text("-")
                .font(.title)
            
            // 2つ目の入力フィールド
            TextField("?", text: $fourNumber)
                .keyboardType(.numberPad)
                .frame(width: 60)
                .multilineTextAlignment(.center)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            Text("=")
                .font(.title)
            
            // 結果の表示
            Text(result_2)
                .font(.title)
                .fontWeight(.bold)
                .frame(width: 100)
                .multilineTextAlignment(.center)
        }
        
        // 計算ボタン
        Button(action: {
            calculateSub()
        }) {
            Text("引き算する")
                .fontWeight(.bold)
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(10)
        }
        .padding(.horizontal)
        
        Spacer()
        Divider()
        
        
        Text("掛け算電卓")
            .font(.largeTitle)
            .fontWeight(.bold)
        
        HStack(spacing: 10) {
            // 1つ目の入力フィールド
            // @Stateのついたプロパティには$をつけるというおまじない。
            TextField("?", text: $fiveNumber)
                .keyboardType(.numberPad)
                .frame(width: 60)
                .multilineTextAlignment(.center)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            Text("✖️")
                .font(.title)
            
            // 2つ目の入力フィールド
            TextField("?", text: $sixNumber)
                .keyboardType(.numberPad)
                .frame(width: 60)
                .multilineTextAlignment(.center)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            Text("=")
                .font(.title)
            
            // 結果の表示
            Text(result_3)
                .font(.title)
                .fontWeight(.bold)
                .frame(width: 100)
                .multilineTextAlignment(.center)
        }
        
        // 計算ボタン
        Button(action: {
            calculateEx()
        }) {
            Text("掛け算する")
                .fontWeight(.bold)
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(10)
        }
        .padding(.horizontal)
        
        Spacer()
       .padding()
    
       Divider()

    }
    
    // 足し算の処理
    func calculateSum() {
        let firstNumberInt = Int(firstNumber)
        let secondNumberInt = Int(secondNumber)
        
        if let firstNumberInt ,let secondNumberInt  {
            let resultInt = firstNumberInt + secondNumberInt
            result = String(resultInt)
        } else {
            // 値が存在しない時はこっち (= Intにキャストできなかった時)
            result = "Error"
        }
    }
    
    // TODO: - Challenge2
    // 引き算電卓も作ってみよう
    // 引き算の処理
    func calculateSub() {
        let threeNumberInt = Int(threeNumber)
        let fourNumberInt = Int(fourNumber)
        
        if let threeNumberInt, let fourNumberInt {
            let result_2Int = threeNumberInt - fourNumberInt
            result_2 = String(result_2Int)
        } else {
            // 値が存在しない時はこっち (= Intにキャストできなかった時)
            result_2 = "Error"
        }
    }
    
    func calculateEx() {
        let fiveNumberInt = Int(fiveNumber)
        let sixNumberInt = Int(sixNumber)
        
        if let fiveNumberInt ,let sixNumberInt  {
            let result_3Int = fiveNumberInt * sixNumberInt
            result_3 = String(result_3Int)
        } else {
            // 値が存在しない時はこっち (= Intにキャストできなかった時)
            result_3 = "Error"
        }
    }
}

    
    #Preview {
        CalculatorView()
    }

