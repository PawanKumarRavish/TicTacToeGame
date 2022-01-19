//
//  ViewController.swift
//  Lab1_PawanKumar_c0835049_ios
//
//  Created by Pawan Ravish on 2022-01-18.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var xScore: UILabel!
    @IBOutlet weak var oScore: UILabel!
    @IBOutlet weak var ResultLabel: UILabel!
    @IBOutlet weak var PlayAgainOutlet: UIButton!
    
    
    
    var PlayerId=1 // deafault id 1 for cross and 2 for zero
    var GameRunning=true // will yell  game is running or not ??
    var GameState=[0,0,0,0,0,0,0,0,0]// array created to stop overiding the click
    var WinnerCombinatins=[[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]]
    //copmsidered all the wiinning combinations 3 vertical , 3 horizontal , and 2 diagonal ones
    
    var ScoreOfCross=0 // Decalared Variable int  for SCore Counting
    var ScoreOfZero=0//  decalared Variabler  of type int for Score Counting
    
    
    
    
    
    
    @IBAction func AnyButtonClicked(_ sender: UIButton) {
        
        
        if (GameState[sender.tag-1]==0 && GameRunning==true){// if statment to check running state and using one button once
            
            GameState[sender.tag-1]=PlayerId  // assiging player id instead of zero to stop repition
            
            if(PlayerId==1){
                sender.setImage(UIImage(named: "1.png"), for: .normal) // setting image for player id =1
                PlayerId=2// assigning the player id =2 for exchainging playing turn
            }
        
        else //(GameState[sender.tag-1]==0 && GameRunning==true)
        {
            sender.setImage(UIImage(named: "2.png"), for: .normal) // player id =2 image setting
            PlayerId=1// again exchanging player turn
        }
        }
        
        
        
        for comb in WinnerCombinatins // chehcking in winiing combination to declare winner
        {
            
            if GameState[comb[0]] != 0 &&
                GameState[comb[0]]==GameState[comb[1]] &&
                GameState[comb[1]]==GameState[comb[2]]
            {
                
                
                if GameState[comb[0]]==1{
                    ResultLabel.text="Congrats !! Cross Has Won this Game "
                    ScoreOfCross+=1
                    xScore.text=String(ScoreOfCross)
                    PlayAgainOutlet.isHidden=false
                    ResultLabel.isHidden=false
                    GameRunning=false
                    
                }
                else if GameState[comb[0]]==2{
                    ResultLabel.text=" Congrats !! Nought has won this Game "
                    ScoreOfZero+=1
                    oScore.text=String(ScoreOfZero)
                    PlayAgainOutlet.isHidden=false
                    ResultLabel.isHidden=false
                    GameRunning=false
                }
                
                
                
            }
            
            
        
        
        }
        
        
        
        
        GameRunning=false // chechkin in case of draw
            
            for i in GameState{
                if i==0{
                    GameRunning=true
                    break
                }
            }
                
        if GameRunning==false{
                    ResultLabel.text="IT WAS A DRAW"
                    PlayAgainOutlet.isHidden=false
            PlayAgainOutlet.isHidden=false
            ResultLabel.isHidden=false
            
                }
            }
            

    
    
    @IBAction func PlayAgainButton(_ sender: UIButton) {
        
        // all things again reseted to inital values to restart the game except score Card
        
        
         GameRunning=true
        GameState=[0,0,0,0,0,0,0,0,0]
         PlayerId=1
        PlayAgainOutlet.isHidden=true
        ResultLabel.isHidden=true
        
        for i in 1...9{// for loop for deleting all the images in order to reset the game
            let button=view.viewWithTag(i) as! UIButton
            
            button.setImage(nil, for: .normal)
            
        }

    }
    
    
    
    
    
    
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        PlayAgainOutlet.isHidden=true // initial hiding the button on the main screen
    }


}

