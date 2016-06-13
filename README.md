SparkButtonDemo
===============
Demonstrates the SparkButton Animations that reflects the <a href="https://itunes.apple.com/us/app/paper-stories-from-facebook/id794163692?mt=8">FB's Paper App's</a> Like button animation.

<br>

![SparkButtonDemo](https://raw.githubusercontent.com/saravananImaginea/SparkButtonDemo/master/SparkButtonDemo.gif)

<br>

<b>Installation :</b><br/>
	(i) Import "SparkButton.swift" & "SparkView.swift" files into your project.
	(ii) Import QuartzCore framework into your project.
	
<b>Usage :</b>

On Your UIViewController's UI setup method, add these lines:
	
	let rect: CGRect = CGRectMake(100, 100, 40, 40)
    likeButton = SparkButton(frame: rect)
    self.view.addSubview(likeButton)
