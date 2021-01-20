//
//  ContentView.swift
//  Assignment One
//

import SwiftUI

struct ContentView: View {
    @State var showFunFact = false
    @State var firstChosen = false
    @State var secondChosen = false
    @State var thirdChosen = false
    
    var body: some View {
        ScrollView {
            VStack {
                Image("headshot")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 200)
                    .clipShape(Circle())
                    .border(Color.blue, width: 3)
                    .shadow(radius: 2)
                    
                Text("Kabir Jolly")
                    .font(.title)
                
                Text("Hey! My name is Kabir and I am a frosh from The Woodlands, TX interested in AI and app development. I am really excited about the intersection of computer science with healthcare and business, and am currently exploring both of these ideas at Stanford. I love to play tennis, watch all types of good movies, and spend time with friends.")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                    .padding()
                
                Button("Press to start 2 truths and a lie about me!") {
                    showFunFact.toggle()
                }
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.green)
                    .cornerRadius(30)
                    .multilineTextAlignment(.center)
                Divider()
                    .padding()
                
                if showFunFact {
                    VStack {
                        HStack {
                            Text("Despite having a minor fear of heights, I have been paragliding in Switzerland")
                                .font(.subheadline)
                                .multilineTextAlignment(.leading)
                            Toggle(isOn: $firstChosen) {
                                
                            }
                        }
                        .padding(.trailing)
                        .padding(.leading)
                        HStack {
                            Text("I have never traveled outside the United States")
                                .font(.subheadline)
                                .multilineTextAlignment(.leading)
                            Toggle(isOn: $secondChosen) {
                                
                            }
                        }
                        .padding(.trailing)
                        .padding(.leading)
                        HStack {
                            Text("I have played Madden on Xbox with James Harden")
                                .font(.subheadline)
                                .multilineTextAlignment(.leading)
                            Toggle(isOn: $thirdChosen) {
                                
                            }
                        }
                        .padding(.trailing)
                        .padding(.leading)
                        .padding(.bottom)
                        
                        if firstChosen && thirdChosen && !secondChosen {
                            Text("Nice job!")
                                .foregroundColor(.green)
                            Spacer()
                        } else {
                            Text("Keep trying!")
                                .foregroundColor(.red)
                            Spacer()
                        }
                    }
                }
            }
        }
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
