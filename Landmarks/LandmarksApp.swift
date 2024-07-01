/*
See LICENSE folder for this sample’s licensing information.

Abstract:
The top-level definition of the Landmarks app.
*/
 
import SwiftUI
import WikipediaKit

@main
struct LandmarksApp: App {
    @StateObject private var modelData = ModelData()
    
    init () {
        WikipediaNetworking.appAuthorEmailForAPI = "jacobjfiske@example.com"
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
