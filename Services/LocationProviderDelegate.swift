//
//  LocationProviderDelegate.swift
//  NAOSwiftProvider
//
//  Created by Pole Star on 14/02/2020.
//
import Foundation
import UIKit
import NAOSDKModule

public protocol LocationProviderDelegate: AnyObject{
    // Classes that adopt this protocol MUST define
    // this method -- it is called when the location has changed
    func didLocationChange(_ location: CLLocation!)
    
    func didLocationStatusChanged(_ status: String!)
    
    func didEnterSite (_ name: String!)
    
    func didExitSite (_ name: String!)
    
    func didFailWithErrorCode(_ message: String!)
    
    func didApikeyReceived (_ apikey: String!)
    
}
