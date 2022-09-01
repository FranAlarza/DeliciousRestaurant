//
//  OnboardingViewModel.swift
//  DeliciousApp
//
//  Created by Fran Alarza on 1/9/22.
//

import Foundation

protocol OnBoardingViewModelProtocol {
    func onViewsLoaded()
    var slidesCount: Int { get }
    func getOnboardingModel(at index: IndexPath) -> OnBoardingSlide
}

class OnBoardingViewModel {
    
    weak var delegate: OnboardingViewController?
    
    init(delegate: OnboardingViewController) {
        self.delegate = delegate
    }
    var slides: [OnBoardingSlide] = []
     
}

extension OnBoardingViewModel: OnBoardingViewModelProtocol {
    func onViewsLoaded(){
        slides = [
            OnBoardingSlide(title: "Delicious Dishes", description: "Experience a variety of amazing dishes from different cultures around the world.", image: #imageLiteral(resourceName: "slide1")),
            OnBoardingSlide(title: "World-Class Chefs", description: "Our dishes are prepared by only the best.", image: #imageLiteral(resourceName: "slide3")),
            OnBoardingSlide(title: "Instant World-Wide Delivery", description: "Your orders will be delivered instantly irrespective of your location around the world.", image: #imageLiteral(resourceName: "slide2"))
        ]
    }
    
    func getOnboardingModel(at indexpath: IndexPath) -> OnBoardingSlide {
        return slides[indexpath.row]
    }
    
    var slidesCount: Int {
        return slides.count
    }
    
    
    
    
}
