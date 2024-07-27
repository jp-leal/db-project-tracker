//
//  ContentView.swift
//  db-project-tracker
//
//  Created by Joao Leal on 7/27/24.
//

import SwiftUI

struct ProjectListView: View {
    var body: some View {
        VStack {
            Image("cross")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
                .font(Font.screenHeading)
                .foregroundStyle(Color("Deep Purple"))
        }
        .padding()
    }
}
// Blue, Creme, Deep Purple, Gray, LightBlue, LightGray, Lime, Navy, Teal, Washed Blue, Yellow
#Preview {
    ProjectListView()
}
