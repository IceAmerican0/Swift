//
//  ViewController.swift
//  PageControlMap
//
//  Created by 박성준 on 2021/07/23.
//

import UIKit
import MapKit

class ViewController: UIViewController {
    @IBOutlet weak var lblText: UILabel!
    @IBOutlet weak var mapView: MKMapView!
    @IBOutlet weak var pageControl: UIPageControl!
    
    let myLoc = CLLocationManager()
    
    let location:[(Double,Double,String)]=[(37.5878892, 127.0037098,"혜화문"),(37.5711907,127.009506,"흥인지문"),(37.5926027,126.9664771,"창의문"),(37.5956584,126.9810576,"숙정문")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        myLoc.delegate = self
        myLoc.requestWhenInUseAuthorization() // 승인 허용 문구 받아서 처리
        myLoc.startUpdatingLocation() // GPS 좌표 받기 시작
        mapView.showsUserLocation = true
        
        pageControl.numberOfPages=4
        pageControl.currentPage=0
        pageControl.pageIndicatorTintColor=UIColor.green
        pageControl.currentPageIndicatorTintColor=UIColor.red
        
        mapMove(location[0].0,location[0].1,location[0].2)
    }

    @IBAction func pageChange(_ sender: UIPageControl) {
        let current=pageControl.currentPage
        mapMove(location[current].0, location[current].1, location[current].2)
    }
    
    func mapMove(_ lat: CLLocationDegrees, _ lon: CLLocationDegrees, _ txt1: String) {
        // 지도 모양 정의 (가운데 부분)
        let pLoc = CLLocationCoordinate2DMake(lat, lon)
        // 지도 모양 배율
        let pSpan = MKCoordinateSpan(latitudeDelta: 0.02, longitudeDelta: 0.02)
        // 좌표 정보
        let pRegion = MKCoordinateRegion(center: pLoc, span: pSpan)
        // 현재 지도를 좌표 정보로 보이기
        mapView.setRegion(pRegion, animated: true)
        // 글자 보여주기 (해당 좌표의 위치를 글씨로 알려주기)
        let addrLoc = CLLocation(latitude: lat, longitude: lon)
        var txt2 = ""
        // 미국과 우리나라는 거꾸로 주소가 나열되어있기에!!
        // completionHandler 에 들어갈 것은 closure 함수
        // place, error function의 2가지 argument가 있다고 생각하기
        CLGeocoder().reverseGeocodeLocation(addrLoc, completionHandler: {place, error in
            let pm = place!.first
            txt2 = pm!.country! // 국가명
            txt2 += " " + pm!.locality! // 시 도
//            txt2 += " " + pm!.thoroughfare! // 동 (있을 수도 있고 없을 수도 있음 : 없으면 위에까지만 나오고 있으면 여기까지 다 나옴)
        })
        lblText.text=txt1
        // 여기에 우리가 만든 핀 함수 넣기!!!!
        setPoint(pLoc, txt1, txt2)
    }
    
    func setPoint(_ loc: CLLocationCoordinate2D, _ txt1: String, _ txt2: String) {
        let pin = MKPointAnnotation()
        
        pin.coordinate = loc
        pin.title = txt1
        pin.subtitle = txt2
        
        mapView.addAnnotation(pin)
    }
    
}

extension ViewController:CLLocationManagerDelegate{
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        //내 마지막 위치 가져오기
        let lastLoc = locations.last
        //지도보기
        mapMove((lastLoc?.coordinate.latitude)!, (lastLoc?.coordinate.longitude)!, "현재위치")
        myLoc.stopUpdatingLocation() // 좌표받기 중지
        
        
    }
}
