// Usage example for the ESP8266 models library V1.4

use <ESPModels.scad>

// Models with locator functions:
//  Witty (pins type selectable)
//  Wemos D1 Mini (pins type selectable)
//  NodeMCU V0.9
//  NodeMCU V1.0 (Amica version)
//  NodeMCU V3 (RoboDyn WiFi-NodeM)
//  NodeMCU V3 (LoLin)

// WemosD1M and daughter boards locator functions test
WD1MOPOS = 0;
translate([-45, 0, 0]) {
    WemosD1M(pins=0, atorg=WD1MOPOS);
    // USB connector locator function
    // Can be used to cut a hole for the USB connector
    translate([0, -6/2,0])
        WemosD1M_USBLocate(atorg=WD1MOPOS)
            translate([0, 6/2, 0])
                #cube([6.87+1.4, 6, 1.85+1.4], center=true);
    // Push Button locator function
    // Can be used to cut a hole for access
    WemosD1M_PBLocate(atorg=WD1MOPOS)
        translate([0, 10/2, 0])
            #cube([2, 10, 1], center=true);
}

translate([-45, 42, 0]) {
    WemosD1M_BS(ct=1, pins=0, atorg=WD1MOPOS, showtext=true);
    // USB connector locator function
    // Can be used to cut a hole for the USB connector
    //translate([0, -6/2,0])
        WemosD1M_BS_USBLocate(atorg=WD1MOPOS)
            translate([0, 6/2, 0])
                #cube([6.87+1.4, 6, 1.85+1.4], center=true);
    // Battery connector locator function
    // Can be used to cut a hole for access
        J2EX = 7.9;
        J2EY = 6.0;
        J2EZ = 5.5;
    WemosD1M_BS_BATLocate(ct=1, atorg=WD1MOPOS)
        translate([0, 10/2, 0])
            #cube([8.0, 10, 7.0], center=true);
}
//translate([-45, 42+35, 0])
//    WemosD1M_PR(pins=0, atorg=WD1MOPOS, showpads=true, showtext=true);

// NodeMCU locator functions test
translate([-15, 0, 0]) {
    // nodeMCU module
    NODEMCUOPOS = 0;
    NodeMCU(pins=0, atorg=NODEMCUOPOS, showtext=true, phmc="Yellow", phfc="DarkGrey");

    // USB connector locator function
    // Can be used to cut a hole for the USB connector
    translate([0, -6/2,0])
        NodeMCU_USBLocate(atorg=NODEMCUOPOS)
            #cube([6.87+1.4, 6, 1.85+1.4], center=true);

    // Push Buttons locator function
    // Can be used to cut a hole for access
    NodeMCU_PBLocate(atorg=NODEMCUOPOS)
        {
            translate([0, 10/2, 0])
                #cube([2, 10, 1], center=true);
            translate([0, 10/2, 0])
                %cube([2, 10, 1], center=true);
        }

    // Holes locator function
    NodeMCU_HolesLocate(idx=0, atorg=NODEMCUOPOS)
        #translate([0, 0, 10/2])
            cube([1, 1, 10], center=true);
    NodeMCU_HolesLocate(idx=1, atorg=NODEMCUOPOS)
        %translate([0, 0, 10/2])
            cube([1, 1, 10], center=true);
    NodeMCU_HolesLocate(idx=2, atorg=NODEMCUOPOS)
        #translate([0, 0, 10/2])
            cube([1, 1, 10], center=true);
    NodeMCU_HolesLocate(idx=3, atorg=NODEMCUOPOS)
        %translate([0, 0, 10/2])
            cube([1, 1, 10], center=true);
}

// RoboDyn WiFi-NodeM (NodeMCU V3) locator functions test
translate([15, 0, 0]) {
    // NodeMCU V3
    NMCURV3OPOS = 0;
    NodeMCU_RV3(pins=0, atorg=NMCURV3OPOS, showtext=true, phmc="Red", phfc="DarkGrey");

    // USB connector locator function
    // Can be used to cut a hole for the USB connector
    translate([0, -6/2,0])
        NodeMCU_RV3_USBLocate(atorg=NMCURV3OPOS)
            #cube([6.87+1.4, 6, 1.85+1.4], center=true);

    // Push Buttons locator function
    // Can be used to cut a hole for access
    NodeMCU_RV3_PBLocate(atorg=NMCURV3OPOS)
        {
            translate([0, 10/2, 0])
                #cube([1, 10, 1], center=true);
            translate([0, 10/2, 0])
                %cube([1, 10, 1], center=true);
        }

    // Holes locator function
    NodeMCU_RV3_HolesLocate(idx=0, atorg=NMCURV3OPOS)
        #translate([0, 0, 10/2])
            cube([1, 1, 10], center=true);
    NodeMCU_RV3_HolesLocate(idx=1, atorg=NMCURV3OPOS)
        %translate([0, 0, 10/2])
            cube([1, 1, 10], center=true);
    NodeMCU_RV3_HolesLocate(idx=2, atorg=NMCURV3OPOS)
        #translate([0, 0, 10/2])
            cube([1, 1, 10], center=true);
    NodeMCU_RV3_HolesLocate(idx=3, atorg=NMCURV3OPOS)
        %translate([0, 0, 10/2])
            cube([1, 1, 10], center=true);
}

// NodeMCU V0.9
translate([45, 0, 0]) {
NMCU09OPOS = 0;
    NodeMCU_09(pins=0, atorg=NMCU09OPOS, showtext=true, phmc="Black", phfc="DarkGrey");

    // USB connector locator function
    // Can be used to cut a hole for the USB connector
    translate([0, -6/2, 0])
        NodeMCU_09_USBLocate(atorg=NMCU09OPOS)
            #cube([6.87+1.4, 6, 1.85+1.4], center=true);

    // Push Buttons locator function
    // Can be used to cut a hole for access
    NodeMCU_09_PBLocate(atorg=NMCU09OPOS)
        {
            translate([0, 10/2, 0])
                #cube([1, 10, 1], center=true);
            translate([0, 10/2, 0])
                %cube([1, 10, 1], center=true);
        }
}

// Witty locator functions test
translate([78, 0, 0]) {
    WITTYBOPOS = 0;
    Witty_Base(pins=true, atorg=WITTYBOPOS, showtext=true);

    // USB connector locator function
    // Can be used to cut a hole for the USB connector
    Witty_Base_USBLocate(atorg=WITTYBOPOS)
        translate([0, 6/2, 0])
            #cube([6.87+1.4, 6, 1.85+1.4], center=true);

    // Push Buttons locator function
    // Can be used to cut a hole for access
    Witty_Base_PBLocate(atorg=WITTYBOPOS)
        translate([0, 10/2, 0])
            #cube([2, 10, 1], center=true);

    // LDR locator function
    // Can be used to cut a hole for a window
    Witty_Base_LDRLocate(atorg=WITTYBOPOS)
        translate([0, 0, 10/2])
            #cube([3.5, 3.5, 10], center=true);

    // LED locator function
    // Can be used to cut a hole for a window
    Witty_Base_LEDLocate(atorg=WITTYBOPOS)
        translate([0, 0, 10/2])
            #cube([3.5, 3.5, 10], center=true);
}
