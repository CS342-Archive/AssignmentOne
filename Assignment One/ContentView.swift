//
//  ContentView.swift
//  Assignment One
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HeaderView(backgroundColor: Color(UIColor(red: 223.0/255, green: 230/255, blue: 233/255, alpha: 1)))
            MapView().frame(height: 400)
        }.ignoresSafeArea()
    }
}

struct HeaderView: View {
    
    let color: Color
    @State private var showingAlert = false
    
    init(backgroundColor: Color) {
        self.color = backgroundColor
    }
    
    var body: some View {
        VStack {
            Spacer().frame(height: 50)
            HStack {
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, alignment: .leading)
                Spacer()
            }.padding(.horizontal, 20.0)
            HStack {
                Text("COVID-19 Screening Tool")
                    .font(.system(.largeTitle))
                    .bold()
                    .multilineTextAlignment(.leading)
                    .padding(.horizontal, 20.0)
                Spacer()
            }
            HStack {
                VStack(alignment: .leading, spacing: 10) {
                    Text("This tool can help you understand what to do next about COVID-19.")
                    Text("Let's all look out for each other by wearing a mask, avoiding crowds, and by knowing our status.")
                }
                Spacer()
                Image("doctor").resizable().scaledToFit().frame(width: 150)
            }.padding(.horizontal, 20.0)
            
            Button(action: {
                self.showingAlert = true
            }) {
                Text("Important Message")
                    .font(.system(.body))
                    .bold()
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .cornerRadius(10)
                    .accentColor(.white)
                    .padding()
                
            }.alert(isPresented: $showingAlert, content: {
                Alert(title: Text("Important message"), message: Text("If you have symptoms, get tested!"), dismissButton: .default(Text("Got it!")))
            })
        }.background(color)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
