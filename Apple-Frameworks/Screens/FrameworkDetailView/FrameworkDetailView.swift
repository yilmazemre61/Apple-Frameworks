//
//  FrameworkDetailView.swift
//  Apple-Frameworks
//
//  Created by Emre Yilmaz on 2024-02-27.
//

import SwiftUI

import SwiftUI

struct FrameworkDetailView: View {
    
    var framework: Framework
    @State private var isShowingSafariView = false
//    @Binding var isShowingDetailView: Bool
    
    var body: some View {
        VStack {
            
//            XDismissButton(isShowingDetailView: $isShowingDetailView)
            FrameworkTitleView(framework: framework)
            
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Button {
                isShowingSafariView = true
            } label: {
                Label("Learn More", systemImage: "book.fill")
            }
            .buttonStyle(.bordered)
            .controlSize(.large)
            .tint(.red)
        }
        .fullScreenCover(isPresented: $isShowingSafariView, content: {
            SafariView(url: URL(string: framework.urlString) ?? URL(string: "www.apple.com")!)
        })
    }
}

#Preview {
    FrameworkDetailView(framework: MockData.sampleFramework)
}
