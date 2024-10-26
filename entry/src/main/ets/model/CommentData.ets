export class CommentData {
  avatar: string
  name: string
  level: number;
  likeNum : number;
  commentText: string;
  isLike: boolean;
  levelIcon:Resource;
  timeString: string;
  time: number;


  constructor(avatar: string, name: string, level: number, likeNum: number, commentText: string, isLike: boolean, time: number) {
    this.avatar = avatar;
    this.name = name;
    this.level = level;
    this.likeNum = likeNum;
    this.commentText = commentText;
    this.isLike = isLike;
    this.levelIcon = this.covertIcon(level);
    this.timeString = this.covertTime(time);
    this.time = time;
  }

  covertTime( time: number): string {
    const currentTimestamp = new Date().getTime()
    const timeDiff = (currentTimestamp - time)/1000;
    if (timeDiff<=0) {
      return "刚刚";
    }else if (timeDiff<60) {
      return timeDiff + "秒前";
    }else if (timeDiff<3600) {
      return Math.floor(timeDiff/60) + "分钟前";
    }else if (timeDiff<86400) {
      return Math.floor(timeDiff/3600) + "小时前";
    } else if (timeDiff<604800) {
      return Math.floor(timeDiff/86400) + "天前";
    } else {
      return "一周前";
    }


  }

  covertIcon( level: number) {
      const inconList = [
        $r("app.media.lv1"),
        $r("app.media.lv2"),
        $r("app.media.lv3"),
        $r("app.media.lv4"),
        $r("app.media.lv5"),
        $r("app.media.lv6")
      ]
    return inconList[level];
  }

}


export  const creatDataList=():CommentData[]=>{
  return [
      new CommentData('app.media.zz0','xiaoming',1,10,'commentText1',false,new Date('2024-09-16').getTime()),
      new CommentData('app.media.zz1','xiaowang',2,100,'commentText2',true,new Date('2024-09-17').getTime()),
      new CommentData('app.media.zz3','zhangsan',3,130,'commentText3',true,new Date('2024-09-18').getTime()),
      new CommentData('app.media.zz2','lisi',4,500,'commentText4',false,new Date('2024-10-01').getTime()),
      new CommentData('app.media.zz4','wangwu',5,600,'commentText5',true,new Date('2024-10-10').getTime()),
      new CommentData('app.media.zz5','hhhhh',6,170,'commentText6',true,new Date('2024-10-16').getTime()),
      new CommentData('app.media.zz1','aaaa',1,108,'commentText7',false,new Date('2024-10-15').getTime()),
      new CommentData('app.media.zz2','cccc',2,110,'commentText8',true,new Date('2024-10-16').getTime()),

  ]
}
