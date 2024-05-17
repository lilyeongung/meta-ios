//
//  ViewController.swift
//  video_player
//
//  Created by Andrew Park on 1/12/24.
//

import UIKit
// Import necessary frameworks for working with the UI, video playback, and audio/video functionality
import AVKit
import AVFoundation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // initiate the player once the app is launched
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        // Call our private function to initiate the playback of a video when the view controller's view has appeared on the screen
        playVideo()
    } // This approach is often used when you want to start playing a video automatically as soon as the user can see the content on the screen
    
    
    // Locate video file, Play the video file - Call function in
    private func playVideo(){
        // Check if the video file "xcode_secrets.mp4" exists in the main bundle
        guard let path=Bundle.main.path(forResource: "xcode_secrets", ofType: "mp4") else {
            debugPrint("xcode_secrets.mp4 not found")
            return
        }
        
        // Create an 'AVPlayer' instance with the URL (Uniform Resource Locator) of the video file
        let player = AVPlayer(url: URL(fileURLWithPath: path))
        
        // Create an 'AVPlayerViewController' instance to display the video with pre-built UI
        let playerController = AVPlayerViewController()
        
        // Set the AVPlayer for the AVPlayerViewController
        playerController.player=player
        
        // Present the player controller modally
        present(playerController, animated: true) {
            // Start playing the video when the player controller is presented
            player.play()
        }
    }
}
