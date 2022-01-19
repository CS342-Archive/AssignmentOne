//
//  BillZhu.swift
//  Assignment One
//
//  Created by billzhu on 1/17/22.
//

import SwiftUI

struct BillZhu: View {
    var body: some View {
        ScrollView{
            VStack{
                Image("Bill").resizable().aspectRatio(contentMode: .fit).clipped()
                    .frame(width: 150, height: 300)
                    .offset(y: 0)
                    .padding(.bottom)
                Text("Zheqing (Bill) Zhu").font(.title).padding(.bottom)
                Text("Nice to meet you all! My name is Zheqing (Bill) Zhu and please call me Bill and I know how hard it is to pronounce my name :D. I am currently an engineering manager at Facebook (Meta) AI, leading the Applied Reinforcement Learning Group. I am also a graduate student in the MS&E department. My research interest is to bring state-of-the-art reinforcement learning to production to push towards the mission of in-life AGI (Artificial General Intelligence). I am super interested in the Biomedical field as an application area and look forward to working with you all. \n\n Apart from work and research, I love playing tennis, basketball, ping pong and the piano now and then. Happy to learn more from each of you guys!").font(.subheadline).padding(.all)
                Divider()
                Link("My LinkedIn", destination:URL(string: "https://www.linkedin.com/in/zheqingzhubill/")!)
                    .padding(.all)
            }
        }
    }
}

struct BillZhu_Previews: PreviewProvider {
    static var previews: some View {
        BillZhu()
    }
}
