//
//  ContentView.swift
//  01157005plus
//
//  Created by user11 on 2024/10/7.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.orange.opacity(0.5)
                .edgesIgnoringSafeArea(.all)
            
            //角
            Path { path in
                        path.move(to: CGPoint(x: 50, y: 250))
                        path.addLine(to: CGPoint(x: 150, y: 250))
                        path.addLine(to: CGPoint(x: 100, y: 150))
                        path.closeSubpath()
                    }
                    .fill(Color.red)
                    .overlay(
                                Path { path in
                                    path.move(to: CGPoint(x: 50, y: 250))
                                    path.addLine(to: CGPoint(x: 150, y: 250))
                                    path.addLine(to: CGPoint(x: 100, y: 150))
                                    path.closeSubpath()
                                }
                                .stroke(Color.black, lineWidth: 2) // 黑色描邊
                            )
                    .offset(x:70,y:0)
                    .padding()
            //臉
            Circle()
                .foregroundStyle(Color.red)
                .frame(width: 250, height: 250)
            //眉毛
            Ellipse()
                .foregroundStyle(Color.white)
                .frame(width: 17, height: 10)
                .rotationEffect(.degrees(-20))
                .offset(x:25,y:-70)
            Ellipse()
                .foregroundStyle(Color.white)
                .frame(width: 17, height: 10)
                .rotationEffect(.degrees(20))
                .offset(x:-25,y:-70)
            //眼白
            Ellipse()
                .foregroundStyle(Color.white)
                .frame(width: 60, height: 50)
                .offset(x:50,y:-25)
            Ellipse()
                .foregroundStyle(Color.white)
                .frame(width: 60, height: 50)
                .offset(x:-50,y:-25)
            //眼球
            Canvas { context, size in
                context.stroke(Path { $0.addArc(center: CGPoint(x: size.width / 2, y: size.height / 2), radius: min(size.width, size.height) / 2 * 0.8, startAngle: .degrees(0), endAngle: .degrees(180), clockwise: true) }, with: .color(.black), lineWidth: 4)
            }
            .frame(width: 50, height: 50)
            .offset(x:-50,y:-20)
            Canvas { context, size in
                context.stroke(Path { $0.addArc(center: CGPoint(x: size.width / 2, y: size.height / 2), radius: min(size.width, size.height) / 2 * 0.8, startAngle: .degrees(0), endAngle: .degrees(180), clockwise: true) }, with: .color(.black), lineWidth: 4)
            }
            .frame(width: 50, height: 50)
            .offset(x:50,y:-20)
            //鼻子
            Ellipse()
                .fill(Color(red: 0.7, green: 0, blue: 0))
                .frame(width: 20, height: 10)
                .offset(x:0,y:0)
            //嘴巴
            Ellipse()
                .fill(Color(red: 0.95, green: 0.8, blue: 0.7))
                .frame(width: 215, height: 90)
                .offset(x:0,y:60)
            Ellipse()
                .fill(Color(red: 0.95, green: 0.8, blue: 0.7))
                .frame(width: 190, height: 90)
                .offset(x:0,y:75)
            Ellipse()
                .fill(Color(red: 0.95, green: 0.8, blue: 0.7))
                .frame(width: 170, height: 60)
                .offset(x:0,y:90)
            Ellipse()
                .fill(Color(red: 0.95, green: 0.8, blue: 0.7))
                .frame(width: 130, height: 40)
                .offset(x:0,y:105)
            Ellipse()
                .fill(Color(red: 1.0, green: 0.5, blue: 0.5))
                .overlay(Ellipse()
                    .stroke(Color.black, lineWidth: 2))
                .frame(width: 200, height: 80)
                .offset(x:0,y:50)
            //牙齒
            Path { path in
                        path.move(to: CGPoint(x: 90, y: 250))
                        path.addLine(to: CGPoint(x: 110, y: 250))
                        path.addLine(to: CGPoint(x: 100, y: 235))
                        path.closeSubpath()
                    }
                    .fill(Color.red)
                    .overlay(
                                Path { path in
                                    path.move(to: CGPoint(x: 90, y: 250))
                                    path.addLine(to: CGPoint(x: 100, y: 235))
                                    path.addLine(to: CGPoint(x: 110, y: 250))
                                }
                                .stroke(Color.black, lineWidth: 2) // 黑色描邊
                            )
                    .offset(x:115,y:115)
                    .rotationEffect(.degrees(173))
            Path { path in
                        path.move(to: CGPoint(x: 90, y: 250))
                        path.addLine(to: CGPoint(x: 110, y: 250))
                        path.addLine(to: CGPoint(x: 100, y: 235))
                        path.closeSubpath()
                    }
                    .fill(Color.red)
                    .overlay(
                                Path { path in
                                    path.move(to: CGPoint(x: 90, y: 250))
                                    path.addLine(to: CGPoint(x: 100, y: 235))
                                    path.addLine(to: CGPoint(x: 110, y: 250))
                                }
                                .stroke(Color.black, lineWidth: 2) // 黑色描邊
                            )
                    .offset(x:135,y:118)
                    .rotationEffect(.degrees(168))
            Path { path in
                        path.move(to: CGPoint(x: 90, y: 250))
                        path.addLine(to: CGPoint(x: 110, y: 250))
                        path.addLine(to: CGPoint(x: 100, y: 235))
                        path.closeSubpath()
                    }
                    .fill(Color.red)
                    .overlay(
                                Path { path in
                                    path.move(to: CGPoint(x: 90, y: 250))
                                    path.addLine(to: CGPoint(x: 100, y: 235))
                                    path.addLine(to: CGPoint(x: 110, y: 250))
                                }
                                .stroke(Color.black, lineWidth: 2) // 黑色描邊
                            )
                    .offset(x:50,y:115)
                    .rotationEffect(.degrees(-173))
            Path { path in
                        path.move(to: CGPoint(x: 90, y: 250))
                        path.addLine(to: CGPoint(x: 110, y: 250))
                        path.addLine(to: CGPoint(x: 100, y: 235))
                        path.closeSubpath()
                    }
                    .fill(Color.red)
                    .overlay(
                                Path { path in
                                    path.move(to: CGPoint(x: 90, y: 250))
                                    path.addLine(to: CGPoint(x: 100, y: 235))
                                    path.addLine(to: CGPoint(x: 110, y: 250))
                                }
                                .stroke(Color.black, lineWidth: 2) // 黑色描邊
                            )
                    .offset(x:30,y:118)
                    .rotationEffect(.degrees(-168))
            //臉的輪廓
            Circle()
                .stroke(Color.black, lineWidth: 2)
                .frame(width: 250, height: 250)
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
