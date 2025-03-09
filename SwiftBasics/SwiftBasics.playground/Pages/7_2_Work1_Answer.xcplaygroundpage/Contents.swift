//: [目次](0_Table_of_Contents) / [前のページ](@previous)
/*:
#　解答例

*/

import Foundation

/*:
### 問1.
- 以下のコードを完成させ、複数の文字列を組み合わせて1つの文章を作成してください。
- 期待される出力：
  - 「私はChrisです。Swiftを勉強しています。」
*/

let firstName = "Chris"
var activity = "Swiftを勉強しています"
let sentence = "私は\(firstName)です。\(activity)。"
print(sentence)

/*:
### 問2.
- 以下の配列に新しい果物「ぶどう」を追加し、最初の果物と最後の果物を出力してください。
- 期待される出力：
  - 「最初の果物はりんごです。」
  - 「最後の果物はぶどうです。」
*/

var fruits = ["りんご", "みかん", "バナナ"]
fruits.append("ぶどう")


let firstFruit = fruits[0]
let lastFruit = fruits[fruits.count - 1]

// 別解
// let firstFruit = fruits.first!
// let lastFruit = fruits.last!

print("最初の果物は\(firstFruit)です。")
print("最後の果物は\(lastFruit)です。")

/*:
### 問3.
- 以下の配列に含まれる名前を1つずつ出力してください。ただし、"Chris"の名前が出てきた場合は「Chrisさんが見つかりました！」と出力し、そこでループを終了してください。
- 期待される出力：
  - 「Matz」
  - 「Guido」
  - 「Chrisさんが見つかりました！」
*/

let names = ["Matz", "Guido", "Chris", "Rob"]

for name in names {
    if name == "Chris" {
        print("\(name)さんが見つかりました！")
        break
    }
    print(name)
}


//: [次のページ](@next)
