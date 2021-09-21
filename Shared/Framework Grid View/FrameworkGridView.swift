//
//  FrameworkGridView.swift
//  Sample-Apple-Frameworks
//
//  Created by Gokul Kattamanchi on 9/16/21.
//

import SwiftUI

struct FrameworkGridView: View {
  @StateObject var viewModel = FrameworkGridViewModel()
  
  let columns: [GridItem] = [GridItem(.flexible()),
                             GridItem(.flexible()),
                             GridItem(.flexible())]
  
  var body: some View {
    NavigationView{
      ScrollView {
        LazyVGrid(columns: columns) {
          ForEach(MockData.frameworks) { framework in
            FrameworkTitleView(framework: framework)
              .onTapGesture {
                viewModel.selectedFramework = framework
              }
          }
        }
      }
      .navigationTitle("🍎 Frameworks")
      .sheet(isPresented: $viewModel.isShowingDetailView) {
        FrameworkDetailView(framework: viewModel.selectedFramework ?? MockData.sampleFramework,
                            isShowingDetailView: $viewModel.isShowingDetailView)
      }
    }
  }
}

struct FrameworkGridView_Previews: PreviewProvider {
  static var previews: some View {
    FrameworkGridView()
      .preferredColorScheme(.dark)
  }
}
