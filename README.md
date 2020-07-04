
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

| Properties | Values |
| ------------ | ------------ |
| outlineIndicator |  |
| outlineColor |  |
| onlineIndicator |  |
| onlineColor |  |
| imageUrl |  |
| size |  |
| onPressed |  |
| backgroundColor |  |

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
| profileImage |  |
| name |  |
| message |  |
| counter |  |
| nameColor |  |
| messageColor |  |
| backgroundColor |  |
| multiLineMessage |  |
| onPressed |  |

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
| message |  |
| messageType |  |
| backgroundColor |  |
| textColor |  |
| time |  |
| showTime |  |
| maxWidth |  |
| minWidth |  |

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
| prefix |  |
| suffix |  |
| roundedCorners |  |
| WIP |  |

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
| color  |  |
| textColor |  |
| text |  |

**Example: **

   ```dart
	FlatCounter(
		text: "3",
	);
```

## Action Button

| Properties | Values |
| ------------ | ------------ |
| icon |  |
| iconData |  |
| iconColor |  |
| iconSize |  |
| onPressed |  |

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
