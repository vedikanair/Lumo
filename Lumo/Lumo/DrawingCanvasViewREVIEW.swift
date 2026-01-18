//
//  DrawingCanvasView.swift
//  Lumo
//
//  Created by Vedika on 18/01/26.
//
//
//
//import SwiftUI
//
//struct DrawingCanvasView: View {
//    @Binding var drawnPath: [CGPoint]  // Stores all finger positions
//    let outlineShape: ShapeType  // What shape to trace
//    
//    var body: some View {
//        ZStack {
//            // Background
//            Color.white
//            
//            // Shape outline (dotted)
//            ShapeOutlineView(shape: outlineShape)
//            
//            // Child's drawing
//            Path { path in
//                guard !drawnPath.isEmpty else { return }
//                
//                // Start at first point
//                path.move(to: drawnPath[0])
//                
//                // Draw lines to all other points
//                for point in drawnPath.dropFirst() {
//                    path.addLine(to: point)
//                }
//            }
//            .stroke(Color.oceanSlate, lineWidth: 4)
//        }
//        .gesture(
//            DragGesture(minimumDistance: 0)
//                .onChanged { value in
//                    // Add finger position to path
//                    drawnPath.append(value.location)
//                }
//        )
//    }
//}
//
//// Define shape types
//enum ShapeType {
//    case circle
//    case square
//    case triangle
//    // We'll add more later (elephant, kolam, etc.)
//}
//
//#Preview {
//    DrawingCanvasView(
//        drawnPath: .constant([]),
//        outlineShape: .circle
//    )
//    .frame(width: 300, height: 300)
//    .background(Color.cloudWhite)
//}
