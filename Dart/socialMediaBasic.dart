void main(){
    const minutesConst=60;
   var userName="Ishtiaq_Hossen";
   var followerCount=100;
   var folowingCount=10;
   var watchHour=30.5;
   var hours=watchHour.toInt();
   var minutes=(watchHour - hours);
   minutes=minutes*minutesConst;
   var bio='''
I am a mobile app developer
I am a video creator
    ''';
    print ('My Username is $userName');
    print('My follower is $followerCount');
    print('My following count is: $folowingCount');
    print('My watch time is $hours:${minutes.toInt()}');
    print('My bio is: $bio');


}