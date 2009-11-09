-- encoding: UTF-8

------------------------------------------------
-- 谷歌拼音名人语录扩展
-- 版本: 0.2 pre
-- 项目主页: http://code.google.com/p/googlepinyin-plugins/
--
-- 简介: 随机打出一些名人说过的话。
--
-- 此扩展遵循GPLv3发布
------------------------------------------------

function myFunc(argument)
	return GetMingyan()
end

MY_DATA = {
  [0] = "怕热，就别进厨房。 —— 哈利·S·杜鲁门",
  [1] = "大雄考一百分是一种向不可能的事物挑战的精神，就像哥伦布发现新大陆，阿波罗号登陆月球一样的意义。 —— 江来博士",
  [2] = "尽早，经常发表新版本，并且倾听使用者的意见。 —— 埃里克·雷蒙",
  [3] = "我爱你，与你无关。 —— 歌德",
  [4] = "若是为了更美丽的东西的话，任何规则都可以破坏。 —— 贝多芬",
  [5] = "我的名字是阿甘，其他人叫我阿甘。 —— 阿甘",
  [6] = "很多人的撒谎体验都是从作文开始的。 —— 韩寒",
  [7] = "在考试中，蠢人老是问一些连智者也答不上的问题。 —— 奥斯卡·王尔德",
  [8] = "乔丹又习惯性地舔舔自己的舌头。 —— 韩乔生",
  [9] = "告诉你吧，世界：我——不——相——信！ —— 北岛",
  [10] = "巧克力的麻烦是：你把它吃了,它就没了。 —— 加菲猫",
  [11] = "就像望远镜之于天文学，计算机科学不仅仅是计算机。 —— 艾兹格·迪杰斯特拉",
  [12] = "我用比相对论还多的脑力在量子论上。 —— 爱因斯坦",
  [13] = "UNIX is user-friendly, it just chooses its friends. —— Andreas Bogk",
  [14] = "知识是实验的女儿。 —— 达芬奇",
  [15] = "你对别人说：“我写了能让Windows当机的程序”，别人只会白你一眼：“喂，我装好系统的时候就免费带着了”。 —— 林纳斯·托瓦兹",
  [16] = "我准备了一百口棺材，九十九口给贪官，一口留给自己。 —— 朱镕基",
  [17] = "过早的优化是万恶之源。 —— 高德纳",
  [18] = "在苏联军队中，撤退比进攻更需要勇气。 —— 约瑟夫·斯大林",
  [19] = "如果物体处于静止或作匀速直线运动，只要没有外力作用，物体将保持静止或匀速直线运动。 —— 艾萨克·牛顿",
  [20] = "认识的人多了，我就更喜欢狗。 —— 罗曼·罗兰",
  [21] = "为了合理的展示这张图标，我真的需要一个四维的屏幕。然而，由于政府的削减，我只能想方设法提供一个二维的屏幕。 —— 史提芬·霍金",
  [22] = "太刺激了，风驰电掣啊。 —— 郭德纲",
  [23] = "我思故我在。 —— 笛卡儿",
  [24] = "要活就要像明天你就会死去一般活着。要学习就要好像你会永远活着一般学习。 —— 甘地",
  [25] = "每当别人赞扬我，我都感到很不安，因为他们赞扬的不够。 —— 乔治·萧伯纳",
  [26] = "假如我的医生告诉我，我只剩6分钟可活，我不会忧伤，我会把字打的快一点。 —— 艾萨克·阿西莫夫",
  [27] = "我们的航天飞机是在玩俄罗斯轮盘赌。 —— NASA航天器项目组成员",
  [28] = "马克思主义的道理千头万绪，归根结底就是一句话：造反有理。 —— 毛泽东",
  [29] = "最重要的，拥有跟随内心与直觉的勇气，你的内心与直觉多少已经知道你真正想要成为什么样的人。任何其它事物都是次要的。 —— 斯蒂夫·乔布斯",
  [30] = "聪明人说话，是因为有些话要说；蠢人说话，则因为要说些话。 —— 柏拉图",
}

math.randomseed(os.time())
function GetMingyan()
	local n = math.random(0, 30)
	return MY_DATA[n]
end

------------

ime.register_command("my", "myFunc", "名人语录", "digit", "按任意键换一条")
