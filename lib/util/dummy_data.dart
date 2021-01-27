import 'package:CoKitchen/model/models.dart';

List<String> slideImage = [
  "https://images.unsplash.com/photo-1565299624946-b28f40a0ae38?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MXx8fGVufDB8fHw%3D&auto=format&fit=crop&w=350&h=250&q=60",
  "https://images.unsplash.com/photo-1590947132387-155cc02f3212?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MTB8fHxlbnwwfHx8&auto=format&fit=crop&w=350&h=250&q=60",
  "https://images.unsplash.com/photo-1482049016688-2d3e1b311543?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MXx8fGVufDB8fHw%3D&auto=format&fit=crop&w=350&h=250&q=60",
  "https://images.unsplash.com/photo-1481070555726-e2fe8357725c?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MjN8fHxlbnwwfHx8&auto=format&fit=crop&w=350&h=250&q=60",
  "https://images.unsplash.com/photo-1432139509613-5c4255815697?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MjF8fHxlbnwwfHx8&auto=format&fit=crop&w=350&h=250&q=60",
];
List<Kitchen> kitchens = [
   {
      "title": "Jollof & Co",
      "shortDescription": "Delicious everyday naija food items as low as #500",
      "imageBannerUrl": [
        "https://images.unsplash.com/photo-1481931098730-318b6f776db0?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MTZ8fHxlbnwwfHx8&auto=format&fit=crop&w=350&h=250&q=60",
        "https://images.unsplash.com/photo-1565299624946-b28f40a0ae38?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MXx8fGVufDB8fHw%3D&auto=format&fit=crop&w=350&h=250&q=60",
        "https://images.unsplash.com/photo-1447078806655-40579c2520d6?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MjZ8fHxlbnwwfHx8&auto=format&fit=crop&w=350&h=250&q=60"
        ],
      "logoUrl": "https://images.unsplash.com/photo-1595633013926-15dd888ef02d?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MzN8fHJlc3RhdXJhbnQlMjBsb2dvfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=350&h=250&q=60",
   },
   {
      "title": "Mama Put",
      "shortDescription": "Authentic Native Nigeria food items as low as #500",
      "imageBannerUrl": [
        "https://images.unsplash.com/photo-1484980972926-edee96e0960d?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MTl8fHxlbnwwfHx8&auto=format&fit=crop&w=350&h=250q=60",
        "https://images.unsplash.com/photo-1429554513019-6c61c19ffb7e?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxleHBsb3JlLWZlZWR8NDl8fHxlbnwwfHx8&auto=format&fit=crop&w=350&h=250&q=60",
        "https://images.unsplash.com/photo-1540189549336-e6e99c3679fe?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxleHBsb3JlLWZlZWR8NzF8fHxlbnwwfHx8&auto=format&fit=crop&w=350&h=250&q=60"
      ],
      "logoUrl": "https://images.unsplash.com/photo-1601362220875-e17389d4613c?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTN8fHJlc3RhdXJhbnQlMjBsb2dvfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=350&h=250&q=60",
   },
   {
      "title": "Papa's Pizza",
      "shortDescription": "Original wood fired pizza as low as #700",
      "imageBannerUrl": [
        "https://images.unsplash.com/photo-1585238342024-78d387f4a707?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MTN8fHxlbnwwfHx8&auto=format&fit=crop&w=350&h=250&q=60",
        "https://images.unsplash.com/photo-1589906493606-a6ca2a06078b?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MjJ8fHxlbnwwfHx8&auto=format&fit=crop&w=350&h=250&q=60",
        "https://images.unsplash.com/photo-1548943487-a2e4e43b4853?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxleHBsb3JlLWZlZWR8ODV8fHxlbnwwfHx8&auto=format&fit=crop&w=350&h=250&q=60"
      ],
      "logoUrl": "https://images.unsplash.com/photo-1535488844718-19e2a5b3a2b5?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MzV8fHJlc3RhdXJhbnQlMjBsb2dvfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=350&h=200&q=60",
   },
   {
      "title": "Burger Shop",
      "shortDescription": "Delicious gourmet burgers & sides items as low as #600",
      "imageBannerUrl": [
        "https://images.unsplash.com/photo-1610970878459-a0e464d7592b?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8YnVyZ2VyJTIwcmVzdGF1cmFudHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=350&h=250&q=60",
        "https://images.unsplash.com/photo-1499028344343-cd173ffc68a9?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxleHBsb3JlLWZlZWR8Mjl8fHxlbnwwfHx8&auto=format&fit=crop&w=350&h=250&q=60",
        "https://images.unsplash.com/photo-1567620905732-2d1ec7ab7445?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxleHBsb3JlLWZlZWR8NDV8fHxlbnwwfHx8&auto=format&fit=crop&w=350&h=250&q=60"
        ],
      "logoUrl": "https://images.unsplash.com/photo-1591477805373-da5461d2d5af?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTh8fHJlc3RhdXJhbnQlMjBsb2dvfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=350&h=250&q=60",
   },
   {
      "title": "Pasta Factory",
      "shortDescription": "Savoury Pasta mixes items as low as #450",
      "imageBannerUrl": [
        "https://images.unsplash.com/photo-1473093295043-cdd812d0e601?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MTB8fHxlbnwwfHx8&auto=format&fit=crop&w=350&h=250q=60",
        "https://images.unsplash.com/photo-1589227365533-cee630bd59bd?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MjF8fHBhc3RhfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=350&h=250&q=60",
        ""
      ],
      "logoUrl": "https://images.unsplash.com/photo-1581091672438-bbe2ee19f78c?ixid=MXwxMjA3fDB8MHxzZWFyY2h8OHx8cmVzdGF1cmFudCUyMGxvZ298ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=350&h=350&q=60",
   }
].map((e) => Kitchen.fromMap(e)).toList();
