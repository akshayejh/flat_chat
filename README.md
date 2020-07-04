
# Flat Social

Flat Chat UI Kit

[![alt Become a patron](https://c5.patreon.com/external/logo/become_a_patron_button.png)](https://patreon.com/akshayejh)

## Getting Started

Welcome to Flat Social UI Kit for flutter. This project is currently work in progress.

# Widgets:

This project is currently work in progress. Some widgets might not have all the features yet. Stay tuned for latest updates.

## Page Wrapper

FlatPageWrapper() - helps you create quick pages with header, body and footer, with multiple scroll types.

|  Properties | Values |
| ------------ | ------------ |
| header | **FlatPageHeader** - Flat page header is another widget from the UI Kit, you can read more about it below. |
| footer | **FlatMessageInputBox** - Flat message input box is another widget from the UI Kit, you can read more about it below.  |
| backgroundColor | **Colors.white** - You can assign any color to the page background. |
| scrollType | **ScrollType.floatingHeader** - Makes the header stick to the top and above the page content. This will also make the **FlatMessageInputBox** floating.  **ScrollType.fixedHeader** - Makes the header stick to top, but with the content after it. |
| children | You can add list of widgets to this property, just as you would do with a ListView. |
| reverseBodyList | **true/false** -  If "true", the whole body content will be reveresed. It's useful for showing chat list. |

**Example: **

   ```dart
	FlatPageWrapper(
	    scrollType: ScrollType.fixedHeader,
	    header: FlatPageHeader(),
	    children: [
		    // Add widgets as you would do in a ListView.
	    ],
		footer: FlatMessageInputBox(),
	);
   ```

## Page Header

FlatPageHeader() - can be used to create quick action bar.

| Properties | Values |
| ------------ | ------------ |
| title |  "Page Title" - is the title of the page, visible in the PageHeader() |
| textSize | **double** - Size of text |
| fontWeight | **FontWeight** - Define custom font weight |
| backgroundColor | **Color** - Custom background color for the whole header |
| textColor | **Color** - Custom text color |
| suffixWidget | **Widget** - You can add any widget at the end of page header. **FlatActionButton** - can make the job easier by placing the button at the correct place. |
| prefixWidget | **Widget** - You can place another widget or **FlatActionButton** - to use it as a menu button or back button. |


**Example: **

   ```dart
	FlatPageHeader(
		prefixWidget: FlatActionButton(  
			iconData: Icons.menu,  
		),
		title: "Page Title",
		suffixWidget: FlatActionButton(  
			iconData: Icons.search,  
		),
	);
   ```

## Section Header

FlatSectionHeader() - can be used to create division between different sections of page using a title for the section.

| Properties | Values |
| ------------ | ------------ |
| title | "Section Title" - You can add section title text here. |
| textSize | **double** - Customize size of text |
| fontWeight | **FontWeight** - Customize Font Weight of the header |
| backgroundColor | **Color** - Custom background color for the header |
| textColor | **Color** - Custom text color for the header |


**Example: **

   ```dart
	FlatSectionHeader(
		title: "Section Header",
	);
```

## Add Story Button

FlatAddStoryBtn()

| Properties | Values |
| ------------ | ------------ |
| icon | **Icon** - Place an icon that you want to display in this button. |
| image | **Image** - Assign an image instead of icon. Image will not be visible if icon is already assigned. |
| backgroundColor | **Color** - Custom background color for the button. |
| iconColor | **Color** - Custom icon color. |
| size | **double** - Custom size of the button. |
| onPressed | **Function** - Perform function when clicked. |

**Example: **

   ```dart
	FlatAddStoryBtn(
		size: 60.0,
		icon: Icon(
			Icons.message,
		),
		backgroundColor: Colors.white,
		onPressed: () {
			print("Clicked Add Story Button");
		}
	);
```

## Profile Image

FlatProfileImage() - let's you create quick profile image widgets, which can be customized to add story indicator and online indicator as well.

| Properties | Values |
| ------------ | ------------ |
| outlineIndicator | **true/false** - If true, an outline will be visible similar to the story indicator of social media apps. |
| outlineColor | **Color** - Assign custom color to the story indicator. |
| onlineIndicator | **true/false** - If true, an online indicator will be visible below the profile image of the user. |
| onlineColor | **Color** - Assign custom color to the online indicator. |
| imageUrl | **String** - Assign an image url to load. |
| size | **double** - Size of the image. |
| backgroundColor | **Color** - Assign a custom background color to the image. This is necessary for the border of online indicator. **More Info Coming Soon.** |
| onPressed | **Function** - Perform function when clicked. |

**Example: **

   ```dart
	FlatProfileImage(
		imageUrl: "https://imageurl.png", //Enter Image URL Here,
		outlineIndicator: true,
		onlineIndicator: true,
		backgroundColor: Colors.white,
		size: 60.0,
		onPressed: () {
			print("Clicked Add Story Button");
		}
	);
```

## Chat List Item

| Properties | Values |
| ------------ | ------------ |
| profileImage | **Widget** - Assign a custom profile image to the item. **FlatProfileImage** - Can also be used to create quick profile image. |
| name | **String** - Name of the user. |
| message | **String** - Message from or to the user. |
| counter | **Widget** - Assign a custom message count widget. **FlatCounter** - Can be used too. Read more about it below. |
| nameColor | **Color** - Custom color to the name text. |
| messageColor | **Color** - Custom color to the message text. |
| backgroundColor | **Color** - Custom color to the background of the item. |
| multiLineMessage | **true/false** - If true, it will allow the chat item to display the full message instead of single line ellipsed message. |
| onPressed | **Function** - Perform function when clicked. |

**Example: **

   ```dart
	FlatChatItem(
		profileImage: FlatProfileImage(  
			onlineIndicator: true,  
			imageUrl: 'https://images.pexels.com/photos/3866555/pexels-photo-3866555.png?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',  
		),  
		name: "Name",  
		message: "Message from the user.",  
		multiLineMessage: true,  
		onPressed: () {  
			print("Clicked on chat item."); 
		},
	);
```

## Chat Message

| Properties | Values |
| ------------ | ------------ |
| message | **String** - Message from or to the user. |
| messageType | **MessageType.sent** or **MessageType.received** to adjust the aligned and color of the message bubble. |
| backgroundColor | **Color** - Custom background color to the message. |
| textColor | **Color** - Custom text color. |
| time | **String** - Enter a string to display time below the message. |
| showTime | **true/false** - By default this value is false, and to display time below messsage, you need to change this to true. |
| maxWidth | **double** - Maximum widget an message can occupy. |
| minWidth | **double** - Minimum widget an message can occupy. |

**Example: **

   ```dart
	FlatChatMessage(  
		message: "Message here...",  
		messageType: MessageType.sent,  
		showTime: true,  
		time: "2 mins ago",  
	);
```

## Message Input Box

| Properties | Values |
| ------------ | ------------ |
| prefix | **Widget** - Add a custom widget before the message input field. **FlatActionButton** - Can be used. |
| suffix | **Widget** - Add a custom widget after the message input field. **FlatActionButton** - Can be used. |
| roundedCorners | **true/false** - Enables or disables rounded corners for the input box. |
| WIP | **More Features Coming Soon** |

**Example: **

   ```dart
	FlatMessageInputBox(
		prefix: FlatActionButton(  
			iconData: Icons.add,  
			iconSize: 24.0,  
		),  
		roundedCorners: true,  
		suffix: FlatActionButton(  
			iconData: Icons.image,  
			iconSize: 24.0,  
		),
	);
```

## Counter

| Properties | Values |
| ------------ | ------------ |
| color  | **Color** - Custom background color for the counter. |
| textColor | **Color** - Custom text color. |
| text | **String** - Display text in counter. |

**Example: **

   ```dart
	FlatCounter(
		text: "3",
	);
```

## Action Button

| Properties | Values |
| ------------ | ------------ |
| icon | **Icon** - Assign a custom icon widget to the button. |
| iconData | **IconData** - Directly change the icon of the button. |
| iconColor | **Color** - Change the color of the icon. |
| iconSize | **double** - Change the size of the icon. |
| onPressed | **Function** - Perform function when clicked. |

**Example: **

   ```dart
	FlatActionButton(
		iconData: Icons.menu,
		iconSize: 32.0,
		iconColor: Colors.black,
		onPressed: () {
			print("Clicked on Flat Action Button");
		}
	);
```


# How to use:

Latest Video in progress!

Older Video:

[![Flat Social UI Kit](https://i.ytimg.com/vi/0SCBr9HAH6o/hqdefault.jpg?sqp=-oaymwEZCPYBEIoBSFXyq4qpAwsIARUAAIhCGAFwAQ==&rs=AOn4CLBcsbOujCbLoz1u2unfXZ1Olx4ssA)](https://www.youtube.com/watch?v=0SCBr9HAH6o)
