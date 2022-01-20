//
//  ProjectsView.swift
//  Assignment One
//
//  Created by Vishnu Ravi on 1/20/22.
//

import SwiftUI

struct ProjectsView: View {
    
    let projects = ProjectViewModel().projects
    
    var body: some View {
        ScrollView {
            HStack {
                Text("Winter 2022 Projects")
                    .font(.system(size: 40, weight: .ultraLight))
                    .padding(.leading, 25)
                Spacer()
            }
            VStack {
                ForEach(projects.indices){ i in
                    
                    let colors = Array(repeating: [Color("CustomOrange"), Color("CustomGreen"), Color("CustomBrown")], count: projects.count)
                        .flatMap { $0 }
                    
                    ProjectCard(project: projects[i], backgroundColor: colors[i])
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
