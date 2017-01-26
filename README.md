# BrandTest
Simple app to customize more than one brand to an app (components colors and images)

The project uses differents targets to take the images and colors. The two targets are:
- `FirstBrand`
- `SecondBrand`

### Colors management
There are some classes to get the exactly brand color:
- `[BrandName]Palette.swift`: Replace `BrandName` with the specific target name. There is a struct with the colors palette used in a specific brand
- `AppColor.swift`: There is a enum where are the differents views colors applied for the project
- `[BrandName]AppColorHelper.swift`: Replace `BrandName` with the specific target name. This is a file where is defined a helper class, which link a `AppColor` enum value with the specific brand color (from brand palette). 

For each `[BrandName]Palette.swift` and `[BrandName]AppColorHelper.swift` you will have to set the corresponding target in `File Inspector -> Target Membership`

#### Usage

With this approach, the colors can be used in this way:

``` swift
navigationController?.navigationBar.barTintColor = AppColor.navigationBackgroundColor
navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: AppColor.navigationTitleColor]
firstLabel.textColor = AppColor.labelFirstColor
secondLabel.textColor = AppColor.labelSecondColor
thirdLabel.textColor = AppColor.labelCommonColor
button.setTitleColor(AppColor.buttonColor, for: .normal)
```

### Images management

- `CommonAssets.xcassets`: Here are stored the common images to all brands.
- `[BrandName]Assets.xcassets`: Replace BrandName with the specific target name. This is a file where are stored the specific images to this brand. In the project you will find `FirstAssets.xcassets` and `SecondBrandAssets.xcassets`. 

For each `[BrandName]Assets.xcassets` you will have to set the corresponding target in `File Inspector -> Target Membership` like colors files.

