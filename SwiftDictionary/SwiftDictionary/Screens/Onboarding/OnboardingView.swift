//
//  OnboardingView.swift
//  SwiftDictionary
//
//  Created by Tempnixk on 2022/05/02.
//

import SwiftUI

struct OnboardingView: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack {
            Color("Background").ignoresSafeArea()
            VStack {
                Text("Welcome to\nSwift Dictionary")
                    .multilineTextAlignment(.center)
                    .font(.system(size: 35, weight: .bold))
                    .padding(.top, 70)
                
                Spacer()
                
                VStack(alignment: .leading, spacing: 25) {
                    ForEach(onboardingCases, id: \.self) { oCase in
                        HStack {
                            Image(systemName: oCase.icon)
                                .foregroundColor(.accentColor)
                                .font(.system(size: 40))
                                .frame(width: 40, height: 40)
                                .padding()
                            VStack(alignment: .leading, spacing: 5) {
                                Text(oCase.title)
                                    .font(.headline)
                                Text(oCase.subTitle)
                                    .font(.system(size: 15))
                                    .foregroundColor(.secondary)
                                    .fixedSize(horizontal: false, vertical: true)
                            }
                        }
                    }
                }
                .padding()
                
                Spacer()
                
                Button {
                    //hide
                    presentationMode.wrappedValue.dismiss()
                    CurrentUser.shared.hasSeenOnboarding = true
                } label: {
                    Text("Continue")
                        .bold()
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.accentColor)
                        .foregroundColor(.white)
                        .cornerRadius(15)
                        .padding(25)
                }

                Spacer().frame(height: 40)
            }
        }
    }
    
    struct OnboardingCase: Hashable {
        var icon: String
        var title: String
        var subTitle: String
    }
    
    var onboardingCases = [
        OnboardingCase(icon: "text.justify", title: "Your own list of words", subTitle: "Note any words you want, write your own definitions and examples"),
        OnboardingCase(icon: "star", title: "Si vis pacem...", subTitle: "Programming is such a war. Prepare knowledge for your programming war. "),
    ]
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
