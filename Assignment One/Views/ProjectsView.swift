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
            VStack {
                ForEach(Project.allProjects.indices){ projectIndex in
                    let project = Project.allProjects[projectIndex]
                    ProjectCard(logo: project.logo, name: project.name, description: project.description)
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
