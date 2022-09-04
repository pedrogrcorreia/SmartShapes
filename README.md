# Smart Shapes

## Matlab Neural Network

Create, train and test Matlab <i>feedforward networks</i> to recognize geometrical shapes of given images.

## Content

`start, test, train, draws` - Images to apply to neural network.

`nets` - Saved neural networks.

`gui` - <i>.m Matlab program</i> to test and draw shapes to be recognized.

## Usage

Input folder must have sub-folders for each shape that needs to be fed to the network.

Example <br>
```\start\circle\circle.png``` - Input folder must be `start`

### Create and Train Neural Network
Create an appropriate neural network to be trained.

### Simulate using a Dataset
Use a previous created network or load one. This function is blocked until a network is active.

### Simulate draw
Draw a shape on the square to be recognized. This function is blocked until a network is active.

### Simulate shape
Load an image to be recognized. This function is blocked until a network is active.

## Known bugs
    - [ ] No error message for missusage of Input folder.