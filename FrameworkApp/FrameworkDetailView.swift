//
//  DetailsView.swift
//  FrameworkApp
//
//  Created by Alisher Baigazin on 26.08.2022.
//

import SwiftUI

struct FrameworkDetailView: View {
    let framework: Framework
    @Binding var isFrameworkDetailViewShown: Bool

    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Button {
                    isFrameworkDetailViewShown = false
                } label: {
                    Image(systemName: "xmark")
                        .foregroundColor(.primary)
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
                print("do something")
            } label: {
                Text("Learn More")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .frame(width: 280, height: 50)
                    .background(Color.red)
                    .cornerRadius(10)
            }

        }
    }
}

struct FrameworkDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkDetailView(framework: MockData.sampleFramework, isFrameworkDetailViewShown: .constant(false))
            .preferredColorScheme(.dark)
    }
}
