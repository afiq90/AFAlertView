# AFAlertView
Customizable alert view written on obj-c

![alt text](https://github.com/afiq90/AFAlertView/blob/master/preview.png "Preview")


#How to use
```
self.alertView = [RVCAlertView shareView];
self.alertView.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height);

self.alertView.cancelBtnBlock = ^{
    // Do your action after user tapped on cancel button
};

self.alertView.okBtnBlock = ^(NSInteger buttonTag) {
    // Do your action after user tapped on ok button
};
```

#To present the custom alert view

```
[self.alertView presentView:self];
```
