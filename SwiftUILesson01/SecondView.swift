//
//  SecondView.swift
//  SwiftUILesson01
//
//  Created by 高田 朋輝 on 2021/01/24.
//

import SwiftUI

struct SecondView: View {
    
    @Environment(\.presentationMode) var presentation
    
    var body: some View {
        VStack {
            
            Spacer()
            
            Text(NSLocalizedString("second_view_text", comment: ""))
            
            Spacer()
            
            Button(NSLocalizedString("second_view_close", comment: "")) {
                presentation.wrappedValue.dismiss()
            }
            
            Spacer()
            
        }
        .navigationBarBackButtonHidden(true)
        
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}
