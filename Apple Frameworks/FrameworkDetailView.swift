//
//  FrameworkDetailView.swift
//  Apple Frameworks
//
//  Created by Kunwar Vats on 13/10/23.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    var framework: Framework
    
    @Binding var isShowingDetailView: Bool
    
    var body: some View {
        
        ZStack {
           // BackgrounView()
            VStack {
                
                HStack
                {
                    Spacer()
                    
                    Button {
                        
                        isShowingDetailView = false
                        
                    }label: {
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
                    
                } label: {
                    LearnMoreButton()
                }
            }
        }
    }
}

#Preview {
    FrameworkDetailView(framework: MockData.frameworks.first!, isShowingDetailView: .constant(false))
}


struct BackgrounView: View {
    
    var body: some View {

        ContainerRelativeShape()
            .fill(Color.black.gradient)
        .ignoresSafeArea()
    }
}


struct LearnMoreButton: View {
    
    var body: some View {
        Text("Learn More")
            .frame(width: 280, height: 50)
            .background(.red)
            .foregroundColor(.white)
            .font(.title2)
            .fontWeight(.semibold)
            .cornerRadius(10)
    }
}
