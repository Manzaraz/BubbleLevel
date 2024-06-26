//
//  OrientationDataView.swift
//  BubbleLevel
//
//  Created by Christian Manzaraz on 18/05/2024.
//

import SwiftUI

struct OrientationDataView: View {
    @EnvironmentObject var detector: MotionDetector

    var rollString: String {
        detector.roll.describeAsFixedLengthString()
    }

    var pitchString: String {
        detector.pitch.describeAsFixedLengthString()
    }

    var body: some View {
        VStack {
            Text("Horizontal: " + rollString)
                .font(.system(.body, design: .monospaced))
            Text("Vertical: " + pitchString)
                .font(.system(.body, design: .monospaced))
        }
    }
}

struct OrientationDataView_Previews: PreviewProvider {
    @StateObject static private var motionDetector = MotionDetector(updateInterval: 0.01).started()
    
    static var previews: some View {
        OrientationDataView()
            .environmentObject(motionDetector)
    }
}


