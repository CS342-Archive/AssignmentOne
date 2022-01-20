//
//  Submissions.swift
//  Assignment One
//
//  Created by Vishnu Ravi on 1/19/22.
//

import SwiftUI

struct Student {
    
    public static var allStudents: [(name: String, view: AnyView, team: Team, photo: String)] {
        [
            ("Taylor Lallas", AnyView(TaylorLallas()), .budi, "profileSmall"),
            ("Amita Gondi", AnyView(AmitaGondi()), .gaitmate, "Amita"),
            ("Laura Schütz", AnyView(LauraSchutz()), .gaitmate, "Portrait_Laura"),
            ("Hayden Hofmann", AnyView(HaydenHofmann()), .choir, "HaydenHofmann"),
            ("Tracy Cai", AnyView(TracyCai()), .budi, "tracy"),
            ("Gaurav Luthria", AnyView(GauravLuthria()), .choir, "GauravLuthria"),
            ("Ronit Jain", AnyView(RonitJain()), .activate, "ronit"),
            ("Megan Worrel", AnyView(MeganWorrel()), .activate, "MeganWorrel"),
            ("Savitha Srinivasan", AnyView(SavithaSrinivasan()), .activate, "SavithaSrinivasan"),
            ("Alisa Wang", AnyView(AlisaWang()), .activate, "AlisaWang"),
            ("Beste Aydin", AnyView(BesteAydin()), .budi, "beste"),
            ("Lina Fang", AnyView(LinaFang()), .budi, "PortraitLina"),
            ("Sharon Cheng", AnyView(SharonCheng()), .choir, "Portrait0"),
            ("Lavender Chen", AnyView(LavenderChen()), .budi, "bio_image"),
            ("Zheqing (Bill) Zhu", AnyView(BillZhu()), .budi, "Bill"),
            ("Evie Chen", AnyView(EvieChen()), .activate, "evie"),
            ("Raghav Samavedam", AnyView(RaghavSamavedam()), .gaitmate, "RaghavSamavedam"),
            ("Ankush Dhawan", AnyView(AnkushDhawan()), .gaitmate, "Ankush_Dhawan"),
            ("Bereket Gebregziabher", AnyView(Bereket()), .choir, "BG"),
            ("Yoonju Kim", AnyView(YoonjuKim()), .budi, "Yoonjuk"),
            ("Terresa Eun", AnyView(TerresaEun()), .activate, "TerresaEun"),
            ("Varun Agarwal", AnyView(VarunAgarwal()), .vasctrac2, "VarunAgarwal")
        ].sorted(by: {$0.name < $1.name})
    }
    
}
