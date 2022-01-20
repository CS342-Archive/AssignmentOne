//
//  ProjectViewModel.swift
//  Assignment One
//
//  Created by Vishnu Ravi on 1/20/22.
//

import SwiftUI

class ProjectViewModel {
    
    var projects: [Project]
    
    init(){
        self.projects = [
            Project(logo: "choir", name: "CHOIR", description: "Collaborative Health Outcomes Information Registry", mentors: "Dr. Sean Mackey", url: "https://bit.ly/3mAOUmr", proposal: self.proposals["choir"] ?? ""),
            Project(logo: "budi", name: "BUDI", description: "Biofeedback Upper-Limb Device for Impairment", mentors: "Dr. Jennifer O’Malley, Dr. Scott Delp, Dr. Emily Kraus, Blynn Shideler MS2", url: "https://bit.ly/3p5Tg6v", proposal: self.proposals["budi"] ?? ""),
            Project(logo: "activate", name: "Activate", description: "Lifestyle Interventions for People with Schizophrenia Spectrum Disorders", mentors: "Dr. Douglas Noordsy, Dr. Vanika Chawla", url: "https://bit.ly/3IX7q1N", proposal: self.proposals["activate"] ?? ""),
            Project(logo: "gaitmate", name: "GaitMate", description: "Functional Mobility Assessment (FMA) for Fall Risk", mentors: "Dr. Brian Suffoletto, Dr. David Kim", url: "https://bit.ly/3p4c7in", proposal: self.proposals["gaitmate"] ?? ""),
            Project(logo: "vasctrac2", name: "Peripheral Artery Disease Tracking", description: "Peripheral Artery Disease Tracking", mentors: "Dr. Oliver Aalami", url: "https://bit.ly/31Abi7U", proposal: self.proposals["vasctrac2"] ?? "")
        ]
    }
    
    
    let proposals: [String: String] = [
        "choir": """
            An astounding 50-100 million Americans live with ongoing pain, with approximately 20 million enduring high-impact chronic pain that includes substantially restricted work, social, and self-care activities. The National Academy of Medicine has called for the development of learning health systems to capture high-quality data in real-world clinical settings to optimize care and foster innovative research discoveries. We have answered that call by developing CHOIR – an open-source learning health system developed at Stanford with 10 years of implementation and enhancements. CHOIR is used extensively at Stanford and at academic medical centers nationally and has characterized hundreds of thousands of patients.
        
            As a web-based platform, CHOIR can collect many forms of data. However, CHOIR has long needed a system to integrate sensor and meta data from phones and wearables. Here, we propose to integrate sensor (e.g., triaxial accelerometry, heart rate and heart rate variability, GPS coordinates) and momentary assessments within the CHOIR data lake. Data integration will occur through SMART on FHIR technologies into the clinical electronic medical record and workflows for patient assessments. While many research projects may result from this effort, we first propose a project to characterize the associations between heart rate variability (an indicator of stress) and momentary assessment of chronic pain symptoms.
        """,
        "budi":"""
        We are applying to the Stanford Biodesign Building for Digital Health course to support the development of BUDI—the Biofeedback Upper-Limb Device for Impairment (BUDI), a digital health solution for individuals with limited upper limb mobility, such as children with cerebral palsy. BUDI is a program embedded into an Apple Watch to track therapeutic movements of the user throughout the day and provide the user with biofeedback to maximize therapy and rehabilitation of the upper limb in the absence of a clinician.
        """,
        "activate": """
        Schizophrenia spectrum disorders include positive, negative and cognitive symptoms. In addition to psychiatric symptoms, individuals have increased rates of cardiometabolic disease and reduced life expectancy. Lifestyle factors such as sedentary behaviours and unhealthy diet are contributory. There is an unmet clinical need for an easily accessible and portable intervention to improve lifestyle factors in individuals with schizophrenia spectrum disorders that reduces symptom burden and improves metabolic risk factors.
        
        We propose a novel mobile application-based intervention and clinical support tool to help individuals with schizophrenia spectrum disorders to make positive lifestyle changes. To our knowledge, there is currently no publicly available mobile application to support individuals with schizophrenia to make lifestyle changes.
        """,
        "gaitmate": """
        Falls in older adults are common, costly and preventable yet identification of those at highest risk remains elusive. At home functional mobility assessments could identify perturbations not identified in sparse healthcare encounters. As such, we propose to work with Biodesign students to build a user-friendly app using Stanford’s Cardinal Kit that automates at-home safe functional mobility assessments, pilot test the app in 200 older adults, and build predictive models using at-home data.
        
        This project will allow us to generate the evidence to take next steps toward research funding and commercialization. If found to be safe and useful to identify older adults at risk for falls, this app could provide a means for health systems to capture missed revenue related to fall risk assessments and reduce downstream costs related to complex fall-related injuries.
        """,
        "vasctrac2": """
        Peripheral Vascular Disease (PAD) affects nearly 10M people in the United States and is the manifestation of atherosclerotic disease in the peripheral arteries and manifests itself in the form of “claudication” in the earliest stages of development- this is calf muscle pain/cramping with activity. We treat this condition with exercise therapy, medications and if severe will place stents. The outcome of stenting procedures is quite poor and we do not have a way to monitor patients individually to see who is developing scarring/recurrence faster than others. The aim of this study is to determine if passive activity monitoring can be used to predict early treatment failure.
        """
    ]
}
