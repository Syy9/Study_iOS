//
//  ExtensionViewController.swift
//  Study_iOS
//
//  Created by Syy on 2018/09/17.
//  Copyright © 2018年 syy. All rights reserved.
//

import Photos

extension ViewController:AVCapturePhotoCaptureDelegate {
    func photoOutput(_ output: AVCapturePhotoOutput, didFinishProcessingPhoto photo: AVCapturePhoto, error: Error?) {
        guard let photoData = photo.fileDataRepresentation() else {
            return
        }

        if let stillImage = UIImage(data : photoData) {
            UIImageWriteToSavedPhotosAlbum(stillImage, self, nil, nil)
        }
    }
}
