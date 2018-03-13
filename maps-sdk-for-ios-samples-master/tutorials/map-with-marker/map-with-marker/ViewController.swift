/*
 * Copyright 2016 Google Inc. All rights reserved.
 *
 *
 * Licensed under the Apache License, Version 2.0 (the "License"); you may not use this
 * file except in compliance with the License. You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software distributed under
 * the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF
 * ANY KIND, either express or implied. See the License for the specific language governing
 * permissions and limitations under the License.
 */

import UIKit
import GoogleMaps

class ViewController: UIViewController {

  override func loadView() {
    
    // Create a GMSCameraPosition that tells the map to display the
    // coordinate 34.0522,118.2437 (Los Angeles, CA) at zoom level 6.
    let camera = GMSCameraPosition.camera(withLatitude: 34.0522, longitude: -118.2437, zoom: 6.0)
    let mapView = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
    view = mapView
    
    //Gets signal strength from either 4G or wifi
    
    
    //The following code enables the tracker.
    mapView.isMyLocationEnabled = true
    
    //The location attribute of the user may be null, need permision to access location???
    //This code below will let us know the status of the location attribute
    if let location = mapView.myLocation{
        print("User's location is: \(location)")
    }else{
        print("User's location is currently unknown")
    }
    
    // Next 5 lines of code are to create a marker.
    /*
    * let marker = GMSMarker()
    * marker.position = CLLocationCoordinate2D(latitude: 34.0522, longitude: -118.2437)
    * marker.title = "Los Angeles"
    * marker.snippet = "United States"
    * marker.map = mapView
    */

  }

}

