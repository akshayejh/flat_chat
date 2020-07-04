
# Flat Social

Flat Chat UI Kit

[![alt Become a patron](https://c5.patreon.com/external/logo/become_a_patron_button.png)](https://patreon.com/akshayejh)

## Getting Started

Welcome to Flat Social UI Kit for flutter. This project is currently work in progress.

# Widgets:

This project is currently work in progress. Some widgets might not have all the features yet. Stay tuned for latest updates.

## Page Wrapper

   ```dart
FlatPageWrapper(
    scrollType: ScrollType.fixedHeader,
    header: FlatPageHeader(),
    children: [
	    // Add widgets as you would do in a ListView.
    ]
);
   ```

## Page Header

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

   ```dart
FlatSectionHeader(
	title: "Section Header",
);
```

## Add Story Button

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
   ```dart
FlatChatMessage(  
	message: "Message here...",  
	messageType: MessageType.sent,  
	showTime: true,  
	time: "2 mins ago",  
);
```

## Message Input Box
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
   ```dart
FlatCounter(
	text: "3",
);
```

## Action Button
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
