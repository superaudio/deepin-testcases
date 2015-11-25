use strict;
use base "softwarebasetest";
use testapi;
use deepinapi qw(start_program);

sub startup {
    start_program "deepin-boot-maker", "laucher-search-deepin-boot-maker";
    save_screenshot;
    assert_screen "deepin-boot-maker-passwd",5;
    type_string "deepin\n";
    
}
sub mainUI{
    assert_screen "deepin-boot-maker-main-default", 10;
    sleep 3;
}
sub exitDeepinBootMaker{
    assert_and_click "deepin-boot-maker-main-default-btn";
    sleep 3;
    assert_screen "desktop-default",10;
}
sub run{
    startup;
    mainUI;
    exitDeepinBootMaker;

}
1;

# vim: set sw=4 et:
