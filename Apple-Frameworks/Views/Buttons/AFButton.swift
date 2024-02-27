//
//  AFButton.swift
//  Apple-Frameworks
//
//  Created by Emre Yilmaz on 2024-02-27.
//

import SwiftUI

struct AFButton: View {
    var title: String
    
    var body: some View {
        Button(action: {
            
        }, label: {
            Text(title)
                .font(.title2)
                .frame(width: 280, height: 50)
                .fontWeight(.semibold)
                .background(Color.red)
                .foregroundStyle(.white)
                .clipShape(RoundedRectangle(cornerRadius: 30))
        })
    }
}

#Preview {
    AFButton(title: "Learn More")
}
