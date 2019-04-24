#! /usr/bin/perl

my $help = shift @ARGV;
if ($help eq "-help"){ die <<EOS; }
 *** Copyright Jan 15th 2019, version 1.0 .
 *** Auther : ZMeng(Alright, You can call me ZhuZhu if you like anyway).
 *** My Google e-mail: z390047718@gmail.com.
 *** This is a game about gussing a number from 1 to 1024.
 *** Have fun and Have a good day.

 游戏的玩法：
 我会生成一个 0~1025 之间的整数（也就是 1...1024 ），请你猜出我选择的数字。
 （当然每次启动这个游戏，我所选择的数字都是不一样的。）
 如果10次以内（包括10次）猜对的话，触发彩蛋！
 当然这个彩蛋是我自认为的，不知是否和您胃口。
 不过即时如此，我想你也很想见识一下吧。
 嘻嘻。

 游戏启动的方法：
 1、在终端输入：guess -help         》》得到目前你所见的信息 
 2、在终端输入：guess               》》正式启动游戏


 警告：如果经过多次没有猜对，导致心情郁闷，那你来打我啊！哈哈！

EOS


# 显示我们在一起的时间
print_howlong(); 
# 显示游戏开场白
print_begin_information();
# 游戏正式开始
my $randomNumber = int(rand(1024))+1;
# my $randomNumber = 1;
my $count = 0;
my $flag = 1;
my @guesses;
print "\n\n现在让我来告诉雪雪，我已经选择了一个数字在（0~1025）之间，那么你能猜到我选择的是哪个数字吗？\n\n";
sleep 8;
while ($flag) {
    my $result = "You have guessed $count time(s) : ";
    print "######################################################################\n\n";
    print "$result\t@guesses\n";
    printf "This is your %dth chance\n", $count+1;
    print "\nPlease input a number that you guess(from 1 to 1024): ";
    my $guess = <STDIN>;
    chomp($guess);
    push(@guesses, $guess);
    $count++;
    if ($guess == $randomNumber) {
        print "\n0OoO0Ooo00OoOoOoOoOoOoOoOoOoOoOoOoOoOoOoOoOoOoOoOoOoOoOoOoOoOoOoOoOoOoOoOo\n\n";
        print "\nOh.Congratulations! You get the right number!\n\n\n";
        if ($count > 10) {
            congratulation_by_char();
            print "\n\n如果你10次之内能正确猜出我选择的数字，有一个彩蛋哦！\n\n"
        } else {
            congratulation_by_image();
        }      
        $flag = 0;
    } else {
        if ($guess > $randomNumber) {
            print "\n嘻嘻.雪雪.你猜的比较大啊!\n\n";
            sleep 1;
        } else {
            print "\n嘻嘻.雪雪.你猜的比较小啊!\n\n";
            sleep 1;
        }
    }
}

sub congratulation_by_char {
    print "m       mmmm  m    m mmmmmm       m     m  mmmm  m    m\n";
    sleep 1;
    print "#      m'  'm 'm  m' #             'm m'  m'  'm #    #\n";
    sleep 1;
    print "#      #    #  #  #  #mmmmm         '#'   #    # #    #\n";
    sleep 1;
    print "#      #    #  'mm'  #               #    #    # #    #\n";
    sleep 1;   
    print "#mmmmm  #mm#    ##   #mmmmm          #     #mm#  'mmmm'\n";
}

