# Whirl
A variety of activity indicators for apps of any kind.

### Indicator Types:
- Normal
- Labyrinth


### Demo:
![Simulator Screen Shot 29 May 2017, 11.12.22 AM.png](https://postimg.org/image/nr1l8ezcz/ "Demo Indicator")

![Demo-Indicator-Labyrinth](https://raw.github.com/WayneEld/Whirl/master/Demo-Assets/Demo-Indicator-Labyrinth.png)


### How to install:
```swift
pod 'Whirl'
```

### How to use:
```swift
import Whirl
```

```swift
//--Initialize Indicator
let indicator = Indicate(indicatorType: .normal)

//--Start Indicator
indicator.startIndicator()

//--Stop Indicator
indicator.stopIndicator()
```
