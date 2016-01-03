//
//  ViewController.swift
//  HelloMkMapView
//
//  Created by Justin on 2016/1/3.
//  Copyright © 2016年 Justin. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController, MKMapViewDelegate {

    @IBOutlet weak var map: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let latitude : CLLocationDegrees = 48.858547
        let longitude: CLLocationDegrees = 2.294524
        let location : CLLocationCoordinate2D = CLLocationCoordinate2DMake(latitude, longitude)
        let xScale   : CLLocationDegrees = 0.01
        let yScale   : CLLocationDegrees = 0.01
        let span     : MKCoordinateSpan = MKCoordinateSpanMake(yScale, xScale)
        let region   : MKCoordinateRegion = MKCoordinateRegionMake(location, span)
        map.setRegion(region, animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

