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
            ("Beste Aydin", AnyView(BesteAydin())),
            ("Lina Fang", AnyView(LinaFang())),
            ("Sharon Cheng", AnyView(SharonCheng())),
            ("Lavender Chen", AnyView(LavenderChen())),
            ("Zheqing (Bill) Zhu", AnyView(BillZhu())),
            ("Evie Chen", AnyView(EvieChen())),
            ("Raghav Samavedam", AnyView(RaghavSamavedam())),
            ("Ankush Dhawan", AnyView(AnkushDhawan())),
            ("Bereket Gebregziabher", AnyView(Bereket())),
            ("Yoonju Kim", AnyView(YoonjuKim())),
            ("Terresa Eun", AnyView(TerresaEun())),
            ("Varun Agarwal", AnyView(VarunAgarwal()))
        ].sorted(by: {$0.name < $1.name})
    }
    
    var choir: [(name: String, view: AnyView)] {
        [
            ("Hayden Hofmann", AnyView(HaydenHofmann())),
            ("Gaurav Luthria", AnyView(GauravLuthria())),
            ("Sharon Cheng", AnyView(SharonCheng())),
            ("Bereket Gebregziabher", AnyView(Bereket())),
        ].sorted(by: {$0.name < $1.name})
    }
    
    var budi: [(name: String, view: AnyView)] {
        [
            ("Zheqing (Bill) Zhu", AnyView(BillZhu())),
            ("Taylor Lallas", AnyView(TaylorLallas())),
            ("Tracy Cai", AnyView(TracyCai())),
            ("Lavender Chen", AnyView(LavenderChen())),
            ("Yoonju Kim", AnyView(YoonjuKim())),
            ("Beste Aydin", AnyView(BesteAydin())),
            ("Lina Fang", AnyView(LinaFang())),
        ].sorted(by: {$0.name < $1.name})
    }
    
    var activate: [(name: String, view: AnyView)] {
        [
            ("Alisa Wang", AnyView(AlisaWang())),
            ("Evie Chen", AnyView(EvieChen())),
            ("Ronit Jain", AnyView(RonitJain())),
            ("Terresa Eun", AnyView(TerresaEun())),
            ("Megan Worrel", AnyView(MeganWorrel())),
            ("Savitha Srinivasan", AnyView(SavithaSrinivasan())),
        ].sorted(by: {$0.name < $1.name})
    }
    
    var gaitmate: [(name: String, view: AnyView)] {
        [
            ("Amita Gondi", AnyView(EmptyView())),
            ("Laura Schütz", AnyView(LauraSchutz())),
            ("Ankush Dhawan", AnyView(AnkushDhawan())),
            ("Raghav Samavedam", AnyView(RaghavSamavedam())),
        ].sorted(by: {$0.name < $1.name})
    }
    
    var vasctrac2: [(name: String, view: AnyView)] {
        [
            ("Varun Agarwal", AnyView(VarunAgarwal()))
        ].sorted(by: {$0.name < $1.name})
    }
    
    
    var body: some View {
        VStack {
            
            Text("CS342: Meet your classmates! 👋")
            
            NavigationView {
                List {
                    Section(header: Text("Team 1: CHOIR")) {
                        ForEach(choir.indices){ submission in
                            NavigationLink(destination: choir[submission].view){
                                Text(choir[submission].name)
                            }
                        }
                    }
                    
                    Section(header: Text("Team 2: BUDI")) {
                        ForEach(budi.indices){ submission in
                            NavigationLink(destination: budi[submission].view){
                                Text(budi[submission].name)
                            }
                        }
                    }
                    
                    Section(header: Text("Team 3: Activate")) {
                        ForEach(activate.indices){ submission in
                            NavigationLink(destination: activate[submission].view){
                                Text(activate[submission].name)
                            }
                        }
                    }
                    
                    Section(header: Text("Team 4: GaitMate")) {
                        ForEach(gaitmate.indices){ submission in
                            NavigationLink(destination: gaitmate[submission].view){
                                Text(gaitmate[submission].name)
                            }
                        }
                    }
                    
                    Section(header: Text("Team 5: VascTrac 2.0")) {
                        ForEach(vasctrac2.indices){ submission in
                            NavigationLink(destination: vasctrac2[submission].view){
                                Text(vasctrac2[submission].name)
                            }
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
