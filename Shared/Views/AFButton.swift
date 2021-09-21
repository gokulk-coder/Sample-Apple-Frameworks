//
//  AFButton.swift
//  Sample-Apple-Frameworks
//
//  Created by Gokul Kattamanchi on 9/19/21.
//

import SwiftUI

struct AFButton: View {
  var title: String
  
  var body: some View {
    Text(title)
      .font(.title2)
      .fontWeight(.semibold)
      .frame(width: 280, height: 50)
      .background(Color.red)
      .foregroundColor(Color.white)
      .cornerRadius(10)
  }
}

struct AFButton_Previews: PreviewProvider {
  static var previews: some View {
    AFButton(title: "Test title")
  }
}