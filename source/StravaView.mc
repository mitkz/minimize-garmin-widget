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
        dc.drawText(120, 175, Graphics.FONT_SYSTEM_LARGE, TimeStr, Graphics.TEXT_JUSTIFY_CENTER);

    }

    // Load your resources here
    function onLayout(dc as Dc) {
        // setLayout(Rez.Layouts.Summary(dc));

    }

    // Called when this View is brought to the foreground. Restore
    // the state of this View and prepare it to be shown. This includes
    // loading resources into memory.
    function onShow() {

    }

    // Update the view
    function onUpdate(dc) {

        // Get and show the current time
        //drawTime(dc);
        // Call the parent onUpdate function to redraw the layout
        // View.onUpdate(dc);
        dc.setColor (Graphics.COLOR_WHITE, Graphics.COLOR_WHITE);
        dc.fillRectangle(0, 0, 240,240);

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
        dc.drawText(120, 120, Graphics.FONT_SYSTEM_LARGE, TimeStr, Graphics.TEXT_JUSTIFY_CENTER);
        // View.onUpdate(dc);
    }

    // Called when this View is removed from the screen. Save the
    // state of this View here. This includes freeing resources from
    // memory.
    function onHide() {
    }


}
