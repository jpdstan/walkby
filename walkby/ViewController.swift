//
//  ViewController.swift
//  walkby
//
//  Created by Stanley Kwong on 2/22/15.
//  Copyright (c) 2015 Stanley Kwong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var camera = GMSCameraPosition.cameraWithLatitude(37.86,
            longitude: -122.25, zoom: 6)
        var mapView = GMSMapView.mapWithFrame(CGRectZero, camera: camera)
        mapView.myLocationEnabled = true
        self.view = mapView
        
        var marker = GMSMarker()
        marker.position = CLLocationCoordinate2DMake(37.86, -122.25)
        marker.title = "Berkeley, CA"
        marker.snippet = "United States"
        marker.map = mapView
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

