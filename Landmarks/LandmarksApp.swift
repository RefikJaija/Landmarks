//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Refik Jaija on 28.7.25.
//

import SwiftUI

@main
struct LandmarksApp: App {
    //Calculated property (variable)
    var body: some Scene {
        //We are calling an instance of WindowGroup stuct which is scene type in SwiftUI. -> struct WindowGroup: Scene {}
                    // Here we put the parameters we want to pass when creating WindowGroup
                    //Its like this WindowGroup(content: {} ) short way -> WindowGroup {}
        WindowGroup {
            //We are calling or creating an instance of ContentView
            ContentView()
            // { ContentView() } is a function with no parameters that returns a View.
            // SwiftUI can call this closure anytime it needs to rebuild the UI.
            // Why cleasure instead of just passing parameter: Here's a car I already built vs Here's how to build a car when you need it.
        }
    }
}
 
