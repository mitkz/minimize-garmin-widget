using Toybox.WatchUi as Ui;
import Toybox.Graphics;
using Toybox.System as Sys;
using Toybox.Lang as Lang;

// Main view for the application
class StravaView extends Ui.View {
    
    // Constructor
    function initialize() {
        View.initialize();
    }

    function return_time(current_time){
                var timetable = { "00:00" => "00:00\n00:00",
    "00:01" => "00:01\n00:01",
    "00:02" => "00:02\n00:02",
    "00:03" => "00:03\n00:03",
    "00:04" => "00:04\n00:04",
    "00:05" => "00:05\n00:05",
    "00:06" => "00:06\n00:06",
    "00:07" => "00:07\n00:07",
    "00:08" => "00:08\n00:08",
    "00:09" => "00:09\n00:09",
    "00:10" => "00:10\n00:10",
    "00:11" => "00:11\n00:11",
    "00:12" => "00:12\n00:12",
    "00:13" => "00:13\n00:13",
    "00:14" => "00:14\n00:14",
    "00:15" => "00:15\n00:15",
    "00:16" => "00:16\n00:16",
    "00:17" => "00:17\n00:17",
    "00:18" => "00:18\n00:18",
    "00:19" => "00:19\n00:19",
    "00:20" => "00:20\n00:20",
    "00:21" => "00:21\n00:21",
    "00:22" => "00:22\n00:22",
    "00:23" => "00:23\n00:23",
    "00:24" => "00:24\n00:24",
    "00:25" => "00:25\n00:25",
    "00:26" => "00:26\n00:26",
    "00:27" => "00:27\n00:27",
    "00:28" => "00:28\n00:28",
    "00:29" => "00:29\n00:29",
    "00:30" => "00:30\n00:30",
    "00:31" => "00:31\n00:31",
    "00:32" => "00:32\n00:32",
    "00:33" => "00:33\n00:33",
    "00:34" => "00:34\n00:34",
    "00:35" => "00:35\n00:35",
    "00:36" => "00:36\n00:36",
    "00:37" => "00:37\n00:37",
    "00:38" => "00:38\n00:38",
    "00:39" => "00:39\n00:39",
    "00:40" => "00:40\n00:40",
    "00:41" => "00:41\n00:41",
    "00:42" => "00:42\n00:42",
    "00:43" => "00:43\n00:43",
    "00:44" => "00:44\n00:44",
    "00:45" => "00:45\n00:45",
    "00:46" => "00:46\n00:46",
    "00:47" => "00:47\n00:47",
    "00:48" => "00:48\n00:48",
    "00:49" => "00:49\n00:49",
    "00:50" => "00:50\n00:50",
    "00:51" => "00:51\n00:51",
    "00:52" => "00:52\n00:52",
    "00:53" => "00:53\n00:53",
    "00:54" => "00:54\n00:54",
    "00:55" => "00:55\n00:55",
    "00:56" => "00:56\n00:56",
    "00:57" => "00:57\n00:57",
    "00:58" => "00:58\n00:58",
    "00:59" => "00:59\n00:59"
    };
    return timetable.get(current_time);
    }



    // Get and show the current time
    function drawTime(dc as Dc) as Void {
        dc.setColor(0x000000, Graphics.COLOR_WHITE);

        var clockTime = Sys.getClockTime();
        var hour = clockTime.hour.format("%02d");
        var minute = clockTime.min.format("%02d");
        var hour1 = hour.substring(0, 1);
        var hour2 = hour.substring(1, 2);
        var minute1 = minute.substring(0, 1);
        var minute2 = minute.substring(1, 2);
        
        var TimeStr;
        TimeStr = Lang.format("$1$ $2$ $3$ $4$", [hour1, hour2, minute1, minute2]);

        dc.drawText(120, 30, Graphics.FONT_NUMBER_HOT, return_time(Lang.format("00:$1$$2$", [minute1,minute2])), Graphics.TEXT_JUSTIFY_CENTER);

        dc.drawText(120, 190, Graphics.FONT_SYSTEM_LARGE, TimeStr, Graphics.TEXT_JUSTIFY_CENTER);

    }

    // Load your resources here
    function onLayout(dc as Dc) {

    }

    // Called when this View is brought to the foreground. Restore
    // the state of this View and prepare it to be shown. This includes
    // loading resources into memory.
    function onShow() {

    }

    // Update the view
    function onUpdate(dc) {
        // Draw the background
        dc.setColor (Graphics.COLOR_WHITE, Graphics.COLOR_WHITE);
        dc.fillRectangle(0, 0, 240,240);

        drawTime(dc);

    }

    // Called when this View is removed from the screen. Save the
    // state of this View here. This includes freeing resources from
    // memory.
    function onHide() {
    }


}
