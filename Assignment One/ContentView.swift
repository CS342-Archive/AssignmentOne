//
//  ContentView.swift
//  Assignment One
//
//  Created by Vishnu Ravi on 1/16/22.
//

import SwiftUI
import MapKit

struct ContentView: View {
    
    var submissions: [(name: String, view: AnyView)] {
        [
            ("Taylor Lallas", AnyView(TaylorLallas())),
            ("Laura Schütz", AnyView(LauraSchutz())),
            ("Hayden Hofmann", AnyView(HaydenHofmann())),
            ("Tracy Cai", AnyView(TracyCai())),
            ("Gaurav Luthria", AnyView(GauravLuthria())),
            ("Ronit Jain", AnyView(RonitJain())),
            ("Megan Worrel", AnyView(MeganWorrel())),
            ("Savitha Srinivasan", AnyView(SavithaSrinivasan())),
            ("Alisa Wang", AnyView(AlisaWang())),
            ("Lina Fang", AnyView(LinaFang()))
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
