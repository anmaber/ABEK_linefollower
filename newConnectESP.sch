<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="9.5.2">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="2" name="Route2" color="1" fill="3" visible="no" active="no"/>
<layer number="3" name="Route3" color="4" fill="3" visible="no" active="no"/>
<layer number="4" name="Route4" color="1" fill="4" visible="no" active="no"/>
<layer number="5" name="Route5" color="4" fill="4" visible="no" active="no"/>
<layer number="6" name="Route6" color="1" fill="8" visible="no" active="no"/>
<layer number="7" name="Route7" color="4" fill="8" visible="no" active="no"/>
<layer number="8" name="Route8" color="1" fill="2" visible="no" active="no"/>
<layer number="9" name="Route9" color="4" fill="2" visible="no" active="no"/>
<layer number="10" name="Route10" color="1" fill="7" visible="no" active="no"/>
<layer number="11" name="Route11" color="4" fill="7" visible="no" active="no"/>
<layer number="12" name="Route12" color="1" fill="5" visible="no" active="no"/>
<layer number="13" name="Route13" color="4" fill="5" visible="no" active="no"/>
<layer number="14" name="Route14" color="1" fill="6" visible="no" active="no"/>
<layer number="15" name="Route15" color="4" fill="6" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="88" name="SimResults" color="9" fill="1" visible="yes" active="yes"/>
<layer number="89" name="SimProbes" color="9" fill="1" visible="yes" active="yes"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
<layer number="101" name="Hidden" color="15" fill="1" visible="yes" active="yes"/>
<layer number="102" name="Changes" color="12" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="diy-modules">
<description>&lt;b&gt;DIY Modules for Arduino, Raspberry Pi, CubieBoard etc.&lt;/b&gt;
&lt;br&gt;&lt;br&gt;
The library contains a list of symbols and footprints for popular, cheap and easy-to-use electronic modules.&lt;br&gt;
The modules are intend to work with microprocessor-based platforms such as &lt;a href="http://arduino.cc"&gt;Arduino&lt;/a&gt;, &lt;a href="http://raspberrypi.org/"&gt;Raspberry Pi&lt;/a&gt;, &lt;a href="http://cubieboard.org/"&gt;CubieBoard&lt;/a&gt;, &lt;a href="http://beagleboard.org/"&gt;BeagleBone&lt;/a&gt; and many others. There are many manufacturers of the modules in the world. Almost all of them can be bought on &lt;a href="ebay.com"&gt;ebay.com&lt;/a&gt;.&lt;br&gt;
&lt;br&gt;
By using this library, you can design a PCB for devices created with usage of modules. Even if you do not need to create PCB design, you can also use the library to quickly document your work by drawing schematics of devices built by you.&lt;br&gt;
&lt;br&gt;
The latest version, examples, photos and much more can be found at: &lt;b&gt;&lt;a href="http://diymodules.org/eagle"&gt;diymodules.org/eagle&lt;/a&gt;&lt;/b&gt;&lt;br&gt;&lt;br&gt;
Comments, suggestions and bug reports please send to: &lt;b&gt;&lt;a href="mailto:eagle@diymodules.org"&gt;eagle@diymodules.org&lt;/b&gt;&lt;/a&gt;&lt;br&gt;&lt;br&gt;
&lt;i&gt;Version: 1.8.0 (2017-Jul-02)&lt;/i&gt;&lt;br&gt;
&lt;i&gt;Created by: Miroslaw Brudnowski&lt;/i&gt;&lt;br&gt;&lt;br&gt;
&lt;i&gt;Released under the Creative Commons Attribution 4.0 International License: &lt;a href="http://creativecommons.org/licenses/by/4.0"&gt;http://creativecommons.org/licenses/by/4.0&lt;/a&gt;&lt;/i&gt;
&lt;br&gt;&lt;br&gt;
&lt;center&gt;
&lt;a href="http://diymodules.org/eagle"&gt;&lt;img src="http://www.diymodules.org/img/diymodules-lbr-image.php?v=1.8.0" alt="DIYmodules.org"&gt;&lt;/a&gt;
&lt;/center&gt;</description>
<packages>
<package name="LEVEL-SHIFTER-4CH">
<description>&lt;b&gt;4-Channel Bi-Directional  Logic Level Converter&lt;/b&gt; based on &lt;b&gt;BSS128&lt;/b&gt; transistors</description>
<wire x1="-5.715" y1="7.62" x2="-4.445" y2="7.62" width="0.127" layer="21"/>
<wire x1="4.445" y1="7.62" x2="5.715" y2="7.62" width="0.127" layer="21"/>
<wire x1="6.35" y1="4.445" x2="6.35" y2="3.175" width="0.127" layer="21"/>
<wire x1="6.35" y1="1.905" x2="6.35" y2="0.635" width="0.127" layer="21"/>
<wire x1="6.35" y1="-0.635" x2="6.35" y2="-1.905" width="0.127" layer="21"/>
<wire x1="6.35" y1="-3.175" x2="6.35" y2="-4.445" width="0.127" layer="21"/>
<wire x1="5.715" y1="-7.62" x2="4.445" y2="-7.62" width="0.127" layer="21"/>
<wire x1="-4.445" y1="-7.62" x2="-5.715" y2="-7.62" width="0.127" layer="21"/>
<pad name="J2.1" x="5.08" y="6.35" drill="1" shape="square"/>
<pad name="J2.2" x="5.08" y="3.81" drill="1"/>
<pad name="J2.3" x="5.08" y="1.27" drill="1"/>
<text x="0" y="8.89" size="1.27" layer="25" align="bottom-center">&gt;NAME</text>
<text x="0" y="-8.89" size="1.27" layer="27" align="top-center">&gt;VALUE</text>
<pad name="J2.4" x="5.08" y="-1.27" drill="1"/>
<pad name="J2.5" x="5.08" y="-3.81" drill="1"/>
<text x="3.175" y="6.35" size="1.016" layer="21" align="center-right">HV1</text>
<text x="3.175" y="3.81" size="1.016" layer="21" align="center-right">HV2</text>
<text x="3.175" y="1.27" size="1.27" layer="21" align="center-right">HV</text>
<pad name="J2.6" x="5.08" y="-6.35" drill="1"/>
<text x="0" y="-1.27" size="1.27" layer="21" align="center">GND</text>
<text x="3.175" y="-3.81" size="1.016" layer="21" align="center-right">HV3</text>
<text x="3.175" y="-6.35" size="1.016" layer="21" align="center-right">HV4</text>
<pad name="J1.1" x="-5.08" y="6.35" drill="1" shape="square"/>
<pad name="J1.2" x="-5.08" y="3.81" drill="1"/>
<pad name="J1.3" x="-5.08" y="1.27" drill="1"/>
<pad name="J1.4" x="-5.08" y="-1.27" drill="1"/>
<pad name="J1.5" x="-5.08" y="-3.81" drill="1"/>
<pad name="J1.6" x="-5.08" y="-6.35" drill="1"/>
<wire x1="6.35" y1="6.985" x2="5.715" y2="7.62" width="0.127" layer="21"/>
<wire x1="4.445" y1="7.62" x2="3.81" y2="6.985" width="0.127" layer="21"/>
<wire x1="3.81" y1="6.985" x2="3.81" y2="5.715" width="0.127" layer="21"/>
<wire x1="3.81" y1="5.715" x2="4.445" y2="5.08" width="0.127" layer="21"/>
<wire x1="4.445" y1="5.08" x2="3.81" y2="4.445" width="0.127" layer="21"/>
<wire x1="3.81" y1="4.445" x2="3.81" y2="3.175" width="0.127" layer="21"/>
<wire x1="3.81" y1="3.175" x2="4.445" y2="2.54" width="0.127" layer="21"/>
<wire x1="4.445" y1="2.54" x2="3.81" y2="1.905" width="0.127" layer="21"/>
<wire x1="3.81" y1="1.905" x2="3.81" y2="0.635" width="0.127" layer="21"/>
<wire x1="3.81" y1="0.635" x2="4.445" y2="0" width="0.127" layer="21"/>
<wire x1="4.445" y1="0" x2="3.81" y2="-0.635" width="0.127" layer="21"/>
<wire x1="3.81" y1="-0.635" x2="3.81" y2="-1.905" width="0.127" layer="21"/>
<wire x1="3.81" y1="-1.905" x2="4.445" y2="-2.54" width="0.127" layer="21"/>
<wire x1="4.445" y1="-2.54" x2="3.81" y2="-3.175" width="0.127" layer="21"/>
<wire x1="3.81" y1="-3.175" x2="3.81" y2="-4.445" width="0.127" layer="21"/>
<wire x1="3.81" y1="-4.445" x2="4.445" y2="-5.08" width="0.127" layer="21"/>
<wire x1="4.445" y1="-5.08" x2="3.81" y2="-5.715" width="0.127" layer="21"/>
<wire x1="3.81" y1="-5.715" x2="3.81" y2="-6.985" width="0.127" layer="21"/>
<wire x1="3.81" y1="-6.985" x2="4.445" y2="-7.62" width="0.127" layer="21"/>
<wire x1="5.715" y1="-7.62" x2="6.35" y2="-6.985" width="0.127" layer="21"/>
<wire x1="6.35" y1="5.715" x2="5.715" y2="5.08" width="0.127" layer="21"/>
<wire x1="5.715" y1="5.08" x2="6.35" y2="4.445" width="0.127" layer="21"/>
<wire x1="6.35" y1="3.175" x2="5.715" y2="2.54" width="0.127" layer="21"/>
<wire x1="5.715" y1="2.54" x2="6.35" y2="1.905" width="0.127" layer="21"/>
<wire x1="6.35" y1="0.635" x2="5.715" y2="0" width="0.127" layer="21"/>
<wire x1="5.715" y1="0" x2="6.35" y2="-0.635" width="0.127" layer="21"/>
<wire x1="6.35" y1="-1.905" x2="5.715" y2="-2.54" width="0.127" layer="21"/>
<wire x1="5.715" y1="-2.54" x2="6.35" y2="-3.175" width="0.127" layer="21"/>
<wire x1="6.35" y1="-4.445" x2="5.715" y2="-5.08" width="0.127" layer="21"/>
<wire x1="5.715" y1="-5.08" x2="6.35" y2="-5.715" width="0.127" layer="21"/>
<wire x1="-4.445" y1="7.62" x2="-3.81" y2="6.985" width="0.127" layer="21"/>
<wire x1="-3.81" y1="6.985" x2="-3.81" y2="5.715" width="0.127" layer="21"/>
<wire x1="-3.81" y1="5.715" x2="-4.445" y2="5.08" width="0.127" layer="21"/>
<wire x1="-4.445" y1="5.08" x2="-3.81" y2="4.445" width="0.127" layer="21"/>
<wire x1="-3.81" y1="4.445" x2="-3.81" y2="3.175" width="0.127" layer="21"/>
<wire x1="-3.81" y1="3.175" x2="-4.445" y2="2.54" width="0.127" layer="21"/>
<wire x1="-4.445" y1="2.54" x2="-3.81" y2="1.905" width="0.127" layer="21"/>
<wire x1="-3.81" y1="1.905" x2="-3.81" y2="0.635" width="0.127" layer="21"/>
<wire x1="-3.81" y1="0.635" x2="-4.445" y2="0" width="0.127" layer="21"/>
<wire x1="-4.445" y1="0" x2="-3.81" y2="-0.635" width="0.127" layer="21"/>
<wire x1="-3.81" y1="-0.635" x2="-3.81" y2="-1.905" width="0.127" layer="21"/>
<wire x1="-3.81" y1="-1.905" x2="-4.445" y2="-2.54" width="0.127" layer="21"/>
<wire x1="-4.445" y1="-2.54" x2="-3.81" y2="-3.175" width="0.127" layer="21"/>
<wire x1="-3.81" y1="-3.175" x2="-3.81" y2="-4.445" width="0.127" layer="21"/>
<wire x1="-3.81" y1="-4.445" x2="-4.445" y2="-5.08" width="0.127" layer="21"/>
<wire x1="-4.445" y1="-5.08" x2="-3.81" y2="-5.715" width="0.127" layer="21"/>
<wire x1="-3.81" y1="-5.715" x2="-3.81" y2="-6.985" width="0.127" layer="21"/>
<wire x1="-3.81" y1="-6.985" x2="-4.445" y2="-7.62" width="0.127" layer="21"/>
<wire x1="-5.715" y1="-7.62" x2="-6.35" y2="-6.985" width="0.127" layer="21"/>
<wire x1="-6.35" y1="6.985" x2="-5.715" y2="7.62" width="0.127" layer="21"/>
<wire x1="-6.35" y1="5.715" x2="-5.715" y2="5.08" width="0.127" layer="21"/>
<wire x1="-5.715" y1="5.08" x2="-6.35" y2="4.445" width="0.127" layer="21"/>
<wire x1="-6.35" y1="3.175" x2="-5.715" y2="2.54" width="0.127" layer="21"/>
<wire x1="-5.715" y1="2.54" x2="-6.35" y2="1.905" width="0.127" layer="21"/>
<wire x1="-6.35" y1="0.635" x2="-5.715" y2="0" width="0.127" layer="21"/>
<wire x1="-5.715" y1="0" x2="-6.35" y2="-0.635" width="0.127" layer="21"/>
<wire x1="-6.35" y1="-1.905" x2="-5.715" y2="-2.54" width="0.127" layer="21"/>
<wire x1="-5.715" y1="-2.54" x2="-6.35" y2="-3.175" width="0.127" layer="21"/>
<wire x1="-6.35" y1="-4.445" x2="-5.715" y2="-5.08" width="0.127" layer="21"/>
<wire x1="-5.715" y1="-5.08" x2="-6.35" y2="-5.715" width="0.127" layer="21"/>
<text x="-3.175" y="6.35" size="1.016" layer="21" align="center-left">LV1</text>
<text x="-3.175" y="3.81" size="1.016" layer="21" align="center-left">LV2</text>
<text x="-3.175" y="1.27" size="1.27" layer="21" align="center-left">LV</text>
<text x="-3.175" y="-3.81" size="1.016" layer="21" align="center-left">LV3</text>
<text x="-3.175" y="-6.35" size="1.016" layer="21" align="center-left">LV4</text>
<wire x1="2.159" y1="-1.27" x2="3.175" y2="-1.27" width="0.127" layer="21"/>
<wire x1="-2.159" y1="-1.27" x2="-3.175" y2="-1.27" width="0.127" layer="21"/>
<wire x1="-6.604" y1="7.874" x2="6.604" y2="7.874" width="0.127" layer="21"/>
<wire x1="6.604" y1="7.874" x2="6.604" y2="-7.874" width="0.127" layer="21"/>
<wire x1="6.604" y1="-7.874" x2="-6.604" y2="-7.874" width="0.127" layer="21"/>
<wire x1="-6.604" y1="-7.874" x2="-6.604" y2="7.874" width="0.127" layer="21"/>
<wire x1="-6.35" y1="6.985" x2="-6.35" y2="5.715" width="0.127" layer="21"/>
<wire x1="-6.35" y1="4.445" x2="-6.35" y2="3.175" width="0.127" layer="21"/>
<wire x1="-6.35" y1="1.905" x2="-6.35" y2="0.635" width="0.127" layer="21"/>
<wire x1="-6.35" y1="-0.635" x2="-6.35" y2="-1.905" width="0.127" layer="21"/>
<wire x1="-6.35" y1="-3.175" x2="-6.35" y2="-4.445" width="0.127" layer="21"/>
<wire x1="-6.35" y1="-5.715" x2="-6.35" y2="-6.985" width="0.127" layer="21"/>
<wire x1="6.35" y1="-6.985" x2="6.35" y2="-5.715" width="0.127" layer="21"/>
<wire x1="6.35" y1="5.715" x2="6.35" y2="6.985" width="0.127" layer="21"/>
</package>
</packages>
<symbols>
<symbol name="LEVEL-SHIFTER-4CH">
<description>&lt;b&gt;4-Channel Bi-Directional  Logic Level Converter&lt;/b&gt; based on &lt;b&gt;BSS128&lt;/b&gt; transistors</description>
<pin name="LV3" x="-15.24" y="-5.08" length="middle"/>
<pin name="GND.1" x="-15.24" y="-2.54" length="middle" direction="pwr"/>
<pin name="LV" x="-15.24" y="0" length="middle" direction="pwr"/>
<pin name="LV2" x="-15.24" y="2.54" length="middle"/>
<pin name="LV1" x="-15.24" y="5.08" length="middle"/>
<pin name="HV4" x="15.24" y="-7.62" length="middle" rot="R180"/>
<pin name="HV3" x="15.24" y="-5.08" length="middle" rot="R180"/>
<pin name="GND.2" x="15.24" y="-2.54" length="middle" direction="pwr" rot="R180"/>
<pin name="HV" x="15.24" y="0" length="middle" direction="pwr" rot="R180"/>
<pin name="HV2" x="15.24" y="2.54" length="middle" rot="R180"/>
<pin name="HV1" x="15.24" y="5.08" length="middle" rot="R180"/>
<wire x1="10.16" y1="7.62" x2="10.16" y2="-10.16" width="0.254" layer="94"/>
<wire x1="10.16" y1="-10.16" x2="-10.16" y2="-10.16" width="0.254" layer="94"/>
<wire x1="-10.16" y1="-10.16" x2="-10.16" y2="7.62" width="0.254" layer="94"/>
<wire x1="-10.16" y1="7.62" x2="10.16" y2="7.62" width="0.254" layer="94"/>
<text x="-10.16" y="12.7" size="1.778" layer="95">&gt;NAME</text>
<text x="-10.16" y="10.16" size="1.778" layer="96">&gt;VALUE</text>
<pin name="LV4" x="-15.24" y="-7.62" length="middle"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="LEVEL-SHIFTER-4CH">
<description>&lt;b&gt;4-Channel Bi-Directional  Logic Level Converter&lt;/b&gt; based on &lt;b&gt;BSS128&lt;/b&gt; transistors
&lt;p&gt;&lt;b&gt;&lt;a href="http://www.ebay.com/sch/i2c+logic+converter+module"&gt;Click here to find device on ebay.com&lt;/a&gt;&lt;/b&gt;&lt;/p&gt;
&lt;p&gt;&lt;img alt="photo" src="http://www.diymodules.org/img/device-photo.php?name=LEVEL-SHIFTER-4CH"&gt;&lt;/p&gt;</description>
<gates>
<gate name="G$1" symbol="LEVEL-SHIFTER-4CH" x="0" y="0"/>
</gates>
<devices>
<device name="" package="LEVEL-SHIFTER-4CH">
<connects>
<connect gate="G$1" pin="GND.1" pad="J1.4"/>
<connect gate="G$1" pin="GND.2" pad="J2.4"/>
<connect gate="G$1" pin="HV" pad="J2.3"/>
<connect gate="G$1" pin="HV1" pad="J2.1"/>
<connect gate="G$1" pin="HV2" pad="J2.2"/>
<connect gate="G$1" pin="HV3" pad="J2.5"/>
<connect gate="G$1" pin="HV4" pad="J2.6"/>
<connect gate="G$1" pin="LV" pad="J1.3"/>
<connect gate="G$1" pin="LV1" pad="J1.1"/>
<connect gate="G$1" pin="LV2" pad="J1.2"/>
<connect gate="G$1" pin="LV3" pad="J1.5"/>
<connect gate="G$1" pin="LV4" pad="J1.6"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="supply1" urn="urn:adsk.eagle:library:371">
<description>&lt;b&gt;Supply Symbols&lt;/b&gt;&lt;p&gt;
 GND, VCC, 0V, +5V, -5V, etc.&lt;p&gt;
 Please keep in mind, that these devices are necessary for the
 automatic wiring of the supply signals.&lt;p&gt;
 The pin name defined in the symbol is identical to the net which is to be wired automatically.&lt;p&gt;
 In this library the device names are the same as the pin names of the symbols, therefore the correct signal names appear next to the supply symbols in the schematic.&lt;p&gt;
 &lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
