using Toybox.WatchUi as Ui;
import Toybox.Graphics;
using Toybox.System as Sys;
using Toybox.Lang as Lang;

// Main view for the application
class StravaView extends Ui.View {

    private var timetable = [[505,true],[1945,false],[2000,true],[2100,false],[2200,true],[2300,false],[2400,true]];


    // Constructor
    function initialize() {
        View.initialize();
    }

    function return_time(current_time){
        var result = [[0,false],[0,false]];
        for(var i = 0; i < timetable.size(); i++){
            if (current_time < timetable[i][0]){
                System.println(Lang.format("$1$ : $2$", [timetable[i][0],timetable[i][1]]));
                result[0][0] = timetable[i][0];
                result[0][1] = timetable[i][1];
                result[1][0] = timetable[i+1][0];
                result[1][1] = timetable[i+1][1];
                break;
            }
        }

    return result;

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
        var tex = Lang.format("$1$$2$", [hour,minute]);
        var hours = return_time(1911);

        dc.drawText(120, 30, Graphics.FONT_NUMBER_HOT, hours[0][0], Graphics.TEXT_JUSTIFY_CENTER);
        dc.drawText(120, 80, Graphics.FONT_NUMBER_HOT, hours[1][0], Graphics.TEXT_JUSTIFY_CENTER);

        dc.drawText(120, 190, Graphics.FONT_SYSTEM_LARGE, TimeStr, Graphics.TEXT_JUSTIFY_CENTER);

        var myDict = {"One" => ["one",0],"Two" => ["two",1],"Three" => ["three",0]};
        var a = myDict.get("Two");
        System.println(Lang.format("$1$ : $2$", [a[0],a[1]]));

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
