//
//  MainView.swift
//  SwiftDictionary
//
//  Created by Tempnixk on 2022/05/02.
//

import SwiftUI

struct MainView: View {
    @State private var showingOnboarding: Bool = !CurrentUser.shared.hasSeenOnboarding
    
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("Words", systemImage: "textformat.abc")
            }
            BookmarkView()
                .tabItem {
                    Label("Bookmark", systemImage: "star")
                }
        }
        .navigationViewStyle(StackNavigationViewStyle())
        .sheet(isPresented: $showingOnboarding, onDismiss: {
            CurrentUser.shared.hasSeenOnboarding = true
        }) {
            OnboardingView()
        }
    }

}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
