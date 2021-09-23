
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_stack/flutter_image_stack.dart';


void main() {
runApp(const MyApp());
}

class MyApp extends StatelessWidget {
const MyApp({Key? key}) : super(key: key);

@override
Widget build(BuildContext context) {
return MaterialApp(
title: 'Foto Gallery',
theme: ThemeData(
appBarTheme: const AppBarTheme(elevation: 1, backgroundColor:Colors.white,
titleTextStyle: TextStyle(fontSize: 16)),
scaffoldBackgroundColor: Colors.white,
primaryColor: Colors.white,
cardColor: Colors.white12,
textTheme: Typography.material2018(platform: defaultTargetPlatform)
.white
.copyWith(
  bodyText1: const TextStyle(color: Colors.black, fontSize: 16),
  bodyText2: const TextStyle(color: Colors.black, fontSize: 14),
  caption: const TextStyle(color: Colors.black, fontSize: 12),
  headline1: const TextStyle(color: Colors.black, fontSize: 96),
  headline2: const TextStyle(color: Colors.black, fontSize: 60),
  headline3: const TextStyle(color: Colors.black, fontSize: 48),
  headline4: const TextStyle(color: Colors.black, fontSize: 34),
  headline5: const TextStyle(color: Colors.black, fontSize: 24),
  headline6: const TextStyle(color: Colors.black, fontSize: 22),
  subtitle1: const TextStyle(color: Colors.black, fontSize: 16),
  subtitle2: const TextStyle(color: Colors.black, fontSize: 14),
  overline: const TextStyle(color: Colors.black, fontSize: 10),
  button: const TextStyle(color: Colors.black, fontSize: 16),
),
colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.blue),
),
darkTheme: ThemeData(
appBarTheme:  const AppBarTheme( elevation: 0, backgroundColor: Colors.black,
titleTextStyle: TextStyle(fontSize:16)),
scaffoldBackgroundColor: Colors.black,
primaryColor: Colors.black,
cardColor:Colors.black,
textTheme: Typography.material2018(platform: defaultTargetPlatform)
  .black
  .copyWith(
    bodyText1: const TextStyle(color: Colors.white, fontSize: 16),
    bodyText2: const TextStyle(color: Colors.white, fontSize: 14),
    caption: const TextStyle(color: Colors.white, fontSize: 12),
    headline1: const TextStyle(color: Colors.white, fontSize: 96),
    headline2: const TextStyle(color: Colors.white, fontSize: 60),
    headline3: const TextStyle(color: Colors.white, fontSize: 48),
    headline4: const TextStyle(color: Colors.white, fontSize: 34),
    headline5: const TextStyle(color: Colors.white, fontSize: 24),
    headline6: const TextStyle(color: Colors.white, fontSize: 22),
    subtitle1: const TextStyle(color: Colors.white, fontSize: 16),
    subtitle2: const TextStyle(color: Colors.white, fontSize: 14),
    overline: const TextStyle(color: Colors.white, fontSize: 10),
    button: const TextStyle(color: Colors.white, fontSize: 16),
  ),
colorScheme:
  ColorScheme.fromSwatch().copyWith(secondary: Colors.blue)),
themeMode: ThemeMode.system,
home: HomeView(),
);
}
}

class  HomeView extends StatelessWidget {
 HomeView({ Key? key }) : super(key: key);
final List<String> _images = [
    'https://images.unsplash.com/photo-1593642532842-98d0fd5ebc1a?ixid=MXwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=2250&q=80',
    'https://images.unsplash.com/photo-1612594305265-86300a9a5b5b?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=80',
    'https://images.unsplash.com/photo-1612626256634-991e6e977fc1?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1712&q=80',
    'https://images.unsplash.com/photo-1593642702749-b7d2a804fbcf?ixid=MXwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=80'
  ];
  
