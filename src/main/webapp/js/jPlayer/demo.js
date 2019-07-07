var myPlaylist;

$(document).ready(function () {

    myPlaylist = new jPlayerPlaylist({
        jPlayer: "#jplayer_N",
        cssSelectorAncestor: "#jp_container_N"
    }, [], {
        playlistOptions: {
            autoPlay: true,
            enableRemoveControls: true
        },
        swfPath: "../jPlayer",
        supplied: "webmv, ogv, m4v, oga, mp3",
        smoothPlayBar: true,
        keyEnabled: true,
        audioFullScreen: false
    });

    $(document).on($.jPlayer.event.pause, myPlaylist.cssSelector.jPlayer, function () {
        $('.musicbar').removeClass('animate');
        $('.jp-play-me').removeClass('active');
        $('.jp-play-me').parent('li').removeClass('active');
    });

    $(document).on($.jPlayer.event.play, myPlaylist.cssSelector.jPlayer, function () {
        $('.musicbar').addClass('animate');
    });

    $(document).on('click', '.jp-play-me', function (e) {
        e && e.preventDefault();
        var $this = $(e.target);
        if (!$this.is('a')) $this = $this.closest('a');

        $('.jp-play-me').not($this).removeClass('active');
        $('.jp-play-me').parent('li').not($this.parent('li')).removeClass('active');

        $this.toggleClass('active');
        $this.parent('li').toggleClass('active');
        if (!$this.hasClass('active')) {
            myPlaylist.pause();
        } else {
            var i = Math.floor(Math.random() * (1 + 7 - 1));
            myPlaylist.play(i);
        }

    });


    // video

    // $("#jplayer_1").jPlayer({
    //   ready: function () {
    //     $(this).jPlayer("setMedia", {
    //       title: "Big Buck Bunny",
    //       m4v: "http://flatfull.com/themes/assets/video/big_buck_bunny_trailer.m4v",
    //       ogv: "http://flatfull.com/themes/assets/video/big_buck_bunny_trailer.ogv",
    //       webmv: "http://flatfull.com/themes/assets/video/big_buck_bunny_trailer.webm",
    //       poster: "images/m41.jpg"
    //     });
    //   },
    //   swfPath: "js",
    //   supplied: "webmv, ogv, m4v",
    //   size: {
    //     width: "100%",
    //     height: "auto",
    //     cssClass: "jp-video-360p"
    //   },
    //   globalVolume: true,
    //   smoothPlayBar: true,
    //   keyEnabled: true
    // });

});

//添加歌曲列表
function addList(Atitle, Aartist, Amp3, Aposter) {
    //遍历json数组
    var i = 0;
    var temp = 0;
    var musicList = myPlaylist.playlist;
    //列表为空
    if (musicList.length == 0) {
        myPlaylist.add({
            title: Atitle,
            artist: Aartist,
            mp3: Amp3,
            poster: Aposter
        });
        myPlaylist.play(i);
    } else { //列表不为空
        for (i in musicList) {
            //列表中歌曲已经存在
            var mp3 = musicList[i].mp3.substring(musicList[i].mp3.indexOf("/upload"));
            if (musicList[i].title == Atitle && mp3 == Amp3) {
                temp = 1;
                myPlaylist.play(i);
                break;
            }
        }
        //列表中歌曲不存在
        if (temp == 0) {
            myPlaylist.add({
                title: Atitle,
                artist: Aartist,
                mp3: Amp3,
                poster: Aposter
            });

            myPlaylist.play(++i);
        }
    }

}