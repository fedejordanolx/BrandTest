# BrandTest
Simple app to customize more than one brand to an app (components colors and images)

The project uses differents targets to take the images and colors. The two targets are:
- FirstBrand
- SecondBrand

### Colors management
There are some classes to get the exactly brand color:
- Colors.swift: There is a struct with generic colors used in any brand
- CommonColors.swift: There is defined the AppColor struct, which has the components common colors for all brands. For example, if you have a common color for the view controllers background, you can add a viewControllerBackground constant here
- [BrandName]Colors.swift: Replace BrandName with the specific target name. This is a file where is defined a AppColor extension, with the specific brand colors. Each constant has to be defined in each brand colors file. In the project you will find FirstBrandColors.swift and SecondBrandColors.swift. 

For each [BrandName]Colors.swift you will have to set the corresponding target in File Inspector -> Target Membership 

#### Usage

With this approach, the colors can be used in this way:

navigationController?.navigationBar.barTintColor = AppColor.navigationBackgroundColor
navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: AppColor.navigationTitleColor]
firstLabel.textColor = AppColor.labelFirstColor
secondLabel.textColor = AppColor.labelSecondColor
thirdLabel.textColor = AppColor.labelCommonColor
button.setTitleColor(AppColor.buttonColor, for: .normal)

### Images management

- CommonAssets.xcassets: Here are stored the common images to all brands.
- [BrandName]Assets.xcassets: Replace BrandName with the specific target name. This is a file where are stored the specific images to this brand. In the project you will find FirstAssets.xcassets and SecondBrandAssets.xcassets. 

For each [BrandName]Assets.xcassets you will have to set the corresponding target in File Inspector -> Target Membership like colors files.

