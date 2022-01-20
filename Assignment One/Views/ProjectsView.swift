//
//  ProjectsView.swift
//  Assignment One
//
//  Created by Vishnu Ravi on 1/20/22.
//

import SwiftUI

struct ProjectsView: View {
    var body: some View {
        ScrollView {
            HStack {
                Text("Winter 2022 Projects")
                    .font(.system(size: 50, weight: .light))
                    .padding(.leading, 25)
                Spacer()
            }
            VStack {
                ForEach(Project.allProjects.indices){ projectIndex in
                    let project = Project.allProjects[projectIndex]
                    let colors = Array(repeating: [Color("CustomOrange"), Color("CustomGreen"), Color("CustomBrown")], count: Project.allProjects.count).flatMap { $0 }
                    ProjectCard(logo: project.logo, name: project.name, description: project.description, mentors: project.mentors, backgroundColor: colors[projectIndex], url: project.url)
                }
            }
        }
    }
}

struct ProjectsView_Previews: PreviewProvider {
    static var previews: some View {
        ProjectsView()
    }
}
