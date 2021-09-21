//
//  FrameworkGridViewModel.swift
//  Sample-Apple-Frameworks
//
//  Created by Gokul Kattamanchi on 9/19/21.
//

import Foundation
import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
  var selectedFramework: Framework? {
    didSet {
      isShowingDetailView = true
    }
  }
  
  @Published var isShowingDetailView = false
}
