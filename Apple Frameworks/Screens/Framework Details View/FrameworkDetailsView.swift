//
//  FrameworkDetailsView.swift
//  Apple Frameworks
//
//  Created by Ahmed Hazzaa on 12/01/2024.
//

import SwiftUI

struct FrameworkDetailsView: View {
    
    var framework: Framework
    @State var isShowingSafariView = false
    
    var body: some View {
        VStack {
            
            FrameworkTitleView(framework: framework)
            Text(framework.description)
                .font(.body)
                .padding()
            Spacer()
            Button {
                isShowingSafariView = true
            } label: {
                AFButton(title: "Learn More")
            }
        }
        .sheet(isPresented: $isShowingSafariView) {
            SafariView(url: URL(string: framework.urlString) ?? URL(string: "www.apple.com")!)
        }
    }
}

#Preview {
    FrameworkDetailsView(framework: MockData.sampleFramework)
}
