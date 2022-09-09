//import 'package:custom_widgets/utility/contract.dart' as constants;
import 'dart:ui';


const String appName = 'DL studio';
const String appVersion = 'v1.0.0';



const double appBarElevation = 2.0;
const double appBarHeight = 6.3;


//NOTE DATABASE DO NOT MODIFY
const String points = 'points';
const String score = 'score';
const String pointSystem = 'pointSystem';
const String isEntirePointsShow = 'isEntirePointsShow';
const String isLeaderPointsShow = 'isLeaderPointsShow';
const String isMonthlyPointsShow = 'isMonthlyPointsShow';
const String claimList = 'claimList';
const String post = 'post';
const String votersList = 'votersList';
const String list = 'list';
const String singlePoll = 'singlePoll';
const String poll = 'poll';
const String vote = 'vote';

//NOTE DATABASE DO NOT MODIFY



const String id = 'id';
const String documentId = 'documentId';
const String create = 'create';
const String title = 'title';
const String body = 'body';
const String message = 'message';
const String description = 'description';
const String timestamp = 'timestamp';
const String imageUrl = 'imageUrl';
const String link = 'link';
const String fullName = 'fullName';
const String email = 'email';
const String isAdmin = 'isAdmin';
const String dateJoined = 'dateJoined';
const String entirePoints = 'entirePoints';
const String monthlyPoints = 'monthlyPoints';
const String isEntirePointsOn = 'isEntirePointsOn';
const String isMonthlyPointsOn = 'isMonthlyPointsOn';
const String users = 'users';
const String adminIds = 'adminIds';
const String token = 'token';
const String polls = 'polls';
const String isVoted = 'isVoted';
const String voteCounts = 'voteCounts';
const String status = 'status';
const String done = 'done';
const String notification = 'notification';
const String priority = 'priority';
const String high = 'high';
const String data = 'data';
const String to = 'to';
const String announcement = 'announcement';
const String randomContent = 'randomContent';
const String subscription = 'subscription';
const String userPoints = 'userPoints';
const String isHeader = 'isHeader';
const String currentVote = 'currentVote';



const String empty = '';
const String space = ' ';
const String commaSpace = ', ';



const String usClickAction = 'click_action';


const String usCapsNotificationClick = 'FLUTTER_NOTIFICATION_CLICK';
const String dashContentType = 'Content-Type';
const String slashApplicationJson = 'application/json';
const String slashTopicsSubscription = '/topics/subscription';


const String capVoted = 'Voted';
const String capTitle = 'Title';
const String capDashboard = 'Dashboard';
const String capDescription = 'Description';
const String capHome = 'Home';
const String capPost = 'Post';
const String capPoll = 'Poll';
const String capSettings = 'Settings';
const String capLogout = 'Logout';
const String capLogin = 'Login';
const String capLegalities = 'Legalities';
const String capAnnouncement = 'Announcement';
const String capLeaderboard = 'Leaderboard';
const String capOptional = 'Optional';
const String capCamera = 'Camera';
const String capGallery = 'Gallery';
const String capCreate = 'Create';
const String capMonthly = 'Monthly';
const String capCancel = 'Cancel';
const String capProceed = 'Proceed';
const String capYes = 'Yes';
const String capNo = 'No';
const String capPoints = 'Points';
const String capAuthorization = 'Authorization';
const String capWelcome = 'Welcome';
const String capDismiss = 'Dismiss';
const String capClose = 'Close';






const String capsUrl = 'URL';
const String urlFCM = 'https://fcm.googleapis.com/fcm/send';

const String wordResetPoints = 'Reset Points';
const String wordViewPost = 'View Post';
const String wordCreatePost = 'Create Post';
const String wordCreatePoll = 'Create Poll';
const String wordCreateAnnouncement = 'Create Announcement';
const String wordRandomContent = 'Random Content';
const String wordUnderMaintenance = 'Under Maintenance!';
const String wordAdminPanel = 'Admin Panel';
const String wordGenerateContent = 'Generate Content';
const String wordLinkOptional = 'Link / Url (Optional)';
const String wordLinkAndImage = 'Link and Image are Optional, You can still post without an image or link.';
const String wordPostNoImage = 'Are you sure you want to post without an image?';
const String wordPostNoLink = 'Are you sure you want to post without a link?';
const String wordSureLogout = 'Are you sure you want to Logout?';
const String wordUploadNow = 'Upload Now';
const String wordAddItem = 'Add Item';
const String wordFailedToPick = 'Failed to pick image ';
const String wordLeaderBoard = 'Leader Board';
const String wordNotifSent = 'Nice notification is sent';
const String wordErrorNotif = 'Error in sending notification';
const String wordSelectPoints = 'Select points for this Post';
const String wordTitleEmpty = 'Title cannot be empty';
const String wordDescEmpty = 'Description cannot be empty';
const String wordLinkEmpty = 'Link cannot be empty';
const String wordImageEmpty = 'Image cannot be empty';
const String wordPrivacyTerms = 'Privacy and Terms';
const String wordPasswordShort = 'Password must at least 10 characters long';
const String wordPollTitleEmpty = 'Poll Title cannot be empty';
const String wordItemTitleEmpty = 'Item Title cannot be empty';
const String wordItemTitle = 'Item Title';
const String wordItemDesc = 'Item Description';
const String wordSignInGoogle = 'Sign-In with Google';