sub congratulation_by_image {


    print "..............          '             m  \n";
    sleep 1;
    print ".............. m   m  mmm     mmm   mm#mm   mmm    m mm  m   m  ........ \n";
    sleep 1;
    print ".............. 'm m'    #    #'  '    #    #' '#   #'  ' 'm m'  ........ \n";
    sleep 1;
    print "..............  #m#     #    #        #    #   #   #      #m#   ........ \n";
    sleep 1;
    print "..............   #    mm#mm  '#mm'    'mm  '#m#'   #      '#    ........ \n";
    sleep 1;
    print "..............                                            m'    ........ \n";
    sleep 1;
    print "..............                                           ''     ........ \n";
    sleep 1;
    print "...................................... .................................  \n";
    sleep 1;    
    print "..................................... ................................... \n";
    sleep 1;
    print "....................................  .................';!;::;'''`:;:::`..\n";
    sleep 1;
    print ".................................... ...................`''.`````````''...\n";
    sleep 1;
    print "............................   ....  ...'!;;::;'`':;!;'`;;`.':':;'''''....\n";
    sleep 1;
    print "........................... ........   ..```':'`:::;;;`:;::::;:`':::'::`..\n";
    sleep 1;
    print ".......................... ......... ...................`.................\n";
    sleep 1;    
    print ".......................... .........  . ..................................\n";
    sleep 1;
    print "............................'|@##########@%:............................. \n";
    sleep 1;
    print "........................`!@##################@|`........................  \n";
    sleep 1;
    print "......................:@########################@:.....................  .\n";
    sleep 1;
    print "....................'@############################%'.................  ...\n";
    sleep 1;
    print "....................'@############################%'.................  ...\n";
    sleep 1;    
    print "...     ...........!###############################&;..............  .....\n";
    sleep 1;
    print "  .......  ......`%###########@!|######@|@##########@!..........  ........\n";
    sleep 1;
    print "........... ....'%######@#####%:'%####|.`%###########&;        ...........\n";
    sleep 1;
    print "...........  ..`%#######%;%@@!...`%#@;...;@##@!|######@'..................\n";
    sleep 1;
    print "...........  ..|####@%&@;..''`....`:'....'@@!.'%@######|..................\n";
    sleep 1;
    print "..........  ..;&####%`:;`......................;@#%%###@'.................\n";
    sleep 1;    
    print "   .....   ..`%##&::'.........``...............';''%###@;.................\n";
    sleep 1;
    print ".....  ......;@##@;........`'`........``.`''......';'|##|....          ...\n";
    sleep 1;
    print "............`%##@;''.......................``.......;&##%`  ............ .\n";
    sleep 1;
    print "............:@##@!''...............................''|##%`............... \n";
    sleep 1;
    print "..........':|@@@@@%!:''.......`:;;;;;;::`.........'''@##@'.::''...........\n";
    sleep 1;
    print "........`::`.''....':''`......'!!!!!!!!!'.....`':':|@@##@!'..:'...........\n";
    sleep 1;
    print ".....';'.....'`.''`.''.........:!!!!!!|:......`'':'..':` .`....':`........\n";
    sleep 1;
    print "....:!!:`.';:.      `::;'........`;;;'.........;!:`       .:'.':;!:.......\n";
    sleep 1;
    print "..............''          .':::`.........'::'.          .'`...`:!;`.......\n";
    sleep 1;    
    print ".................':.         .;' .':`  ``            ''`..  ............  \n";
    sleep 1;
    print ".....................':.     '!|;`   `!%:       `:'.........   .....    ..\n";
    sleep 1;
    print "..............           .';''|;.     `|; `::'............................\n";
    sleep 1;
    print "...........  ............. `.:@:      `!!..`..............................\n";
    sleep 1;
    print ".........  ................``;%'      `!!..`...................````.......\n";
    sleep 1;
    print "........  .................`';|'      `!!`.`.................':::!%|;`....\n";
    sleep 1;    
    print ".......  .................```!!.      `!!`.`.....    ........`::::::'`....\n";
    sleep 1;
    print "....... ..................'``|;.      `!!`.`.......... ......';;;;;;;'....\n";
    sleep 1;
    print "....... ..................'|%@@%||||||%@@%|'................;!'..``.:|:...\n";
    sleep 1;
    print ".......  ................'|%%@@@@@@@@@@@%%%!'.... ... ....`'''''''''''''`.\n";
}

sub get_epoch_from_begin {
    my $now = time();
    print "Now\t$now\n";
    my ($sec, $min, $hour, $mday, $mon, $year, $wday, $yday, $isdst) = localtime();
    $begin = $now - (6927000 + $sec + $min*60 + $hour*60*60);
    print "$begin\n";
    return $begin;
}

sub print_howlong {
    print "\n//////////////////////////////////////////////////////////////////////////////////////////////////////\n\n";
    print "\nBefore the Game.Let me tell you some truth. emmmmmm... some data about us.\n";
    sleep(6);
    print "\nThe original date : Fri Oct 26 19:50:00 2018\n";
    sleep 4;
    my $current = localtime();
    my $now = time();
    print "\nThe  current date : $current\n";
    sleep 4;
    my $begin = 1540554600;
    $howlong = $now - $begin;
    my $days = $howlong/(86400);
    print "\nWe have been together for $howlong seconds in geek way, in another way, $days days.\n";
    sleep 6;
    print "\nI miss you.\n";
    sleep 4;
    print "\n\n//////////////////////////////////////////////////////////////////////////////////////////////////////\n\n";
    sleep 3;
}

sub print_begin_information {
    print "\nSo now you have read above information.Now let's do the Game.\n";
    print "\nYou can enter any keyboard to go on this game : ";
    chomp($can_go = <STDIN>);
    print "\n";
    print "mmmmm  mmmmmm   mmm  mmmmm  mm   m\n";
    sleep(1);
    print "#    # #      m'   '   #    #'m  #\n";
    sleep(1);
    print "#mmmm' #mmmmm #   mm   #    # #m #\n";
    sleep(1);
    print "#    # #      #    #   #    #  # #\n";
    sleep(1);
    print "#mmmm' #mmmmm  'mmm' mm#mm  #   ##\n";
    sleep(1);
    print "\n";
    sleep(1);
}