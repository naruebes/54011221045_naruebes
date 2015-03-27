

import UIKit

class ViewController: UIViewController,UICollisionBehaviorDelegate{
    
    

    
 
    @IBOutlet weak var numberofFishSlider: UISlider!
    
    @IBAction func animateButtonPressed(sender: AnyObject) {
        let numberOfFish = Int(self.numberofFishSlider.value)
        for loopNumber in 1...numberOfFish{
            let duration = 1.0
            let option = UIViewAnimationOptions.CurveLinear
            
            let delay = NSTimeInterval(20 + arc4random_uniform(100))/100
            let size : CGFloat = CGFloat(arc4random_uniform(40))+20
            let yPosition : CGFloat = CGFloat(arc4random_uniform(300))+20

            let fish = UIImageView()
            fish.image = UIImage(named: "1.png")
            fish.frame = CGRectMake(0-size, yPosition, size, size)
            self.view.addSubview(fish)
            println("\(delay) ")
            println("\(size) ")
            println("\(yPosition) ")
            println("\(duration) ")
          
            UIView.animateWithDuration(duration, delay: delay, options: option, animations: {
                
              
                fish.frame = CGRectMake(350, yPosition, size, size)
                
                }, completion: { animationFinished in
                    
                   
                    fish.removeFromSuperview()
            })
        }
    }
    
        
//        let size : CGFloat = 50
//        let yPosition : CGFloat = 120
//        
//       
//        let coloredSquare = UIView()
//        coloredSquare.backgroundColor = UIColor.blueColor()
//        coloredSquare.frame = CGRectMake(0, yPosition, size, size)
//        self.view.addSubview(coloredSquare)
//        
////        let option = UIViewAnimationOptions.Autoreverse | UIViewAnimationOptions.Repeat | UIViewAnimationOptions.CurveEaseInOut
//       
//        
//        
//        UIView.animateWithDuration(1.0  , animations: {
//                coloredSquare.backgroundColor = UIColor.redColor()
//                coloredSquare.frame = CGRect(x: 320-50, y: 120, width: 50, height: 50)
//            
//            },completion: {animateFinished in
//                coloredSquare.removeFromSuperview()
//        })
//    }
    override func viewDidLoad() {
        super.viewDidLoad()
      
        
//        let coloredSquare = UIView()
//        coloredSquare.backgroundColor = UIColor.blueColor()
//        coloredSquare.frame = CGRect(x: 0, y: 120, width: 50, height: 50)
//        self.view.addSubview(coloredSquare)
//        
//        
//        //        let option = UIViewAnimationOptions.Autoreverse | UIViewAnimationOptions.Repeat | UIViewAnimationOptions.CurveEaseInOut
//        
//        
//        
//        UIView.animateWithDuration(1.0  , animations: {
//            coloredSquare.backgroundColor = UIColor.redColor()
//            coloredSquare.frame = CGRect(x: 320-50, y: 120, width: 50, height: 50)
//            
//            },completion: {animateFinished in
//                coloredSquare.removeFromSuperview()
//        })
//    }
//    
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