const String navPostPage = 'PostPage';
const String navPollPage = 'PollPage';
const String navMySettings = 'MySettings';
const String navAnnouncementPage = 'AnnouncementPage';
const String navMainPage = 'MainPage';
const String navRanContentPage = 'RandomContentPage';



const itemPoints = [
  '0 Point', '1 Point', '2 Points', '3 Points', '4 Points', '5 Points', '6 Points', '7 Points', '8 Points', '9 Points', '10 Points',
  '11 Point', '12 Points', '13 Points', '14 Points', '15 Points', '16 Points', '17 Points', '18 Points', '19 Points', '20 Points',
  '21 Point', '22 Points', '23 Points', '24 Points', '25 Points', '26 Points', '27 Points', '28 Points', '29 Points', '30 Points',
  '31 Point', '32 Points', '33 Points', '34 Points', '35 Points', '36 Points', '37 Points', '38 Points', '39 Points', '40 Points',
  '41 Point', '42 Points', '43 Points', '44 Points', '45 Points', '46 Points', '47 Points', '48 Points', '49 Points', '50 Points',
  '51 Point', '52 Points', '53 Points', '54 Points', '55 Points', '56 Points', '57 Points', '58 Points', '59 Points', '60 Points',
  '61 Point', '62 Points', '63 Points', '64 Points', '65 Points', '66 Points', '67 Points', '68 Points', '69 Points', '70 Points',
  '71 Point', '72 Points', '73 Points', '74 Points', '75 Points', '76 Points', '77 Points', '78 Points', '79 Points', '80 Points',
  '81 Point', '82 Points', '83 Points', '84 Points', '85 Points', '86 Points', '87 Points', '88 Points', '89 Points', '90 Points',
  '91 Point', '92 Points', '93 Points', '94 Points', '95 Points', '96 Points', '97 Points', '98 Points', '99 Points', '100 Points',
];


const String num1 = '1';


const String timestampFormat = 'MMM. dd, yyyy - hh:mm a'; // Jul. 24, 2022 - 11:42 AM
const String timestampFormat1 = 'MMM. dd, yyyy EEE hh:mm:SS a'; // Jul. 24, 2022 Sun 11:42:045 AM
const String timestampFormatDate = 'MMM dd, yyyy'; // Jul. 24, 2022



const Color appBarColor = Color.fromARGB(0xFF, 0xD0, 0x86, 0x5);
const Color backGroundColor = Color.fromARGB(0xff, 0xe0, 0xe0, 0xe0);
const Color backGroundWhite = Color.fromARGB(0xff, 0xFF, 0xFF, 0xFF);
const Color iconColorLight = Color.fromARGB(0xff, 0x9e, 0x9e, 0x9e);
const Color textColorDark = Color.fromARGB(0xff, 0x61, 0x61, 0x61);
const Color textColorBlackWhite = Color.fromARGB(0xff, 0x18, 0x18, 0x18);
const Color textColorSemiDark = Color.fromARGB(0xff, 0x9e, 0x9e, 0x9e);
const Color textColorLight = Color.fromARGB(0xff, 0xFF, 0xFF, 0xFF);
const Color textColored = Color.fromARGB(0xff, 0x23, 0x77, 0xc4);
const Color backGroundLightBlue = Color.fromARGB(0xFF, 0x03, 0xA9, 0xF4);
const Color textColorLightBlue = Color.fromARGB(0xFF, 0x03, 0xA9, 0xF4);
const Color textColorDeepOrange = Color.fromARGB(0xFF, 0xF1, 0x6D, 0x24);

const Color pallet1 = Color.fromARGB(0xff, 0x36, 0x36, 0x36);
const Color pallet2 = Color.fromARGB(0xff, 0x54, 0x54, 0x54);
const Color pallet3 = Color.fromARGB(0xff, 0x72, 0x72, 0x72);
const Color pallet4 = Color.fromARGB(0xff, 0xEE, 0xED, 0xED);
const Color pallet5 = Color.fromARGB(0xFF, 0xFF, 0xFF, 0xFF);


const Color gradient1 = Color(0xFFF8AB23);
const Color gradient2 = Color(0xFFF39D08);
const Color gradient3 = Color(0xFFD08605);

// const Color gradient1 = Color.fromARGB(0xFF, 0xF8, 0xAB, 0x23);
// const Color gradient2 = Color.fromARGB(0xFF, 0xF3, 0x9D, 0x08);
// const Color gradient3 = Color.fromARGB(0xFF, 0xD0, 0x86, 0x5);



const Color textColor = Color.fromARGB(0xff, 0x72, 0x72, 0x72);
const Color textColorBlackOrWhite = Color.fromARGB(0xFF, 0xFF, 0xFF, 0xFF);




const String routeCheckCredential = '/splashScreen';


const String imgLogo = 'assets/images/logo.png'; //png for app icon
const String imgBanner = 'assets/images/banner.webp';
const String imgGoogle = 'assets/images/google_signin.webp';
const String imgLoginBackground = 'assets/images/login_background.webp';
const String imgHolder = 'assets/images/image_holder.webp';