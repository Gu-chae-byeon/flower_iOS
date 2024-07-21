//
//  MapView.swift
//  Flower-iOS
//
//  Created by dgsw8th38 on 7/17/24.
//

import SwiftUI
import MapKit


struct MapView: View {

    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 37.5666791, longitude: 126.9782914), span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5))
    
    var body: some View {
        MainTopView("센터 찾기"){
            Map(coordinateRegion: $region)
        }
    }
}

#Preview {
    MapView()
}
