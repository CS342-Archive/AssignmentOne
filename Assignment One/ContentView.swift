//
//  ContentView.swift
//  Assignment One
//
//  Created by Vishnu Ravi on 1/16/22.
//

import SwiftUI

struct ContentView: View {
    
    var submissions: [(name: String, view: AnyView)] {
        [
            ("Tracy Cai", AnyView(TracyCai())),
            ("Gaurav Luthria", AnyView(GauravLuthria())),
            ("Megan Worrel", AnyView(MeganWorrel())),
            ("Alisa Wang", AnyView(AlisaWang()))
        ].sorted(by: {$0.name < $1.name})
    }
    
    
    var body: some View {
        NavigationView {
            List {
                ForEach(submissions.indices){ submission in
                    NavigationLink(destination: submissions[submission].view){
                        Text(submissions[submission].name)
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