  final List<String> _postImages=[
    "https://images.unsplash.com/photo-1593642632823-8f785ba67e45?ixid=MnwxMjA3fDF8MHxlZGl0b3Jp YWwtZmVlZHw2fHx8ZW58MHx8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1524758631624-e2822e304c36?ixid=MnwxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHwyMXx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1632334994174-d505252a397e?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxNXx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1632333650953-f68e8b3d5f02?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxNHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
     "https://media.istockphoto.com/photos/idyllic-meadow-picture-id1294119130?b=1&k=20&m=1294119130&s=170667a&w=0&h=m5wkjCxw_Ra-bqPN6NfSpSJ-DaFuASJ9Sl5kscaxCRQ=",
     "https://media.istockphoto.com/photos/water-lilies-blooming-in-summer-pond-picture-id1270427630?b=1&k=20&m=1270427630&s=170667a&w=0&h=aL1jug2R9kjQNBb7etYJbqdGOYzpHOpu9p_mJTOvflY=",
     "https://images.unsplash.com/photo-1468327768560-75b778cbb551?ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8Zmxvd2Vyc3xlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
     "https://images.unsplash.com/photo-1632210510762-743f33b1c854?ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDZ8Ul9GeW4tR3d0bHd8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
     "https://images.unsplash.com/photo-1603380871937-b461cd1c1a00?ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDl8Ul9GeW4tR3d0bHd8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
     "https://images.unsplash.com/photo-1574288362011-ad104c827882?ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDI3fFJfRnluLUd3dGx3fHxlbnwwfHx8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"

  ];

@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(
centerTitle: false,
title: Text('Gallery',style: Theme.of(context).appBarTheme.titleTextStyle!.copyWith(color: Colors.blue),),
actions: [
IconButton(onPressed: (){}, icon: const Icon(CupertinoIcons.camera, color: Colors.blue,))
],
iconTheme: const IconThemeData(
  color:Colors.blue,
),
bottom: PreferredSize(
preferredSize: const Size.fromHeight(50),
child: Align(
  alignment: Alignment.centerLeft,
  child: Padding(
    padding: const EdgeInsets.only(left: 16, bottom: 16),
    child: Text('Today', style: Theme.of(context).textTheme.bodyText1
    !.copyWith(fontWeight: FontWeight.bold, fontSize:34,),
  )),
),
),

),
body: SafeArea(
  child:   ListView.builder(
  
    itemBuilder: (context,index){
  
      return PostWidget(
        postImage: _postImages[index],
        images: _images, onPress: () {
        showBottomSheet(context: context, builder: (context){
          return ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(15)),
            child: Image.network(_postImages[index],
            width: MediaQuery.of(context).size.width, height: MediaQuery.of(context).size.height,
            fit: BoxFit.cover,),
          );
        });
      },);
    },
  
    itemCount: _postImages.length,),
),
);
}
}

class PostWidget extends StatelessWidget {
  const PostWidget({
    Key? key,
    required List<String> images, required this.onPress, required this.postImage,
  }) : _images = images, super(key: key);

  final List<String> _images;
  final VoidCallback onPress;
  final String postImage;

  @override
  Widget build(BuildContext context) {
    return     Card(
    
      margin: const EdgeInsets.all(16),
    
      elevation: 0,
    
    child:Column(
    
    children: [
    
      ListTile(
    
        leading: const CircleAvatar(
    
          radius:25,
    
          backgroundImage: NetworkImage("https://images.unsplash.com/photo-1632144954032-c9c5eb19c703?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw4NHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
    
        ),
    
        title:Text('Hidaya', 
    
        style: Theme.of(context).textTheme.bodyText1!.copyWith(fontWeight:FontWeight.w600,fontSize:18),),
    
        subtitle: Row(
    
          children: [
    
          const Icon(Icons.location_on, color: Colors.blue, size: 17,),
    
          const SizedBox(width: 4,),
    
          Text('Accra,Ghana', style:Theme.of(context).textTheme.bodyText2!
    
          .copyWith(color: Colors.grey.shade700))
    
          ],
    
        ),
    
    
    
      ),
    
      InkWell(
        onTap: onPress,
        child: Image.network(postImage,
          
        height: 250, fit: BoxFit.cover, width: MediaQuery.of(context).size.width,),
      ),
    
      const SizedBox(height: 10),
    
      Row(
    
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
    
        children: [
    
        Row(
    
          children: [
    
            CardHelperWidget(icon:const Icon(Icons.favorite, color:Colors.red,),label: '234', onPress: (){},),
    
            const SizedBox(width: 10,),
    
            FlutterImageStack(
               itemBorderColor:Colors.grey.withOpacity(.1),
                backgroundColor: Colors.grey.withOpacity(.1),
                imageList: _images,
                showTotalCount: false,
                totalCount: _images.length,
                itemRadius: 40, // Radius of each images
                itemCount: 4, // Maximum number of images to be shown in stack
                itemBorderWidth: 3, // Border width around the images
    
              ),
    
          ],
    
        ),
    
        CardHelperWidget(icon:const Icon (CupertinoIcons.chat_bubble_2_fill, color:Colors.grey), onPress:(){},label: '32',)
    
    
    
      ],
    
    
    
      )
    
    ],
    
    ) 
    
    ,);
  }
}

class CardHelperWidget extends StatelessWidget {
  const CardHelperWidget({
    Key? key, required this.icon,  required this.label,  required this.onPress,
  }) : super(key: key);

  final Icon icon;
  final String label;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Material(
        color: Colors.grey.withOpacity(.1),
        borderRadius: BorderRadius.circular(45),
        child:Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(children: [
            icon, 
            Text(label, style: Theme.of(context).textTheme.bodyText2!.copyWith(color: Colors.grey),)
          ],
    
          ),
        )
      ),
    );
  }
}

