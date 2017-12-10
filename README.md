SparkButtonDemo
===============
Demonstrates the SparkButton Animations that reflects the <a target="_blank" href="https://itunes.apple.com/us/app/paper-stories-from-facebook/id794163692?mt=8">FB's Paper App's</a> Like button animation.

<br>
There is also a writeup on the <a target="_blank" href="https://blog.imaginea.com/sparkbutton-for-fontli/">Imaginea blog</a>.

![SparkButtonDemo](https://raw.githubusercontent.com/saravananImaginea/SparkButtonDemo/master/SparkButtonDemo.gif)

<br>

<b>Installation :</b><br/>

	(i) Import "SparkButton.swift" & "SparkView.swift" files into your project.
	(ii) Import QuartzCore framework into your project.
	
<br/>
<b>Usage :</b>

On Your UIViewController's UI setup method, add these lines:
```swift	
	let rect: CGRect = CGRectMake(100, 100, 40, 40)
    likeButton = SparkButton(frame: rect)
    self.view.addSubview(likeButton)
```

<br/>
<b>Apps Using this Library :</b>

<a target="_blank" href="https://itunes.apple.com/in/app/fontli/id506650372?mt=8">Fontli</a>