</packages>
<symbols>
<symbol name="GND" urn="urn:adsk.eagle:symbol:26925/1" library_version="1">
<wire x1="-1.905" y1="0" x2="1.905" y2="0" width="0.254" layer="94"/>
<text x="-2.54" y="-2.54" size="1.778" layer="96">&gt;VALUE</text>
<pin name="GND" x="0" y="2.54" visible="off" length="short" direction="sup" rot="R270"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="GND" urn="urn:adsk.eagle:component:26954/1" prefix="GND" library_version="1">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="GND" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="U$1" library="diy-modules" deviceset="LEVEL-SHIFTER-4CH" device=""/>
<part name="GND1" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="GND2" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="U$1" gate="G$1" x="55.88" y="68.58" smashed="yes">
<attribute name="NAME" x="45.72" y="81.28" size="1.778" layer="95"/>
<attribute name="VALUE" x="45.72" y="78.74" size="1.778" layer="96"/>
</instance>
<instance part="GND1" gate="1" x="27.94" y="60.96" smashed="yes">
<attribute name="VALUE" x="25.4" y="58.42" size="1.778" layer="96"/>
</instance>
<instance part="GND2" gate="1" x="81.28" y="60.96" smashed="yes">
<attribute name="VALUE" x="78.74" y="58.42" size="1.778" layer="96"/>
</instance>
</instances>
<busses>
</busses>
<nets>
<net name="GND" class="0">
<segment>
<pinref part="GND1" gate="1" pin="GND"/>
<wire x1="27.94" y1="63.5" x2="27.94" y2="66.04" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="GND.1"/>
<wire x1="27.94" y1="66.04" x2="40.64" y2="66.04" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="GND.2"/>
<pinref part="GND2" gate="1" pin="GND"/>
<wire x1="71.12" y1="66.04" x2="81.28" y2="66.04" width="0.1524" layer="91"/>
<wire x1="81.28" y1="66.04" x2="81.28" y2="63.5" width="0.1524" layer="91"/>
</segment>
</net>
<net name="3V3" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="LV"/>
<wire x1="40.64" y1="68.58" x2="35.56" y2="68.58" width="0.1524" layer="91"/>
<label x="35.56" y="68.58" size="1.016" layer="95" rot="R180" xref="yes"/>
</segment>
</net>
<net name="C5V" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="HV"/>
<wire x1="71.12" y1="68.58" x2="76.2" y2="68.58" width="0.1524" layer="91"/>
<label x="76.2" y="68.58" size="1.016" layer="95" xref="yes"/>
</segment>
</net>
<net name="W.RX" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="LV1"/>
<wire x1="40.64" y1="73.66" x2="35.56" y2="73.66" width="0.1524" layer="91"/>
<label x="35.56" y="73.66" size="1.016" layer="95" rot="R180" xref="yes"/>
</segment>
</net>
<net name="W.TX" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="LV2"/>
<wire x1="40.64" y1="71.12" x2="35.56" y2="71.12" width="0.1524" layer="91"/>
<label x="35.56" y="71.12" size="1.016" layer="95" rot="R180" xref="yes"/>
</segment>
</net>
<net name="A.TX" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="HV1"/>
<wire x1="71.12" y1="73.66" x2="76.2" y2="73.66" width="0.1524" layer="91"/>
<label x="76.2" y="73.66" size="1.016" layer="95" xref="yes"/>
</segment>
</net>
<net name="A.RX" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="HV2"/>
<wire x1="71.12" y1="71.12" x2="76.2" y2="71.12" width="0.1524" layer="91"/>
<label x="76.2" y="71.12" size="1.016" layer="95" xref="yes"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
<compatibility>
<note version="8.2" severity="warning">
Since Version 8.2, EAGLE supports online libraries. The ids
of those online libraries will not be understood (or retained)
with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports URNs for individual library
assets (packages, symbols, and devices). The URNs of those assets
will not be understood (or retained) with this version.
</note>
</compatibility>
</eagle>
