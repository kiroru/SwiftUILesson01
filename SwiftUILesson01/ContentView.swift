//
//  ContentView.swift
//  SwiftUILesson01
//
//  Created by 高田 朋輝 on 2021/01/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var isPresentAlert = false
    @State var isPresentActionSheet = false
    @State var labelText = ""
    
    var body: some View {
        
        NavigationView {
            
            VStack(spacing: 40) {
                
                Spacer()

                Button(NSLocalizedString("button1_name", comment: "")) {
                    print(NSLocalizedString("button1_log", comment: ""))
                }
                
                Button(NSLocalizedString("button2_name", comment: "")) {
                    isPresentAlert = true
                }.alert(isPresented: $isPresentAlert, content: {
                    Alert(
                        title: Text(NSLocalizedString("button2_alert_title", comment: "")),
                        message: Text(NSLocalizedString("button2_alert_message", comment: "")),
                        dismissButton: .default(
                            Text(NSLocalizedString("button2_alert_button", comment: "")),
                            action: {
                                print(NSLocalizedString("button2_alert_log_ok", comment: ""))
                            }
                        )
                    )
                })
                
                Button(NSLocalizedString("button3_name", comment: "")) {
                    isPresentActionSheet = true
                }.actionSheet(isPresented: $isPresentActionSheet, content: {
                    ActionSheet(
                        title: Text(NSLocalizedString("button3_action_sheet_title", comment: "")),
                        message: Text(NSLocalizedString("button3_action_sheet_message", comment: "")),
                        buttons: [
                            .default(
                                Text(NSLocalizedString("button3_action_sheet_button", comment: "")),
                                action: {
                                    print(NSLocalizedString("button3_action_sheet_log_ok", comment: ""))
                                }
                            )
                        ]
                    )
                })
                
                NavigationLink(
                    NSLocalizedString("button4_name", comment: ""),
                    destination: SecondView()
                )
                
                Button(NSLocalizedString("button5_name", comment: "")) {
                    labelText = "ABC"
                }
                
                Text(labelText)
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 20, alignment: .center)
                    .background(Color.gray)
                
                Spacer()
                
            }
            
        }
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
