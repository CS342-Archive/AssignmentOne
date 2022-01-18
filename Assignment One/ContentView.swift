//
//  ContentView.swift
//  Assignment One
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        let gradient = Gradient(colors: [.white, .pink])
        
        LinearGradient(gradient: gradient, startPoint: .bottomTrailing, endPoint: .topLeading)
            .edgesIgnoringSafeArea(.vertical)
            .overlay (
                
                VStack(alignment: .leading) {
                    
                    Image("Portrait_Laura")
                        .resizable()
                        .frame(width: 200, height: 180)
                        .cornerRadius(20)
                        .padding(.bottom, 10)
                    
                    Text("""
                        Hi I'm
                        Laura Schütz
                        """)
                            .font(.system(.title ,design: .rounded))
                            .bold()
                            .foregroundColor(.white)
                            .padding(5)
                            .lineLimit(2)
                    
                    Text("""
                        I am from Munich, Germany and I am pursuing a graduate degree in Design Impact with a focus on healthcare innovation at Stanford School of Engineering. My research topics include interaction and user experience design for medical applications as well as visualization techniques for surgical navigation purposes.
                        """)
                        .font(.subheadline)
                        .fontWeight(.regular)
                        .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                        .padding(5)
                        .frame(width: 200.0)
                        .padding(.top, 20)
                        .padding(.bottom, 20)

                    Button(action: {
                            /*if let url = URL(string: "https://profiles.stanford.edu/laura-schuetz") {
                                   UIApplication.shared.open(url)
                                }*/
                        }, label: {
                            Image(systemName: "link")
                            //Text("View Stanford Profile")
                            Link("View Stanford Profile", destination: URL(string: "https://profiles.stanford.edu/laura-schuetz")!)
                        })
                        .foregroundColor(Color.white)
                        .padding()
                        .background(Color.pink)
                        .cornerRadius(5)
                    }
            )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
