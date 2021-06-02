import '../../reusable_widget.dart';
import 'home_page.dart';

List<ListViewItem> categoriesListViewItems = [
  ListViewItem(
    imgPATH: 'assets/images/offers.png',
    label: 'Offers',
    onClick: () {},
    rateRow: false,
  ),
  ListViewItem(
    imgPATH: 'assets/images/sri.png',
    label: 'Sri Lankan',
    onClick: () {},
    rateRow: false,
  ),
  ListViewItem(
    imgPATH: 'assets/images/italian.png',
    label: 'Italian',
    onClick: () {},
    rateRow: false,
  ),
  ListViewItem(
    imgPATH: 'assets/images/indian.png',
    label: 'Indian',
    onClick: () {},
    rateRow: false,
  ),
];
List<ListViewItem> popularListViewItems = [
  ListViewItem(
      imgPATH: 'assets/images/pizaa.png',
      label: 'Minute by tuk tuk',
      onClick: () {},
      rateRow: true),
  ListViewItem(
      imgPATH: 'assets/images/cake.png',
      label: 'Café de Noir',
      onClick: () {},
      rateRow: true),
  ListViewItem(
      imgPATH: 'assets/images/bakes.png',
      label: 'Bakes by Tella',
      onClick: () {},
      rateRow: true),
];

List<MostPopularList> mostPopularListViewItems = [
  MostPopularList(
    imgPATH: 'assets/images/popular_pizaa.png',
    label: 'Café De Bambaa',
    onClick: () {},
  ),
  MostPopularList(
    imgPATH: 'assets/images/burger.png',
    label: 'Burger by Bella',
    onClick: () {},
  )
];

List<RecentItemsRow> recentItemsRowItems=[
  RecentItemsRow(imgPath:'assets/images/mulberry.png',label:'Mulberry Pizza by Josh',onClick: (){},),
  RecentItemsRow(imgPath:'assets/images/barita.png',label:'Barita',onClick: (){},),
  RecentItemsRow(imgPath:'assets/images/rush.png',label:'Pizza Rush Hour',onClick: (){},),
];
