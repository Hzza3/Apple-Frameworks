//
//  FrameworkDetailsView.swift
//  Apple Frameworks
//
//  Created by Ahmed Hazzaa on 12/01/2024.
//

import SwiftUI

struct FrameworkDetailsView: View {
    
    var framework: Framework
    @Binding var isShowingDetailsView: Bool
    @State var isShowingSafariView = false
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Button {
                    isShowingDetailsView = false
                } label: {
                    Image(systemName: "xmark")
                        .foregroundColor(Color(.label))
                        .imageScale(.large)
                        .frame(width: 44, height: 44)
                }
            }
            .padding()
            Spacer()
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
    FrameworkDetailsView(framework: MockData.sampleFramework, isShowingDetailsView: .constant(false))
}
