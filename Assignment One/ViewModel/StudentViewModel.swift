//
//  StudentViewModel.swift
//  Assignment One
//
//  Created by Vishnu Ravi on 1/20/22.
//

import SwiftUI

class StudentViewModel {
    var students = [Student]()
    
    init(){
        self.students = [
            Student(name: "Taylor Lallas", view: AnyView(TaylorLallas()), team: Team.budi, photo: "profileSmall"),
            Student(name: "Amita Gondi", view: AnyView(AmitaGondi()), team: Team.gaitmate, photo: "Amita"),
            Student(name: "Laura Schütz", view: AnyView(LauraSchutz()), team: Team.gaitmate, photo: "Portrait_Laura"),
            Student(name: "Hayden Hofmann", view: AnyView(HaydenHofmann()), team: Team.choir, photo: "HaydenHofmann"),
            Student(name: "Tracy Cai", view: AnyView(TracyCai()), team: Team.budi, photo: "tracy"),
            Student(name: "Gaurav Luthria", view: AnyView(GauravLuthria()), team: Team.choir, photo: "GauravLuthria"),
            Student(name: "Ronit Jain", view: AnyView(RonitJain()), team: Team.activate, photo: "ronit"),
            Student(name: "Megan Worrel", view: AnyView(MeganWorrel()), team: Team.activate, photo: "MeganWorrel"),
            Student(name: "Savitha Srinivasan", view: AnyView(SavithaSrinivasan()), team: Team.activate, photo: "SavithaSrinivasan"),
            Student(name: "Alisa Wang", view: AnyView(AlisaWang()), team: Team.activate, photo: "AlisaWang"),
            Student(name: "Beste Aydin", view: AnyView(BesteAydin()), team: Team.budi, photo: "beste"),
            Student(name: "Lina Fang", view: AnyView(LinaFang()), team: Team.budi, photo: "PortraitLina"),
            Student(name: "Sharon Cheng", view: AnyView(SharonCheng()), team: Team.choir, photo: "Portrait0"),
            Student(name: "Lavender Chen", view: AnyView(LavenderChen()), team: Team.budi, photo: "bio_image"),
            Student(name: "Zheqing (Bill) Zhu", view: AnyView(BillZhu()), team: Team.budi, photo: "Bill"),
            Student(name: "Evie Chen", view: AnyView(EvieChen()), team: Team.activate, photo: "evie"),
            Student(name: "Raghav Samavedam", view: AnyView(RaghavSamavedam()), team: Team.gaitmate, photo: "RaghavSamavedam"),
            Student(name: "Ankush Dhawan", view: AnyView(AnkushDhawan()), team: Team.gaitmate, photo: "Ankush_Dhawan"),
            Student(name: "Bereket Gebregziabher", view: AnyView(Bereket()), team: Team.choir, photo: "BG"),
            Student(name: "Yoonju Kim", view: AnyView(YoonjuKim()), team: Team.budi, photo: "Yoonjuk"),
            Student(name: "Terresa Eun", view: AnyView(TerresaEun()), team: Team.activate, photo: "TerresaEun"),
            Student(name: "Varun Agarwal", view: AnyView(VarunAgarwal()), team: Team.vasctrac2, photo: "VarunAgarwal")
        ].sorted(by: {$0.name < $1.name})
    }
}
