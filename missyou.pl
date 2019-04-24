#! /usr/bin/perl

# $sentence1 =  "I, ,m,i,s,s, ,y,o,u, ,s,o, ,m,u,c,h,.,X,u,e,F,e,i.";
# print_one_by_one(split(",",$sentence1));
system(toilet "miss");
print "\nI miss you so much. XueFei.\n";
system(sleep 3);
my $now = localtime();
print "\nNow is $now.\n";
system(sleep 3);
my @today = split(" ", $now);
# print "@today\n";
my $day_of_month = $today[2];
my $days_of_not_meet = $day_of_month - 5;
print "\nSince January 5th, we have not met for $days_of_not_meet days.\n";
system(sleep 3);
print "\nAnd do you miss me? (yes/no) : ";
chomp($is_miss=(<STDIN>));
if ( $is_miss eq "yes") {
    print "\n彼方之女兮，清扬婉如\n\n一日不见兮，犹如三秋\n\n纵我不往兮，子心勿挂\n\n两情若是久长时，又岂在朝朝暮暮\n\n最喜欢你了，我的雪雪\n\n";
} else {
    print "\nEven if you don't say it, I know you miss me too.\n";
    print "\n\n就让这时间快快过去吧\n\n";
}

sub print_one_by_one {
    print "@_\n";
    print "\n";
    foreach (@_) {
        sleep 0.2;
        print "$_";
    }
    print "\n";
}