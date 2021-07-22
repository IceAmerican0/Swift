//
//  EditDelegate.swift
//  Navigation
//
//  Created by 박성준 on 2021/07/22.
//
// Protocol : 자바의 interface

protocol EditDelegate {
    func didMessageEditDone(_ controller:EditViewController,message:String)
    func didImageOnOffDone(_ controller:EditViewController, isOn:Bool)
}
