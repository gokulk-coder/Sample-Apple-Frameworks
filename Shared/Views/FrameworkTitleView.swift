//
//  FrameworkTitleView.swift
//  Sample-Apple-Frameworks
//
//  Created by Gokul Kattamanchi on 9/20/21.
//

import SwiftUI

struct FrameworkTitleView: View {
  let framework: Framework
  
  var body: some View {
    VStack  {
      Image(framework.imageName)
        .resizable()
        .frame(width: 90, height: 90)
      Text(framework.name)
        .font(.title)
        .fontWeight(.semibold )
        .scaledToFit()
        .minimumScaleFactor(0.4)
    }
    .padding()
  }
}

struct FrameworkTitleView_Previews: PreviewProvider {
  static var previews: some View {
    FrameworkTitleView(framework: MockData.sampleFramework)
  }
}
