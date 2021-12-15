//
//  ContentView.swift
//  MyJanken
//
//  Created by 深井裕貴 on 2021/07/04.
//

import SwiftUI

struct ContentView: View {

    @State var answerNumber = 0

    var body: some View {

        VStack {
            Spacer()

            if answerNumber == 0 {
                Text("これからじゃんけんをします！")
                    .padding(.bottom)
            } else if answerNumber == 1 {
                // じゃんけんの数字が1だったら、グー画像を指定
                Image("gu")
                    // リサイズを指定
                    .resizable()
                    // 画面内に収まるように、アスペクト比を維持する指定
                    .aspectRatio(contentMode:.fit)
                Spacer()
                Text("グー")
                    .padding(.bottom)

            } else if answerNumber == 2 {
                // じゃんけんの数字が2だったら、チョキ画像を指定
                Image("choki")
                    .resizable()
                    .aspectRatio(contentMode:.fit)
                Spacer()
                Text("チョキ")
                    .padding(.bottom)
            } else {
                // じゃんけんの数字が3だったら、パー画像を指定
                Image("pa")
                    .resizable()
                    .aspectRatio(contentMode:.fit)
                Spacer()
                Text("パー")
                    .padding(.bottom)
            }
                        
            // 「じゃんけんをする！」ボタン
            Button(action: {
                // 次のじゃんけんへ
                answerNumber = Int.random(in: 1...3)
                
                var newAnswerNumber = 0
                
                repeat {
                    newAnswerNumber = Int.random(in: 1...3)
                } while answerNumber == newAnswerNumber

                answerNumber = newAnswerNumber

            }) {
                // Buttonに表示する文字を指定
                Text("じゃんけんをする！")
                    .frame(maxWidth: .infinity)
                    .frame(height: 100)
                    .font(.title)
                    .background(Color.pink)
                    .foregroundColor(Color.white)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
