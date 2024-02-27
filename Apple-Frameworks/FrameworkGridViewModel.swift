//
//  FrameworkGridViewModel.swift
//  Apple-Frameworks
//
//  Created by Emre Yilmaz on 2024-02-27.
//

import SwiftUI

 final class FrameworkGridViewModel: ObservableObject {
    
     var selectedFramework: Framework? {
         didSet{
             isShowingDetailView = true
         }
     }
     
    @Published var isShowingDetailView = false
     
}
