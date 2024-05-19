//
//  LevelView.swift
//  BubbleLevel
//
//  Created by Christian Manzaraz on 18/05/2024.
//

import SwiftUI

struct LevelView: View {
    @EnvironmentObject var motionDetector: MotionDetector
    
    var body: some View {
        VStack {
            BubbleLevel()
            OrientationDataView()
                .padding(.top, 80)
        }
        .onAppear {
            motionDetector.start()
        }
        .onDisappear {
            motionDetector.stop()
        }
    }
}

//#Preview {
//    LevelView()
//}

struct LevelView_Previews: PreviewProvider {
    @StateObject static var motionDetector = MotionDetector(updateInterval: 0.1).started()
    
    static var previews: some View {
        LevelView()
            .environmentObject(motionDetector)
    }
}
