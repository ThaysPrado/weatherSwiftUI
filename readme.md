# WeatherAPP

![ThaysPrado](https://i.imgur.com/dSZ1adJ.png)

##### Usage

Clone the repository:

```shell
git clone https://github.com/ThaysPrado/weatherSwiftUI.git
```
or

```shell
git clone git@github.com:ThaysPrado/weatherSwiftUI.git
```

And Run

```swift
pod install
```

#### Podfile

- Alamofire - Requests Http
- SwiftyJSON - Makes it easy to deal with JSON data

#### MVVM

Model-View-ViewModel (MVVM) is a UI architectural design pattern that decouples UI code from the business and presentation logic of an application. As it comes from the name, MVVM divides an application into three components to help separate the code: the model, the view, and the view model. 

* The View defines the layout, appearance and structure of the UI. The view informs the ViewModel about user interactions and observables state changes exposed by the viewModel.
* The ViewModel is responsible for wrapping the model and providing state to the UI components. It also defines actions, that can be used by the view to pass events to the model. However, it shouldn’t have access to the view.
* The Model defines core types and implements application business logic. It is completely independent of the view and view-model and reusable in many across the application.

MVVM architecture result in a clean code base and will make it easier to add new functionality to the app