//
//  SafariViewController.swift
//  FetchExerciseTheMealDB
//
//  Created by Diego Sierra on 02/09/23.
//

import SwiftUI
import SafariServices

struct SafariView: View {
    @State var showSafari = false
    var videoURL: URL
    var body: some View {
        Button("Show Video Instrutions", action: {
            showSafari.toggle()
        })
        .sheet(isPresented: $showSafari) {
            SafariUIViewController(url: videoURL)
            
        }
    }
}

struct SafariView_Previews: PreviewProvider {
    static var previews: some View {
        SafariView(videoURL: URL(string: "https://www.youtube.com/watch?v=6R8ffRRJcrg")!)
    }
}

struct SafariUIViewController: UIViewControllerRepresentable {
    
    let url: URL
    
    func makeUIViewController(context: Context) -> SFSafariViewController {
        return SFSafariViewController(url: url)
    }
    
    func updateUIViewController(_ uiViewController: SFSafariViewController, context: Context) {
        
    }
    
}


