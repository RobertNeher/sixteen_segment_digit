# 16 Segments Display

16 Segments LED Display, known from your DIY electronics craft box</br>

For formatting and segment indentification:<br/>
<img src="./assets/images/Segment-Labels.png" alt="16SegmentsDisplay" width="200"/>

Key is the core SixteenSegmentDisplay which properties are:<br/>
|Property|Description|
|----|----|
|foreground|Foreground color for segments|
|background|Background color for segments|
|scaleFactor|Scaling of the whole digit to display: 0 - 1.0, 100% = (x: 400, y:600)|
|opacity| Opacity of both of the segment colors above: 0 - 1.0, 100% = Opaque, 0% = Transparent|
|separator| A triangle at the top left corner, for separation of 1000 group. Is set without full refresh, good for flashing purposes|
|decimalPoint|Decimal point at the bottom right corner. Is set without full refresh, good for flashing purposes|
