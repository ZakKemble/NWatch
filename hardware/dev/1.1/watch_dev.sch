<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="7.0.0">
<drawing>
<settings>
<setting alwaysvectorfont="yes"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
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
<layer number="50" name="dxf" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="53" name="tGND_GNDA" color="7" fill="9" visible="no" active="no"/>
<layer number="54" name="bGND_GNDA" color="1" fill="9" visible="no" active="no"/>
<layer number="56" name="wert" color="7" fill="1" visible="no" active="no"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
<layer number="100" name="Parts" color="7" fill="1" visible="yes" active="yes"/>
<layer number="101" name="Patch_Top" color="12" fill="4" visible="yes" active="yes"/>
<layer number="102" name="Mittellin" color="7" fill="1" visible="yes" active="yes"/>
<layer number="103" name="Stiffner" color="7" fill="1" visible="yes" active="yes"/>
<layer number="104" name="Name" color="7" fill="1" visible="yes" active="yes"/>
<layer number="105" name="Beschreib" color="7" fill="1" visible="yes" active="yes"/>
<layer number="106" name="BGA-Top" color="7" fill="1" visible="yes" active="yes"/>
<layer number="107" name="BD-Top" color="7" fill="1" visible="yes" active="yes"/>
<layer number="108" name="tBridges" color="7" fill="1" visible="yes" active="yes"/>
<layer number="109" name="tBPL" color="7" fill="1" visible="yes" active="yes"/>
<layer number="110" name="bBPL" color="7" fill="1" visible="yes" active="yes"/>
<layer number="111" name="MPL" color="7" fill="1" visible="yes" active="yes"/>
<layer number="112" name="tSilk" color="7" fill="1" visible="yes" active="yes"/>
<layer number="116" name="Patch_BOT" color="9" fill="4" visible="yes" active="yes"/>
<layer number="117" name="mPads" color="7" fill="1" visible="yes" active="yes"/>
<layer number="118" name="mVias" color="7" fill="1" visible="yes" active="yes"/>
<layer number="119" name="mUnrouted" color="7" fill="1" visible="yes" active="yes"/>
<layer number="120" name="mDimension" color="7" fill="1" visible="yes" active="yes"/>
<layer number="121" name="sName" color="7" fill="1" visible="yes" active="yes"/>
<layer number="122" name="_bPlace" color="7" fill="1" visible="yes" active="yes"/>
<layer number="123" name="tTestmark" color="7" fill="1" visible="no" active="yes"/>
<layer number="124" name="bTestmark" color="7" fill="1" visible="no" active="yes"/>
<layer number="125" name="_tNames" color="7" fill="1" visible="yes" active="yes"/>
<layer number="126" name="_bNames" color="7" fill="1" visible="yes" active="yes"/>
<layer number="127" name="_tValues" color="7" fill="1" visible="yes" active="yes"/>
<layer number="128" name="_bValues" color="7" fill="1" visible="yes" active="yes"/>
<layer number="129" name="mtStop" color="7" fill="1" visible="yes" active="yes"/>
<layer number="130" name="mbStop" color="7" fill="1" visible="yes" active="yes"/>
<layer number="131" name="tAdjust" color="7" fill="1" visible="no" active="yes"/>
<layer number="132" name="bAdjust" color="7" fill="1" visible="no" active="yes"/>
<layer number="133" name="mtFinish" color="7" fill="1" visible="yes" active="yes"/>
<layer number="134" name="mbFinish" color="7" fill="1" visible="yes" active="yes"/>
<layer number="135" name="mtGlue" color="7" fill="1" visible="yes" active="yes"/>
<layer number="136" name="mbGlue" color="7" fill="1" visible="yes" active="yes"/>
<layer number="137" name="mtTest" color="7" fill="1" visible="yes" active="yes"/>
<layer number="138" name="mbTest" color="7" fill="1" visible="yes" active="yes"/>
<layer number="139" name="mtKeepout" color="7" fill="1" visible="yes" active="yes"/>
<layer number="140" name="mbKeepout" color="7" fill="1" visible="yes" active="yes"/>
<layer number="141" name="mtRestrict" color="7" fill="1" visible="yes" active="yes"/>
<layer number="142" name="mbRestrict" color="7" fill="1" visible="yes" active="yes"/>
<layer number="143" name="mvRestrict" color="7" fill="1" visible="yes" active="yes"/>
<layer number="144" name="Drill_legend" color="7" fill="1" visible="yes" active="yes"/>
<layer number="145" name="mHoles" color="7" fill="1" visible="yes" active="yes"/>
<layer number="146" name="mMilling" color="7" fill="1" visible="yes" active="yes"/>
<layer number="147" name="mMeasures" color="7" fill="1" visible="yes" active="yes"/>
<layer number="148" name="mDocument" color="7" fill="1" visible="yes" active="yes"/>
<layer number="149" name="mReference" color="7" fill="1" visible="yes" active="yes"/>
<layer number="150" name="Notes" color="7" fill="1" visible="yes" active="yes"/>
<layer number="151" name="HeatSink" color="7" fill="1" visible="yes" active="yes"/>
<layer number="152" name="_bDocu" color="7" fill="1" visible="yes" active="yes"/>
<layer number="191" name="mNets" color="7" fill="1" visible="yes" active="yes"/>
<layer number="192" name="mBusses" color="7" fill="1" visible="yes" active="yes"/>
<layer number="193" name="mPins" color="7" fill="1" visible="yes" active="yes"/>
<layer number="194" name="mSymbols" color="7" fill="1" visible="yes" active="yes"/>
<layer number="195" name="mNames" color="7" fill="1" visible="yes" active="yes"/>
<layer number="196" name="mValues" color="7" fill="1" visible="yes" active="yes"/>
<layer number="199" name="Contour" color="7" fill="1" visible="yes" active="yes"/>
<layer number="200" name="200bmp" color="1" fill="10" visible="yes" active="yes"/>
<layer number="201" name="201bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="202" name="202bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="203" name="203bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="204" name="204bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="205" name="205bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="206" name="206bmp" color="7" fill="10" visible="yes" active="yes"/>
<layer number="207" name="207bmp" color="8" fill="10" visible="yes" active="yes"/>
<layer number="208" name="208bmp" color="9" fill="10" visible="yes" active="yes"/>
<layer number="209" name="209bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="210" name="210bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="211" name="211bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="212" name="212bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="213" name="213bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="214" name="214bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="215" name="215bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="216" name="216bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="217" name="217bmp" color="18" fill="1" visible="no" active="no"/>
<layer number="218" name="218bmp" color="19" fill="1" visible="no" active="no"/>
<layer number="219" name="219bmp" color="20" fill="1" visible="no" active="no"/>
<layer number="220" name="220bmp" color="21" fill="1" visible="no" active="no"/>
<layer number="221" name="221bmp" color="22" fill="1" visible="no" active="no"/>
<layer number="222" name="222bmp" color="23" fill="1" visible="no" active="no"/>
<layer number="223" name="223bmp" color="24" fill="1" visible="no" active="no"/>
<layer number="224" name="224bmp" color="25" fill="1" visible="no" active="no"/>
<layer number="248" name="Housing" color="7" fill="1" visible="yes" active="yes"/>
<layer number="249" name="Edge" color="7" fill="1" visible="yes" active="yes"/>
<layer number="250" name="Descript" color="7" fill="1" visible="yes" active="yes"/>
<layer number="251" name="SMDround" color="7" fill="1" visible="yes" active="yes"/>
<layer number="254" name="cooling" color="7" fill="1" visible="yes" active="yes"/>
<layer number="255" name="PART_" color="7" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="supply1">
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
<symbol name="GND">
<wire x1="-1.905" y1="0" x2="1.905" y2="0" width="0.254" layer="94"/>
<text x="-2.54" y="-2.54" size="1.778" layer="96">&gt;VALUE</text>
<pin name="GND" x="0" y="2.54" visible="off" length="short" direction="sup" rot="R270"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="GND" prefix="GND">
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
<library name="microbuilder">
<description>&lt;h2&gt;&lt;b&gt;microBuilder.eu&lt;/b&gt; Eagle Footprint Library&lt;/h2&gt;

&lt;p&gt;Footprints for common components used in our projects and products.  This is the same library that we use internally, and it is regularly updated.  The newest version can always be found at &lt;b&gt;www.microBuilder.eu&lt;/b&gt;.  If you find this library useful, please feel free to purchase something from our online store. Please also note that all holes are optimised for metric drill bits!&lt;/p&gt;

&lt;h3&gt;Obligatory Warning&lt;/h3&gt;
&lt;p&gt;While it probably goes without saying, there are no guarantees that the footprints or schematic symbols in this library are flawless, and we make no promises of fitness for production, prototyping or any other purpose. These libraries are provided for information puposes only, and are used at your own discretion.  While we make every effort to produce accurate footprints, and many of the items found in this library have be proven in production, we can't make any promises of suitability for a specific purpose. If you do find any errors, though, please feel free to contact us at www.microbuilder.eu to let us know about it so that we can update the library accordingly!&lt;/p&gt;

&lt;h3&gt;License&lt;/h3&gt;
&lt;p&gt;This work is placed in the public domain, and may be freely used for commercial and non-commercial work with the following conditions:&lt;/p&gt;
&lt;p&gt;THIS SOFTWARE IS PROVIDED ''AS IS'' AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.  IN NO EVENT SHALL THE INSTITUTE OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,  BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
&lt;/p&gt;</description>
<packages>
<package name="0805">
<description>0805 (2012 Metric)</description>
<wire x1="-1.873" y1="0.883" x2="1.873" y2="0.883" width="0.0508" layer="39"/>
<wire x1="1.873" y1="-0.883" x2="-1.873" y2="-0.883" width="0.0508" layer="39"/>
<wire x1="-1.873" y1="-0.883" x2="-1.873" y2="0.883" width="0.0508" layer="39"/>
<wire x1="-0.381" y1="0.66" x2="0.381" y2="0.66" width="0.1016" layer="51"/>
<wire x1="-0.356" y1="-0.66" x2="0.381" y2="-0.66" width="0.1016" layer="51"/>
<wire x1="1.873" y1="0.883" x2="1.873" y2="-0.883" width="0.0508" layer="39"/>
<wire x1="1.8" y1="0.9" x2="1.8" y2="-0.9" width="0.2032" layer="21"/>
<wire x1="1.8" y1="-0.9" x2="-1.8" y2="-0.9" width="0.2032" layer="21"/>
<wire x1="-1.8" y1="-0.9" x2="-1.8" y2="0.9" width="0.2032" layer="21"/>
<wire x1="-1.8" y1="0.9" x2="1.8" y2="0.9" width="0.2032" layer="21"/>
<smd name="1" x="-0.95" y="0" dx="1.3" dy="1.5" layer="1"/>
<smd name="2" x="0.95" y="0" dx="1.3" dy="1.5" layer="1"/>
<text x="2.032" y="-0.127" size="0.8128" layer="25" ratio="18">&gt;NAME</text>
<text x="2.032" y="-0.762" size="0.4064" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-1.0922" y1="-0.7239" x2="-0.3421" y2="0.7262" layer="51"/>
<rectangle x1="0.3556" y1="-0.7239" x2="1.1057" y2="0.7262" layer="51"/>
<rectangle x1="-0.1001" y1="-0.4001" x2="0.1001" y2="0.4001" layer="35"/>
</package>
<package name="1206">
<description>1206 (3216 Metric)</description>
<wire x1="-2.473" y1="0.983" x2="2.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="2.473" y1="-0.983" x2="-2.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-2.473" y1="-0.983" x2="-2.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="2.473" y1="0.983" x2="2.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-0.965" y1="0.787" x2="0.965" y2="0.787" width="0.1016" layer="51"/>
<wire x1="-0.965" y1="-0.787" x2="0.965" y2="-0.787" width="0.1016" layer="51"/>
<wire x1="-2.4" y1="1" x2="2.4" y2="1" width="0.2032" layer="21"/>
<wire x1="2.4" y1="1" x2="2.4" y2="-1" width="0.2032" layer="21"/>
<wire x1="2.4" y1="-1" x2="-2.4" y2="-1" width="0.2032" layer="21"/>
<wire x1="-2.4" y1="-1" x2="-2.4" y2="1" width="0.2032" layer="21"/>
<smd name="1" x="-1.4" y="0" dx="1.6" dy="1.8" layer="1"/>
<smd name="2" x="1.4" y="0" dx="1.6" dy="1.8" layer="1"/>
<text x="2.54" y="-0.127" size="0.8128" layer="25" ratio="18">&gt;NAME</text>
<text x="2.54" y="-0.635" size="0.4064" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-1.7018" y1="-0.8509" x2="-0.9517" y2="0.8491" layer="51"/>
<rectangle x1="0.9517" y1="-0.8491" x2="1.7018" y2="0.8509" layer="51"/>
<rectangle x1="-0.1999" y1="-0.4001" x2="0.1999" y2="0.4001" layer="35"/>
</package>
<package name="0603">
<description>0603 (1608 Metric)</description>
<wire x1="-1.473" y1="0.729" x2="1.473" y2="0.729" width="0.0508" layer="39"/>
<wire x1="1.473" y1="0.729" x2="1.473" y2="-0.729" width="0.0508" layer="39"/>
<wire x1="1.473" y1="-0.729" x2="-1.473" y2="-0.729" width="0.0508" layer="39"/>
<wire x1="-1.473" y1="-0.729" x2="-1.473" y2="0.729" width="0.0508" layer="39"/>
<wire x1="-0.356" y1="0.432" x2="0.356" y2="0.432" width="0.1016" layer="51"/>
<wire x1="-0.356" y1="-0.419" x2="0.356" y2="-0.419" width="0.1016" layer="51"/>
<wire x1="-1.6" y1="0.7" x2="1.6" y2="0.7" width="0.2032" layer="21"/>
<wire x1="1.6" y1="0.7" x2="1.6" y2="-0.7" width="0.2032" layer="21"/>
<wire x1="1.6" y1="-0.7" x2="-1.6" y2="-0.7" width="0.2032" layer="21"/>
<wire x1="-1.6" y1="-0.7" x2="-1.6" y2="0.7" width="0.2032" layer="21"/>
<smd name="1" x="-0.85" y="0" dx="1.1" dy="1" layer="1"/>
<smd name="2" x="0.85" y="0" dx="1.1" dy="1" layer="1"/>
<text x="1.778" y="-0.127" size="0.8128" layer="25" font="vector" ratio="18">&gt;NAME</text>
<text x="1.778" y="-0.762" size="0.4064" layer="27" font="vector" ratio="10">&gt;VALUE</text>
<rectangle x1="-0.8382" y1="-0.4699" x2="-0.3381" y2="0.4801" layer="51"/>
<rectangle x1="0.3302" y1="-0.4699" x2="0.8303" y2="0.4801" layer="51"/>
<rectangle x1="-0.1999" y1="-0.3" x2="0.1999" y2="0.3" layer="35"/>
</package>
<package name="0402">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;&lt;p&gt;
chip</description>
<wire x1="-0.245" y1="0.224" x2="0.245" y2="0.224" width="0.2032" layer="51"/>
<wire x1="0.245" y1="-0.224" x2="-0.245" y2="-0.224" width="0.2032" layer="51"/>
<wire x1="-1.346" y1="0.483" x2="1.346" y2="0.483" width="0.0508" layer="39"/>
<wire x1="1.346" y1="0.483" x2="1.346" y2="-0.483" width="0.0508" layer="39"/>
<wire x1="1.346" y1="-0.483" x2="-1.346" y2="-0.483" width="0.0508" layer="39"/>
<wire x1="-1.346" y1="-0.483" x2="-1.346" y2="0.483" width="0.0508" layer="39"/>
<wire x1="-1.27" y1="-0.635" x2="-1.27" y2="0.635" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="0.635" x2="1.27" y2="0.635" width="0.2032" layer="21"/>
<wire x1="1.27" y1="0.635" x2="1.27" y2="-0.635" width="0.2032" layer="21"/>
<wire x1="1.27" y1="-0.635" x2="-1.27" y2="-0.635" width="0.2032" layer="21"/>
<smd name="1" x="-0.65" y="0" dx="0.7" dy="0.9" layer="1"/>
<smd name="2" x="0.65" y="0" dx="0.7" dy="0.9" layer="1"/>
<text x="1.397" y="-0.1905" size="0.8128" layer="25" ratio="18">&gt;NAME</text>
<text x="1.397" y="-0.635" size="0.4064" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-0.554" y1="-0.3048" x2="-0.254" y2="0.2951" layer="51"/>
<rectangle x1="0.2588" y1="-0.3048" x2="0.5588" y2="0.2951" layer="51"/>
<rectangle x1="-0.1999" y1="-0.3" x2="0.1999" y2="0.3" layer="35"/>
</package>
<package name="0603-MINI">
<description>0603-Mini
&lt;p&gt;Mini footprint for dense boards&lt;/p&gt;</description>
<wire x1="-1.346" y1="0.583" x2="1.346" y2="0.583" width="0.0508" layer="39"/>
<wire x1="1.346" y1="0.583" x2="1.346" y2="-0.583" width="0.0508" layer="39"/>
<wire x1="1.346" y1="-0.583" x2="-1.346" y2="-0.583" width="0.0508" layer="39"/>
<wire x1="-1.346" y1="-0.583" x2="-1.346" y2="0.583" width="0.0508" layer="39"/>
<wire x1="-1.37" y1="-0.635" x2="-1.37" y2="0.635" width="0.2032" layer="21"/>
<wire x1="-1.37" y1="0.635" x2="1.37" y2="0.635" width="0.2032" layer="21"/>
<wire x1="1.37" y1="0.635" x2="1.37" y2="-0.635" width="0.2032" layer="21"/>
<wire x1="1.37" y1="-0.635" x2="-1.37" y2="-0.635" width="0.2032" layer="21"/>
<wire x1="-0.356" y1="0.432" x2="0.356" y2="0.432" width="0.1016" layer="51"/>
<wire x1="-0.356" y1="-0.419" x2="0.356" y2="-0.419" width="0.1016" layer="51"/>
<smd name="1" x="-0.75" y="0" dx="0.9" dy="0.9" layer="1"/>
<smd name="2" x="0.75" y="0" dx="0.9" dy="0.9" layer="1"/>
<text x="1.524" y="-0.0635" size="0.8128" layer="25" ratio="18">&gt;NAME</text>
<text x="1.524" y="-0.635" size="0.4064" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-0.8382" y1="-0.4699" x2="-0.3381" y2="0.4801" layer="51"/>
<rectangle x1="0.3302" y1="-0.4699" x2="0.8303" y2="0.4801" layer="51"/>
</package>
<package name="0805_NOTHERMALS">
<wire x1="-1.873" y1="0.883" x2="1.873" y2="0.883" width="0.0508" layer="39"/>
<wire x1="1.873" y1="-0.883" x2="-1.873" y2="-0.883" width="0.0508" layer="39"/>
<wire x1="-1.873" y1="-0.883" x2="-1.873" y2="0.883" width="0.0508" layer="39"/>
<wire x1="-0.381" y1="0.66" x2="0.381" y2="0.66" width="0.1016" layer="51"/>
<wire x1="-0.356" y1="-0.66" x2="0.381" y2="-0.66" width="0.1016" layer="51"/>
<wire x1="1.873" y1="0.883" x2="1.873" y2="-0.883" width="0.0508" layer="39"/>
<wire x1="1.8" y1="0.9" x2="1.8" y2="-0.9" width="0.2032" layer="21"/>
<wire x1="1.8" y1="-0.9" x2="-1.8" y2="-0.9" width="0.2032" layer="21"/>
<wire x1="-1.8" y1="-0.9" x2="-1.8" y2="0.9" width="0.2032" layer="21"/>
<wire x1="-1.8" y1="0.9" x2="1.8" y2="0.9" width="0.2032" layer="21"/>
<smd name="1" x="-0.95" y="0" dx="1.3" dy="1.5" layer="1" thermals="no"/>
<smd name="2" x="0.95" y="0" dx="1.3" dy="1.5" layer="1" thermals="no"/>
<text x="2.032" y="-0.127" size="0.8128" layer="25" ratio="18">&gt;NAME</text>
<text x="2.032" y="-0.762" size="0.4064" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-1.0922" y1="-0.7239" x2="-0.3421" y2="0.7262" layer="51"/>
<rectangle x1="0.3556" y1="-0.7239" x2="1.1057" y2="0.7262" layer="51"/>
</package>
<package name="_0402">
<description>&lt;b&gt; 0402&lt;/b&gt;</description>
<wire x1="-0.245" y1="0.174" x2="0.245" y2="0.174" width="0.1016" layer="51"/>
<wire x1="0.245" y1="-0.174" x2="-0.245" y2="-0.174" width="0.1016" layer="51"/>
<wire x1="-1.0573" y1="0.5557" x2="1.0573" y2="0.5557" width="0.2032" layer="21"/>
<wire x1="1.0573" y1="0.5557" x2="1.0573" y2="-0.5556" width="0.2032" layer="21"/>
<wire x1="1.0573" y1="-0.5556" x2="-1.0573" y2="-0.5557" width="0.2032" layer="21"/>
<wire x1="-1.0573" y1="-0.5557" x2="-1.0573" y2="0.5557" width="0.2032" layer="21"/>
<smd name="1" x="-0.508" y="0" dx="0.6" dy="0.6" layer="1"/>
<smd name="2" x="0.508" y="0" dx="0.6" dy="0.6" layer="1"/>
<text x="-0.9525" y="0.7939" size="0.8128" layer="25" ratio="18">&gt;NAME</text>
<text x="-0.9525" y="-1.3336" size="0.4064" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-0.0794" y1="-0.2381" x2="0.0794" y2="0.2381" layer="35"/>
<rectangle x1="0.25" y1="-0.25" x2="0.5" y2="0.25" layer="51"/>
<rectangle x1="-0.5" y1="-0.25" x2="-0.25" y2="0.25" layer="51"/>
</package>
<package name="_0402MP">
<description>&lt;b&gt;0402 MicroPitch&lt;p&gt;</description>
<wire x1="-0.245" y1="0.174" x2="0.245" y2="0.174" width="0.1016" layer="51"/>
<wire x1="0.245" y1="-0.174" x2="-0.245" y2="-0.174" width="0.1016" layer="51"/>
<wire x1="0" y1="0.127" x2="0" y2="-0.127" width="0.2032" layer="21"/>
<smd name="1" x="-0.508" y="0" dx="0.5" dy="0.5" layer="1"/>
<smd name="2" x="0.508" y="0" dx="0.5" dy="0.5" layer="1"/>
<text x="-0.635" y="0.4763" size="0.6096" layer="25" ratio="18">&gt;NAME</text>
<text x="-0.635" y="-0.7938" size="0.4064" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-0.1" y1="-0.2" x2="0.1" y2="0.2" layer="35"/>
<rectangle x1="-0.5" y1="-0.25" x2="-0.254" y2="0.25" layer="51"/>
<rectangle x1="0.2588" y1="-0.25" x2="0.5" y2="0.25" layer="51"/>
</package>
<package name="_0603">
<description>&lt;b&gt;0603&lt;/b&gt;</description>
<wire x1="-0.432" y1="-0.306" x2="0.432" y2="-0.306" width="0.1016" layer="51"/>
<wire x1="0.432" y1="0.306" x2="-0.432" y2="0.306" width="0.1016" layer="51"/>
<wire x1="-1.4605" y1="0.635" x2="1.4605" y2="0.635" width="0.2032" layer="21"/>
<wire x1="1.4605" y1="0.635" x2="1.4605" y2="-0.635" width="0.2032" layer="21"/>
<wire x1="1.4605" y1="-0.635" x2="-1.4605" y2="-0.635" width="0.2032" layer="21"/>
<wire x1="-1.4605" y1="-0.635" x2="-1.4605" y2="0.635" width="0.2032" layer="21"/>
<smd name="1" x="-0.762" y="0" dx="0.9" dy="0.8" layer="1"/>
<smd name="2" x="0.762" y="0" dx="0.9" dy="0.8" layer="1"/>
<text x="-1.27" y="0.9525" size="0.8128" layer="25" ratio="18">&gt;NAME</text>
<text x="-1.27" y="-1.4923" size="0.4064" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="0.4318" y1="-0.4" x2="0.8382" y2="0.4" layer="51"/>
<rectangle x1="-0.8382" y1="-0.4" x2="-0.4318" y2="0.4" layer="51"/>
<rectangle x1="-0.1999" y1="-0.4001" x2="0.1999" y2="0.4001" layer="35"/>
</package>
<package name="_0603MP">
<description>&lt;b&gt;0603 MicroPitch&lt;/b&gt;</description>
<wire x1="-0.432" y1="-0.306" x2="0.432" y2="-0.306" width="0.1016" layer="51"/>
<wire x1="0.432" y1="0.306" x2="-0.432" y2="0.306" width="0.1016" layer="51"/>
<wire x1="0" y1="0.254" x2="0" y2="-0.254" width="0.2032" layer="21"/>
<smd name="1" x="-0.762" y="0" dx="0.8" dy="0.8" layer="1"/>
<smd name="2" x="0.762" y="0" dx="0.8" dy="0.8" layer="1"/>
<text x="-0.9525" y="0.635" size="0.8128" layer="25" ratio="18">&gt;NAME</text>
<text x="-0.9525" y="-0.9525" size="0.4064" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="0.4318" y1="-0.4" x2="0.8" y2="0.4" layer="51"/>
<rectangle x1="-0.8" y1="-0.4" x2="-0.4318" y2="0.4" layer="51"/>
<rectangle x1="-0.1999" y1="-0.25" x2="0.1999" y2="0.25" layer="35"/>
</package>
<package name="_0805">
<description>&lt;b&gt;0805&lt;/b&gt;</description>
<wire x1="-0.41" y1="0.585" x2="0.41" y2="0.585" width="0.1016" layer="51"/>
<wire x1="-0.41" y1="-0.585" x2="0.41" y2="-0.585" width="0.1016" layer="51"/>
<wire x1="-1.905" y1="0.889" x2="1.905" y2="0.889" width="0.2032" layer="21"/>
<wire x1="1.905" y1="0.889" x2="1.905" y2="-0.889" width="0.2032" layer="21"/>
<wire x1="1.905" y1="-0.889" x2="-1.905" y2="-0.889" width="0.2032" layer="21"/>
<wire x1="-1.905" y1="-0.889" x2="-1.905" y2="0.889" width="0.2032" layer="21"/>
<smd name="1" x="-1.016" y="0" dx="1.2" dy="1.3" layer="1"/>
<smd name="2" x="1.016" y="0" dx="1.2" dy="1.3" layer="1"/>
<text x="-1.5875" y="1.27" size="0.8128" layer="25" ratio="18">&gt;NAME</text>
<text x="-1.5874" y="-1.651" size="0.4064" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="0.4064" y1="-0.65" x2="1.0564" y2="0.65" layer="51"/>
<rectangle x1="-1.0668" y1="-0.65" x2="-0.4168" y2="0.65" layer="51"/>
<rectangle x1="-0.1999" y1="-0.5001" x2="0.1999" y2="0.5001" layer="35"/>
</package>
<package name="_0805MP">
<description>&lt;b&gt;0805 MicroPitch&lt;/b&gt;</description>
<wire x1="-0.51" y1="0.535" x2="0.51" y2="0.535" width="0.1016" layer="51"/>
<wire x1="-0.51" y1="-0.535" x2="0.51" y2="-0.535" width="0.1016" layer="51"/>
<wire x1="0" y1="0.508" x2="0" y2="-0.508" width="0.2032" layer="21"/>
<smd name="1" x="-1.016" y="0" dx="1.2" dy="1.3" layer="1"/>
<smd name="2" x="1.016" y="0" dx="1.2" dy="1.3" layer="1"/>
<text x="-1.5875" y="0.9525" size="0.8128" layer="25" ratio="18">&gt;NAME</text>
<text x="-1.5875" y="-1.27" size="0.4064" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="0.4064" y1="-0.65" x2="1" y2="0.65" layer="51"/>
<rectangle x1="-1" y1="-0.65" x2="-0.4168" y2="0.65" layer="51"/>
<rectangle x1="-0.1999" y1="-0.5001" x2="0.1999" y2="0.5001" layer="35"/>
</package>
<package name="2012">
<wire x1="-1.662" y1="1.245" x2="1.662" y2="1.245" width="0.2032" layer="51"/>
<wire x1="-1.637" y1="-1.245" x2="1.687" y2="-1.245" width="0.2032" layer="51"/>
<wire x1="-3.473" y1="1.483" x2="3.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="3.473" y1="1.483" x2="3.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="3.473" y1="-1.483" x2="-3.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="-3.473" y1="-1.483" x2="-3.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="-3.302" y1="1.524" x2="3.302" y2="1.524" width="0.2032" layer="21"/>
<wire x1="3.302" y1="1.524" x2="3.302" y2="-1.524" width="0.2032" layer="21"/>
<wire x1="3.302" y1="-1.524" x2="-3.302" y2="-1.524" width="0.2032" layer="21"/>
<wire x1="-3.302" y1="-1.524" x2="-3.302" y2="1.524" width="0.2032" layer="21"/>
<smd name="1" x="-2.2" y="0" dx="1.8" dy="2.7" layer="1"/>
<smd name="2" x="2.2" y="0" dx="1.8" dy="2.7" layer="1"/>
<text x="-2.54" y="1.8415" size="0.8128" layer="25" ratio="18">&gt;NAME</text>
<text x="-2.667" y="-2.159" size="0.4064" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-2.4892" y1="-1.3208" x2="-1.6393" y2="1.3292" layer="51"/>
<rectangle x1="1.651" y1="-1.3208" x2="2.5009" y2="1.3292" layer="51"/>
</package>
<package name="2512">
<description>&lt;b&gt;RESISTOR 2512 (Metric 6432)&lt;/b&gt;</description>
<wire x1="-2.362" y1="1.473" x2="2.387" y2="1.473" width="0.2032" layer="51"/>
<wire x1="-2.362" y1="-1.473" x2="2.387" y2="-1.473" width="0.2032" layer="51"/>
<wire x1="-3.973" y1="1.983" x2="3.973" y2="1.983" width="0.0508" layer="39"/>
<wire x1="3.973" y1="1.983" x2="3.973" y2="-1.983" width="0.0508" layer="39"/>
<wire x1="3.973" y1="-1.983" x2="-3.973" y2="-1.983" width="0.0508" layer="39"/>
<wire x1="-3.973" y1="-1.983" x2="-3.973" y2="1.983" width="0.0508" layer="39"/>
<smd name="1" x="-2.8" y="0" dx="1.8" dy="3.2" layer="1"/>
<smd name="2" x="2.8" y="0" dx="1.8" dy="3.2" layer="1"/>
<text x="-3.683" y="1.905" size="0.8128" layer="25" ratio="18">&gt;NAME</text>
<text x="-3.556" y="-2.286" size="0.4064" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-3.2004" y1="-1.5494" x2="-2.3505" y2="1.5507" layer="51"/>
<rectangle x1="2.3622" y1="-1.5494" x2="3.2121" y2="1.5507" layer="51"/>
<rectangle x1="-0.5001" y1="-1" x2="0.5001" y2="1" layer="35"/>
</package>
<package name="SOT23-R">
<description>&lt;b&gt;SOT23&lt;/b&gt; - Reflow soldering</description>
<wire x1="1.5724" y1="0.6604" x2="1.5724" y2="-0.6604" width="0.1524" layer="51"/>
<wire x1="1.5724" y1="-0.6604" x2="-1.5724" y2="-0.6604" width="0.1524" layer="51"/>
<wire x1="-1.5724" y1="-0.6604" x2="-1.5724" y2="0.6604" width="0.1524" layer="51"/>
<wire x1="-1.5724" y1="0.6604" x2="1.5724" y2="0.6604" width="0.2032" layer="51"/>
<wire x1="-1.5724" y1="-0.6524" x2="-1.5724" y2="0.6604" width="0.2032" layer="21"/>
<wire x1="-1.5724" y1="0.6604" x2="-0.5636" y2="0.6604" width="0.2032" layer="21"/>
<wire x1="1.5724" y1="0.6604" x2="1.5724" y2="-0.6524" width="0.2032" layer="21"/>
<wire x1="0.5636" y1="0.6604" x2="1.5724" y2="0.6604" width="0.2032" layer="21"/>
<wire x1="0.3724" y1="-0.6604" x2="-0.3864" y2="-0.6604" width="0.2032" layer="21"/>
<smd name="3" x="0" y="1" dx="0.635" dy="1.016" layer="1"/>
<smd name="2" x="0.95" y="-1" dx="0.635" dy="1.016" layer="1"/>
<smd name="1" x="-0.95" y="-1" dx="0.635" dy="1.016" layer="1"/>
<text x="1.778" y="-0.127" size="0.8128" layer="25" ratio="18">&gt;NAME</text>
<text x="1.778" y="-0.635" size="0.4064" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-0.2286" y1="0.7112" x2="0.2286" y2="1.2954" layer="51"/>
<rectangle x1="0.7112" y1="-1.2954" x2="1.1684" y2="-0.7112" layer="51"/>
<rectangle x1="-1.1684" y1="-1.2954" x2="-0.7112" y2="-0.7112" layer="51"/>
</package>
<package name="SOT23-WIDE">
<wire x1="1.5724" y1="0.6604" x2="1.5724" y2="-0.6604" width="0.2032" layer="51"/>
<wire x1="1.5724" y1="-0.6604" x2="-1.5724" y2="-0.6604" width="0.1524" layer="51"/>
<wire x1="-1.5724" y1="-0.6604" x2="-1.5724" y2="0.6604" width="0.2032" layer="51"/>
<wire x1="-1.5724" y1="0.6604" x2="1.5724" y2="0.6604" width="0.2032" layer="51"/>
<wire x1="-1.6724" y1="-0.6524" x2="-1.6724" y2="0.6604" width="0.2032" layer="21"/>
<wire x1="-1.6724" y1="0.6604" x2="-0.7136" y2="0.6604" width="0.2032" layer="21"/>
<wire x1="1.6724" y1="0.6604" x2="1.6724" y2="-0.6524" width="0.2032" layer="21"/>
<wire x1="0.7136" y1="0.6604" x2="1.6724" y2="0.6604" width="0.2032" layer="21"/>
<wire x1="0.2224" y1="-0.6604" x2="-0.2364" y2="-0.6604" width="0.2032" layer="21"/>
<smd name="3" x="0" y="1" dx="1" dy="1.27" layer="1"/>
<smd name="2" x="0.95" y="-1" dx="1" dy="1.27" layer="1"/>
<smd name="1" x="-0.95" y="-1" dx="1" dy="1.27" layer="1"/>
<text x="1.905" y="0" size="0.8128" layer="25" ratio="18">&gt;NAME</text>
<text x="1.905" y="-0.635" size="0.4064" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-0.2286" y1="0.7112" x2="0.2286" y2="1.2954" layer="51"/>
<rectangle x1="0.7112" y1="-1.2954" x2="1.1684" y2="-0.7112" layer="51"/>
<rectangle x1="-1.1684" y1="-1.2954" x2="-0.7112" y2="-0.7112" layer="51"/>
</package>
<package name="SOT23-W">
<description>&lt;b&gt;SOT23&lt;/b&gt; - Wave soldering</description>
<wire x1="1.5724" y1="0.6604" x2="1.5724" y2="-0.6604" width="0.2032" layer="51"/>
<wire x1="1.5724" y1="-0.6604" x2="-1.5724" y2="-0.6604" width="0.1524" layer="51"/>
<wire x1="-1.5724" y1="-0.6604" x2="-1.5724" y2="0.6604" width="0.2032" layer="51"/>
<wire x1="-1.5724" y1="0.6604" x2="1.5724" y2="0.6604" width="0.2032" layer="51"/>
<wire x1="-1.6224" y1="-0.3984" x2="-1.6224" y2="0.6604" width="0.2032" layer="21"/>
<wire x1="1.6224" y1="0.6604" x2="1.6224" y2="-0.3984" width="0.2032" layer="21"/>
<wire x1="0.2454" y1="-0.6604" x2="-0.2594" y2="-0.6604" width="0.2032" layer="21"/>
<smd name="3" x="0" y="1.3" dx="2.8" dy="1.4" layer="1"/>
<smd name="2" x="1.1" y="-1.3" dx="1.2" dy="1.4" layer="1"/>
<smd name="1" x="-1.1" y="-1.3" dx="1.2" dy="1.4" layer="1"/>
<text x="2.032" y="-0.127" size="0.8128" layer="25" ratio="18">&gt;NAME</text>
<text x="2.032" y="-0.635" size="0.4064" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-0.2286" y1="0.7112" x2="0.2286" y2="1.2954" layer="51"/>
<rectangle x1="0.7112" y1="-1.2954" x2="1.1684" y2="-0.7112" layer="51"/>
<rectangle x1="-1.1684" y1="-1.2954" x2="-0.7112" y2="-0.7112" layer="51"/>
</package>
<package name="CHIPLED_1206">
<description>&lt;b&gt;CHIPLED 1206&lt;/b&gt;</description>
<wire x1="-0.4" y1="1.6" x2="0.4" y2="1.6" width="0.1016" layer="51" curve="172.619069"/>
<wire x1="-0.8" y1="-0.95" x2="-0.8" y2="0.95" width="0.1016" layer="51"/>
<wire x1="0.8" y1="0.95" x2="0.8" y2="-0.95" width="0.1016" layer="51"/>
<wire x1="-0.6" y1="0.446" x2="0" y2="0.446" width="0.2032" layer="21"/>
<wire x1="0" y1="0.446" x2="0.6" y2="0.446" width="0.2032" layer="21"/>
<wire x1="0" y1="0.446" x2="-0.6" y2="-0.154" width="0.2032" layer="21"/>
<wire x1="-0.6" y1="-0.154" x2="0.6" y2="-0.154" width="0.2032" layer="21"/>
<wire x1="0.6" y1="-0.154" x2="0" y2="0.446" width="0.2032" layer="21"/>
<wire x1="1" y1="2.4985" x2="-1" y2="2.4985" width="0.2032" layer="21"/>
<wire x1="-1" y1="2.4985" x2="-1" y2="-2.4985" width="0.2032" layer="21"/>
<wire x1="-1" y1="-2.4985" x2="1" y2="-2.4985" width="0.2032" layer="21"/>
<wire x1="1" y1="-2.4985" x2="1" y2="2.4985" width="0.2032" layer="21"/>
<circle x="-0.55" y="1.425" radius="0.1" width="0.0762" layer="51"/>
<smd name="C" x="0" y="1.496" dx="1.5" dy="1.5" layer="1"/>
<smd name="A" x="0" y="-1.496" dx="1.5" dy="1.5" layer="1"/>
<text x="-1.27" y="-2.286" size="0.8128" layer="25" ratio="18" rot="R90">&gt;NAME</text>
<text x="1.651" y="-2.286" size="0.4064" layer="27" ratio="10" rot="R90">&gt;VALUE</text>
<text x="-0.1" y="-2.23" size="0.4064" layer="51">A</text>
<text x="-0.1" y="1.86" size="0.4064" layer="51">C</text>
<rectangle x1="-0.85" y1="1.525" x2="-0.35" y2="1.65" layer="51"/>
<rectangle x1="-0.85" y1="1.225" x2="-0.625" y2="1.55" layer="51"/>
<rectangle x1="-0.45" y1="1.225" x2="-0.325" y2="1.45" layer="51"/>
<rectangle x1="-0.65" y1="1.225" x2="-0.225" y2="1.35" layer="51"/>
<rectangle x1="0.35" y1="1.3" x2="0.85" y2="1.65" layer="51"/>
<rectangle x1="0.25" y1="1.225" x2="0.85" y2="1.35" layer="51"/>
<rectangle x1="-0.85" y1="0.95" x2="0.85" y2="1.25" layer="51"/>
<rectangle x1="-0.85" y1="-1.65" x2="0.85" y2="-0.95" layer="51"/>
</package>
<package name="CHIPLED_0805">
<description>&lt;b&gt;CHIPLED 0805&lt;/b&gt;</description>
<wire x1="-0.35" y1="0.925" x2="0.35" y2="0.925" width="0.1016" layer="51" curve="162.394521"/>
<wire x1="-0.35" y1="-0.925" x2="0.35" y2="-0.925" width="0.1016" layer="51" curve="-162.394521"/>
<wire x1="0.575" y1="0.525" x2="0.575" y2="-0.525" width="0.1016" layer="51"/>
<wire x1="-0.575" y1="-0.5" x2="-0.575" y2="0.925" width="0.1016" layer="51"/>
<wire x1="-0.4" y1="0.2" x2="0" y2="0.2" width="0.2032" layer="21"/>
<wire x1="0" y1="0.2" x2="0.4" y2="0.2" width="0.2032" layer="21"/>
<wire x1="0" y1="0.2" x2="-0.4" y2="-0.2" width="0.2032" layer="21"/>
<wire x1="-0.4" y1="-0.2" x2="0.4" y2="-0.2" width="0.2032" layer="21"/>
<wire x1="0.4" y1="-0.2" x2="0" y2="0.2" width="0.2032" layer="21"/>
<wire x1="0.85" y1="-1.9" x2="-0.85" y2="-1.9" width="0.2032" layer="21"/>
<wire x1="-0.85" y1="-1.9" x2="-0.85" y2="1.9" width="0.2032" layer="21"/>
<wire x1="-0.85" y1="1.9" x2="0.85" y2="1.9" width="0.2032" layer="21"/>
<wire x1="0.85" y1="1.9" x2="0.85" y2="-1.9" width="0.2032" layer="21"/>
<circle x="-0.45" y="0.85" radius="0.103" width="0.0762" layer="51"/>
<smd name="C" x="0" y="1.05" dx="1.2" dy="1.2" layer="1"/>
<smd name="A" x="0" y="-1.05" dx="1.2" dy="1.2" layer="1"/>
<text x="-1.016" y="-1.778" size="0.8128" layer="25" ratio="18" rot="R90">&gt;NAME</text>
<text x="1.397" y="-1.778" size="0.4064" layer="27" ratio="10" rot="R90">&gt;VALUE</text>
<text x="-0.1" y="-1.4" size="0.254" layer="51">A</text>
<text x="-0.1" y="1.2" size="0.254" layer="51">C</text>
<rectangle x1="0.3" y1="0.5" x2="0.625" y2="1" layer="51"/>
<rectangle x1="-0.325" y1="0.5" x2="-0.175" y2="0.75" layer="51"/>
<rectangle x1="0.175" y1="0.5" x2="0.325" y2="0.75" layer="51"/>
<rectangle x1="-0.2" y1="0.5" x2="0.2" y2="0.675" layer="51"/>
<rectangle x1="0.3" y1="-1" x2="0.625" y2="-0.5" layer="51"/>
<rectangle x1="-0.625" y1="-1" x2="-0.3" y2="-0.5" layer="51"/>
<rectangle x1="0.175" y1="-0.75" x2="0.325" y2="-0.5" layer="51"/>
<rectangle x1="-0.325" y1="-0.75" x2="-0.175" y2="-0.5" layer="51"/>
<rectangle x1="-0.2" y1="-0.675" x2="0.2" y2="-0.5" layer="51"/>
<rectangle x1="-0.6" y1="0.5" x2="-0.3" y2="0.762" layer="51"/>
<rectangle x1="-0.625" y1="0.925" x2="-0.3" y2="1" layer="51"/>
</package>
<package name="CHIPLED_0603">
<description>&lt;b&gt;CHIPLED 0603&lt;/b&gt;</description>
<wire x1="-0.3" y1="0.8" x2="0.3" y2="0.8" width="0.1016" layer="51" curve="170.055574"/>
<wire x1="-0.275" y1="-0.825" x2="0.275" y2="-0.825" width="0.0508" layer="51" curve="-180"/>
<wire x1="-0.4" y1="0.375" x2="-0.4" y2="-0.35" width="0.1016" layer="51"/>
<wire x1="0.4" y1="0.35" x2="0.4" y2="-0.35" width="0.1016" layer="51"/>
<wire x1="-0.65" y1="-1.4" x2="-0.65" y2="1.4" width="0.2032" layer="21"/>
<wire x1="0.65" y1="1.4" x2="0.65" y2="-1.4" width="0.2032" layer="21"/>
<wire x1="-0.65" y1="1.4" x2="0.65" y2="1.4" width="0.2032" layer="21"/>
<wire x1="-0.65" y1="-1.4" x2="0.65" y2="-1.4" width="0.2032" layer="21"/>
<wire x1="-0.4" y1="0.2" x2="0" y2="0.2" width="0.2032" layer="21"/>
<wire x1="0" y1="0.2" x2="0.4" y2="0.2" width="0.2032" layer="21"/>
<wire x1="0" y1="0.2" x2="-0.4" y2="-0.2" width="0.2032" layer="21"/>
<wire x1="-0.4" y1="-0.2" x2="0.4" y2="-0.2" width="0.2032" layer="21"/>
<wire x1="0.4" y1="-0.2" x2="0" y2="0.2" width="0.2032" layer="21"/>
<circle x="-0.35" y="0.625" radius="0.075" width="0.0508" layer="51"/>
<smd name="C" x="0" y="0.75" dx="0.8" dy="0.8" layer="1"/>
<smd name="A" x="0" y="-0.75" dx="0.8" dy="0.8" layer="1"/>
<text x="-0.762" y="-1.27" size="0.8128" layer="25" ratio="18" rot="R90">&gt;NAME</text>
<text x="1.27" y="-1.27" size="0.4064" layer="27" ratio="10" rot="R90">&gt;VALUE</text>
<rectangle x1="-0.45" y1="0.7" x2="-0.25" y2="0.85" layer="51"/>
<rectangle x1="-0.275" y1="0.55" x2="-0.225" y2="0.6" layer="51"/>
<rectangle x1="-0.45" y1="0.35" x2="-0.4" y2="0.725" layer="51"/>
<rectangle x1="0.25" y1="0.55" x2="0.45" y2="0.85" layer="51"/>
<rectangle x1="-0.45" y1="0.35" x2="0.45" y2="0.575" layer="51"/>
<rectangle x1="-0.45" y1="-0.85" x2="-0.25" y2="-0.35" layer="51"/>
<rectangle x1="0.25" y1="-0.85" x2="0.45" y2="-0.35" layer="51"/>
<rectangle x1="-0.275" y1="-0.575" x2="0.275" y2="-0.35" layer="51"/>
<rectangle x1="-0.275" y1="-0.65" x2="-0.175" y2="-0.55" layer="51"/>
<rectangle x1="0.175" y1="-0.65" x2="0.275" y2="-0.55" layer="51"/>
</package>
<package name="CHIPLED_0603_NOOUTLINE">
<wire x1="-0.3" y1="0.8" x2="0.3" y2="0.8" width="0.1016" layer="51" curve="170.055574"/>
<wire x1="-0.275" y1="-0.825" x2="0.275" y2="-0.825" width="0.0508" layer="51" curve="-180"/>
<wire x1="-0.4" y1="0.375" x2="-0.4" y2="-0.35" width="0.1016" layer="51"/>
<wire x1="0.4" y1="0.35" x2="0.4" y2="-0.35" width="0.1016" layer="51"/>
<circle x="-0.35" y="0.625" radius="0.075" width="0.0508" layer="51"/>
<smd name="C" x="0" y="0.75" dx="0.8" dy="0.8" layer="1"/>
<smd name="A" x="0" y="-0.75" dx="0.8" dy="0.8" layer="1"/>
<text x="-0.762" y="-1.27" size="0.8128" layer="25" ratio="18" rot="R90">&gt;NAME</text>
<text x="1.27" y="-1.27" size="0.4064" layer="27" ratio="10" rot="R90">&gt;VALUE</text>
<rectangle x1="-0.45" y1="0.7" x2="-0.25" y2="0.85" layer="51"/>
<rectangle x1="-0.275" y1="0.55" x2="-0.225" y2="0.6" layer="51"/>
<rectangle x1="-0.45" y1="0.35" x2="-0.4" y2="0.725" layer="51"/>
<rectangle x1="0.25" y1="0.55" x2="0.45" y2="0.85" layer="51"/>
<rectangle x1="-0.45" y1="0.35" x2="0.45" y2="0.575" layer="51"/>
<rectangle x1="-0.45" y1="-0.85" x2="-0.25" y2="-0.35" layer="51"/>
<rectangle x1="0.25" y1="-0.85" x2="0.45" y2="-0.35" layer="51"/>
<rectangle x1="-0.275" y1="-0.575" x2="0.275" y2="-0.35" layer="51"/>
<rectangle x1="-0.275" y1="-0.65" x2="-0.175" y2="-0.55" layer="51"/>
<rectangle x1="0.175" y1="-0.65" x2="0.275" y2="-0.55" layer="51"/>
<rectangle x1="-0.381" y1="0.1397" x2="0.381" y2="0.2667" layer="21"/>
<polygon width="0.1524" layer="21">
<vertex x="0" y="0.1397"/>
<vertex x="-0.254" y="-0.1778"/>
<vertex x="0.254" y="-0.1778"/>
</polygon>
</package>
<package name="CHIPLED_0805_NOOUTLINE">
<wire x1="-0.35" y1="0.925" x2="0.35" y2="0.925" width="0.1016" layer="51" curve="162.394521"/>
<wire x1="-0.35" y1="-0.925" x2="0.35" y2="-0.925" width="0.1016" layer="51" curve="-162.394521"/>
<wire x1="0.575" y1="0.525" x2="0.575" y2="-0.525" width="0.1016" layer="51"/>
<wire x1="-0.575" y1="-0.5" x2="-0.575" y2="0.925" width="0.1016" layer="51"/>
<circle x="-0.45" y="0.85" radius="0.103" width="0.0762" layer="51"/>
<smd name="C" x="0" y="1.05" dx="1.2" dy="1.2" layer="1"/>
<smd name="A" x="0" y="-1.05" dx="1.2" dy="1.2" layer="1"/>
<text x="-1.016" y="-1.778" size="0.8128" layer="25" ratio="18" rot="R90">&gt;NAME</text>
<text x="1.397" y="-1.778" size="0.4064" layer="27" ratio="10" rot="R90">&gt;VALUE</text>
<text x="-0.1" y="-1.4" size="0.254" layer="51">A</text>
<text x="-0.1" y="1.2" size="0.254" layer="51">C</text>
<rectangle x1="0.3" y1="0.5" x2="0.625" y2="1" layer="51"/>
<rectangle x1="-0.325" y1="0.5" x2="-0.175" y2="0.75" layer="51"/>
<rectangle x1="0.175" y1="0.5" x2="0.325" y2="0.75" layer="51"/>
<rectangle x1="-0.2" y1="0.5" x2="0.2" y2="0.675" layer="51"/>
<rectangle x1="0.3" y1="-1" x2="0.625" y2="-0.5" layer="51"/>
<rectangle x1="-0.625" y1="-1" x2="-0.3" y2="-0.5" layer="51"/>
<rectangle x1="0.175" y1="-0.75" x2="0.325" y2="-0.5" layer="51"/>
<rectangle x1="-0.325" y1="-0.75" x2="-0.175" y2="-0.5" layer="51"/>
<rectangle x1="-0.2" y1="-0.675" x2="0.2" y2="-0.5" layer="51"/>
<rectangle x1="-0.6" y1="0.5" x2="-0.3" y2="0.762" layer="51"/>
<rectangle x1="-0.625" y1="0.925" x2="-0.3" y2="1" layer="51"/>
<rectangle x1="-0.4445" y1="0.1905" x2="0.4445" y2="0.381" layer="21"/>
<polygon width="0.1524" layer="21">
<vertex x="0" y="0.254"/>
<vertex x="-0.381" y="-0.254"/>
<vertex x="0.381" y="-0.254"/>
</polygon>
</package>
<package name="RESPACK_4X0603">
<wire x1="-1.6" y1="0.8" x2="1.6" y2="0.8" width="0.2032" layer="51"/>
<wire x1="1.6" y1="0.8" x2="1.6" y2="-0.8" width="0.2032" layer="51"/>
<wire x1="1.6" y1="-0.8" x2="-1.6" y2="-0.8" width="0.2032" layer="51"/>
<wire x1="-1.6" y1="-0.8" x2="-1.6" y2="0.8" width="0.2032" layer="51"/>
<wire x1="-1.9" y1="1.4" x2="1.9" y2="1.4" width="0.127" layer="39"/>
<wire x1="1.9" y1="1.4" x2="1.9" y2="-1.4" width="0.127" layer="39"/>
<wire x1="1.9" y1="-1.4" x2="-1.9" y2="-1.4" width="0.127" layer="39"/>
<wire x1="-1.9" y1="-1.4" x2="-1.9" y2="1.4" width="0.127" layer="39"/>
<wire x1="-1.9" y1="1.4" x2="1.9" y2="1.4" width="0.2032" layer="21"/>
<wire x1="1.9" y1="1.4" x2="1.9" y2="-1.4" width="0.2032" layer="21"/>
<wire x1="1.9" y1="-1.4" x2="-1.9" y2="-1.4" width="0.2032" layer="21"/>
<wire x1="-1.9" y1="-1.4" x2="-1.9" y2="1.4" width="0.2032" layer="21"/>
<smd name="8" x="-1.3" y="0.75" dx="0.65" dy="0.8" layer="1"/>
<smd name="1" x="-1.3" y="-0.75" dx="0.65" dy="0.8" layer="1"/>
<smd name="7" x="-0.4" y="0.75" dx="0.5" dy="0.8" layer="1"/>
<smd name="6" x="0.4" y="0.75" dx="0.5" dy="0.8" layer="1"/>
<smd name="5" x="1.3" y="0.75" dx="0.65" dy="0.8" layer="1"/>
<smd name="4" x="1.3" y="-0.75" dx="0.65" dy="0.8" layer="1"/>
<smd name="2" x="-0.4" y="-0.75" dx="0.5" dy="0.8" layer="1"/>
<smd name="3" x="0.4" y="-0.75" dx="0.5" dy="0.8" layer="1"/>
<text x="-1.6" y="1.6" size="0.8128" layer="25" ratio="18">&gt;NAME</text>
<text x="-1.6" y="-2.4" size="0.4064" layer="25" ratio="10">&gt;VALUE</text>
<rectangle x1="-1.55" y1="-0.5" x2="1.55" y2="0.5" layer="51"/>
</package>
</packages>
<symbols>
<symbol name="CAPACITOR">
<wire x1="0" y1="0.762" x2="0" y2="0" width="0.1524" layer="94"/>
<wire x1="0" y1="2.54" x2="0" y2="1.778" width="0.1524" layer="94"/>
<text x="2.54" y="2.54" size="1.27" layer="95" font="vector">&gt;NAME</text>
<text x="2.54" y="0" size="1.27" layer="96" font="vector">&gt;VALUE</text>
<rectangle x1="-1.27" y1="0.508" x2="1.27" y2="1.016" layer="94"/>
<rectangle x1="-1.27" y1="1.524" x2="1.27" y2="2.032" layer="94"/>
<pin name="P$1" x="0" y="5.08" visible="off" length="short" direction="pas" swaplevel="1" rot="R270"/>
<pin name="P$2" x="0" y="-2.54" visible="off" length="short" direction="pas" swaplevel="1" rot="R90"/>
</symbol>
<symbol name="RESISTOR">
<wire x1="-2.54" y1="1.27" x2="2.54" y2="1.27" width="0.254" layer="94"/>
<wire x1="2.54" y1="1.27" x2="2.54" y2="-1.27" width="0.254" layer="94"/>
<wire x1="2.54" y1="-1.27" x2="-2.54" y2="-1.27" width="0.254" layer="94"/>
<wire x1="-2.54" y1="-1.27" x2="-2.54" y2="1.27" width="0.254" layer="94"/>
<text x="-2.54" y="2.032" size="1.27" layer="95" font="vector">&gt;NAME</text>
<text x="-2.54" y="-3.175" size="1.27" layer="96" font="vector">&gt;VALUE</text>
<pin name="1" x="-5.08" y="0" visible="off" length="short" direction="pas" swaplevel="1"/>
<pin name="2" x="5.08" y="0" visible="off" length="short" direction="pas" swaplevel="1" rot="R180"/>
</symbol>
<symbol name="2.5V">
<wire x1="-1.27" y1="-1.27" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="1.27" y2="-1.27" width="0.254" layer="94"/>
<text x="-1.524" y="1.016" size="1.27" layer="96">&gt;VALUE</text>
<pin name="2.5V" x="0" y="-2.54" visible="off" length="short" direction="sup" rot="R90"/>
</symbol>
<symbol name="LED">
<wire x1="-2.54" y1="1.27" x2="-2.54" y2="-1.27" width="0.254" layer="94"/>
<wire x1="-2.54" y1="-1.27" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="-2.54" y2="1.27" width="0.254" layer="94"/>
<wire x1="0" y1="1.27" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="0" y2="-1.27" width="0.254" layer="94"/>
<wire x1="-0.635" y1="1.27" x2="0.635" y2="2.54" width="0.254" layer="94"/>
<wire x1="-1.905" y1="1.27" x2="-0.635" y2="2.54" width="0.254" layer="94"/>
<wire x1="-0.9525" y1="2.8575" x2="-0.3175" y2="2.2225" width="0.254" layer="94"/>
<wire x1="-0.3175" y1="2.2225" x2="0" y2="3.175" width="0.254" layer="94"/>
<wire x1="0" y1="3.175" x2="-0.9525" y2="2.8575" width="0.254" layer="94"/>
<wire x1="0.3175" y1="2.8575" x2="0.9525" y2="2.2225" width="0.254" layer="94"/>
<wire x1="1.27" y1="3.175" x2="0.3175" y2="2.8575" width="0.254" layer="94"/>
<wire x1="0.9525" y1="2.2225" x2="1.27" y2="3.175" width="0.254" layer="94"/>
<text x="-5.08" y="3.175" size="1.27" layer="95">&gt;NAME</text>
<text x="-5.08" y="-2.794" size="1.27" layer="96">&gt;VALUE</text>
<pin name="A" x="-5.08" y="0" visible="off" length="short" direction="pas"/>
<pin name="C" x="2.54" y="0" visible="off" length="short" direction="pas" rot="R180"/>
</symbol>
<symbol name="VCC">
<text x="-1.524" y="1.016" size="1.27" layer="96">&gt;VALUE</text>
<pin name="VCC" x="0" y="-2.54" visible="off" length="short" direction="sup" rot="R90"/>
<wire x1="-1.27" y1="-1.27" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="1.27" y2="-1.27" width="0.254" layer="94"/>
</symbol>
<symbol name="NPN">
<wire x1="0" y1="2.54" x2="-2.032" y2="1.524" width="0.1524" layer="94"/>
<wire x1="-0.762" y1="-1.524" x2="0" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="0" y1="-2.54" x2="-1.27" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="-1.27" y1="-2.54" x2="-0.762" y2="-1.524" width="0.1524" layer="94"/>
<wire x1="-1" y1="-2.04" x2="-2.232" y2="-1.424" width="0.1524" layer="94"/>
<wire x1="-1.016" y1="-2.413" x2="-0.254" y2="-2.413" width="0.254" layer="94"/>
<wire x1="-0.254" y1="-2.413" x2="-0.762" y2="-1.778" width="0.254" layer="94"/>
<wire x1="-0.762" y1="-1.778" x2="-1.016" y2="-2.286" width="0.254" layer="94"/>
<wire x1="-1.016" y1="-2.286" x2="-0.635" y2="-2.286" width="0.254" layer="94"/>
<wire x1="-0.635" y1="-2.286" x2="-0.762" y2="-2.032" width="0.254" layer="94"/>
<text x="1.27" y="0.635" size="1.27" layer="95">&gt;NAME</text>
<text x="1.27" y="-1.27" size="1.27" layer="96">&gt;VALUE</text>
<rectangle x1="-2.794" y1="-2.54" x2="-2.032" y2="2.54" layer="94"/>
<pin name="B" x="-5.08" y="0" visible="off" length="short" direction="pas" swaplevel="1"/>
<pin name="E" x="0" y="-5.08" visible="off" length="short" direction="pas" swaplevel="3" rot="R90"/>
<pin name="C" x="0" y="5.08" visible="off" length="short" direction="pas" swaplevel="2" rot="R270"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="CAP_CERAMIC" prefix="C" uservalue="yes">
<description>&lt;p&gt;&lt;b&gt;Ceramic Capacitors&lt;/b&gt;&lt;/p&gt;
&lt;b&gt;0402&lt;/b&gt; - 0402 Surface Mount Capacitors
&lt;ul&gt;
&lt;li&gt;16pF 50V 5% [Digikey: 445-4899-2-ND]&lt;/li&gt;
&lt;li&gt;18pF 50V 5% [Digikey: 490-1281-2-ND]&lt;/li&gt;
&lt;li&gt;22pF 50V 5% [Digikey: 490-1283-2-ND]&lt;/li&gt;
&lt;li&gt;68pF 50V 5% [Digikey: 490-1289-2-ND]&lt;/li&gt;
&lt;li&gt;0.1uF 10V 10% [Digikey: 490-1318-2-ND]&lt;/li&gt;
&lt;li&gt;1.0uF 6.3V 10% [Digikey: 490-1320-2-ND]&lt;/li&gt;
&lt;/ul&gt;
&lt;b&gt;0603&lt;/b&gt; - 0603 Surface Mount Capacitors
&lt;ul&gt;
&lt;li&gt;16 pF 50V 5% [Digikey: 445-5051-2-ND]&lt;/li&gt;
&lt;li&gt;22 pF 50V [Digikey: PCC220ACVTR-ND]&lt;/li&gt;
&lt;li&gt;33 pF 50V 5% [Digikey: 490-1415-1-ND]&lt;/li&gt;
&lt;li&gt;56pF 50V 5% [Digikey: 490-1421-1-ND]&lt;/li&gt;
&lt;li&gt;220pF 50V 5% [Digikey: 445-1285-1-ND]&lt;/li&gt;
&lt;li&gt;680 pF 50V &lt;/li&gt;
&lt;li&gt;2200 pF 50V 5% C0G [Digikey: 445-1297-1-ND]&lt;/li&gt;
&lt;li&gt;5600 pF 100V 5% X7R [Digikey: 478-3711-1-ND]&lt;/li&gt;
&lt;li&gt;0.1 µF 25V 10% [Digikey: PCC2277TR-ND]&lt;/li&gt;
&lt;li&gt;0.22 µF 16V 10% X7R [Digikey: 445-1318-1-ND]&lt;/li&gt;
&lt;li&gt;1.0 µF 25V 10% [Digikey: 445-5146-2-ND]&lt;/li&gt;
&lt;/ul&gt;
&lt;b&gt;0603&lt;/b&gt; - RF Specific
&lt;ul&gt;
&lt;li&gt;3pF 250V +/-0.1pF RF [Digikey: 712-1347-1-ND]&lt;/li&gt;
&lt;li&gt;18 pF 250V 5%  [Digikey: 478-3505-1-ND or 712-1322-1-ND]&lt;/li&gt;
&lt;li&gt;56 pF 250V 5% C0G RF [Digikey: 490-4867-1-ND]&lt;/li&gt;
&lt;li&gt;68 pF 250V RF [Digikey: 490-4868-1-ND]&lt;/li&gt;
&lt;/ul&gt;
&lt;b&gt;0805&lt;/b&gt; - 0805 Surface Mount Capacitors
&lt;ul&gt;
&lt;li&gt;220 pF 250V 2% &lt;strong&gt;RF&lt;/strong&gt; Ceramic Capacitor [Digikey: 712-1398-1-ND]&lt;/li&gt;
&lt;li&gt;1000 pF 50V 2% NP0 Ceramic Capacitor [Digikey: 478-3760-1-ND]&lt;/li&gt;
&lt;li&gt;0.1 µF 25V 10% Ceramic Capacitor [Digikey: PCC1828TR-ND]&lt;/li&gt;
&lt;li&gt;1.0 µF 16V 10% Ceramic Capacitor[Digikey: 490-1691-2-ND]&lt;/li&gt;
&lt;li&gt;10.0 µF 10V 10% Ceramic Capacitor[Digikey: 709-1228-1-ND]&lt;/li&gt;
&lt;li&gt;10.0 uF 16V 10% Ceramic Capacitor [Digikey: 478-5165-2-ND]&lt;/li&gt;
&lt;li&gt;47 uF 6.3V 20% Ceramic Capacitor [Digikey: 587-1779-1-ND or 399-5506-1-ND]&lt;/li&gt;
&lt;/ul&gt;
&lt;/ul&gt;&lt;b&gt;1206&lt;/b&gt; - 1206 Surface Mount Capacitors
&lt;ul&gt;
&lt;li&gt;47uF 10V 20% Ceramic Capacitor [Digikey: 490-5528-1-ND or 399-5508-1-ND or 445-6010-1-ND]&lt;/li&gt;
&lt;li&gt;100uF 6.3V -20%, +80% Y5V Ceramic Capacitor (Digikey: 490-4512-1-ND, Mouser: 81-GRM31CF50J107ZE1L)&lt;/li&gt;
&lt;/ul&gt;</description>
<gates>
<gate name="G$1" symbol="CAPACITOR" x="0" y="-2.54"/>
</gates>
<devices>
<device name="0805" package="0805">
<connects>
<connect gate="G$1" pin="P$1" pad="1"/>
<connect gate="G$1" pin="P$2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="1206" package="1206">
<connects>
<connect gate="G$1" pin="P$1" pad="1"/>
<connect gate="G$1" pin="P$2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0603" package="0603">
<connects>
<connect gate="G$1" pin="P$1" pad="1"/>
<connect gate="G$1" pin="P$2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0402" package="0402">
<connects>
<connect gate="G$1" pin="P$1" pad="1"/>
<connect gate="G$1" pin="P$2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0603MINI" package="0603-MINI">
<connects>
<connect gate="G$1" pin="P$1" pad="1"/>
<connect gate="G$1" pin="P$2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0805-NOTHERMALS" package="0805_NOTHERMALS">
<connects>
<connect gate="G$1" pin="P$1" pad="1"/>
<connect gate="G$1" pin="P$2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="_0402" package="_0402">
<connects>
<connect gate="G$1" pin="P$1" pad="1"/>
<connect gate="G$1" pin="P$2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="_0402MP" package="_0402MP">
<connects>
<connect gate="G$1" pin="P$1" pad="1"/>
<connect gate="G$1" pin="P$2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="_0603" package="_0603">
<connects>
<connect gate="G$1" pin="P$1" pad="1"/>
<connect gate="G$1" pin="P$2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="_0603MP" package="_0603MP">
<connects>
<connect gate="G$1" pin="P$1" pad="1"/>
<connect gate="G$1" pin="P$2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="_0805" package="_0805">
<connects>
<connect gate="G$1" pin="P$1" pad="1"/>
<connect gate="G$1" pin="P$2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="_0805MP" package="_0805MP">
<connects>
<connect gate="G$1" pin="P$1" pad="1"/>
<connect gate="G$1" pin="P$2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="RESISTOR" prefix="R" uservalue="yes">
<description>&lt;p&gt;&lt;b&gt;Resistors&lt;/b&gt;&lt;/p&gt;
&lt;b&gt;0402&lt;/b&gt; - 0402 Surface Mount Package
&lt;ul&gt;
&lt;li&gt;22 Ohm 1% 1/16W [Digikey: 311-22.0LRTR-ND]&lt;/li&gt;
&lt;li&gt;33 Ohm 5% 1/16W&lt;/li&gt;
&lt;li&gt;1.0K 5% 1/16W&lt;/li&gt;
&lt;li&gt;1.5K 5% 1/16W&lt;/li&gt;
&lt;li&gt;2.0K 1% 1/16W&lt;/li&gt;
&lt;li&gt;10.0K 1% 1/16W [Digikey: 311-10.0KLRTR-ND]&lt;/li&gt;
&lt;li&gt;10.0K 5% 1/16W [Digikey: RMCF0402JT10K0TR-ND]&lt;/li&gt;
&lt;li&gt;12.1K 1% 1/16W [Digikey: 311-22.0LRTR-ND]&lt;/li&gt;
&lt;li&gt;100.0K 5% 1/16W&lt;/li&gt;
&lt;/ul&gt;
&lt;b&gt;0603&lt;/b&gt; - 0603 Surface Mount Package&lt;br&gt;
&lt;ul&gt;
&lt;li&gt;0 Ohm 1/10 Watt 1% Resistor&lt;/li&gt;
&lt;li&gt;15 Ohm 1/10 Watt 1% Resistor&lt;/li&gt;
&lt;li&gt;33 Ohm 1/10 Watt 1% Resistor&lt;/li&gt;
&lt;li&gt;49.9 Ohm 1/10 Watt 1% Resistor&lt;/li&gt;
&lt;li&gt;100 Ohm 1/10 Watt 1% Resistor&lt;/li&gt;
&lt;li&gt;150 Ohm 1/10 Watt 1% Resistor&lt;/li&gt;
&lt;li&gt;240 Ohm 1/10 Watt 1% Resistor&lt;/li&gt;
&lt;li&gt;390 Ohm 1/10 Watt 1% Resistor&lt;/li&gt;
&lt;li&gt;560 Ohm 1/10 Watt 1% Resistor&lt;/li&gt;
&lt;li&gt;680 Ohm 1/10 Watt 1% Resistor&lt;/li&gt;
&lt;li&gt;750 Ohm 1/10 Watt 1% Resistor&lt;/li&gt;
&lt;li&gt;1.0K Ohm 1/10 Watt 1% Resistor&lt;/li&gt;
&lt;li&gt;1.5K Ohm 1/10 Watt 1% Resistor&lt;/li&gt;
&lt;li&gt;2.0K Ohm 1/10 Watt 1% Resistor&lt;/li&gt;
&lt;li&gt;2.2K Ohm 1/10 Watt 1% Resistor&lt;/li&gt;
&lt;li&gt;3.3K Ohm 1/10 Watt 1% Resistor&lt;/li&gt;
&lt;li&gt;4.7K Ohm 1/10 Watt 1% Resistor&lt;/li&gt;
&lt;li&gt;10.0K Ohm 1/10 Watt 1% Resistor&lt;/li&gt;
&lt;li&gt;12.0K Ohm 1/10 Watt 1% Resistor&lt;/li&gt;
&lt;li&gt;12.1K Ohm 1/10 Watt 1% Resistor&lt;/li&gt;
&lt;li&gt;20.0K Ohm 1/10 Watt 1% Resistor&lt;/li&gt;
&lt;li&gt;33.0K Ohm 1/10 Watt 1% Resistor&lt;/li&gt;
&lt;li&gt;100.0K Ohm 1/10 Watt 1% Resistor&lt;/li&gt;
&lt;/ul&gt;
&lt;b&gt;0805&lt;/b&gt; - 0805 Surface Mount Package
&lt;ul&gt;
&lt;li&gt;0 Ohm 1/8 Watt 1% Resistor&lt;/li&gt;
&lt;li&gt;33 Ohm 1/8 Watt 1% Resistor&lt;/li&gt;
&lt;li&gt;100 Ohm 1/8 Watt 1% Resistor&lt;/li&gt;
&lt;li&gt;150 Ohm 1/8 Watt 1% Resistor&lt;/li&gt;
&lt;li&gt;200 Ohm 1/8 Watt 1% Resistor&lt;/li&gt;
&lt;li&gt;240 Ohm 1/8 Watt 1% Resistor&lt;/li&gt;
&lt;li&gt;330 Ohm 1/8 Watt 1% Resistor&lt;/li&gt;
&lt;li&gt;390 Ohm 1/8 Watt 1% Resistor&lt;/li&gt;
&lt;li&gt;470 Ohm 1/8 Watt 1% Resistor&lt;/li&gt;
&lt;li&gt;1.0K Ohm 1/8 Watt 1% Resistor&lt;/li&gt;
&lt;li&gt;1.5K Ohm 1/8 Watt 1% Resistor&lt;/li&gt;
&lt;li&gt;2.0K Ohm 1/8 Watt 1% Resistor&lt;/li&gt;
&lt;li&gt;4.7K Ohm 1/8 Watt 1% Resistor&lt;/li&gt;
&lt;li&gt;5.1K Ohm 1/8 Watt 1% Resistor&lt;/li&gt;
&lt;li&gt;5.6K Ohm 1/8 Watt 1% Resistor&lt;/li&gt;
&lt;li&gt;10.0K Ohm 1/8 Watt 1% Resistor&lt;/li&gt;
&lt;li&gt;22.0K Ohm 1/8 Watt 1% Resistor&lt;/li&gt;
&lt;li&gt;33.0K Ohm 1/8 Watt 1% Resistor&lt;/li&gt;
&lt;li&gt;100K Ohm 1/8 Watt 1% Resistor&lt;/li&gt;
&lt;/ul&gt;
&lt;b&gt;1206&lt;/b&gt; - 1206 Surface Mount Package&lt;br/&gt;
&lt;br/&gt;
&lt;b&gt;2012&lt;/b&gt; - 2010 Surface Mount Package&lt;br/&gt;
&lt;ul&gt;&lt;li&gt;0.11 Ohm 1/2 Watt 1% Resistor - Digikey: RHM.11UCT-ND&lt;/li&gt;&lt;/ul&gt;</description>
<gates>
<gate name="G$1" symbol="RESISTOR" x="0" y="0"/>
</gates>
<devices>
<device name="0805" package="0805">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="1206" package="1206">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0603" package="0603">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0402" package="0402">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0603MINI" package="0603-MINI">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="2012" package="2012">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0805_NOTHERMALS" package="0805_NOTHERMALS">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="2512" package="2512">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="_0402" package="_0402">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="_0402MP" package="_0402MP">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="_0603" package="_0603">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="_0603MP" package="_0603MP">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="_0805" package="_0805">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="_0805MP" package="_0805MP">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="2.5V">
<gates>
<gate name="G$1" symbol="2.5V" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="LED" prefix="LED" uservalue="yes">
<description>&lt;p&gt;&lt;b&gt;LED&lt;/b&gt;&lt;/p&gt;
&lt;b&gt;0603&lt;/b&gt; - 0603 Surface Mount Package
&lt;hr&gt;
&lt;p&gt;&lt;b&gt;&lt;u&gt;2mA:&lt;/u&gt;&lt;/b&gt;&lt;/p&gt;
&lt;ul&gt;
&lt;li&gt;Green LED - Low Power (3.9mcd, 2ma, 1.7Vf) - Digikey: 475-2709-2-ND&lt;/li&gt;
&lt;li&gt;Orange LED - Low Power (9.8mcd, 2ma, 1.8Vf) - Digikey: 475-1194-2-ND&lt;/li&gt;
&lt;li&gt;Red LED - Low Power (5mcd, 2ma, 1.8Vf) - Digikey: 475-1195-2-ND&lt;/li&gt;
&lt;li&gt;Yellow LED - Low Power (7mcd, 2ma, 1.8Vf) - Digikey: 475-1196-2-ND&lt;/li&gt;
&lt;/ul&gt;
&lt;p&gt;&lt;b&gt;&lt;u&gt;5mA:&lt;/u&gt;&lt;/b&gt;&lt;/p&gt;
&lt;ul&gt;
&lt;li&gt;Blue LED - Low Power (17mcd, 5ma, 2.9Vf) - Digikey: LNJ937W8CRACT-ND&lt;/li&gt;
&lt;/ul&gt;
&lt;b&gt;0805&lt;/b&gt; - 0805 Surface Mount Package
&lt;hr&gt;
&lt;p&gt;&lt;b&gt;&lt;u&gt;2mA:&lt;/u&gt;&lt;/b&gt;&lt;/p&gt;
&lt;ul&gt;
&lt;li&gt;Red LED (8.8mcd, 2mA, 1.8Vf, Clear) - Low Power [Digikey: 475-2510-1-ND]&lt;/li&gt;
&lt;li&gt;Green LED (5mcd, 2mA, 1.8Vf, Clear) - Low Power [Digikey: 475-2730-1-ND]&lt;/li&gt;
&lt;li&gt;Yellow LED (11.3mcd, 2mA, 1.8Vf, Clear) - Low Power [Digikey: 475-2555-1-ND]&lt;/li&gt;
&lt;/ul&gt;
&lt;p&gt;&lt;b&gt;&lt;u&gt;20mA:&lt;/u&gt;&lt;/b&gt;&lt;/p&gt;
&lt;ul&gt;
&lt;li&gt;Red LED (104mcd, 20mA, Diffused) - LS R976 [Digikey: 475-1278-6-ND]&lt;/li&gt;
&lt;li&gt;Red LED (12mcd, 20mA, 2.0Vf, Clear) - APT2012EC [Digikey: 754-1128-1-ND]&lt;/li&gt;
&lt;li&gt;Green LED (15mcd, 20mA, 2.2Vf, Clear) - APT2012GC [Digikey: 754-1131-1-ND]&lt;/li&gt;
&lt;li&gt;Orange LED (160mcd, 20mA, 2.1Vf, Clear) - APT2012SECK [Digikey: 754-1130-1-ND]&lt;/li&gt;
&lt;/ul&gt;
&lt;li&gt;&lt;b&gt;1206&lt;/b&gt; - 1206 Surface Mount Package
&lt;hr&gt;
&lt;ul&gt;
&lt;li&gt;Green LED (26mcd, 20mA, Diffused) - LG N971  [Digikey: 475-1407-6-ND]&lt;/li&gt;
&lt;li&gt;Red LED (15mcd, 20mA, Diffused) - LH N974 [Digikey: 475-1416-6-ND]&lt;/li&gt;
&lt;/ul&gt;</description>
<gates>
<gate name="G$1" symbol="LED" x="0" y="0"/>
</gates>
<devices>
<device name="1206" package="CHIPLED_1206">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0805" package="CHIPLED_0805">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0603" package="CHIPLED_0603">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0603_NOOUTLINE" package="CHIPLED_0603_NOOUTLINE">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="0805_NOOUTLINE" package="CHIPLED_0805_NOOUTLINE">
<connects>
<connect gate="G$1" pin="A" pad="A"/>
<connect gate="G$1" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="VCC" prefix="P+">
<description>&lt;b&gt;VCC SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="VCC" symbol="VCC" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="TRANSISTOR_NPN" prefix="Q" uservalue="yes">
<description>&lt;p&gt;&lt;b&gt;NPN Transistor&lt;/b&gt;&lt;/p&gt;
&lt;ul&gt;
&lt;li&gt;Transistor (NPN) 500mA 45V - BC817 [Digikey: 568-1631-1-ND]&lt;/li&gt;
&lt;li&gt;Transistor (NPN) 500mA 45V - BC817,215 [Mouser: 771-BC817-T/R]&lt;/li&gt;
&lt;/ul&gt;
&lt;p&gt;
&lt;b&gt;SOT23-R&lt;/b&gt; - SOT23 footprint optimised for use with solder paste and reflow ovens.&lt;br&gt;
&lt;b&gt;SOT23-W&lt;/b&gt; - SOT23 footprint optimised for hand-soldering (larger pads).
&lt;/p&gt;</description>
<gates>
<gate name="G$1" symbol="NPN" x="0" y="0"/>
</gates>
<devices>
<device name="" package="SOT23-R">
<connects>
<connect gate="G$1" pin="B" pad="1"/>
<connect gate="G$1" pin="C" pad="3"/>
<connect gate="G$1" pin="E" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="WAVE" package="SOT23-W">
<connects>
<connect gate="G$1" pin="B" pad="1"/>
<connect gate="G$1" pin="C" pad="3"/>
<connect gate="G$1" pin="E" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="WIDE" package="SOT23-WIDE">
<connects>
<connect gate="G$1" pin="B" pad="1"/>
<connect gate="G$1" pin="C" pad="3"/>
<connect gate="G$1" pin="E" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="RESISTOR_4PACK" prefix="R" uservalue="yes">
<description>&lt;b&gt;Resistor Packs (4 resistors)&lt;/b&gt;
&lt;p&gt;&lt;b&gt;4 x 0603&lt;/b&gt;&lt;/p&gt;
&lt;ul&gt;&lt;li&gt;10K 1/16W - Digikey: YC164J-10KCT-ND&lt;/li&gt;&lt;/ul&gt;</description>
<gates>
<gate name="G$1" symbol="RESISTOR" x="0" y="10.16"/>
<gate name="G$2" symbol="RESISTOR" x="0" y="2.54"/>
<gate name="G$3" symbol="RESISTOR" x="0" y="-5.08"/>
<gate name="G$4" symbol="RESISTOR" x="0" y="-12.7"/>
</gates>
<devices>
<device name="" package="RESPACK_4X0603">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="8"/>
<connect gate="G$2" pin="1" pad="2"/>
<connect gate="G$2" pin="2" pad="7"/>
<connect gate="G$3" pin="1" pad="3"/>
<connect gate="G$3" pin="2" pad="6"/>
<connect gate="G$4" pin="1" pad="4"/>
<connect gate="G$4" pin="2" pad="5"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="SparkFun-DigitalIC">
<description>&lt;h3&gt;SparkFun Electronics' preferred foot prints&lt;/h3&gt;
In this library you'll find all manner of digital ICs- microcontrollers, memory chips, logic chips, FPGAs, etc.&lt;br&gt;&lt;br&gt;
We've spent an enormous amount of time creating and checking these footprints and parts, but it is the end user's responsibility to ensure correctness and suitablity for a given componet or application. If you enjoy using this library, please buy one of our products at www.sparkfun.com.
&lt;br&gt;&lt;br&gt;
&lt;b&gt;Licensing:&lt;/b&gt; CC v3.0 Share-Alike You are welcome to use this library for commercial purposes. For attribution, we ask that when you begin to sell your device using our footprint, you email us with a link to the product being sold. We want bragging rights that we helped (in a very small part) to create your 8th world wonder. We would like the opportunity to feature your device on our homepage.</description>
<packages>
<package name="TQFP32-08">
<description>&lt;B&gt;Thin Plasic Quad Flat Package&lt;/B&gt; Grid 0.8 mm</description>
<wire x1="3.505" y1="3.505" x2="3.505" y2="-3.505" width="0.1524" layer="21"/>
<wire x1="3.505" y1="-3.505" x2="-3.505" y2="-3.505" width="0.1524" layer="21"/>
<wire x1="-3.505" y1="-3.505" x2="-3.505" y2="3.15" width="0.1524" layer="21"/>
<wire x1="-3.15" y1="3.505" x2="3.505" y2="3.505" width="0.1524" layer="21"/>
<wire x1="-3.15" y1="3.505" x2="-3.505" y2="3.15" width="0.1524" layer="21"/>
<circle x="-2.7432" y="2.7432" radius="0.3592" width="0.1524" layer="21"/>
<smd name="1" x="-4.2926" y="2.8" dx="1.27" dy="0.5588" layer="1"/>
<smd name="2" x="-4.2926" y="2" dx="1.27" dy="0.5588" layer="1"/>
<smd name="3" x="-4.2926" y="1.2" dx="1.27" dy="0.5588" layer="1"/>
<smd name="4" x="-4.2926" y="0.4" dx="1.27" dy="0.5588" layer="1"/>
<smd name="5" x="-4.2926" y="-0.4" dx="1.27" dy="0.5588" layer="1"/>
<smd name="6" x="-4.2926" y="-1.2" dx="1.27" dy="0.5588" layer="1"/>
<smd name="7" x="-4.2926" y="-2" dx="1.27" dy="0.5588" layer="1"/>
<smd name="8" x="-4.2926" y="-2.8" dx="1.27" dy="0.5588" layer="1"/>
<smd name="9" x="-2.8" y="-4.2926" dx="0.5588" dy="1.27" layer="1"/>
<smd name="10" x="-2" y="-4.2926" dx="0.5588" dy="1.27" layer="1"/>
<smd name="11" x="-1.2" y="-4.2926" dx="0.5588" dy="1.27" layer="1"/>
<smd name="12" x="-0.4" y="-4.2926" dx="0.5588" dy="1.27" layer="1"/>
<smd name="13" x="0.4" y="-4.2926" dx="0.5588" dy="1.27" layer="1"/>
<smd name="14" x="1.2" y="-4.2926" dx="0.5588" dy="1.27" layer="1"/>
<smd name="15" x="2" y="-4.2926" dx="0.5588" dy="1.27" layer="1"/>
<smd name="16" x="2.8" y="-4.2926" dx="0.5588" dy="1.27" layer="1"/>
<smd name="17" x="4.2926" y="-2.8" dx="1.27" dy="0.5588" layer="1"/>
<smd name="18" x="4.2926" y="-2" dx="1.27" dy="0.5588" layer="1"/>
<smd name="19" x="4.2926" y="-1.2" dx="1.27" dy="0.5588" layer="1"/>
<smd name="20" x="4.2926" y="-0.4" dx="1.27" dy="0.5588" layer="1"/>
<smd name="21" x="4.2926" y="0.4" dx="1.27" dy="0.5588" layer="1"/>
<smd name="22" x="4.2926" y="1.2" dx="1.27" dy="0.5588" layer="1"/>
<smd name="23" x="4.2926" y="2" dx="1.27" dy="0.5588" layer="1"/>
<smd name="24" x="4.2926" y="2.8" dx="1.27" dy="0.5588" layer="1"/>
<smd name="25" x="2.8" y="4.2926" dx="0.5588" dy="1.27" layer="1"/>
<smd name="26" x="2" y="4.2926" dx="0.5588" dy="1.27" layer="1"/>
<smd name="27" x="1.2" y="4.2926" dx="0.5588" dy="1.27" layer="1"/>
<smd name="28" x="0.4" y="4.2926" dx="0.5588" dy="1.27" layer="1"/>
<smd name="29" x="-0.4" y="4.2926" dx="0.5588" dy="1.27" layer="1"/>
<smd name="30" x="-1.2" y="4.2926" dx="0.5588" dy="1.27" layer="1"/>
<smd name="31" x="-2" y="4.2926" dx="0.5588" dy="1.27" layer="1"/>
<smd name="32" x="-2.8" y="4.2926" dx="0.5588" dy="1.27" layer="1"/>
<text x="-3.175" y="5.08" size="0.4064" layer="25">&gt;NAME</text>
<text x="-2.54" y="-6.35" size="0.4064" layer="27">&gt;VALUE</text>
<rectangle x1="-4.5466" y1="2.5714" x2="-3.556" y2="3.0286" layer="51"/>
<rectangle x1="-4.5466" y1="1.7714" x2="-3.556" y2="2.2286" layer="51"/>
<rectangle x1="-4.5466" y1="0.9714" x2="-3.556" y2="1.4286" layer="51"/>
<rectangle x1="-4.5466" y1="0.1714" x2="-3.556" y2="0.6286" layer="51"/>
<rectangle x1="-4.5466" y1="-0.6286" x2="-3.556" y2="-0.1714" layer="51"/>
<rectangle x1="-4.5466" y1="-1.4286" x2="-3.556" y2="-0.9714" layer="51"/>
<rectangle x1="-4.5466" y1="-2.2286" x2="-3.556" y2="-1.7714" layer="51"/>
<rectangle x1="-4.5466" y1="-3.0286" x2="-3.556" y2="-2.5714" layer="51"/>
<rectangle x1="-3.0286" y1="-4.5466" x2="-2.5714" y2="-3.556" layer="51"/>
<rectangle x1="-2.2286" y1="-4.5466" x2="-1.7714" y2="-3.556" layer="51"/>
<rectangle x1="-1.4286" y1="-4.5466" x2="-0.9714" y2="-3.556" layer="51"/>
<rectangle x1="-0.6286" y1="-4.5466" x2="-0.1714" y2="-3.556" layer="51"/>
<rectangle x1="0.1714" y1="-4.5466" x2="0.6286" y2="-3.556" layer="51"/>
<rectangle x1="0.9714" y1="-4.5466" x2="1.4286" y2="-3.556" layer="51"/>
<rectangle x1="1.7714" y1="-4.5466" x2="2.2286" y2="-3.556" layer="51"/>
<rectangle x1="2.5714" y1="-4.5466" x2="3.0286" y2="-3.556" layer="51"/>
<rectangle x1="3.556" y1="-3.0286" x2="4.5466" y2="-2.5714" layer="51"/>
<rectangle x1="3.556" y1="-2.2286" x2="4.5466" y2="-1.7714" layer="51"/>
<rectangle x1="3.556" y1="-1.4286" x2="4.5466" y2="-0.9714" layer="51"/>
<rectangle x1="3.556" y1="-0.6286" x2="4.5466" y2="-0.1714" layer="51"/>
<rectangle x1="3.556" y1="0.1714" x2="4.5466" y2="0.6286" layer="51"/>
<rectangle x1="3.556" y1="0.9714" x2="4.5466" y2="1.4286" layer="51"/>
<rectangle x1="3.556" y1="1.7714" x2="4.5466" y2="2.2286" layer="51"/>
<rectangle x1="3.556" y1="2.5714" x2="4.5466" y2="3.0286" layer="51"/>
<rectangle x1="2.5714" y1="3.556" x2="3.0286" y2="4.5466" layer="51"/>
<rectangle x1="1.7714" y1="3.556" x2="2.2286" y2="4.5466" layer="51"/>
<rectangle x1="0.9714" y1="3.556" x2="1.4286" y2="4.5466" layer="51"/>
<rectangle x1="0.1714" y1="3.556" x2="0.6286" y2="4.5466" layer="51"/>
<rectangle x1="-0.6286" y1="3.556" x2="-0.1714" y2="4.5466" layer="51"/>
<rectangle x1="-1.4286" y1="3.556" x2="-0.9714" y2="4.5466" layer="51"/>
<rectangle x1="-2.2286" y1="3.556" x2="-1.7714" y2="4.5466" layer="51"/>
<rectangle x1="-3.0286" y1="3.556" x2="-2.5714" y2="4.5466" layer="51"/>
</package>
</packages>
<symbols>
<symbol name="ATMEGAXX8-32PIN">
<description>Symbol for Atmega328/168/88/48 chips, 32-pin version</description>
<wire x1="-17.78" y1="27.94" x2="20.32" y2="27.94" width="0.254" layer="94"/>
<wire x1="20.32" y1="27.94" x2="20.32" y2="-35.56" width="0.254" layer="94"/>
<wire x1="20.32" y1="-35.56" x2="-17.78" y2="-35.56" width="0.254" layer="94"/>
<wire x1="-17.78" y1="-35.56" x2="-17.78" y2="27.94" width="0.254" layer="94"/>
<text x="-17.78" y="-38.1" size="1.778" layer="95">&gt;NAME</text>
<text x="-17.78" y="28.448" size="1.778" layer="96">&gt;VALUE</text>
<pin name="PB5(SCK)" x="25.4" y="-33.02" length="middle" rot="R180"/>
<pin name="PB7(XTAL2/TOSC2)" x="-22.86" y="-5.08" length="middle"/>
<pin name="PB6(XTAL1/TOSC1)" x="-22.86" y="0" length="middle"/>
<pin name="GND@1" x="-22.86" y="-27.94" length="middle"/>
<pin name="GND@2" x="-22.86" y="-30.48" length="middle"/>
<pin name="VCC@1" x="-22.86" y="17.78" length="middle"/>
<pin name="VCC@2" x="-22.86" y="15.24" length="middle"/>
<pin name="AGND" x="-22.86" y="-25.4" length="middle"/>
<pin name="AREF" x="-22.86" y="10.16" length="middle"/>
<pin name="AVCC" x="-22.86" y="20.32" length="middle"/>
<pin name="PB4(MISO)" x="25.4" y="-30.48" length="middle" rot="R180"/>
<pin name="PB3(MOSI/OC2)" x="25.4" y="-27.94" length="middle" rot="R180"/>
<pin name="PB2(SS/OC1B)" x="25.4" y="-25.4" length="middle" rot="R180"/>
<pin name="PB1(OC1A)" x="25.4" y="-22.86" length="middle" rot="R180"/>
<pin name="PB0(ICP)" x="25.4" y="-20.32" length="middle" rot="R180"/>
<pin name="PD7(AIN1)" x="25.4" y="-15.24" length="middle" rot="R180"/>
<pin name="PD6(AIN0)" x="25.4" y="-12.7" length="middle" rot="R180"/>
<pin name="PD5(T1)" x="25.4" y="-10.16" length="middle" rot="R180"/>
<pin name="PD4(XCK/T0)" x="25.4" y="-7.62" length="middle" rot="R180"/>
<pin name="PD3(INT1)" x="25.4" y="-5.08" length="middle" rot="R180"/>
<pin name="PD2(INT0)" x="25.4" y="-2.54" length="middle" rot="R180"/>
<pin name="PD1(TXD)" x="25.4" y="0" length="middle" rot="R180"/>
<pin name="PD0(RXD)" x="25.4" y="2.54" length="middle" rot="R180"/>
<pin name="ADC7" x="25.4" y="7.62" length="middle" rot="R180"/>
<pin name="ADC6" x="25.4" y="10.16" length="middle" rot="R180"/>
<pin name="PC5(ADC5/SCL)" x="25.4" y="12.7" length="middle" rot="R180"/>
<pin name="PC4(ADC4/SDA)" x="25.4" y="15.24" length="middle" rot="R180"/>
<pin name="PC3(ADC3)" x="25.4" y="17.78" length="middle" rot="R180"/>
<pin name="PC2(ADC2)" x="25.4" y="20.32" length="middle" rot="R180"/>
<pin name="PC1(ADC1)" x="25.4" y="22.86" length="middle" rot="R180"/>
<pin name="PC0(ADC0)" x="25.4" y="25.4" length="middle" rot="R180"/>
<pin name="PC6(/RESET)" x="-22.86" y="25.4" length="middle" function="dot"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="ATMEGA328_SMT" prefix="U" uservalue="yes">
<description>32-Pin Atmega328 part&lt;BR&gt;
Commonly used on Arduino compatible boards&lt;br&gt;
Available in QFP and QFN packages&lt;br&gt;
TQFP is IC-09069
QFN is non-stock</description>
<gates>
<gate name="G$1" symbol="ATMEGAXX8-32PIN" x="0" y="0"/>
</gates>
<devices>
<device name="" package="TQFP32-08">
<connects>
<connect gate="G$1" pin="ADC6" pad="19"/>
<connect gate="G$1" pin="ADC7" pad="22"/>
<connect gate="G$1" pin="AGND" pad="21"/>
<connect gate="G$1" pin="AREF" pad="20"/>
<connect gate="G$1" pin="AVCC" pad="18"/>
<connect gate="G$1" pin="GND@1" pad="3"/>
<connect gate="G$1" pin="GND@2" pad="5"/>
<connect gate="G$1" pin="PB0(ICP)" pad="12"/>
<connect gate="G$1" pin="PB1(OC1A)" pad="13"/>
<connect gate="G$1" pin="PB2(SS/OC1B)" pad="14"/>
<connect gate="G$1" pin="PB3(MOSI/OC2)" pad="15"/>
<connect gate="G$1" pin="PB4(MISO)" pad="16"/>
<connect gate="G$1" pin="PB5(SCK)" pad="17"/>
<connect gate="G$1" pin="PB6(XTAL1/TOSC1)" pad="7"/>
<connect gate="G$1" pin="PB7(XTAL2/TOSC2)" pad="8"/>
<connect gate="G$1" pin="PC0(ADC0)" pad="23"/>
<connect gate="G$1" pin="PC1(ADC1)" pad="24"/>
<connect gate="G$1" pin="PC2(ADC2)" pad="25"/>
<connect gate="G$1" pin="PC3(ADC3)" pad="26"/>
<connect gate="G$1" pin="PC4(ADC4/SDA)" pad="27"/>
<connect gate="G$1" pin="PC5(ADC5/SCL)" pad="28"/>
<connect gate="G$1" pin="PC6(/RESET)" pad="29"/>
<connect gate="G$1" pin="PD0(RXD)" pad="30"/>
<connect gate="G$1" pin="PD1(TXD)" pad="31"/>
<connect gate="G$1" pin="PD2(INT0)" pad="32"/>
<connect gate="G$1" pin="PD3(INT1)" pad="1"/>
<connect gate="G$1" pin="PD4(XCK/T0)" pad="2"/>
<connect gate="G$1" pin="PD5(T1)" pad="9"/>
<connect gate="G$1" pin="PD6(AIN0)" pad="10"/>
<connect gate="G$1" pin="PD7(AIN1)" pad="11"/>
<connect gate="G$1" pin="VCC@1" pad="4"/>
<connect gate="G$1" pin="VCC@2" pad="6"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="IC-09069" constant="no"/>
<attribute name="VALUE" value="ATMEGA328P" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="zak">
<description>Zaks library</description>
<packages>
<package name="PIEZO">
<smd name="1" x="-2.54" y="-1.75" dx="1.7" dy="0.9" layer="1"/>
<smd name="3" x="-2.54" y="1.75" dx="1.7" dy="0.9" layer="1"/>
<smd name="2" x="2.54" y="-1.75" dx="1.7" dy="0.9" layer="1"/>
<wire x1="2.54" y1="-2.54" x2="-2.54" y2="-2.54" width="0.127" layer="21"/>
<wire x1="-2.54" y1="2.54" x2="1.905" y2="2.54" width="0.127" layer="21"/>
<wire x1="1.905" y1="2.54" x2="2.54" y2="1.905" width="0.127" layer="21"/>
<text x="-2.54" y="3.175" size="0.8128" layer="25" ratio="18">&gt;NAME</text>
<text x="-2.54" y="-3.81" size="0.8128" layer="27" ratio="18">&gt;VALUE</text>
<wire x1="-2.54" y1="0.9525" x2="-2.54" y2="-0.9525" width="0.127" layer="21"/>
<wire x1="2.54" y1="1.905" x2="2.54" y2="-0.9525" width="0.127" layer="21"/>
</package>
<package name="USB-MICROB">
<wire x1="-3.4" y1="-2.15" x2="-3" y2="-2.15" width="0.127" layer="51"/>
<wire x1="3" y1="-2.15" x2="3.4" y2="-2.15" width="0.127" layer="51"/>
<wire x1="-3.4" y1="-2.15" x2="-3.4" y2="-1.45" width="0.127" layer="51"/>
<wire x1="-3.4" y1="-1.45" x2="-3.4" y2="2.85" width="0.127" layer="51"/>
<wire x1="3.4" y1="2.85" x2="2.2" y2="2.85" width="0.127" layer="51"/>
<wire x1="3.4" y1="2.85" x2="3.4" y2="-1.45" width="0.127" layer="51"/>
<wire x1="3.4" y1="-1.45" x2="3.4" y2="-2.15" width="0.127" layer="51"/>
<wire x1="-3.4" y1="-1.45" x2="3.4" y2="-1.45" width="0.127" layer="51"/>
<wire x1="-3.4" y1="1.25" x2="-3.4" y2="2.85" width="0.2032" layer="21"/>
<wire x1="-3.4" y1="2.85" x2="-2.2" y2="2.85" width="0.2032" layer="21"/>
<wire x1="3.4" y1="2.85" x2="2.2" y2="2.85" width="0.2032" layer="21"/>
<wire x1="3.4" y1="1.25" x2="3.4" y2="2.85" width="0.2032" layer="21"/>
<wire x1="-3.4" y1="-1.45" x2="3.4" y2="-1.45" width="0.2032" layer="21"/>
<wire x1="-2.2" y1="1.45" x2="2.2" y2="1.45" width="0.127" layer="51"/>
<wire x1="2.2" y1="1.45" x2="2.2" y2="2.85" width="0.127" layer="51"/>
<wire x1="-2.2" y1="1.45" x2="-2.2" y2="2.85" width="0.127" layer="51"/>
<wire x1="-3.4" y1="2.85" x2="-2.2" y2="2.85" width="0.127" layer="51"/>
<wire x1="-2.2" y1="2.85" x2="-2.2" y2="1.45" width="0.2032" layer="21"/>
<wire x1="-2.2" y1="1.45" x2="2.2" y2="1.45" width="0.2032" layer="21"/>
<wire x1="2.2" y1="1.45" x2="2.2" y2="2.85" width="0.2032" layer="21"/>
<wire x1="-3.4" y1="-2.15" x2="-4" y2="-2.75" width="0.2032" layer="51"/>
<wire x1="3.4" y1="-2.15" x2="4" y2="-2.75" width="0.2032" layer="51"/>
<wire x1="-3" y1="-2.15" x2="-3" y2="-2.55" width="0.127" layer="51"/>
<wire x1="-2.8" y1="-2.8" x2="2.75" y2="-2.8" width="0.127" layer="51"/>
<wire x1="3" y1="-2.6" x2="3" y2="-2.15" width="0.127" layer="51"/>
<wire x1="-3" y1="-2.55" x2="-2.8" y2="-2.8" width="0.127" layer="51" curve="84.547378"/>
<wire x1="2.75" y1="-2.8" x2="3" y2="-2.6" width="0.127" layer="51" curve="84.547378"/>
<smd name="VBUS" x="-1.3" y="2.65" dx="1.4" dy="0.35" layer="1" rot="R90"/>
<smd name="GND" x="1.3" y="2.65" dx="1.4" dy="0.35" layer="1" rot="R90"/>
<smd name="D-" x="-0.65" y="2.65" dx="1.4" dy="0.35" layer="1" rot="R90"/>
<smd name="D+" x="0" y="2.65" dx="1.4" dy="0.35" layer="1" rot="R90"/>
<smd name="ID" x="0.65" y="2.65" dx="1.4" dy="0.35" layer="1" rot="R90"/>
<smd name="MT1" x="-4" y="0" dx="1.8" dy="1.9" layer="1"/>
<smd name="MT2" x="4" y="0" dx="1.8" dy="1.9" layer="1"/>
<text x="-1.6" y="-0.35" size="0.8128" layer="25" ratio="18">&gt;NAME</text>
<text x="-1.905" y="-3.175" size="0.8128" layer="27" ratio="18">&gt;VALUE</text>
<hole x="-2" y="2.15" drill="0.55"/>
<hole x="2" y="2.15" drill="0.55"/>
</package>
<package name="USB-MICROB_LARGEPAD">
<wire x1="-3.4" y1="-2.15" x2="-3" y2="-2.15" width="0.127" layer="51"/>
<wire x1="3" y1="-2.15" x2="3.4" y2="-2.15" width="0.127" layer="51"/>
<wire x1="-3.4" y1="-2.15" x2="-3.4" y2="-1.45" width="0.127" layer="51"/>
<wire x1="-3.4" y1="-1.45" x2="-3.4" y2="2.85" width="0.127" layer="51"/>
<wire x1="3.4" y1="2.85" x2="2.2" y2="2.85" width="0.127" layer="51"/>
<wire x1="3.4" y1="2.85" x2="3.4" y2="-1.45" width="0.127" layer="51"/>
<wire x1="3.4" y1="-1.45" x2="3.4" y2="-2.15" width="0.127" layer="51"/>
<wire x1="-3.4" y1="-1.45" x2="3.4" y2="-1.45" width="0.127" layer="51"/>
<wire x1="-3.4" y1="1.25" x2="-3.4" y2="2.85" width="0.2032" layer="21"/>
<wire x1="-3.4" y1="2.85" x2="-2.2" y2="2.85" width="0.2032" layer="21"/>
<wire x1="3.4" y1="2.85" x2="2.2" y2="2.85" width="0.2032" layer="21"/>
<wire x1="3.4" y1="1.25" x2="3.4" y2="2.85" width="0.2032" layer="21"/>
<wire x1="-3.4" y1="-1.45" x2="3.4" y2="-1.45" width="0.2032" layer="21"/>
<wire x1="-2.2" y1="1.45" x2="2.2" y2="1.45" width="0.127" layer="51"/>
<wire x1="2.2" y1="1.45" x2="2.2" y2="2.85" width="0.127" layer="51"/>
<wire x1="-2.2" y1="1.45" x2="-2.2" y2="2.85" width="0.127" layer="51"/>
<wire x1="-3.4" y1="2.85" x2="-2.2" y2="2.85" width="0.127" layer="51"/>
<wire x1="-2.2" y1="2.85" x2="-2.2" y2="1.45" width="0.2032" layer="21"/>
<wire x1="-2.2" y1="1.45" x2="2.2" y2="1.45" width="0.2032" layer="21"/>
<wire x1="2.2" y1="1.45" x2="2.2" y2="2.85" width="0.2032" layer="21"/>
<wire x1="-3.4" y1="-2.15" x2="-4" y2="-2.75" width="0.2032" layer="51"/>
<wire x1="3.4" y1="-2.15" x2="4" y2="-2.75" width="0.2032" layer="51"/>
<wire x1="-3" y1="-2.15" x2="-3" y2="-2.55" width="0.127" layer="51"/>
<wire x1="-2.8" y1="-2.8" x2="2.75" y2="-2.8" width="0.127" layer="51"/>
<wire x1="3" y1="-2.6" x2="3" y2="-2.15" width="0.127" layer="51"/>
<wire x1="-3" y1="-2.55" x2="-2.8" y2="-2.8" width="0.127" layer="51" curve="84.547378"/>
<wire x1="2.75" y1="-2.8" x2="3" y2="-2.6" width="0.127" layer="51" curve="84.547378"/>
<smd name="VBUS" x="-1.3" y="2.65" dx="1.4" dy="0.35" layer="1" rot="R90"/>
<smd name="GND" x="1.3" y="2.65" dx="1.4" dy="0.35" layer="1" rot="R90"/>
<smd name="D-" x="-0.65" y="2.65" dx="1.4" dy="0.35" layer="1" rot="R90"/>
<smd name="D+" x="0" y="2.65" dx="1.4" dy="0.35" layer="1" rot="R90"/>
<smd name="ID" x="0.65" y="2.65" dx="1.4" dy="0.35" layer="1" rot="R90"/>
<smd name="MT1" x="-3.7" y="0" dx="2.2" dy="4" layer="1"/>
<smd name="MT2" x="3.7" y="0" dx="2.2" dy="4" layer="1"/>
<text x="-1.6" y="-0.35" size="0.8128" layer="25" ratio="18">&gt;NAME</text>
<text x="-1.905" y="-3.175" size="0.8128" layer="27" ratio="18">&gt;VALUE</text>
<hole x="-2" y="2.15" drill="0.55"/>
<hole x="2" y="2.15" drill="0.55"/>
</package>
<package name="TACT_SMD">
<wire x1="-3.3" y1="3" x2="3.3" y2="3" width="0.127" layer="21"/>
<wire x1="3.3" y1="3" x2="3.3" y2="-3" width="0.127" layer="21"/>
<wire x1="3.3" y1="-3" x2="-3.3" y2="-3" width="0.127" layer="21"/>
<wire x1="-3.3" y1="-3" x2="-3.3" y2="3" width="0.127" layer="21"/>
<circle x="0" y="0" radius="1.5033" width="0.127" layer="21"/>
<circle x="0" y="0" radius="1" width="0.127" layer="21"/>
<smd name="B" x="-3.4" y="2" dx="2.54" dy="1.27" layer="1"/>
<smd name="B'" x="3.4" y="2" dx="2.54" dy="1.27" layer="1"/>
<smd name="A'" x="3.4" y="-2" dx="2.54" dy="1.27" layer="1"/>
<smd name="A" x="-3.4" y="-2" dx="2.54" dy="1.27" layer="1"/>
<text x="-3" y="3.5" size="0.8128" layer="25" ratio="18">&gt;NAME</text>
<text x="-3.2" y="-4.8" size="0.8128" layer="27" ratio="18">&gt;VALUE</text>
</package>
<package name="TACT_SMD2">
<wire x1="-2.35" y1="0.4" x2="2.35" y2="0.4" width="0.127" layer="21"/>
<wire x1="2.35" y1="0.4" x2="2.35" y2="-3.1" width="0.127" layer="21"/>
<wire x1="2.35" y1="-3.1" x2="-2.35" y2="-3.1" width="0.127" layer="21"/>
<wire x1="-2.35" y1="-3.1" x2="-2.35" y2="0.4" width="0.127" layer="21"/>
<smd name="3" x="2.575" y="-0.5" dx="1.45" dy="1" layer="1"/>
<smd name="4" x="2.575" y="-2.2" dx="1.45" dy="1" layer="1"/>
<smd name="2" x="-2.575" y="-2.2" dx="1.45" dy="1" layer="1"/>
<smd name="1" x="-2.575" y="-0.5" dx="1.45" dy="1" layer="1"/>
<hole x="0" y="0" drill="0.75"/>
<hole x="0" y="-2.7" drill="0.75"/>
<wire x1="-1.4" y1="-3.1" x2="-1.4" y2="-4.1" width="0.127" layer="51"/>
<wire x1="-1.4" y1="-4.1" x2="1.4" y2="-4.1" width="0.127" layer="51"/>
<wire x1="1.4" y1="-4.1" x2="1.4" y2="-3.1" width="0.127" layer="51"/>
<text x="-1.27" y="1.27" size="0.8128" layer="21" ratio="18">&gt;NAME</text>
<text x="-1.27" y="-5.08" size="0.8128" layer="21" ratio="18">&gt;VALUE</text>
</package>
<package name="UG-2864HSWEG01_1.3">
<wire x1="-14.7" y1="13.4" x2="14.7" y2="13.4" width="0.2032" layer="51" style="shortdash"/>
<wire x1="14.7" y1="13.4" x2="14.7" y2="-1.3" width="0.2032" layer="51" style="shortdash"/>
<wire x1="14.7" y1="-1.3" x2="-14.7" y2="-1.3" width="0.2032" layer="51" style="shortdash"/>
<wire x1="-14.7" y1="-1.3" x2="-14.7" y2="13.4" width="0.2032" layer="51" style="shortdash"/>
<smd name="1" x="10.15" y="-16.31" dx="2.2" dy="0.35" layer="16" rot="R270"/>
<smd name="2" x="9.45" y="-16.31" dx="2.2" dy="0.35" layer="16" rot="R270"/>
<smd name="3" x="8.75" y="-16.31" dx="2.2" dy="0.35" layer="16" rot="R270"/>
<smd name="4" x="8.05" y="-16.31" dx="2.2" dy="0.35" layer="16" rot="R270"/>
<smd name="5" x="7.35" y="-16.31" dx="2.2" dy="0.35" layer="16" rot="R270"/>
<smd name="6" x="6.65" y="-16.31" dx="2.2" dy="0.35" layer="16" rot="R270"/>
<smd name="7" x="5.95" y="-16.31" dx="2.2" dy="0.35" layer="16" rot="R270"/>
<smd name="8" x="5.25" y="-16.31" dx="2.2" dy="0.35" layer="16" rot="R270"/>
<smd name="9" x="4.55" y="-16.31" dx="2.2" dy="0.35" layer="16" rot="R270"/>
<smd name="10" x="3.85" y="-16.31" dx="2.2" dy="0.35" layer="16" rot="R270"/>
<smd name="11" x="3.15" y="-16.31" dx="2.2" dy="0.35" layer="16" rot="R270"/>
<smd name="12" x="2.45" y="-16.31" dx="2.2" dy="0.35" layer="16" rot="R270"/>
<smd name="13" x="1.75" y="-16.31" dx="2.2" dy="0.35" layer="16" rot="R270"/>
<smd name="14" x="1.05" y="-16.31" dx="2.2" dy="0.35" layer="16" rot="R270"/>
<smd name="15" x="0.35" y="-16.31" dx="2.2" dy="0.35" layer="16" rot="R270"/>
<smd name="16" x="-0.35" y="-16.31" dx="2.2" dy="0.35" layer="16" rot="R270"/>
<smd name="17" x="-1.05" y="-16.31" dx="2.2" dy="0.35" layer="16" rot="R270"/>
<smd name="18" x="-1.75" y="-16.31" dx="2.2" dy="0.35" layer="16" rot="R270"/>
<smd name="19" x="-2.45" y="-16.31" dx="2.2" dy="0.35" layer="16" rot="R270"/>
<smd name="20" x="-3.15" y="-16.31" dx="2.2" dy="0.35" layer="16" rot="R270"/>
<smd name="21" x="-3.85" y="-16.31" dx="2.2" dy="0.35" layer="16" rot="R270"/>
<smd name="22" x="-4.55" y="-16.31" dx="2.2" dy="0.35" layer="16" rot="R270"/>
<smd name="23" x="-5.25" y="-16.31" dx="2.2" dy="0.35" layer="16" rot="R270"/>
<smd name="24" x="-5.95" y="-16.31" dx="2.2" dy="0.35" layer="16" rot="R270"/>
<smd name="25" x="-6.65" y="-16.31" dx="2.2" dy="0.35" layer="16" rot="R270"/>
<smd name="26" x="-7.35" y="-16.31" dx="2.2" dy="0.35" layer="16" rot="R270"/>
<smd name="27" x="-8.05" y="-16.31" dx="2.2" dy="0.35" layer="16" rot="R270"/>
<smd name="28" x="-8.75" y="-16.31" dx="2.2" dy="0.35" layer="16" rot="R270"/>
<smd name="29" x="-9.45" y="-16.31" dx="2.2" dy="0.35" layer="16" rot="R270"/>
<smd name="30" x="-10.15" y="-16.31" dx="2.2" dy="0.35" layer="16" rot="R270"/>
<text x="9.95" y="-18.022" size="0.8128" layer="52" font="vector" rot="R270">1</text>
<text x="3.65" y="-17.922" size="0.8128" layer="52" font="vector" rot="R270">10</text>
<text x="-3.3" y="-17.922" size="0.8128" layer="52" font="vector" rot="R270">20</text>
<text x="-10.45" y="-17.922" size="0.8128" layer="52" font="vector" rot="R270">30</text>
<text x="-16.9" y="16.9" size="0.8128" layer="25" ratio="18">&gt;NAME</text>
<text x="-16.9" y="-9.1" size="0.4064" layer="27" ratio="10">&gt;VALUE</text>
<hole x="-8" y="-12.07" drill="0.4"/>
<hole x="8" y="-12.07" drill="0.4"/>
<wire x1="-17.018" y1="-7.493" x2="-17.272" y2="-7.493" width="0.254" layer="21"/>
<wire x1="-17.272" y1="-7.493" x2="-17.272" y2="-7.239" width="0.254" layer="21"/>
<wire x1="-17.018" y1="15.494" x2="-17.272" y2="15.494" width="0.254" layer="21"/>
<wire x1="-17.272" y1="15.494" x2="-17.272" y2="15.24" width="0.254" layer="21"/>
<wire x1="17.272" y1="15.24" x2="17.272" y2="15.494" width="0.254" layer="21"/>
<wire x1="17.272" y1="15.494" x2="17.018" y2="15.494" width="0.254" layer="21"/>
<wire x1="17.272" y1="-7.239" x2="17.272" y2="-7.493" width="0.254" layer="21"/>
<wire x1="17.272" y1="-7.493" x2="17.018" y2="-7.493" width="0.254" layer="21"/>
</package>
<package name="UG-2864HSWEG01_1.3_WRAPAROUND_WATCH">
<wire x1="-14.7" y1="13.4" x2="14.7" y2="13.4" width="0.2032" layer="51" style="shortdash"/>
<wire x1="14.7" y1="13.4" x2="14.7" y2="-1.3" width="0.2032" layer="51" style="shortdash"/>
<wire x1="14.7" y1="-1.3" x2="-14.7" y2="-1.3" width="0.2032" layer="51" style="shortdash"/>
<wire x1="-14.7" y1="-1.3" x2="-14.7" y2="13.4" width="0.2032" layer="51" style="shortdash"/>
<smd name="1" x="-10.15" y="-1.1525" dx="2.2" dy="0.35" layer="16" rot="R90"/>
<smd name="2" x="-9.45" y="-1.1525" dx="2.2" dy="0.35" layer="16" rot="R90"/>
<smd name="3" x="-8.75" y="-1.1525" dx="2.2" dy="0.35" layer="16" rot="R90"/>
<smd name="4" x="-8.05" y="-1.1525" dx="2.2" dy="0.35" layer="16" rot="R90"/>
<smd name="5" x="-7.35" y="-1.1525" dx="2.2" dy="0.35" layer="16" rot="R90"/>
<smd name="6" x="-6.65" y="-1.1525" dx="2.2" dy="0.35" layer="16" rot="R90"/>
<smd name="7" x="-5.95" y="-1.1525" dx="2.2" dy="0.35" layer="16" rot="R90"/>
<smd name="8" x="-5.25" y="-1.1525" dx="2.2" dy="0.35" layer="16" rot="R90"/>
<smd name="9" x="-4.55" y="-1.1525" dx="2.2" dy="0.35" layer="16" rot="R90"/>
<smd name="10" x="-3.85" y="-1.1525" dx="2.2" dy="0.35" layer="16" rot="R90"/>
<smd name="11" x="-3.15" y="-1.1525" dx="2.2" dy="0.35" layer="16" rot="R90"/>
<smd name="12" x="-2.45" y="-1.1525" dx="2.2" dy="0.35" layer="16" rot="R90"/>
<smd name="13" x="-1.75" y="-1.1525" dx="2.2" dy="0.35" layer="16" rot="R90"/>
<smd name="14" x="-1.05" y="-1.1525" dx="2.2" dy="0.35" layer="16" rot="R90"/>
<smd name="15" x="-0.35" y="-1.1525" dx="2.2" dy="0.35" layer="16" rot="R90"/>
<smd name="16" x="0.35" y="-1.1525" dx="2.2" dy="0.35" layer="16" rot="R90"/>
<smd name="17" x="1.05" y="-1.1525" dx="2.2" dy="0.35" layer="16" rot="R90"/>
<smd name="18" x="1.75" y="-1.1525" dx="2.2" dy="0.35" layer="16" rot="R90"/>
<smd name="19" x="2.45" y="-1.1525" dx="2.2" dy="0.35" layer="16" rot="R90"/>
<smd name="20" x="3.15" y="-1.1525" dx="2.2" dy="0.35" layer="16" rot="R90"/>
<smd name="21" x="3.85" y="-1.1525" dx="2.2" dy="0.35" layer="16" rot="R90"/>
<smd name="22" x="4.55" y="-1.1525" dx="2.2" dy="0.35" layer="16" rot="R90"/>
<smd name="23" x="5.25" y="-1.1525" dx="2.2" dy="0.35" layer="16" rot="R90"/>
<smd name="24" x="5.95" y="-1.1525" dx="2.2" dy="0.35" layer="16" rot="R90"/>
<smd name="25" x="6.65" y="-1.1525" dx="2.2" dy="0.35" layer="16" rot="R90"/>
<smd name="26" x="7.35" y="-1.1525" dx="2.2" dy="0.35" layer="16" rot="R90"/>
<smd name="27" x="8.05" y="-1.1525" dx="2.2" dy="0.35" layer="16" rot="R90"/>
<smd name="28" x="8.75" y="-1.1525" dx="2.2" dy="0.35" layer="16" rot="R90"/>
<smd name="29" x="9.45" y="-1.1525" dx="2.2" dy="0.35" layer="16" rot="R90"/>
<smd name="30" x="10.15" y="-1.1525" dx="2.2" dy="0.35" layer="16" rot="R90"/>
<text x="-9.95" y="1.512" size="0.8128" layer="52" font="vector" rot="R90">1</text>
<text x="-3.65" y="1.412" size="0.8128" layer="52" font="vector" rot="R90">10</text>
<text x="3.3" y="1.412" size="0.8128" layer="52" font="vector" rot="R90">20</text>
<text x="10.45" y="1.412" size="0.8128" layer="52" font="vector" rot="R90">30</text>
<text x="-16.9" y="16.9" size="0.8128" layer="25" ratio="18">&gt;NAME</text>
<text x="-16.9" y="-9.1" size="0.4064" layer="27" ratio="10">&gt;VALUE</text>
<text x="-2.6" y="-7" size="0.8128" layer="51">PCB EDGE</text>
<hole x="-8" y="-5.4025" drill="0.4"/>
<hole x="8" y="-5.4025" drill="0.4"/>
<wire x1="-17.018" y1="-7.493" x2="-17.272" y2="-7.493" width="0.254" layer="51"/>
<wire x1="-17.272" y1="-7.493" x2="-17.272" y2="-7.239" width="0.254" layer="51"/>
<wire x1="-17.018" y1="15.494" x2="-17.272" y2="15.494" width="0.254" layer="51"/>
<wire x1="-17.272" y1="15.494" x2="-17.272" y2="15.24" width="0.254" layer="51"/>
<wire x1="17.272" y1="15.24" x2="17.272" y2="15.494" width="0.254" layer="51"/>
<wire x1="17.272" y1="15.494" x2="17.018" y2="15.494" width="0.254" layer="51"/>
<wire x1="17.272" y1="-7.239" x2="17.272" y2="-7.493" width="0.254" layer="51"/>
<wire x1="17.272" y1="-7.493" x2="17.018" y2="-7.493" width="0.254" layer="51"/>
<wire x1="-11.1125" y1="-6.985" x2="-11.1125" y2="0.3175" width="0.254" layer="22"/>
<wire x1="-11.1125" y1="0.3175" x2="11.1125" y2="0.3175" width="0.254" layer="22"/>
<wire x1="11.1125" y1="-6.985" x2="11.1125" y2="0.3175" width="0.254" layer="22"/>
</package>
<package name="TACT_SMD3">
<wire x1="-2.25" y1="2.25" x2="2.25" y2="2.25" width="0.127" layer="21"/>
<wire x1="2.25" y1="2.25" x2="2.25" y2="-2.25" width="0.127" layer="21"/>
<wire x1="2.25" y1="-2.25" x2="-2.25" y2="-2.25" width="0.127" layer="21"/>
<wire x1="-2.25" y1="-2.25" x2="-2.25" y2="2.25" width="0.127" layer="21"/>
<circle x="0" y="0" radius="1.5033" width="0.127" layer="21"/>
<circle x="0" y="0" radius="1" width="0.127" layer="21"/>
<smd name="1" x="-2.25" y="1.75" dx="1.5" dy="1.27" layer="1"/>
<smd name="2" x="2.25" y="1.75" dx="1.5" dy="1.27" layer="1"/>
<smd name="4" x="2.25" y="-1.75" dx="1.5" dy="1.27" layer="1"/>
<smd name="3" x="-2.25" y="-1.75" dx="1.5" dy="1.27" layer="1"/>
<text x="-3" y="2.865" size="0.8128" layer="25" ratio="18">&gt;NAME</text>
<text x="-3.2" y="-3.53" size="0.8128" layer="27" ratio="18">&gt;VALUE</text>
</package>
<package name="UG-2864HSWEG01_1.3_WRAPAROUND">
<wire x1="-14.7" y1="13.4" x2="14.7" y2="13.4" width="0.2032" layer="51" style="shortdash"/>
<wire x1="14.7" y1="13.4" x2="14.7" y2="-1.3" width="0.2032" layer="51" style="shortdash"/>
<wire x1="14.7" y1="-1.3" x2="-14.7" y2="-1.3" width="0.2032" layer="51" style="shortdash"/>
<wire x1="-14.7" y1="-1.3" x2="-14.7" y2="13.4" width="0.2032" layer="51" style="shortdash"/>
<smd name="1" x="-10.15" y="-0.2" dx="2.2" dy="0.35" layer="16" rot="R90"/>
<smd name="2" x="-9.45" y="-0.2" dx="2.2" dy="0.35" layer="16" rot="R90"/>
<smd name="3" x="-8.75" y="-0.2" dx="2.2" dy="0.35" layer="16" rot="R90"/>
<smd name="4" x="-8.05" y="-0.2" dx="2.2" dy="0.35" layer="16" rot="R90"/>
<smd name="5" x="-7.35" y="-0.2" dx="2.2" dy="0.35" layer="16" rot="R90"/>
<smd name="6" x="-6.65" y="-0.2" dx="2.2" dy="0.35" layer="16" rot="R90"/>
<smd name="7" x="-5.95" y="-0.2" dx="2.2" dy="0.35" layer="16" rot="R90"/>
<smd name="8" x="-5.25" y="-0.2" dx="2.2" dy="0.35" layer="16" rot="R90"/>
<smd name="9" x="-4.55" y="-0.2" dx="2.2" dy="0.35" layer="16" rot="R90"/>
<smd name="10" x="-3.85" y="-0.2" dx="2.2" dy="0.35" layer="16" rot="R90"/>
<smd name="11" x="-3.15" y="-0.2" dx="2.2" dy="0.35" layer="16" rot="R90"/>
<smd name="12" x="-2.45" y="-0.2" dx="2.2" dy="0.35" layer="16" rot="R90"/>
<smd name="13" x="-1.75" y="-0.2" dx="2.2" dy="0.35" layer="16" rot="R90"/>
<smd name="14" x="-1.05" y="-0.2" dx="2.2" dy="0.35" layer="16" rot="R90"/>
<smd name="15" x="-0.35" y="-0.2" dx="2.2" dy="0.35" layer="16" rot="R90"/>
<smd name="16" x="0.35" y="-0.2" dx="2.2" dy="0.35" layer="16" rot="R90"/>
<smd name="17" x="1.05" y="-0.2" dx="2.2" dy="0.35" layer="16" rot="R90"/>
<smd name="18" x="1.75" y="-0.2" dx="2.2" dy="0.35" layer="16" rot="R90"/>
<smd name="19" x="2.45" y="-0.2" dx="2.2" dy="0.35" layer="16" rot="R90"/>
<smd name="20" x="3.15" y="-0.2" dx="2.2" dy="0.35" layer="16" rot="R90"/>
<smd name="21" x="3.85" y="-0.2" dx="2.2" dy="0.35" layer="16" rot="R90"/>
<smd name="22" x="4.55" y="-0.2" dx="2.2" dy="0.35" layer="16" rot="R90"/>
<smd name="23" x="5.25" y="-0.2" dx="2.2" dy="0.35" layer="16" rot="R90"/>
<smd name="24" x="5.95" y="-0.2" dx="2.2" dy="0.35" layer="16" rot="R90"/>
<smd name="25" x="6.65" y="-0.2" dx="2.2" dy="0.35" layer="16" rot="R90"/>
<smd name="26" x="7.35" y="-0.2" dx="2.2" dy="0.35" layer="16" rot="R90"/>
<smd name="27" x="8.05" y="-0.2" dx="2.2" dy="0.35" layer="16" rot="R90"/>
<smd name="28" x="8.75" y="-0.2" dx="2.2" dy="0.35" layer="16" rot="R90"/>
<smd name="29" x="9.45" y="-0.2" dx="2.2" dy="0.35" layer="16" rot="R90"/>
<smd name="30" x="10.15" y="-0.2" dx="2.2" dy="0.35" layer="16" rot="R90"/>
<text x="-9.95" y="1.512" size="0.8128" layer="52" font="vector" rot="R90">1</text>
<text x="-3.65" y="1.412" size="0.8128" layer="52" font="vector" rot="R90">10</text>
<text x="3.3" y="1.412" size="0.8128" layer="52" font="vector" rot="R90">20</text>
<text x="10.45" y="1.412" size="0.8128" layer="52" font="vector" rot="R90">30</text>
<text x="-16.9" y="16.9" size="0.8128" layer="25" ratio="18">&gt;NAME</text>
<text x="-16.9" y="-9.1" size="0.4064" layer="27" ratio="10">&gt;VALUE</text>
<text x="-2.6" y="-7" size="0.8128" layer="51">PCB EDGE</text>
<hole x="-8" y="-4.45" drill="0.4"/>
<hole x="8" y="-4.45" drill="0.4"/>
<wire x1="-17.018" y1="-7.493" x2="-17.272" y2="-7.493" width="0.254" layer="21"/>
<wire x1="-17.272" y1="-7.493" x2="-17.272" y2="-7.239" width="0.254" layer="21"/>
<wire x1="-17.018" y1="15.494" x2="-17.272" y2="15.494" width="0.254" layer="21"/>
<wire x1="-17.272" y1="15.494" x2="-17.272" y2="15.24" width="0.254" layer="21"/>
<wire x1="17.272" y1="15.24" x2="17.272" y2="15.494" width="0.254" layer="21"/>
<wire x1="17.272" y1="15.494" x2="17.018" y2="15.494" width="0.254" layer="21"/>
<wire x1="17.272" y1="-7.239" x2="17.272" y2="-7.493" width="0.254" layer="21"/>
<wire x1="17.272" y1="-7.493" x2="17.018" y2="-7.493" width="0.254" layer="21"/>
<wire x1="-11.1125" y1="-6.0325" x2="-11.1125" y2="1.27" width="0.254" layer="22"/>
<wire x1="-11.1125" y1="1.27" x2="11.1125" y2="1.27" width="0.254" layer="22"/>
<wire x1="11.1125" y1="-6.0325" x2="11.1125" y2="1.27" width="0.254" layer="22"/>
<wire x1="-17.272" y1="-7.493" x2="-17.272" y2="15.494" width="0.127" layer="51"/>
<wire x1="-17.272" y1="15.494" x2="17.272" y2="15.494" width="0.127" layer="51"/>
<wire x1="17.272" y1="15.494" x2="17.272" y2="-7.493" width="0.127" layer="51"/>
<wire x1="17.272" y1="-7.493" x2="-17.272" y2="-7.493" width="0.127" layer="51"/>
</package>
<package name="UG-2864HSWEG01_1.3_CONNONLY">
<smd name="1" x="-10.15" y="-1.1525" dx="2.2" dy="0.35" layer="16" rot="R90"/>
<smd name="2" x="-9.45" y="-1.1525" dx="2.2" dy="0.35" layer="16" rot="R90"/>
<smd name="3" x="-8.75" y="-1.1525" dx="2.2" dy="0.35" layer="16" rot="R90"/>
<smd name="4" x="-8.05" y="-1.1525" dx="2.2" dy="0.35" layer="16" rot="R90"/>
<smd name="5" x="-7.35" y="-1.1525" dx="2.2" dy="0.35" layer="16" rot="R90"/>
<smd name="6" x="-6.65" y="-1.1525" dx="2.2" dy="0.35" layer="16" rot="R90"/>
<smd name="7" x="-5.95" y="-1.1525" dx="2.2" dy="0.35" layer="16" rot="R90"/>
<smd name="8" x="-5.25" y="-1.1525" dx="2.2" dy="0.35" layer="16" rot="R90"/>
<smd name="9" x="-4.55" y="-1.1525" dx="2.2" dy="0.35" layer="16" rot="R90"/>
<smd name="10" x="-3.85" y="-1.1525" dx="2.2" dy="0.35" layer="16" rot="R90"/>
<smd name="11" x="-3.15" y="-1.1525" dx="2.2" dy="0.35" layer="16" rot="R90"/>
<smd name="12" x="-2.45" y="-1.1525" dx="2.2" dy="0.35" layer="16" rot="R90"/>
<smd name="13" x="-1.75" y="-1.1525" dx="2.2" dy="0.35" layer="16" rot="R90"/>
<smd name="14" x="-1.05" y="-1.1525" dx="2.2" dy="0.35" layer="16" rot="R90"/>
<smd name="15" x="-0.35" y="-1.1525" dx="2.2" dy="0.35" layer="16" rot="R90"/>
<smd name="16" x="0.35" y="-1.1525" dx="2.2" dy="0.35" layer="16" rot="R90"/>
<smd name="17" x="1.05" y="-1.1525" dx="2.2" dy="0.35" layer="16" rot="R90"/>
<smd name="18" x="1.75" y="-1.1525" dx="2.2" dy="0.35" layer="16" rot="R90"/>
<smd name="19" x="2.45" y="-1.1525" dx="2.2" dy="0.35" layer="16" rot="R90"/>
<smd name="20" x="3.15" y="-1.1525" dx="2.2" dy="0.35" layer="16" rot="R90"/>
<smd name="21" x="3.85" y="-1.1525" dx="2.2" dy="0.35" layer="16" rot="R90"/>
<smd name="22" x="4.55" y="-1.1525" dx="2.2" dy="0.35" layer="16" rot="R90"/>
<smd name="23" x="5.25" y="-1.1525" dx="2.2" dy="0.35" layer="16" rot="R90"/>
<smd name="24" x="5.95" y="-1.1525" dx="2.2" dy="0.35" layer="16" rot="R90"/>
<smd name="25" x="6.65" y="-1.1525" dx="2.2" dy="0.35" layer="16" rot="R90"/>
<smd name="26" x="7.35" y="-1.1525" dx="2.2" dy="0.35" layer="16" rot="R90"/>
<smd name="27" x="8.05" y="-1.1525" dx="2.2" dy="0.35" layer="16" rot="R90"/>
<smd name="28" x="8.75" y="-1.1525" dx="2.2" dy="0.35" layer="16" rot="R90"/>
<smd name="29" x="9.45" y="-1.1525" dx="2.2" dy="0.35" layer="16" rot="R90"/>
<smd name="30" x="10.15" y="-1.1525" dx="2.2" dy="0.35" layer="16" rot="R90"/>
<text x="-9.95" y="1.512" size="0.8128" layer="52" font="vector" rot="R90">1</text>
<text x="-3.65" y="1.412" size="0.8128" layer="52" font="vector" rot="R90">10</text>
<text x="3.3" y="1.412" size="0.8128" layer="52" font="vector" rot="R90">20</text>
<text x="10.45" y="1.412" size="0.8128" layer="52" font="vector" rot="R90">30</text>
<text x="-11.82" y="5.47" size="0.8128" layer="25" ratio="18">&gt;NAME</text>
<text x="-11.82" y="3.6" size="0.8128" layer="27" ratio="18">&gt;VALUE</text>
<hole x="-8" y="-5.4025" drill="0.4"/>
<hole x="8" y="-5.4025" drill="0.4"/>
<wire x1="-11.1125" y1="-5.715" x2="-11.1125" y2="0.3175" width="0.254" layer="22"/>
<wire x1="-11.1125" y1="0.3175" x2="11.1125" y2="0.3175" width="0.254" layer="22"/>
<wire x1="11.1125" y1="-5.715" x2="11.1125" y2="0.3175" width="0.254" layer="22"/>
</package>
<package name="ISP6PIN">
<wire x1="-3.81" y1="-1.905" x2="-3.175" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="-2.54" x2="-1.27" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-1.905" x2="-0.635" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="0.635" y1="-2.54" x2="1.27" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="-1.905" x2="-3.81" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="1.905" x2="-3.175" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="2.54" x2="-1.905" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="2.54" x2="-1.27" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="1.905" x2="-0.635" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="2.54" x2="0.635" y2="2.54" width="0.1524" layer="21"/>
<wire x1="0.635" y1="2.54" x2="1.27" y2="1.905" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="1.905" x2="-1.27" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="1.27" y1="1.905" x2="1.27" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="-2.54" x2="0.635" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="-2.54" x2="-1.905" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="1.27" y1="-1.905" x2="1.905" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="3.175" y1="-2.54" x2="3.81" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="1.27" y1="1.905" x2="1.905" y2="2.54" width="0.1524" layer="21"/>
<wire x1="1.905" y1="2.54" x2="3.175" y2="2.54" width="0.1524" layer="21"/>
<wire x1="3.175" y1="2.54" x2="3.81" y2="1.905" width="0.1524" layer="21"/>
<wire x1="3.81" y1="1.905" x2="3.81" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="1.905" y1="-2.54" x2="3.175" y2="-2.54" width="0.1524" layer="21"/>
<pad name="GND" x="-2.54" y="-1.27" drill="1.016" diameter="1.53"/>
<pad name="RST" x="-2.54" y="1.27" drill="1.016" diameter="1.53"/>
<pad name="MOSI" x="0" y="-1.27" drill="1.016" diameter="1.53"/>
<pad name="SCK" x="0" y="1.27" drill="1.016" diameter="1.53"/>
<pad name="VCC" x="2.54" y="-1.27" drill="1.016" diameter="1.53"/>
<pad name="MISO" x="2.54" y="1.27" drill="1.016" diameter="1.53"/>
<text x="-3.81" y="3.175" size="0.8128" layer="25" ratio="18">&gt;NAME</text>
<text x="-3.81" y="-4.445" size="0.8128" layer="27" ratio="18">&gt;VALUE</text>
<rectangle x1="-2.794" y1="-1.524" x2="-2.286" y2="-1.016" layer="51"/>
<rectangle x1="-2.794" y1="1.016" x2="-2.286" y2="1.524" layer="51"/>
<rectangle x1="-0.254" y1="1.016" x2="0.254" y2="1.524" layer="51"/>
<rectangle x1="-0.254" y1="-1.524" x2="0.254" y2="-1.016" layer="51"/>
<rectangle x1="2.286" y1="1.016" x2="2.794" y2="1.524" layer="51"/>
<rectangle x1="2.286" y1="-1.524" x2="2.794" y2="-1.016" layer="51"/>
<wire x1="-1.27" y1="3.175" x2="1.27" y2="3.175" width="0.127" layer="21"/>
<wire x1="1.27" y1="3.175" x2="1.27" y2="2.54" width="0.127" layer="21"/>
<wire x1="-1.27" y1="3.175" x2="-1.27" y2="2.54" width="0.127" layer="21"/>
</package>
<package name="ISP6PIN_EDGE">
<smd name="RST" x="0" y="2.54" dx="2.54" dy="1.27" layer="1"/>
<smd name="SCK" x="0" y="0" dx="2.54" dy="1.27" layer="1"/>
<smd name="MISO" x="0" y="-2.54" dx="2.54" dy="1.27" layer="1"/>
<smd name="VCC" x="0" y="-2.54" dx="2.54" dy="1.27" layer="16" rot="R180"/>
<smd name="MOSI" x="0" y="0" dx="2.54" dy="1.27" layer="16" rot="R180"/>
<smd name="GND" x="0" y="2.54" dx="2.54" dy="1.27" layer="16" rot="R180"/>
<rectangle x1="-1.5875" y1="-1.27" x2="1.5875" y2="1.27" layer="21"/>
</package>
<package name="POGO6PIN">
<smd name="4" x="0" y="0" dx="0.889" dy="0.8128" layer="1"/>
<smd name="1" x="-1.27" y="1.27" dx="0.889" dy="0.8128" layer="1"/>
<smd name="3" x="-1.27" y="0" dx="0.889" dy="0.8128" layer="1"/>
<wire x1="-1.905" y1="1.905" x2="0.635" y2="1.905" width="0.127" layer="21"/>
<wire x1="0.635" y1="1.905" x2="0.635" y2="-1.905" width="0.127" layer="21"/>
<wire x1="0.635" y1="-1.905" x2="-1.905" y2="-1.905" width="0.127" layer="21"/>
<wire x1="-1.905" y1="-1.905" x2="-1.905" y2="1.905" width="0.127" layer="21"/>
<polygon width="0.127" layer="21">
<vertex x="-1.905" y="-1.905"/>
<vertex x="0.635" y="-1.905"/>
<vertex x="0.635" y="-0.635"/>
<vertex x="-1.905" y="-0.635"/>
</polygon>
<text x="-2.54" y="2.54" size="0.8128" layer="25" ratio="18">&gt;NAME</text>
<text x="-2.54" y="-3.81" size="0.8128" layer="27" ratio="18">&gt;VALUE</text>
<pad name="2" x="0" y="1.27" drill="0.4"/>
<pad name="6" x="0" y="-1.27" drill="0.4"/>
<smd name="5" x="-1.27" y="-1.27" dx="0.889" dy="0.8128" layer="1"/>
</package>
<package name="POGO60PIN_PIXELRGB">
<smd name="4" x="0" y="0" dx="0.889" dy="0.8128" layer="1"/>
<smd name="6" x="0" y="-1.27" dx="0.889" dy="0.8128" layer="1"/>
<smd name="3" x="-1.27" y="0" dx="0.889" dy="0.8128" layer="1"/>
<wire x1="-1.905" y1="1.905" x2="0.635" y2="1.905" width="0.127" layer="21"/>
<wire x1="0.635" y1="1.905" x2="0.635" y2="-1.905" width="0.127" layer="21"/>
<wire x1="0.635" y1="-1.905" x2="-1.905" y2="-1.905" width="0.127" layer="21"/>
<wire x1="-1.905" y1="-1.905" x2="-1.905" y2="1.905" width="0.127" layer="21"/>
<polygon width="0.127" layer="21">
<vertex x="-1.905" y="-1.905"/>
<vertex x="0.635" y="-1.905"/>
<vertex x="0.635" y="-0.635"/>
<vertex x="-1.905" y="-0.635"/>
</polygon>
<text x="-2.54" y="2.54" size="0.8128" layer="25" ratio="18">&gt;NAME</text>
<text x="-2.54" y="-3.81" size="0.8128" layer="27" ratio="18">&gt;VALUE</text>
<pad name="2" x="0" y="1.27" drill="0.4"/>
<pad name="1" x="-1.27" y="1.27" drill="0.4"/>
<smd name="5" x="-1.27" y="-1.27" dx="0.889" dy="0.8128" layer="1"/>
</package>
<package name="SOT95P275X110-5N">
<smd name="1" x="-1.27" y="0.9398" dx="1.3208" dy="0.5588" layer="1"/>
<smd name="2" x="-1.27" y="0" dx="1.3208" dy="0.5588" layer="1"/>
<smd name="3" x="-1.27" y="-0.9398" dx="1.3208" dy="0.5588" layer="1"/>
<smd name="4" x="1.27" y="-0.9398" dx="1.3208" dy="0.5588" layer="1"/>
<smd name="5" x="1.27" y="0.9398" dx="1.3208" dy="0.5588" layer="1"/>
<wire x1="-0.4318" y1="-1.4986" x2="0.4318" y2="-1.4986" width="0.1524" layer="21"/>
<wire x1="0.762" y1="-0.3302" x2="0.762" y2="0.3302" width="0.1524" layer="21"/>
<wire x1="0.4318" y1="1.4986" x2="0.3048" y2="1.4986" width="0.1524" layer="21"/>
<wire x1="0.3048" y1="1.4986" x2="-0.3048" y2="1.4986" width="0.1524" layer="21"/>
<wire x1="-0.3048" y1="1.4986" x2="-0.4318" y2="1.4986" width="0.1524" layer="21"/>
<wire x1="0.3048" y1="1.4986" x2="-0.3048" y2="1.4986" width="0.1524" layer="21" curve="-180"/>
<wire x1="-0.762" y1="-1.4986" x2="0.762" y2="-1.4986" width="0" layer="51"/>
<wire x1="0.762" y1="-1.4986" x2="0.762" y2="-1.1938" width="0" layer="51"/>
<wire x1="0.762" y1="-1.1938" x2="0.762" y2="-0.7112" width="0" layer="51"/>
<wire x1="0.762" y1="-0.7112" x2="0.762" y2="0.7112" width="0" layer="51"/>
<wire x1="0.762" y1="1.4986" x2="0.3048" y2="1.4986" width="0" layer="51"/>
<wire x1="0.3048" y1="1.4986" x2="-0.3048" y2="1.4986" width="0" layer="51"/>
<wire x1="-0.3048" y1="1.4986" x2="-0.762" y2="1.4986" width="0" layer="51"/>
<wire x1="-0.762" y1="1.4986" x2="-0.762" y2="1.1938" width="0" layer="51"/>
<wire x1="-0.762" y1="1.1938" x2="-0.762" y2="0.7112" width="0" layer="51"/>
<wire x1="-0.762" y1="0.7112" x2="-0.762" y2="0.254" width="0" layer="51"/>
<wire x1="-0.762" y1="0.254" x2="-0.762" y2="-0.254" width="0" layer="51"/>
<wire x1="-0.762" y1="-0.254" x2="-0.762" y2="-0.7112" width="0" layer="51"/>
<wire x1="-0.762" y1="1.1938" x2="-1.4986" y2="1.1938" width="0" layer="51"/>
<wire x1="-1.4986" y1="1.1938" x2="-1.4986" y2="0.7112" width="0" layer="51"/>
<wire x1="-1.4986" y1="0.7112" x2="-0.762" y2="0.7112" width="0" layer="51"/>
<wire x1="-0.762" y1="0.254" x2="-1.4986" y2="0.254" width="0" layer="51"/>
<wire x1="-1.4986" y1="0.254" x2="-1.4986" y2="-0.254" width="0" layer="51"/>
<wire x1="-1.4986" y1="-0.254" x2="-0.762" y2="-0.254" width="0" layer="51"/>
<wire x1="-0.762" y1="-1.4986" x2="-0.762" y2="-1.1938" width="0" layer="51"/>
<wire x1="-0.762" y1="-1.1938" x2="-0.762" y2="-0.7112" width="0" layer="51"/>
<wire x1="-0.762" y1="-0.7112" x2="-1.4986" y2="-0.7112" width="0" layer="51"/>
<wire x1="-1.4986" y1="-0.7112" x2="-1.4986" y2="-1.1938" width="0" layer="51"/>
<wire x1="-1.4986" y1="-1.1938" x2="-0.762" y2="-1.1938" width="0" layer="51"/>
<wire x1="0.762" y1="-1.1938" x2="1.4986" y2="-1.1938" width="0" layer="51"/>
<wire x1="1.4986" y1="-1.1938" x2="1.4986" y2="-0.7112" width="0" layer="51"/>
<wire x1="1.4986" y1="-0.7112" x2="0.762" y2="-0.7112" width="0" layer="51"/>
<wire x1="0.762" y1="1.4986" x2="0.762" y2="1.1938" width="0" layer="51"/>
<wire x1="0.762" y1="1.1938" x2="0.762" y2="0.7112" width="0" layer="51"/>
<wire x1="0.762" y1="0.7112" x2="1.4986" y2="0.7112" width="0" layer="51"/>
<wire x1="1.4986" y1="0.7112" x2="1.4986" y2="1.1938" width="0" layer="51"/>
<wire x1="1.4986" y1="1.1938" x2="0.762" y2="1.1938" width="0" layer="51"/>
<wire x1="0.3048" y1="1.4986" x2="-0.3048" y2="1.4986" width="0" layer="51" curve="-180"/>
<text x="-1.5494" y="1.905" size="0.8128" layer="25" ratio="18" rot="SR0">&gt;NAME</text>
<text x="-2.1844" y="-2.54" size="0.8128" layer="27" ratio="18" rot="SR0">&gt;VALUE</text>
</package>
<package name="SOIC16">
<smd name="1" x="-2.4638" y="4.445" dx="1.9812" dy="0.5588" layer="1"/>
<smd name="2" x="-2.4638" y="3.175" dx="1.9812" dy="0.5588" layer="1"/>
<smd name="3" x="-2.4638" y="1.905" dx="1.9812" dy="0.5588" layer="1"/>
<smd name="4" x="-2.4638" y="0.635" dx="1.9812" dy="0.5588" layer="1"/>
<smd name="5" x="-2.4638" y="-0.635" dx="1.9812" dy="0.5588" layer="1"/>
<smd name="6" x="-2.4638" y="-1.905" dx="1.9812" dy="0.5588" layer="1"/>
<smd name="7" x="-2.4638" y="-3.175" dx="1.9812" dy="0.5588" layer="1"/>
<smd name="10" x="2.4638" y="-3.175" dx="1.9812" dy="0.5588" layer="1"/>
<smd name="11" x="2.4638" y="-1.905" dx="1.9812" dy="0.5588" layer="1"/>
<smd name="12" x="2.4638" y="-0.635" dx="1.9812" dy="0.5588" layer="1"/>
<smd name="13" x="2.4638" y="0.635" dx="1.9812" dy="0.5588" layer="1"/>
<smd name="14" x="2.4638" y="1.905" dx="1.9812" dy="0.5588" layer="1"/>
<smd name="15" x="2.4638" y="3.175" dx="1.9812" dy="0.5588" layer="1"/>
<smd name="16" x="2.4638" y="4.445" dx="1.9812" dy="0.5588" layer="1"/>
<wire x1="-1.2954" y1="-5.0038" x2="1.2954" y2="-5.0038" width="0.1524" layer="21"/>
<wire x1="1.2954" y1="5.0038" x2="0.3048" y2="5.0038" width="0.1524" layer="21"/>
<wire x1="0.3048" y1="5.0038" x2="-0.3048" y2="5.0038" width="0.1524" layer="21"/>
<wire x1="-0.3048" y1="5.0038" x2="-1.2954" y2="5.0038" width="0.1524" layer="21"/>
<wire x1="0.3048" y1="5.0038" x2="-0.3048" y2="5.0038" width="0.1524" layer="21" curve="-180"/>
<text x="-1.5494" y="5.715" size="0.8128" layer="25" ratio="18" rot="SR0">&gt;NAME</text>
<text x="-1.5494" y="-6.35" size="0.8128" layer="27" ratio="18" rot="SR0">&gt;VALUE</text>
<smd name="8" x="-2.4638" y="-4.445" dx="1.9812" dy="0.5588" layer="1"/>
<smd name="9" x="2.4638" y="-4.445" dx="1.9812" dy="0.5588" layer="1"/>
</package>
<package name="SOIC8_150MIL">
<wire x1="2.4" y1="1.9" x2="2.4" y2="-1.4" width="0.2032" layer="51"/>
<wire x1="2.4" y1="-1.4" x2="2.4" y2="-1.9" width="0.2032" layer="51"/>
<wire x1="2.4" y1="-1.9" x2="-2.4" y2="-1.9" width="0.2032" layer="51"/>
<wire x1="-2.4" y1="-1.9" x2="-2.4" y2="-1.4" width="0.2032" layer="51"/>
<wire x1="-2.4" y1="-1.4" x2="-2.4" y2="1.9" width="0.2032" layer="51"/>
<wire x1="2.4" y1="-1.4" x2="-2.4" y2="-1.4" width="0.2032" layer="51"/>
<wire x1="-2.4" y1="1.9" x2="2.4" y2="1.9" width="0.2032" layer="51"/>
<wire x1="-2.4" y1="-1.9" x2="-2.4" y2="1.9" width="0.2032" layer="21"/>
<wire x1="2.4" y1="1.9" x2="2.4" y2="-1.9" width="0.2032" layer="21"/>
<circle x="-1.9304" y="-0.889" radius="0.254" width="0.2032" layer="21"/>
<smd name="2" x="-0.635" y="-2.6" dx="0.5588" dy="1.9812" layer="1"/>
<smd name="7" x="-0.635" y="2.6" dx="0.5588" dy="1.9812" layer="1"/>
<smd name="1" x="-1.905" y="-2.6" dx="0.5588" dy="1.9812" layer="1"/>
<smd name="3" x="0.635" y="-2.6" dx="0.5588" dy="1.9812" layer="1"/>
<smd name="4" x="1.905" y="-2.6" dx="0.5588" dy="1.9812" layer="1"/>
<smd name="8" x="-1.905" y="2.6" dx="0.5588" dy="1.9812" layer="1"/>
<smd name="6" x="0.635" y="2.6" dx="0.5588" dy="1.9812" layer="1"/>
<smd name="5" x="1.905" y="2.6" dx="0.5588" dy="1.9812" layer="1"/>
<text x="-1.905" y="0.381" size="0.8128" layer="25" ratio="18">&gt;NAME</text>
<text x="-1.905" y="-0.381" size="0.4064" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-2.15" y1="-3.1" x2="-1.66" y2="-2" layer="51"/>
<rectangle x1="-0.88" y1="-3.1" x2="-0.39" y2="-2" layer="51"/>
<rectangle x1="0.39" y1="-3.1" x2="0.88" y2="-2" layer="51"/>
<rectangle x1="1.66" y1="-3.1" x2="2.15" y2="-2" layer="51"/>
<rectangle x1="1.66" y1="2" x2="2.15" y2="3.1" layer="51"/>
<rectangle x1="0.39" y1="2" x2="0.88" y2="3.1" layer="51"/>
<rectangle x1="-0.88" y1="2" x2="-0.39" y2="3.1" layer="51"/>
<rectangle x1="-2.15" y1="2" x2="-1.66" y2="3.1" layer="51"/>
</package>
<package name="KMR2">
<wire x1="-2.1" y1="1.4" x2="2.1" y2="1.4" width="0.127" layer="21"/>
<wire x1="2.1" y1="1.4" x2="2.1" y2="-1.4" width="0.127" layer="21"/>
<wire x1="2.1" y1="-1.4" x2="-2.1" y2="-1.4" width="0.127" layer="21"/>
<wire x1="-2.1" y1="-1.4" x2="-2.1" y2="1.4" width="0.127" layer="21"/>
<wire x1="-0.5" y1="-0.8" x2="-1.1" y2="-0.2" width="0.127" layer="21" curve="-90"/>
<wire x1="-1.1" y1="-0.2" x2="-1.1" y2="0.2" width="0.127" layer="21"/>
<wire x1="-1.1" y1="0.2" x2="-0.5" y2="0.8" width="0.127" layer="21" curve="-90"/>
<wire x1="-0.5" y1="0.8" x2="0.5" y2="0.8" width="0.127" layer="21"/>
<wire x1="0.5" y1="0.8" x2="1.1" y2="0.2" width="0.127" layer="21" curve="-90"/>
<wire x1="1.1" y1="0.2" x2="1.1" y2="-0.2" width="0.127" layer="21"/>
<wire x1="1.1" y1="-0.2" x2="0.5" y2="-0.8" width="0.127" layer="21" curve="-90"/>
<wire x1="0.5" y1="-0.8" x2="-0.5" y2="-0.8" width="0.127" layer="21"/>
<smd name="1" x="2.1" y="0.8" dx="1.2" dy="1" layer="1"/>
<smd name="2" x="2.1" y="-0.8" dx="1.2" dy="1" layer="1"/>
<smd name="4" x="-2.1" y="-0.8" dx="1.2" dy="1" layer="1"/>
<smd name="3" x="-2.1" y="0.8" dx="1.2" dy="1" layer="1"/>
</package>
<package name="0805_DIODE">
<wire x1="-1.873" y1="0.883" x2="1.873" y2="0.883" width="0.0508" layer="39"/>
<wire x1="1.873" y1="-0.883" x2="-1.873" y2="-0.883" width="0.0508" layer="39"/>
<wire x1="-1.873" y1="-0.883" x2="-1.873" y2="0.883" width="0.0508" layer="39"/>
<wire x1="-0.381" y1="0.66" x2="0.381" y2="0.66" width="0.1016" layer="51"/>
<wire x1="-0.356" y1="-0.66" x2="0.381" y2="-0.66" width="0.1016" layer="51"/>
<wire x1="1.873" y1="0.883" x2="1.873" y2="-0.883" width="0.0508" layer="39"/>
<wire x1="1.8" y1="0.9" x2="1.8" y2="-0.9" width="0.2032" layer="21"/>
<wire x1="1.8" y1="-0.9" x2="-1.8" y2="-0.9" width="0.2032" layer="21"/>
<wire x1="-1.8" y1="-0.9" x2="-1.8" y2="0.9" width="0.2032" layer="21"/>
<wire x1="-1.8" y1="0.9" x2="1.8" y2="0.9" width="0.2032" layer="21"/>
<smd name="1" x="-0.95" y="0" dx="1.3" dy="1.5" layer="1"/>
<smd name="2" x="0.95" y="0" dx="1.3" dy="1.5" layer="1"/>
<text x="2.032" y="-0.127" size="0.8128" layer="25" ratio="18">&gt;NAME</text>
<text x="2.032" y="-0.762" size="0.4064" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-1.0922" y1="-0.7239" x2="-0.3421" y2="0.7262" layer="51"/>
<rectangle x1="0.3556" y1="-0.7239" x2="1.1057" y2="0.7262" layer="51"/>
<wire x1="0.15875" y1="0" x2="-0.15875" y2="-0.3175" width="0.127" layer="21"/>
<wire x1="-0.15875" y1="0.15875" x2="-0.15875" y2="0.3175" width="0.127" layer="21"/>
<wire x1="-0.15875" y1="0.3175" x2="0.15875" y2="0" width="0.127" layer="21"/>
<wire x1="0.15875" y1="0.3175" x2="0.15875" y2="0" width="0.127" layer="21"/>
<wire x1="0.15875" y1="0" x2="0.15875" y2="-0.3175" width="0.127" layer="21"/>
<wire x1="-0.15875" y1="-0.3175" x2="-0.15875" y2="-0.15875" width="0.127" layer="21"/>
<wire x1="-0.15875" y1="-0.15875" x2="-0.15875" y2="0" width="0.127" layer="21"/>
<wire x1="-0.15875" y1="0" x2="-0.15875" y2="0.15875" width="0.127" layer="21"/>
<wire x1="-0.15875" y1="0.15875" x2="0" y2="0" width="0.127" layer="21"/>
<wire x1="0" y1="0" x2="-0.15875" y2="-0.15875" width="0.127" layer="21"/>
<wire x1="-0.15875" y1="0" x2="0.15875" y2="0" width="0.127" layer="21"/>
</package>
<package name="1206">
<wire x1="0.9525" y1="-0.8128" x2="-0.9652" y2="-0.8128" width="0.1524" layer="51"/>
<wire x1="0.9525" y1="0.8128" x2="-0.9652" y2="0.8128" width="0.1524" layer="51"/>
<wire x1="-2.473" y1="0.983" x2="2.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="2.473" y1="0.983" x2="2.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="2.473" y1="-0.983" x2="-2.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-2.473" y1="-0.983" x2="-2.473" y2="0.983" width="0.0508" layer="39"/>
<smd name="2" x="1.422" y="0" dx="1.6" dy="1.803" layer="1"/>
<smd name="1" x="-1.422" y="0" dx="1.6" dy="1.803" layer="1"/>
<text x="-1.397" y="1.143" size="0.8128" layer="25" ratio="18">&gt;NAME</text>
<text x="-1.397" y="-2.413" size="0.8128" layer="27" ratio="18">&gt;VALUE</text>
<rectangle x1="-1.6891" y1="-0.8763" x2="-0.9525" y2="0.8763" layer="51"/>
<rectangle x1="0.9525" y1="-0.8763" x2="1.6891" y2="0.8763" layer="51"/>
<wire x1="-0.47625" y1="0.79375" x2="0.47625" y2="0.79375" width="0.127" layer="21"/>
<wire x1="-0.47625" y1="-0.79375" x2="0.47625" y2="-0.79375" width="0.127" layer="21"/>
</package>
<package name="1210K">
<wire x1="-0.9652" y1="1.2446" x2="0.9652" y2="1.2446" width="0.1016" layer="51"/>
<wire x1="-0.9652" y1="-1.2446" x2="0.9652" y2="-1.2446" width="0.1016" layer="51"/>
<smd name="1" x="-1.4" y="0" dx="1.6" dy="2.7" layer="1"/>
<smd name="2" x="1.4" y="0" dx="1.6" dy="2.7" layer="1"/>
<text x="-1.397" y="1.651" size="0.8128" layer="25" ratio="18">&gt;NAME</text>
<text x="-1.397" y="-2.921" size="0.8128" layer="27" ratio="18">&gt;VALUE</text>
<rectangle x1="-1.7018" y1="-1.2954" x2="-0.9517" y2="1.3045" layer="51"/>
<rectangle x1="0.9517" y1="-1.3045" x2="1.7018" y2="1.2954" layer="51"/>
<wire x1="-0.47625" y1="1.27" x2="0.47625" y2="1.27" width="0.127" layer="21"/>
<wire x1="-0.47625" y1="-1.27" x2="0.47625" y2="-1.27" width="0.127" layer="21"/>
</package>
<package name="TACT_SMD4">
<wire x1="-3.2" y1="3" x2="3.2" y2="3" width="0.127" layer="21"/>
<wire x1="3.2" y1="3" x2="3.2" y2="-3" width="0.127" layer="21"/>
<wire x1="3.2" y1="-3" x2="-3.2" y2="-3" width="0.127" layer="21"/>
<wire x1="-3.2" y1="-3" x2="-3.2" y2="3" width="0.127" layer="21"/>
<circle x="0" y="0" radius="1.5033" width="0.127" layer="21"/>
<circle x="0" y="0" radius="1" width="0.127" layer="21"/>
<smd name="B" x="-4.2" y="2.25" dx="1.6" dy="1.4" layer="1"/>
<smd name="B'" x="4.2" y="2.25" dx="1.6" dy="1.4" layer="1"/>
<smd name="A'" x="4.2" y="-2.25" dx="1.6" dy="1.4" layer="1"/>
<smd name="A" x="-4.2" y="-2.25" dx="1.6" dy="1.4" layer="1"/>
<text x="-3" y="3.5" size="0.8128" layer="25" ratio="18">&gt;NAME</text>
<text x="-3.2" y="-4.165" size="0.8128" layer="27" ratio="18">&gt;VALUE</text>
</package>
<package name="NX5032">
<wire x1="2.5" y1="-1.2172" x2="2.2172" y2="-1.6" width="0.127" layer="21" curve="-90"/>
<wire x1="2.2172" y1="-1.6" x2="-2.2172" y2="-1.6" width="0.127" layer="21"/>
<wire x1="-2.2172" y1="-1.6" x2="-2.5" y2="-1.2172" width="0.127" layer="21" curve="-90"/>
<wire x1="-2.5" y1="-1.2172" x2="-2.5" y2="1.3764" width="0.127" layer="21"/>
<wire x1="-2.5" y1="1.3764" x2="-2.2764" y2="1.6" width="0.127" layer="21" curve="-90"/>
<wire x1="-2.2764" y1="1.6" x2="2.1838" y2="1.6" width="0.127" layer="21"/>
<wire x1="2.1838" y1="1.6" x2="2.5" y2="1.2838" width="0.127" layer="21" curve="-90"/>
<wire x1="2.5" y1="1.2838" x2="2.5" y2="-1.2172" width="0.127" layer="21"/>
<wire x1="-1.4" y1="1.3" x2="1.4" y2="1.3" width="0.127" layer="21"/>
<wire x1="1.4" y1="1.3" x2="2" y2="0.6" width="0.127" layer="21" curve="-89.967269"/>
<wire x1="2" y1="0.6" x2="2" y2="-0.8" width="0.127" layer="21"/>
<wire x1="2" y1="-0.8" x2="1.4" y2="-1.3" width="0.127" layer="21" curve="-90"/>
<wire x1="1.4" y1="-1.3" x2="-1.3" y2="-1.3" width="0.127" layer="21"/>
<wire x1="-1.3" y1="-1.3" x2="-2" y2="-0.7" width="0.127" layer="21" curve="-90"/>
<wire x1="-2" y1="-0.7" x2="-2" y2="0.7" width="0.127" layer="21"/>
<wire x1="-2" y1="0.7" x2="-1.4" y2="1.3" width="0.127" layer="21" curve="-90"/>
<smd name="P$1" x="2.2" y="0" dx="2.4" dy="2.4" layer="1"/>
<smd name="P$2" x="-2.2" y="0" dx="2.4" dy="2.4" layer="1" rot="R180"/>
<text x="-2.6" y="1.9" size="0.8128" layer="25" font="vector" ratio="18">&gt;NAME</text>
<text x="-3" y="-3.1" size="0.8128" layer="27" font="vector" ratio="18">&gt;VALUE</text>
</package>
<package name="SOIC8_150MIL_SMPAD">
<wire x1="2.4" y1="1.9" x2="2.4" y2="-1.4" width="0.2032" layer="51"/>
<wire x1="2.4" y1="-1.4" x2="2.4" y2="-1.9" width="0.2032" layer="51"/>
<wire x1="2.4" y1="-1.9" x2="-2.4" y2="-1.9" width="0.2032" layer="51"/>
<wire x1="-2.4" y1="-1.9" x2="-2.4" y2="-1.4" width="0.2032" layer="51"/>
<wire x1="-2.4" y1="-1.4" x2="-2.4" y2="1.9" width="0.2032" layer="51"/>
<wire x1="2.4" y1="-1.4" x2="-2.4" y2="-1.4" width="0.2032" layer="51"/>
<wire x1="-2.4" y1="1.9" x2="2.4" y2="1.9" width="0.2032" layer="51"/>
<wire x1="-2.4" y1="-1.9" x2="-2.4" y2="1.9" width="0.2032" layer="21"/>
<wire x1="2.4" y1="1.9" x2="2.4" y2="-1.9" width="0.2032" layer="21"/>
<circle x="-1.9304" y="-0.889" radius="0.254" width="0.2032" layer="21"/>
<smd name="2" x="-0.635" y="-2.8" dx="0.6" dy="1.2" layer="1"/>
<smd name="7" x="-0.635" y="2.8" dx="0.6" dy="1.2" layer="1"/>
<smd name="1" x="-1.905" y="-2.8" dx="0.6" dy="1.2" layer="1"/>
<smd name="3" x="0.635" y="-2.8" dx="0.6" dy="1.2" layer="1"/>
<smd name="4" x="1.905" y="-2.8" dx="0.6" dy="1.2" layer="1"/>
<smd name="8" x="-1.905" y="2.8" dx="0.6" dy="1.2" layer="1"/>
<smd name="6" x="0.635" y="2.8" dx="0.6" dy="1.2" layer="1"/>
<smd name="5" x="1.905" y="2.8" dx="0.6" dy="1.2" layer="1"/>
<text x="-1.905" y="0.381" size="0.8128" layer="25" ratio="18">&gt;NAME</text>
<text x="-1.905" y="-0.381" size="0.4064" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-2.15" y1="-3.1" x2="-1.66" y2="-2" layer="51"/>
<rectangle x1="-0.88" y1="-3.1" x2="-0.39" y2="-2" layer="51"/>
<rectangle x1="0.39" y1="-3.1" x2="0.88" y2="-2" layer="51"/>
<rectangle x1="1.66" y1="-3.1" x2="2.15" y2="-2" layer="51"/>
<rectangle x1="1.66" y1="2" x2="2.15" y2="3.1" layer="51"/>
<rectangle x1="0.39" y1="2" x2="0.88" y2="3.1" layer="51"/>
<rectangle x1="-0.88" y1="2" x2="-0.39" y2="3.1" layer="51"/>
<rectangle x1="-2.15" y1="2" x2="-1.66" y2="3.1" layer="51"/>
<wire x1="-2.4" y1="1.9" x2="2.4" y2="1.9" width="0.2032" layer="21"/>
<wire x1="2.4" y1="-1.9" x2="-2.4" y2="-1.9" width="0.2032" layer="21"/>
</package>
<package name="SOIC16_SMPAD">
<smd name="1" x="-2.8" y="4.445" dx="1.2" dy="0.6" layer="1"/>
<smd name="2" x="-2.8" y="3.175" dx="1.2" dy="0.6" layer="1"/>
<smd name="3" x="-2.8" y="1.905" dx="1.2" dy="0.6" layer="1"/>
<smd name="4" x="-2.8" y="0.635" dx="1.2" dy="0.6" layer="1"/>
<smd name="5" x="-2.8" y="-0.635" dx="1.2" dy="0.6" layer="1"/>
<smd name="6" x="-2.8" y="-1.905" dx="1.2" dy="0.6" layer="1"/>
<smd name="7" x="-2.8" y="-3.175" dx="1.2" dy="0.6" layer="1"/>
<wire x1="-2.0066" y1="4.191" x2="-2.0066" y2="4.699" width="0" layer="51"/>
<wire x1="-2.0066" y1="4.699" x2="-3.0988" y2="4.699" width="0" layer="51"/>
<wire x1="-3.0988" y1="4.699" x2="-3.0988" y2="4.191" width="0" layer="51"/>
<wire x1="-3.0988" y1="4.191" x2="-2.0066" y2="4.191" width="0" layer="51"/>
<wire x1="-2.0066" y1="2.921" x2="-2.0066" y2="3.429" width="0" layer="51"/>
<wire x1="-2.0066" y1="3.429" x2="-3.0988" y2="3.429" width="0" layer="51"/>
<wire x1="-3.0988" y1="3.429" x2="-3.0988" y2="2.921" width="0" layer="51"/>
<wire x1="-3.0988" y1="2.921" x2="-2.0066" y2="2.921" width="0" layer="51"/>
<wire x1="-2.0066" y1="1.651" x2="-2.0066" y2="2.159" width="0" layer="51"/>
<wire x1="-2.0066" y1="2.159" x2="-3.0988" y2="2.159" width="0" layer="51"/>
<wire x1="-3.0988" y1="2.159" x2="-3.0988" y2="1.651" width="0" layer="51"/>
<wire x1="-3.0988" y1="1.651" x2="-2.0066" y2="1.651" width="0" layer="51"/>
<wire x1="-2.0066" y1="0.381" x2="-2.0066" y2="0.889" width="0" layer="51"/>
<wire x1="-2.0066" y1="0.889" x2="-3.0988" y2="0.889" width="0" layer="51"/>
<wire x1="-3.0988" y1="0.889" x2="-3.0988" y2="0.381" width="0" layer="51"/>
<wire x1="-3.0988" y1="0.381" x2="-2.0066" y2="0.381" width="0" layer="51"/>
<wire x1="-2.0066" y1="-0.889" x2="-2.0066" y2="-0.381" width="0" layer="51"/>
<wire x1="-2.0066" y1="-0.381" x2="-3.0988" y2="-0.381" width="0" layer="51"/>
<wire x1="-3.0988" y1="-0.381" x2="-3.0988" y2="-0.889" width="0" layer="51"/>
<wire x1="-3.0988" y1="-0.889" x2="-2.0066" y2="-0.889" width="0" layer="51"/>
<wire x1="-2.0066" y1="-2.159" x2="-2.0066" y2="-1.651" width="0" layer="51"/>
<wire x1="-2.0066" y1="-1.651" x2="-3.0988" y2="-1.651" width="0" layer="51"/>
<wire x1="-3.0988" y1="-1.651" x2="-3.0988" y2="-2.159" width="0" layer="51"/>
<wire x1="-3.0988" y1="-2.159" x2="-2.0066" y2="-2.159" width="0" layer="51"/>
<wire x1="-2.0066" y1="-3.429" x2="-2.0066" y2="-2.921" width="0" layer="51"/>
<wire x1="-2.0066" y1="-2.921" x2="-3.0988" y2="-2.921" width="0" layer="51"/>
<wire x1="-3.0988" y1="-2.921" x2="-3.0988" y2="-3.429" width="0" layer="51"/>
<wire x1="-3.0988" y1="-3.429" x2="-2.0066" y2="-3.429" width="0" layer="51"/>
<wire x1="2.0066" y1="-2.921" x2="2.0066" y2="-3.429" width="0" layer="51"/>
<wire x1="2.0066" y1="-3.429" x2="3.0988" y2="-3.429" width="0" layer="51"/>
<wire x1="3.0988" y1="-3.429" x2="3.0988" y2="-2.921" width="0" layer="51"/>
<wire x1="3.0988" y1="-2.921" x2="2.0066" y2="-2.921" width="0" layer="51"/>
<wire x1="2.0066" y1="-1.651" x2="2.0066" y2="-2.159" width="0" layer="51"/>
<wire x1="2.0066" y1="-2.159" x2="3.0988" y2="-2.159" width="0" layer="51"/>
<wire x1="3.0988" y1="-2.159" x2="3.0988" y2="-1.651" width="0" layer="51"/>
<wire x1="3.0988" y1="-1.651" x2="2.0066" y2="-1.651" width="0" layer="51"/>
<wire x1="2.0066" y1="-0.381" x2="2.0066" y2="-0.889" width="0" layer="51"/>
<wire x1="2.0066" y1="-0.889" x2="3.0988" y2="-0.889" width="0" layer="51"/>
<wire x1="3.0988" y1="-0.889" x2="3.0988" y2="-0.381" width="0" layer="51"/>
<wire x1="3.0988" y1="-0.381" x2="2.0066" y2="-0.381" width="0" layer="51"/>
<wire x1="2.0066" y1="0.889" x2="2.0066" y2="0.381" width="0" layer="51"/>
<wire x1="2.0066" y1="0.381" x2="3.0988" y2="0.381" width="0" layer="51"/>
<wire x1="3.0988" y1="0.381" x2="3.0988" y2="0.889" width="0" layer="51"/>
<wire x1="3.0988" y1="0.889" x2="2.0066" y2="0.889" width="0" layer="51"/>
<wire x1="2.0066" y1="2.159" x2="2.0066" y2="1.651" width="0" layer="51"/>
<wire x1="2.0066" y1="1.651" x2="3.0988" y2="1.651" width="0" layer="51"/>
<wire x1="3.0988" y1="1.651" x2="3.0988" y2="2.159" width="0" layer="51"/>
<wire x1="3.0988" y1="2.159" x2="2.0066" y2="2.159" width="0" layer="51"/>
<wire x1="2.0066" y1="3.429" x2="2.0066" y2="2.921" width="0" layer="51"/>
<wire x1="2.0066" y1="2.921" x2="3.0988" y2="2.921" width="0" layer="51"/>
<wire x1="3.0988" y1="2.921" x2="3.0988" y2="3.429" width="0" layer="51"/>
<wire x1="3.0988" y1="3.429" x2="2.0066" y2="3.429" width="0" layer="51"/>
<wire x1="2.0066" y1="4.699" x2="2.0066" y2="4.191" width="0" layer="51"/>
<wire x1="2.0066" y1="4.191" x2="3.0988" y2="4.191" width="0" layer="51"/>
<wire x1="3.0988" y1="4.191" x2="3.0988" y2="4.699" width="0" layer="51"/>
<wire x1="3.0988" y1="4.699" x2="2.0066" y2="4.699" width="0" layer="51"/>
<wire x1="-2.0066" y1="-5.0038" x2="2.0066" y2="-5.0038" width="0" layer="51"/>
<wire x1="2.0066" y1="-5.0038" x2="2.0066" y2="-4.699" width="0" layer="51"/>
<wire x1="2.0066" y1="-4.699" x2="2.0066" y2="-4.191" width="0" layer="51"/>
<wire x1="2.0066" y1="-4.191" x2="2.0066" y2="5.0038" width="0" layer="51"/>
<wire x1="2.0066" y1="5.0038" x2="0.3048" y2="5.0038" width="0" layer="51"/>
<wire x1="0.3048" y1="5.0038" x2="-0.3048" y2="5.0038" width="0" layer="51"/>
<wire x1="-0.3048" y1="5.0038" x2="-2.0066" y2="5.0038" width="0" layer="51"/>
<wire x1="-2.0066" y1="5.0038" x2="-2.0066" y2="-4.191" width="0" layer="51"/>
<wire x1="-2.0066" y1="-4.191" x2="-2.0066" y2="-4.699" width="0" layer="51"/>
<wire x1="-2.0066" y1="-4.699" x2="-2.0066" y2="-5.0038" width="0" layer="51"/>
<wire x1="0.3048" y1="5.0038" x2="-0.3048" y2="5.0038" width="0" layer="51" curve="-180"/>
<wire x1="-1.9304" y1="-5.0038" x2="1.9304" y2="-5.0038" width="0.1524" layer="21"/>
<wire x1="1.9304" y1="5.0038" x2="0.3048" y2="5.0038" width="0.1524" layer="21"/>
<wire x1="0.3048" y1="5.0038" x2="-0.3048" y2="5.0038" width="0.1524" layer="21"/>
<wire x1="-0.3048" y1="5.0038" x2="-1.9304" y2="5.0038" width="0.1524" layer="21"/>
<wire x1="0.3048" y1="5.0038" x2="-0.3048" y2="5.0038" width="0.1524" layer="21" curve="-180"/>
<text x="-2.1844" y="5.715" size="0.8128" layer="25" ratio="18" rot="SR0">&gt;NAME</text>
<text x="-2.1844" y="-6.35" size="0.8128" layer="27" ratio="18" rot="SR0">&gt;VALUE</text>
<wire x1="-1.9304" y1="-5.0038" x2="-1.9304" y2="5.0038" width="0.1524" layer="21"/>
<wire x1="1.9304" y1="-5.0038" x2="1.9304" y2="5.0038" width="0.1524" layer="21"/>
<wire x1="-3.0988" y1="-4.699" x2="-2.0066" y2="-4.699" width="0" layer="51"/>
<wire x1="-2.0066" y1="-4.191" x2="-3.0988" y2="-4.191" width="0" layer="51"/>
<wire x1="-3.0988" y1="-4.191" x2="-3.0988" y2="-4.699" width="0" layer="51"/>
<wire x1="3.0988" y1="-3.429" x2="3.0988" y2="-2.921" width="0" layer="51"/>
<wire x1="3.0988" y1="-4.699" x2="3.0988" y2="-4.191" width="0" layer="51"/>
<wire x1="2.0066" y1="-4.699" x2="3.0988" y2="-4.699" width="0" layer="51"/>
<wire x1="3.0988" y1="-4.191" x2="2.0066" y2="-4.191" width="0" layer="51"/>
<smd name="8" x="-2.8" y="-4.445" dx="1.2" dy="0.6" layer="1"/>
<smd name="9" x="2.8" y="-4.445" dx="1.2" dy="0.6" layer="1"/>
<smd name="10" x="2.8" y="-3.175" dx="1.2" dy="0.6" layer="1"/>
<smd name="11" x="2.8" y="-1.905" dx="1.2" dy="0.6" layer="1"/>
<smd name="12" x="2.8" y="-0.635" dx="1.2" dy="0.6" layer="1"/>
<smd name="13" x="2.8" y="0.635" dx="1.2" dy="0.6" layer="1"/>
<smd name="14" x="2.8" y="1.905" dx="1.2" dy="0.6" layer="1"/>
<smd name="15" x="2.8" y="3.175" dx="1.2" dy="0.6" layer="1"/>
<smd name="16" x="2.8" y="4.445" dx="1.2" dy="0.6" layer="1"/>
</package>
<package name="PANASONIC_C">
<wire x1="-2.6" y1="2.6" x2="1.25" y2="2.6" width="0.1016" layer="51"/>
<wire x1="1.25" y1="2.6" x2="2.6" y2="1.25" width="0.1016" layer="51"/>
<wire x1="2.6" y1="1.25" x2="2.6" y2="-1.25" width="0.1016" layer="51"/>
<wire x1="2.6" y1="-1.25" x2="1.25" y2="-2.6" width="0.1016" layer="51"/>
<wire x1="1.25" y1="-2.6" x2="-2.6" y2="-2.6" width="0.1016" layer="51"/>
<wire x1="-2.6" y1="-2.6" x2="-2.6" y2="2.6" width="0.1016" layer="51"/>
<wire x1="-2.6" y1="0.95" x2="-2.6" y2="2.6" width="0.2032" layer="21"/>
<wire x1="-2.6" y1="2.6" x2="1.25" y2="2.6" width="0.2032" layer="21"/>
<wire x1="1.25" y1="2.6" x2="2.6" y2="1.25" width="0.2032" layer="21"/>
<wire x1="2.6" y1="1.25" x2="2.6" y2="0.95" width="0.2032" layer="21"/>
<wire x1="2.6" y1="-0.95" x2="2.6" y2="-1.25" width="0.2032" layer="21"/>
<wire x1="2.6" y1="-1.25" x2="1.25" y2="-2.6" width="0.2032" layer="21"/>
<wire x1="1.25" y1="-2.6" x2="-2.6" y2="-2.6" width="0.2032" layer="21"/>
<wire x1="-2.6" y1="-2.6" x2="-2.6" y2="-0.95" width="0.2032" layer="21"/>
<wire x1="-1.55" y1="1.85" x2="-1.55" y2="-1.85" width="0.1016" layer="51"/>
<circle x="0" y="0" radius="2.45" width="0.1016" layer="51"/>
<smd name="-" x="-2.2" y="0" dx="2.85" dy="1.4" layer="1"/>
<smd name="+" x="2.2" y="0" dx="2.85" dy="1.4" layer="1"/>
<text x="-2.54" y="2.794" size="0.8128" layer="25" ratio="18">&gt;NAME</text>
<text x="-2.54" y="-3.683" size="0.4064" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-2.95" y1="-0.35" x2="-2.4" y2="0.35" layer="51"/>
<rectangle x1="2.4" y1="-0.35" x2="2.95" y2="0.35" layer="51"/>
<polygon width="0.1016" layer="51">
<vertex x="-1.6" y="1.8"/>
<vertex x="-2" y="1.35"/>
<vertex x="-2.25" y="0.75"/>
<vertex x="-2.45" y="0.05"/>
<vertex x="-2.25" y="-0.75"/>
<vertex x="-1.95" y="-1.35"/>
<vertex x="-1.6" y="-1.8"/>
</polygon>
</package>
</packages>
<symbols>
<symbol name="BUZZER">
<pin name="VCC" x="-2.54" y="0" visible="off" length="point" direction="pas" rot="R90"/>
<pin name="GND" x="2.54" y="0" visible="off" length="point" direction="pas" rot="R90"/>
<wire x1="-1.27" y1="0" x2="-1.27" y2="2.54" width="0.1524" layer="94"/>
<wire x1="1.27" y1="0" x2="1.27" y2="2.54" width="0.1524" layer="94"/>
<wire x1="-3.81" y1="5.08" x2="-1.27" y2="2.54" width="0.254" layer="94" curve="90"/>
<wire x1="-1.27" y1="2.54" x2="1.27" y2="2.54" width="0.254" layer="94"/>
<wire x1="1.27" y1="2.54" x2="4.064" y2="5.08" width="0.254" layer="94" curve="90"/>
<wire x1="4.064" y1="5.08" x2="-3.81" y2="5.08" width="0.254" layer="94"/>
<wire x1="-2.54" y1="0" x2="-1.27" y2="0" width="0.1524" layer="94"/>
<wire x1="2.54" y1="0" x2="1.27" y2="0" width="0.1524" layer="94"/>
<text x="-3.048" y="5.588" size="1.27" layer="95">&gt;NAME</text>
<text x="4.572" y="3.048" size="1.27" layer="95">&gt;VALUE</text>
<wire x1="-4.572" y1="2.032" x2="-3.556" y2="2.032" width="0.254" layer="94"/>
<wire x1="-4.064" y1="2.54" x2="-4.064" y2="1.524" width="0.254" layer="94"/>
</symbol>
<symbol name="USB">
<wire x1="5.08" y1="8.89" x2="0" y2="8.89" width="0.254" layer="94"/>
<wire x1="0" y1="8.89" x2="0" y2="-3.81" width="0.254" layer="94"/>
<wire x1="0" y1="-3.81" x2="5.08" y2="-3.81" width="0.254" layer="94"/>
<text x="3.81" y="0" size="2.54" layer="94" rot="R90">USB</text>
<pin name="D+" x="-2.54" y="7.62" visible="pad" length="short"/>
<pin name="D-" x="-2.54" y="5.08" visible="pad" length="short"/>
<pin name="VBUS" x="-2.54" y="2.54" visible="pad" length="short"/>
<pin name="GND" x="-2.54" y="0" visible="pad" length="short"/>
<pin name="ID" x="-2.54" y="-2.54" visible="pad" length="short"/>
<pin name="SHEILD1" x="0" y="-7.62" visible="pad" length="short" rot="R90"/>
<pin name="SHEILD2" x="2.54" y="-7.62" visible="pad" length="short" rot="R90"/>
<wire x1="0" y1="-5.08" x2="5.08" y2="-5.08" width="0.254" layer="94" style="shortdash"/>
</symbol>
<symbol name="UG-2864HSWEG01">
<wire x1="-22.86" y1="38.1" x2="21.59" y2="38.1" width="0.254" layer="94"/>
<wire x1="21.59" y1="38.1" x2="21.59" y2="-40.64" width="0.254" layer="94"/>
<wire x1="21.59" y1="-40.64" x2="-22.86" y2="-40.64" width="0.254" layer="94"/>
<wire x1="-22.86" y1="-40.64" x2="-22.86" y2="38.1" width="0.254" layer="94"/>
<wire x1="6.35" y1="-10.16" x2="7.62" y2="-10.16" width="0.254" layer="97" style="shortdash"/>
<wire x1="7.62" y1="-10.16" x2="7.62" y2="-12.7" width="0.254" layer="97" style="shortdash"/>
<wire x1="7.62" y1="-12.7" x2="-5.08" y2="-12.7" width="0.254" layer="97" style="shortdash"/>
<wire x1="-14.605" y1="12.7" x2="-5.715" y2="12.7" width="0.254" layer="97" style="shortdash"/>
<wire x1="-14.605" y1="10.16" x2="-5.715" y2="10.16" width="0.254" layer="97" style="shortdash"/>
<wire x1="-14.605" y1="7.62" x2="-5.715" y2="7.62" width="0.254" layer="97" style="shortdash"/>
<text x="-22.86" y="40.64" size="1.27" layer="95" font="vector">&gt;NAME</text>
<text x="-22.86" y="-43.18" size="1.27" layer="96" font="vector">&gt;VALUE</text>
<text x="-11.43" y="29.21" size="2.54" layer="94">128x64 OLED</text>
<text x="-4.445" y="15.24" size="1.778" layer="97">I2C</text>
<text x="3.81" y="15.24" size="1.778" layer="97">SPI3</text>
<text x="-3.175" y="12.065" size="1.778" layer="97">0</text>
<text x="-3.175" y="6.985" size="1.778" layer="97">0</text>
<text x="5.08" y="9.525" size="1.778" layer="97">0</text>
<text x="5.08" y="6.985" size="1.778" layer="97">0</text>
<text x="5.08" y="12.065" size="1.778" layer="97">1</text>
<text x="-3.175" y="9.525" size="1.778" layer="97">1</text>
<text x="8.89" y="-10.795" size="1.778" layer="97">Connect</text>
<text x="8.89" y="-13.335" size="1.778" layer="97">for I2C</text>
<text x="-12.7" y="22.86" size="1.778" layer="97">Controller:</text>
<text x="5.08" y="22.86" size="1.778" layer="97">SSD1306</text>
<text x="-12.7" y="20.32" size="1.778" layer="97">VDD:</text>
<text x="5.08" y="20.32" size="1.778" layer="97">2.8-3.3V</text>
<text x="11.43" y="15.24" size="1.778" layer="97">SPI4</text>
<text x="12.7" y="9.525" size="1.778" layer="97">0</text>
<text x="12.7" y="12.065" size="1.778" layer="97">0</text>
<text x="12.7" y="6.985" size="1.778" layer="97">0</text>
<pin name="NC(GND)@1" x="-25.4" y="35.56" length="short" direction="in"/>
<pin name="C2P" x="-25.4" y="33.02" length="short" direction="in"/>
<pin name="C2N" x="-25.4" y="30.48" length="short" direction="in"/>
<pin name="C1P" x="-25.4" y="27.94" length="short" direction="in"/>
<pin name="C1N" x="-25.4" y="25.4" length="short" direction="in"/>
<pin name="VBAT" x="-25.4" y="22.86" length="short" direction="in"/>
<pin name="NC" x="-25.4" y="20.32" length="short" direction="nc"/>
<pin name="VSS" x="-25.4" y="17.78" length="short" direction="pwr"/>
<pin name="VDD" x="-25.4" y="15.24" length="short" direction="pwr"/>
<pin name="BS0" x="-25.4" y="12.7" length="short" direction="in"/>
<pin name="BS1" x="-25.4" y="10.16" length="short" direction="in"/>
<pin name="BS2" x="-25.4" y="7.62" length="short" direction="in"/>
<pin name="/CS" x="-25.4" y="5.08" length="short" direction="in"/>
<pin name="/RES" x="-25.4" y="2.54" length="short" direction="in"/>
<pin name="DC/I2C_SA0" x="-25.4" y="0" length="short" direction="in"/>
<pin name="R/W" x="-25.4" y="-2.54" length="short" direction="in"/>
<pin name="E/RD" x="-25.4" y="-5.08" length="short" direction="in"/>
<pin name="D0/SPI_SCLK/I2C_SCK" x="-25.4" y="-7.62" length="short"/>
<pin name="D1/SPI_SDIN/I2C_SDA" x="-25.4" y="-10.16" length="short"/>
<pin name="D2/I2C_SDA" x="-25.4" y="-12.7" length="short"/>
<pin name="D3" x="-25.4" y="-15.24" length="short"/>
<pin name="D4" x="-25.4" y="-17.78" length="short"/>
<pin name="D5" x="-25.4" y="-20.32" length="short"/>
<pin name="D6" x="-25.4" y="-22.86" length="short"/>
<pin name="D7" x="-25.4" y="-25.4" length="short"/>
<pin name="IREF" x="-25.4" y="-27.94" length="short" direction="in"/>
<pin name="VCOMH" x="-25.4" y="-30.48" length="short" direction="out"/>
<pin name="VCC" x="-25.4" y="-33.02" length="short" direction="pwr"/>
<pin name="VLSS" x="-25.4" y="-35.56" length="short" direction="pwr"/>
<pin name="NC(GND)@2" x="-25.4" y="-38.1" length="short" direction="in"/>
</symbol>
<symbol name="FRAME_A3">
<wire x1="288.29" y1="3.81" x2="383.54" y2="3.81" width="0.1016" layer="94"/>
<wire x1="383.54" y1="3.81" x2="383.54" y2="8.89" width="0.1016" layer="94"/>
<wire x1="383.54" y1="8.89" x2="383.54" y2="13.97" width="0.1016" layer="94"/>
<wire x1="383.54" y1="13.97" x2="383.54" y2="19.05" width="0.1016" layer="94"/>
<wire x1="383.54" y1="19.05" x2="383.54" y2="36.83" width="0.1016" layer="94"/>
<wire x1="297.18" y1="3.81" x2="297.18" y2="8.89" width="0.1016" layer="94"/>
<wire x1="297.18" y1="8.89" x2="297.18" y2="13.97" width="0.1016" layer="94"/>
<wire x1="297.18" y1="13.97" x2="297.18" y2="19.05" width="0.1016" layer="94"/>
<wire x1="297.18" y1="19.05" x2="297.18" y2="36.83" width="0.1016" layer="94"/>
<wire x1="297.18" y1="36.83" x2="383.54" y2="36.83" width="0.1016" layer="94"/>
<wire x1="341.63" y1="13.97" x2="341.63" y2="8.89" width="0.1016" layer="94"/>
<wire x1="341.63" y1="8.89" x2="383.54" y2="8.89" width="0.1016" layer="94"/>
<wire x1="341.63" y1="8.89" x2="297.18" y2="8.89" width="0.1016" layer="94"/>
<wire x1="297.18" y1="13.97" x2="341.63" y2="13.97" width="0.1016" layer="94"/>
<wire x1="341.63" y1="13.97" x2="383.54" y2="13.97" width="0.1016" layer="94"/>
<wire x1="297.18" y1="19.05" x2="383.54" y2="19.05" width="0.1016" layer="94"/>
<wire x1="341.63" y1="8.89" x2="341.63" y2="3.81" width="0.1016" layer="94"/>
<text x="298.45" y="15.24" size="2.54" layer="94" font="vector">&gt;DRAWING_NAME</text>
<text x="298.45" y="10.16" size="2.286" layer="94" font="vector">&gt;LAST_DATE_TIME</text>
<text x="357.505" y="10.16" size="2.54" layer="94" font="vector">&gt;SHEET</text>
<text x="343.916" y="10.033" size="2.54" layer="94" font="vector">Sheet:</text>
<text x="343.916" y="4.953" size="2.54" layer="94" font="vector">Zak Kemble</text>
<text x="298.45" y="5.08" size="2.54" layer="94" font="vector">Drawing:</text>
<frame x1="0" y1="0" x2="387.35" y2="260.35" columns="8" rows="5" layer="94"/>
</symbol>
<symbol name="SPST_TACT">
<wire x1="1.905" y1="0" x2="2.54" y2="0" width="0.254" layer="94"/>
<wire x1="1.905" y1="4.445" x2="1.905" y2="3.175" width="0.254" layer="94"/>
<wire x1="-1.905" y1="4.445" x2="-1.905" y2="3.175" width="0.254" layer="94"/>
<wire x1="1.905" y1="4.445" x2="0" y2="4.445" width="0.254" layer="94"/>
<wire x1="0" y1="4.445" x2="-1.905" y2="4.445" width="0.254" layer="94"/>
<wire x1="0" y1="2.54" x2="0" y2="1.905" width="0.1524" layer="94"/>
<wire x1="0" y1="1.27" x2="0" y2="0.635" width="0.1524" layer="94"/>
<wire x1="0" y1="4.445" x2="0" y2="3.175" width="0.1524" layer="94"/>
<wire x1="2.54" y1="-2.54" x2="2.54" y2="0" width="0.1524" layer="94"/>
<wire x1="-2.54" y1="-2.54" x2="-2.54" y2="0" width="0.1524" layer="94"/>
<wire x1="-2.54" y1="0" x2="1.905" y2="1.27" width="0.254" layer="94"/>
<circle x="-2.54" y="0" radius="0.127" width="0.4064" layer="94"/>
<circle x="2.54" y="0" radius="0.127" width="0.4064" layer="94"/>
<text x="-2.54" y="6.35" size="1.778" layer="95">&gt;NAME</text>
<text x="3.175" y="3.81" size="1.778" layer="96">&gt;VALUE</text>
<pin name="P" x="-5.08" y="0" visible="pad" length="short" direction="pas" swaplevel="2"/>
<pin name="S" x="5.08" y="0" visible="pad" length="short" direction="pas" swaplevel="1" rot="R180"/>
<pin name="S1" x="5.08" y="-2.54" visible="pad" length="short" direction="pas" swaplevel="1" rot="R180"/>
<pin name="P1" x="-5.08" y="-2.54" visible="pad" length="short" direction="pas" swaplevel="2"/>
</symbol>
<symbol name="ISP6PIN">
<wire x1="-3.81" y1="-5.08" x2="6.35" y2="-5.08" width="0.4064" layer="94"/>
<wire x1="6.35" y1="-5.08" x2="6.35" y2="5.08" width="0.4064" layer="94"/>
<wire x1="6.35" y1="5.08" x2="-3.81" y2="5.08" width="0.4064" layer="94"/>
<wire x1="-3.81" y1="5.08" x2="-3.81" y2="-5.08" width="0.4064" layer="94"/>
<text x="-6.35" y="5.715" size="1.778" layer="95">&gt;NAME</text>
<text x="-6.35" y="-7.62" size="1.778" layer="96">&gt;VALUE</text>
<pin name="2" x="5.08" y="2.54" visible="pad" length="short" direction="pwr" function="dot" rot="R180"/>
<pin name="1" x="-2.54" y="2.54" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="4" x="5.08" y="0" visible="pad" length="short" direction="pas" function="dot" rot="R180"/>
<pin name="3" x="-2.54" y="0" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="6" x="5.08" y="-2.54" visible="pad" length="short" direction="pas" function="dot" rot="R180"/>
<pin name="5" x="-2.54" y="-2.54" visible="pad" length="short" direction="pas" function="dot"/>
</symbol>
<symbol name="REGULATOR_5">
<pin name="VIN" x="-12.7" y="5.08" length="short" direction="pwr"/>
<pin name="GND" x="-12.7" y="0" length="short" direction="pas"/>
<pin name="VOUT" x="12.7" y="5.08" length="short" direction="out" rot="R180"/>
<wire x1="-10.16" y1="7.62" x2="-10.16" y2="-7.62" width="0.4064" layer="94"/>
<wire x1="-10.16" y1="-7.62" x2="10.16" y2="-7.62" width="0.4064" layer="94"/>
<wire x1="10.16" y1="-7.62" x2="10.16" y2="7.62" width="0.4064" layer="94"/>
<wire x1="10.16" y1="7.62" x2="-10.16" y2="7.62" width="0.4064" layer="94"/>
<text x="-7.2136" y="9.9314" size="1.778" layer="95" ratio="10" rot="SR0">&gt;NAME</text>
<text x="-7.0612" y="13.2334" size="1.778" layer="96" ratio="10" rot="SR0">&gt;VALUE</text>
<pin name="EN" x="-12.7" y="-5.08" length="short" direction="in"/>
<pin name="BYPASS" x="12.7" y="-5.08" length="short" direction="pas" rot="R180"/>
</symbol>
<symbol name="CH340G">
<pin name="3V3" x="-12.7" y="12.7" length="short" direction="in"/>
<pin name="USB-" x="-12.7" y="0" length="short" direction="pas"/>
<pin name="GND" x="-12.7" y="-10.16" length="short" direction="pas"/>
<pin name="TXD" x="12.7" y="15.24" length="short" direction="out" rot="R180"/>
<pin name="RXD" x="12.7" y="12.7" length="short" direction="out" rot="R180"/>
<pin name="RTS" x="12.7" y="7.62" length="short" direction="out" rot="R180"/>
<wire x1="-10.16" y1="17.78" x2="-10.16" y2="-17.78" width="0.4064" layer="94"/>
<wire x1="-10.16" y1="-17.78" x2="10.16" y2="-17.78" width="0.4064" layer="94"/>
<wire x1="10.16" y1="-17.78" x2="10.16" y2="17.78" width="0.4064" layer="94"/>
<wire x1="10.16" y1="17.78" x2="-10.16" y2="17.78" width="0.4064" layer="94"/>
<text x="-4.8768" y="22.2758" size="2.0828" layer="95" ratio="10" rot="SR0">&gt;NAME</text>
<text x="-4.9276" y="18.8722" size="2.0828" layer="96" ratio="10" rot="SR0">&gt;VALUE</text>
<pin name="VCC" x="-12.7" y="15.24" length="short" direction="pas"/>
<pin name="USB+" x="-12.7" y="2.54" length="short" direction="pas"/>
<pin name="XI" x="-5.08" y="-20.32" length="short" direction="pas" rot="R90"/>
<pin name="XO" x="5.08" y="-20.32" length="short" direction="pas" rot="R90"/>
<pin name="DTR" x="12.7" y="5.08" length="short" direction="out" rot="R180"/>
<pin name="DCD" x="12.7" y="2.54" length="short" direction="out" rot="R180"/>
<pin name="RI" x="12.7" y="0" length="short" direction="out" rot="R180"/>
<pin name="DSR" x="12.7" y="-2.54" length="short" direction="out" rot="R180"/>
<pin name="CTS" x="12.7" y="-5.08" length="short" direction="out" rot="R180"/>
<pin name="RS232" x="12.7" y="-10.16" length="short" direction="out" rot="R180"/>
</symbol>
<symbol name="DS3231MZ+">
<pin name="VCC" x="-17.78" y="15.24" length="middle" direction="pwr"/>
<pin name="VBAT" x="-17.78" y="10.16" length="middle" direction="pwr"/>
<pin name="SCL" x="17.78" y="7.62" length="middle" direction="in" rot="R180"/>
<pin name="~RST" x="17.78" y="-2.54" length="middle" rot="R180"/>
<pin name="GND" x="-17.78" y="-2.54" length="middle" direction="pas"/>
<pin name="32KHZ" x="17.78" y="15.24" length="middle" direction="out" rot="R180"/>
<pin name="SDA" x="17.78" y="10.16" length="middle" rot="R180"/>
<pin name="~INT/SQW" x="17.78" y="2.54" length="middle" direction="out" rot="R180"/>
<wire x1="-12.7" y1="17.78" x2="-12.7" y2="-5.08" width="0.4064" layer="94"/>
<wire x1="-12.7" y1="-5.08" x2="12.7" y2="-5.08" width="0.4064" layer="94"/>
<wire x1="12.7" y1="-5.08" x2="12.7" y2="17.78" width="0.4064" layer="94"/>
<wire x1="12.7" y1="17.78" x2="-12.7" y2="17.78" width="0.4064" layer="94"/>
<text x="-4.8768" y="19.7358" size="2.0828" layer="95" ratio="10" rot="SR0">&gt;NAME</text>
<text x="-5.1816" y="-8.5598" size="2.0828" layer="96" ratio="10" rot="SR0">&gt;VALUE</text>
</symbol>
<symbol name="GATE_OR">
<wire x1="-6.096" y1="5.08" x2="-2.286" y2="5.08" width="0.254" layer="94"/>
<wire x1="-2.286" y1="5.08" x2="7.62" y2="0" width="0.254" layer="94" curve="-53.130102"/>
<wire x1="-6.096" y1="-5.08" x2="-2.54" y2="-5.08" width="0.254" layer="94"/>
<wire x1="-2.54" y1="-5.08" x2="7.62" y2="0" width="0.254" layer="94" curve="53.130102"/>
<wire x1="-4.826" y1="-0.254" x2="-4.826" y2="0.254" width="0.254" layer="94"/>
<wire x1="-4.826" y1="-0.254" x2="-6.096" y2="-5.08" width="0.254" layer="94" curve="-29.487126"/>
<wire x1="-4.826" y1="0.254" x2="-6.096" y2="5.08" width="0.254" layer="94" curve="29.487126"/>
<pin name="A" x="-7.62" y="2.54" visible="pad" length="short" direction="in"/>
<pin name="B" x="-7.62" y="-2.54" visible="pad" length="short" direction="in"/>
<pin name="Y" x="10.16" y="0" visible="pad" length="short" direction="out" rot="R180"/>
<text x="-5.08" y="5.842" size="1.27" layer="95">&gt;NAME</text>
<text x="-5.08" y="-6.858" size="1.27" layer="95">&gt;VALUE</text>
</symbol>
<symbol name="PWRN">
<text x="-0.635" y="-0.635" size="1.778" layer="95">&gt;NAME</text>
<text x="1.905" y="-6.35" size="1.27" layer="95" rot="R90">GND</text>
<text x="1.905" y="2.54" size="1.27" layer="95" rot="R90">VCC</text>
<pin name="GND" x="0" y="-7.62" visible="pad" length="middle" direction="pwr" rot="R90"/>
<pin name="VCC" x="0" y="7.62" visible="pad" length="middle" direction="pwr" rot="R270"/>
</symbol>
<symbol name="DIODE">
<wire x1="-1.27" y1="1.27" x2="-1.27" y2="-1.27" width="0.254" layer="94"/>
<wire x1="-1.27" y1="-1.27" x2="1.27" y2="0" width="0.254" layer="94"/>
<wire x1="1.27" y1="0" x2="-1.27" y2="1.27" width="0.254" layer="94"/>
<wire x1="1.27" y1="1.27" x2="1.27" y2="0" width="0.254" layer="94"/>
<wire x1="1.27" y1="0" x2="1.27" y2="-1.27" width="0.254" layer="94"/>
<text x="-2.54" y="2.54" size="1.27" layer="95">&gt;NAME</text>
<text x="-2.54" y="-3.81" size="1.27" layer="96">&gt;VALUE</text>
<pin name="A" x="-2.54" y="0" visible="off" length="short" direction="pas"/>
<pin name="C" x="2.54" y="0" visible="off" length="short" direction="pas" rot="R180"/>
</symbol>
<symbol name="FUSE">
<wire x1="-2.54" y1="0" x2="0" y2="0" width="0.254" layer="94" curve="-126.869898"/>
<wire x1="0" y1="0" x2="2.54" y2="0" width="0.254" layer="94" curve="180"/>
<text x="-3.81" y="-3.81" size="1.778" layer="96">&gt;VALUE</text>
<text x="-3.81" y="2.54" size="1.778" layer="95">&gt;NAME</text>
<pin name="1" x="-5.08" y="0" visible="off" length="short" direction="pas" swaplevel="1"/>
<pin name="2" x="5.08" y="0" visible="off" length="short" direction="pas" swaplevel="1" rot="R180"/>
</symbol>
<symbol name="XTAL">
<wire x1="-2.54" y1="2.54" x2="-2.54" y2="-2.54" width="0.254" layer="94"/>
<wire x1="2.54" y1="2.54" x2="2.54" y2="-2.54" width="0.254" layer="94"/>
<wire x1="-1.27" y1="2.54" x2="-1.27" y2="-2.54" width="0.254" layer="94"/>
<wire x1="-1.27" y1="-2.54" x2="1.27" y2="-2.54" width="0.254" layer="94"/>
<wire x1="1.27" y1="-2.54" x2="1.27" y2="2.54" width="0.254" layer="94"/>
<wire x1="1.27" y1="2.54" x2="-1.27" y2="2.54" width="0.254" layer="94"/>
<text x="-2.54" y="3.81" size="1.27" layer="95" font="vector">&gt;NAME</text>
<text x="-3.81" y="-5.08" size="1.27" layer="96" font="vector">&gt;VALUE</text>
<pin name="P$1" x="-5.08" y="0" visible="off" length="short"/>
<pin name="P$2" x="5.08" y="0" visible="off" length="short" rot="R180"/>
</symbol>
<symbol name="CAPACITOR_POL">
<wire x1="-1.27" y1="2.54" x2="1.27" y2="2.54" width="0.254" layer="94"/>
<wire x1="1.27" y1="2.54" x2="1.27" y2="1.778" width="0.254" layer="94"/>
<wire x1="1.27" y1="1.778" x2="-1.27" y2="1.778" width="0.254" layer="94"/>
<wire x1="-1.27" y1="1.778" x2="-1.27" y2="2.54" width="0.254" layer="94"/>
<wire x1="-0.635" y1="3.81" x2="-0.635" y2="3.048" width="0.254" layer="94"/>
<wire x1="-1.016" y1="3.429" x2="-0.254" y2="3.429" width="0.254" layer="94"/>
<text x="2.54" y="2.54" size="1.27" layer="95" font="vector">&gt;NAME</text>
<text x="2.54" y="0" size="1.27" layer="96" font="vector">&gt;VALUE</text>
<rectangle x1="-1.397" y1="0" x2="1.397" y2="0.889" layer="94"/>
<pin name="+" x="0" y="5.08" visible="off" length="short" direction="pas" rot="R270"/>
<pin name="-" x="0" y="-2.54" visible="off" length="short" direction="pas" rot="R90"/>
</symbol>
<symbol name="OPAMP_SGL">
<wire x1="-5.08" y1="5.08" x2="-5.08" y2="-5.08" width="0.4064" layer="94"/>
<wire x1="-5.08" y1="-5.08" x2="5.08" y2="0" width="0.4064" layer="94"/>
<wire x1="5.08" y1="0" x2="-5.08" y2="5.08" width="0.4064" layer="94"/>
<wire x1="-3.81" y1="3.175" x2="-3.81" y2="1.905" width="0.1524" layer="94"/>
<wire x1="-4.445" y1="2.54" x2="-3.175" y2="2.54" width="0.1524" layer="94"/>
<wire x1="-4.445" y1="-2.54" x2="-3.175" y2="-2.54" width="0.1524" layer="94"/>
<text x="2.54" y="3.175" size="1.778" layer="95">&gt;NAME</text>
<text x="2.54" y="-5.08" size="1.778" layer="96">&gt;VALUE</text>
<text x="1.27" y="3.175" size="0.8128" layer="93" rot="R90">V+</text>
<text x="1.27" y="-5.715" size="0.8128" layer="93" rot="R90">GND</text>
<pin name="-IN" x="-7.62" y="-2.54" visible="pad" length="short" direction="in"/>
<pin name="+IN" x="-7.62" y="2.54" visible="pad" length="short" direction="in"/>
<pin name="OUT" x="7.62" y="0" visible="pad" length="short" direction="out" rot="R180"/>
</symbol>
<symbol name="PWRN2">
<text x="-0.635" y="-0.635" size="1.778" layer="95">&gt;NAME</text>
<text x="1.905" y="-6.35" size="1.27" layer="95" rot="R90">VSS</text>
<text x="1.905" y="2.54" size="1.27" layer="95" rot="R90">VDD</text>
<pin name="VSS" x="0" y="-7.62" visible="pad" length="middle" direction="pwr" rot="R90"/>
<pin name="VDD" x="0" y="7.62" visible="pad" length="middle" direction="pwr" rot="R270"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="ABMT-801-RC" prefix="LS">
<gates>
<gate name="G$1" symbol="BUZZER" x="0" y="0"/>
</gates>
<devices>
<device name="" package="PIEZO">
<connects>
<connect gate="G$1" pin="GND" pad="2"/>
<connect gate="G$1" pin="VCC" pad="1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="USB-MICROB">
<gates>
<gate name="G$1" symbol="USB" x="0" y="-2.54"/>
</gates>
<devices>
<device name="NORMAL" package="USB-MICROB">
<connects>
<connect gate="G$1" pin="D+" pad="D+"/>
<connect gate="G$1" pin="D-" pad="D-"/>
<connect gate="G$1" pin="GND" pad="GND"/>
<connect gate="G$1" pin="ID" pad="ID"/>
<connect gate="G$1" pin="SHEILD1" pad="MT1"/>
<connect gate="G$1" pin="SHEILD2" pad="MT2"/>
<connect gate="G$1" pin="VBUS" pad="VBUS"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="LARGEPAD" package="USB-MICROB_LARGEPAD">
<connects>
<connect gate="G$1" pin="D+" pad="D+"/>
<connect gate="G$1" pin="D-" pad="D-"/>
<connect gate="G$1" pin="GND" pad="GND"/>
<connect gate="G$1" pin="ID" pad="ID"/>
<connect gate="G$1" pin="SHEILD1" pad="MT1"/>
<connect gate="G$1" pin="SHEILD2" pad="MT2"/>
<connect gate="G$1" pin="VBUS" pad="VBUS"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="DISP_OLED_UG-2864HSWEG01_NOOUTLINE" prefix="U" uservalue="yes">
<gates>
<gate name="G$1" symbol="UG-2864HSWEG01" x="0" y="0"/>
</gates>
<devices>
<device name="" package="UG-2864HSWEG01_1.3_WRAPAROUND">
<connects>
<connect gate="G$1" pin="/CS" pad="13"/>
<connect gate="G$1" pin="/RES" pad="14"/>
<connect gate="G$1" pin="BS0" pad="10"/>
<connect gate="G$1" pin="BS1" pad="11"/>
<connect gate="G$1" pin="BS2" pad="12"/>
<connect gate="G$1" pin="C1N" pad="5"/>
<connect gate="G$1" pin="C1P" pad="4"/>
<connect gate="G$1" pin="C2N" pad="3"/>
<connect gate="G$1" pin="C2P" pad="2"/>
<connect gate="G$1" pin="D0/SPI_SCLK/I2C_SCK" pad="18"/>
<connect gate="G$1" pin="D1/SPI_SDIN/I2C_SDA" pad="19"/>
<connect gate="G$1" pin="D2/I2C_SDA" pad="20"/>
<connect gate="G$1" pin="D3" pad="21"/>
<connect gate="G$1" pin="D4" pad="22"/>
<connect gate="G$1" pin="D5" pad="23"/>
<connect gate="G$1" pin="D6" pad="24"/>
<connect gate="G$1" pin="D7" pad="25"/>
<connect gate="G$1" pin="DC/I2C_SA0" pad="15"/>
<connect gate="G$1" pin="E/RD" pad="17"/>
<connect gate="G$1" pin="IREF" pad="26"/>
<connect gate="G$1" pin="NC" pad="7"/>
<connect gate="G$1" pin="NC(GND)@1" pad="1"/>
<connect gate="G$1" pin="NC(GND)@2" pad="30"/>
<connect gate="G$1" pin="R/W" pad="16"/>
<connect gate="G$1" pin="VBAT" pad="6"/>
<connect gate="G$1" pin="VCC" pad="28"/>
<connect gate="G$1" pin="VCOMH" pad="27"/>
<connect gate="G$1" pin="VDD" pad="9"/>
<connect gate="G$1" pin="VLSS" pad="29"/>
<connect gate="G$1" pin="VSS" pad="8"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="NOWRAP" package="UG-2864HSWEG01_1.3">
<connects>
<connect gate="G$1" pin="/CS" pad="13"/>
<connect gate="G$1" pin="/RES" pad="14"/>
<connect gate="G$1" pin="BS0" pad="10"/>
<connect gate="G$1" pin="BS1" pad="11"/>
<connect gate="G$1" pin="BS2" pad="12"/>
<connect gate="G$1" pin="C1N" pad="5"/>
<connect gate="G$1" pin="C1P" pad="4"/>
<connect gate="G$1" pin="C2N" pad="3"/>
<connect gate="G$1" pin="C2P" pad="2"/>
<connect gate="G$1" pin="D0/SPI_SCLK/I2C_SCK" pad="18"/>
<connect gate="G$1" pin="D1/SPI_SDIN/I2C_SDA" pad="19"/>
<connect gate="G$1" pin="D2/I2C_SDA" pad="20"/>
<connect gate="G$1" pin="D3" pad="21"/>
<connect gate="G$1" pin="D4" pad="22"/>
<connect gate="G$1" pin="D5" pad="23"/>
<connect gate="G$1" pin="D6" pad="24"/>
<connect gate="G$1" pin="D7" pad="25"/>
<connect gate="G$1" pin="DC/I2C_SA0" pad="15"/>
<connect gate="G$1" pin="E/RD" pad="17"/>
<connect gate="G$1" pin="IREF" pad="26"/>
<connect gate="G$1" pin="NC" pad="7"/>
<connect gate="G$1" pin="NC(GND)@1" pad="1"/>
<connect gate="G$1" pin="NC(GND)@2" pad="30"/>
<connect gate="G$1" pin="R/W" pad="16"/>
<connect gate="G$1" pin="VBAT" pad="6"/>
<connect gate="G$1" pin="VCC" pad="28"/>
<connect gate="G$1" pin="VCOMH" pad="27"/>
<connect gate="G$1" pin="VDD" pad="9"/>
<connect gate="G$1" pin="VLSS" pad="29"/>
<connect gate="G$1" pin="VSS" pad="8"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="WATCH" package="UG-2864HSWEG01_1.3_WRAPAROUND_WATCH">
<connects>
<connect gate="G$1" pin="/CS" pad="13"/>
<connect gate="G$1" pin="/RES" pad="14"/>
<connect gate="G$1" pin="BS0" pad="10"/>
<connect gate="G$1" pin="BS1" pad="11"/>
<connect gate="G$1" pin="BS2" pad="12"/>
<connect gate="G$1" pin="C1N" pad="5"/>
<connect gate="G$1" pin="C1P" pad="4"/>
<connect gate="G$1" pin="C2N" pad="3"/>
<connect gate="G$1" pin="C2P" pad="2"/>
<connect gate="G$1" pin="D0/SPI_SCLK/I2C_SCK" pad="18"/>
<connect gate="G$1" pin="D1/SPI_SDIN/I2C_SDA" pad="19"/>
<connect gate="G$1" pin="D2/I2C_SDA" pad="20"/>
<connect gate="G$1" pin="D3" pad="21"/>
<connect gate="G$1" pin="D4" pad="22"/>
<connect gate="G$1" pin="D5" pad="23"/>
<connect gate="G$1" pin="D6" pad="24"/>
<connect gate="G$1" pin="D7" pad="25"/>
<connect gate="G$1" pin="DC/I2C_SA0" pad="15"/>
<connect gate="G$1" pin="E/RD" pad="17"/>
<connect gate="G$1" pin="IREF" pad="26"/>
<connect gate="G$1" pin="NC" pad="7"/>
<connect gate="G$1" pin="NC(GND)@1" pad="1"/>
<connect gate="G$1" pin="NC(GND)@2" pad="30"/>
<connect gate="G$1" pin="R/W" pad="16"/>
<connect gate="G$1" pin="VBAT" pad="6"/>
<connect gate="G$1" pin="VCC" pad="28"/>
<connect gate="G$1" pin="VCOMH" pad="27"/>
<connect gate="G$1" pin="VDD" pad="9"/>
<connect gate="G$1" pin="VLSS" pad="29"/>
<connect gate="G$1" pin="VSS" pad="8"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="CONNONLY" package="UG-2864HSWEG01_1.3_CONNONLY">
<connects>
<connect gate="G$1" pin="/CS" pad="13"/>
<connect gate="G$1" pin="/RES" pad="14"/>
<connect gate="G$1" pin="BS0" pad="10"/>
<connect gate="G$1" pin="BS1" pad="11"/>
<connect gate="G$1" pin="BS2" pad="12"/>
<connect gate="G$1" pin="C1N" pad="5"/>
<connect gate="G$1" pin="C1P" pad="4"/>
<connect gate="G$1" pin="C2N" pad="3"/>
<connect gate="G$1" pin="C2P" pad="2"/>
<connect gate="G$1" pin="D0/SPI_SCLK/I2C_SCK" pad="18"/>
<connect gate="G$1" pin="D1/SPI_SDIN/I2C_SDA" pad="19"/>
<connect gate="G$1" pin="D2/I2C_SDA" pad="20"/>
<connect gate="G$1" pin="D3" pad="21"/>
<connect gate="G$1" pin="D4" pad="22"/>
<connect gate="G$1" pin="D5" pad="23"/>
<connect gate="G$1" pin="D6" pad="24"/>
<connect gate="G$1" pin="D7" pad="25"/>
<connect gate="G$1" pin="DC/I2C_SA0" pad="15"/>
<connect gate="G$1" pin="E/RD" pad="17"/>
<connect gate="G$1" pin="IREF" pad="26"/>
<connect gate="G$1" pin="NC" pad="7"/>
<connect gate="G$1" pin="NC(GND)@1" pad="1"/>
<connect gate="G$1" pin="NC(GND)@2" pad="30"/>
<connect gate="G$1" pin="R/W" pad="16"/>
<connect gate="G$1" pin="VBAT" pad="6"/>
<connect gate="G$1" pin="VCC" pad="28"/>
<connect gate="G$1" pin="VCOMH" pad="27"/>
<connect gate="G$1" pin="VDD" pad="9"/>
<connect gate="G$1" pin="VLSS" pad="29"/>
<connect gate="G$1" pin="VSS" pad="8"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="FRAME_A3" prefix="FRAME">
<gates>
<gate name="G$1" symbol="FRAME_A3" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="SPST_TACT" prefix="SW" uservalue="yes">
<gates>
<gate name="G$1" symbol="SPST_TACT" x="0" y="0"/>
</gates>
<devices>
<device name="" package="TACT_SMD">
<connects>
<connect gate="G$1" pin="P" pad="A"/>
<connect gate="G$1" pin="P1" pad="A'"/>
<connect gate="G$1" pin="S" pad="B"/>
<connect gate="G$1" pin="S1" pad="B'"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="RA" package="TACT_SMD2">
<connects>
<connect gate="G$1" pin="P" pad="1"/>
<connect gate="G$1" pin="P1" pad="3"/>
<connect gate="G$1" pin="S" pad="2"/>
<connect gate="G$1" pin="S1" pad="4"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="TL3315" package="TACT_SMD3">
<connects>
<connect gate="G$1" pin="P" pad="1"/>
<connect gate="G$1" pin="P1" pad="2"/>
<connect gate="G$1" pin="S" pad="3"/>
<connect gate="G$1" pin="S1" pad="4"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="KMR2" package="KMR2">
<connects>
<connect gate="G$1" pin="P" pad="1"/>
<connect gate="G$1" pin="P1" pad="3"/>
<connect gate="G$1" pin="S" pad="2"/>
<connect gate="G$1" pin="S1" pad="4"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="MC32882" package="TACT_SMD4">
<connects>
<connect gate="G$1" pin="P" pad="A"/>
<connect gate="G$1" pin="P1" pad="A'"/>
<connect gate="G$1" pin="S" pad="B"/>
<connect gate="G$1" pin="S1" pad="B'"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="ISP6PIN" prefix="JP">
<gates>
<gate name="G$1" symbol="ISP6PIN" x="0" y="0"/>
</gates>
<devices>
<device name="NORMAL" package="ISP6PIN">
<connects>
<connect gate="G$1" pin="1" pad="MISO"/>
<connect gate="G$1" pin="2" pad="VCC"/>
<connect gate="G$1" pin="3" pad="SCK"/>
<connect gate="G$1" pin="4" pad="MOSI"/>
<connect gate="G$1" pin="5" pad="RST"/>
<connect gate="G$1" pin="6" pad="GND"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="EDGE" package="ISP6PIN_EDGE">
<connects>
<connect gate="G$1" pin="1" pad="MISO"/>
<connect gate="G$1" pin="2" pad="VCC"/>
<connect gate="G$1" pin="3" pad="SCK"/>
<connect gate="G$1" pin="4" pad="MOSI"/>
<connect gate="G$1" pin="5" pad="RST"/>
<connect gate="G$1" pin="6" pad="GND"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="POGO" package="POGO6PIN">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
<connect gate="G$1" pin="5" pad="5"/>
<connect gate="G$1" pin="6" pad="6"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="POGO_PIXELRGB" package="POGO60PIN_PIXELRGB">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
<connect gate="G$1" pin="5" pad="5"/>
<connect gate="G$1" pin="6" pad="6"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="REGULATOR_5" prefix="U">
<gates>
<gate name="G$1" symbol="REGULATOR_5" x="0" y="0"/>
</gates>
<devices>
<device name="" package="SOT95P275X110-5N">
<connects>
<connect gate="G$1" pin="BYPASS" pad="4"/>
<connect gate="G$1" pin="EN" pad="3"/>
<connect gate="G$1" pin="GND" pad="2"/>
<connect gate="G$1" pin="VIN" pad="1"/>
<connect gate="G$1" pin="VOUT" pad="5"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="CH340G" prefix="U" uservalue="yes">
<gates>
<gate name="G$1" symbol="CH340G" x="0" y="0"/>
</gates>
<devices>
<device name="" package="SOIC16">
<connects>
<connect gate="G$1" pin="3V3" pad="4"/>
<connect gate="G$1" pin="CTS" pad="9"/>
<connect gate="G$1" pin="DCD" pad="12"/>
<connect gate="G$1" pin="DSR" pad="10"/>
<connect gate="G$1" pin="DTR" pad="13"/>
<connect gate="G$1" pin="GND" pad="1"/>
<connect gate="G$1" pin="RI" pad="11"/>
<connect gate="G$1" pin="RS232" pad="15"/>
<connect gate="G$1" pin="RTS" pad="14"/>
<connect gate="G$1" pin="RXD" pad="3"/>
<connect gate="G$1" pin="TXD" pad="2"/>
<connect gate="G$1" pin="USB+" pad="5"/>
<connect gate="G$1" pin="USB-" pad="6"/>
<connect gate="G$1" pin="VCC" pad="16"/>
<connect gate="G$1" pin="XI" pad="7"/>
<connect gate="G$1" pin="XO" pad="8"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="SMPAD" package="SOIC16_SMPAD">
<connects>
<connect gate="G$1" pin="3V3" pad="4"/>
<connect gate="G$1" pin="CTS" pad="9"/>
<connect gate="G$1" pin="DCD" pad="12"/>
<connect gate="G$1" pin="DSR" pad="10"/>
<connect gate="G$1" pin="DTR" pad="13"/>
<connect gate="G$1" pin="GND" pad="1"/>
<connect gate="G$1" pin="RI" pad="11"/>
<connect gate="G$1" pin="RS232" pad="15"/>
<connect gate="G$1" pin="RTS" pad="14"/>
<connect gate="G$1" pin="RXD" pad="3"/>
<connect gate="G$1" pin="TXD" pad="2"/>
<connect gate="G$1" pin="USB+" pad="5"/>
<connect gate="G$1" pin="USB-" pad="6"/>
<connect gate="G$1" pin="VCC" pad="16"/>
<connect gate="G$1" pin="XI" pad="7"/>
<connect gate="G$1" pin="XO" pad="8"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="DS3231MZ+" prefix="U">
<gates>
<gate name="G$1" symbol="DS3231MZ+" x="0" y="-7.62"/>
</gates>
<devices>
<device name="" package="SOIC8_150MIL">
<connects>
<connect gate="G$1" pin="32KHZ" pad="1"/>
<connect gate="G$1" pin="GND" pad="5"/>
<connect gate="G$1" pin="SCL" pad="8"/>
<connect gate="G$1" pin="SDA" pad="7"/>
<connect gate="G$1" pin="VBAT" pad="6"/>
<connect gate="G$1" pin="VCC" pad="2"/>
<connect gate="G$1" pin="~INT/SQW" pad="3"/>
<connect gate="G$1" pin="~RST" pad="4"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="SMPAD" package="SOIC8_150MIL_SMPAD">
<connects>
<connect gate="G$1" pin="32KHZ" pad="1"/>
<connect gate="G$1" pin="GND" pad="5"/>
<connect gate="G$1" pin="SCL" pad="8"/>
<connect gate="G$1" pin="SDA" pad="7"/>
<connect gate="G$1" pin="VBAT" pad="6"/>
<connect gate="G$1" pin="VCC" pad="2"/>
<connect gate="G$1" pin="~INT/SQW" pad="3"/>
<connect gate="G$1" pin="~RST" pad="4"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="74LVC1G32W5" prefix="U" uservalue="yes">
<gates>
<gate name="G$1" symbol="GATE_OR" x="0" y="0"/>
<gate name="G$2" symbol="PWRN" x="10.16" y="22.86" addlevel="request"/>
</gates>
<devices>
<device name="" package="SOT95P275X110-5N">
<connects>
<connect gate="G$1" pin="A" pad="1"/>
<connect gate="G$1" pin="B" pad="2"/>
<connect gate="G$1" pin="Y" pad="4"/>
<connect gate="G$2" pin="GND" pad="3"/>
<connect gate="G$2" pin="VCC" pad="5"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="DIODE_0805" prefix="D" uservalue="yes">
<description>Diode in 0805 package</description>
<gates>
<gate name="G$1" symbol="DIODE" x="0" y="0"/>
</gates>
<devices>
<device name="0805" package="0805_DIODE">
<connects>
<connect gate="G$1" pin="A" pad="1"/>
<connect gate="G$1" pin="C" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="PTCFUSE" prefix="F" uservalue="yes">
<gates>
<gate name="G$1" symbol="FUSE" x="0" y="0"/>
</gates>
<devices>
<device name="1206" package="1206">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="1210" package="1210K">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="XTAL" prefix="X" uservalue="yes">
<gates>
<gate name="G$1" symbol="XTAL" x="0" y="0"/>
</gates>
<devices>
<device name="NX5032" package="NX5032">
<connects>
<connect gate="G$1" pin="P$1" pad="P$1"/>
<connect gate="G$1" pin="P$2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="CAP_ELECTROLYTIC" prefix="C" uservalue="yes">
<gates>
<gate name="G$1" symbol="CAPACITOR_POL" x="0" y="-2.54"/>
</gates>
<devices>
<device name="PANASONIC_C" package="PANASONIC_C">
<connects>
<connect gate="G$1" pin="+" pad="+"/>
<connect gate="G$1" pin="-" pad="-"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="OPAMP_SINGLE" prefix="U" uservalue="yes">
<gates>
<gate name="G$1" symbol="OPAMP_SGL" x="0" y="0"/>
<gate name="G$2" symbol="PWRN2" x="0" y="0"/>
</gates>
<devices>
<device name="CONFIG1" package="SOT95P275X110-5N">
<connects>
<connect gate="G$1" pin="+IN" pad="3"/>
<connect gate="G$1" pin="-IN" pad="4"/>
<connect gate="G$1" pin="OUT" pad="1"/>
<connect gate="G$2" pin="VDD" pad="5"/>
<connect gate="G$2" pin="VSS" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="CONFIG2" package="SOT95P275X110-5N">
<connects>
<connect gate="G$1" pin="+IN" pad="3"/>
<connect gate="G$1" pin="-IN" pad="4"/>
<connect gate="G$1" pin="OUT" pad="1"/>
<connect gate="G$2" pin="VDD" pad="2"/>
<connect gate="G$2" pin="VSS" pad="5"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="CONFIG3" package="SOT95P275X110-5N">
<connects>
<connect gate="G$1" pin="+IN" pad="1"/>
<connect gate="G$1" pin="-IN" pad="3"/>
<connect gate="G$1" pin="OUT" pad="4"/>
<connect gate="G$2" pin="VDD" pad="5"/>
<connect gate="G$2" pin="VSS" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="pinhead">
<description>&lt;b&gt;Pin Header Connectors&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="1X02">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<wire x1="-1.905" y1="1.27" x2="-0.635" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="1.27" x2="0" y2="0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="0.635" x2="0" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="-0.635" x2="-0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="0.635" x2="-2.54" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="1.27" x2="-2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-0.635" x2="-1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="-1.27" x2="-1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="0" y1="0.635" x2="0.635" y2="1.27" width="0.1524" layer="21"/>
<wire x1="0.635" y1="1.27" x2="1.905" y2="1.27" width="0.1524" layer="21"/>
<wire x1="1.905" y1="1.27" x2="2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="0.635" x2="2.54" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-0.635" x2="1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="1.905" y1="-1.27" x2="0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="0.635" y1="-1.27" x2="0" y2="-0.635" width="0.1524" layer="21"/>
<pad name="1" x="-1.27" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="2" x="1.27" y="0" drill="1.016" shape="long" rot="R90"/>
<text x="-2.6162" y="1.8288" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.54" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.524" y1="-0.254" x2="-1.016" y2="0.254" layer="51"/>
<rectangle x1="1.016" y1="-0.254" x2="1.524" y2="0.254" layer="51"/>
</package>
<package name="1X02/90">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<wire x1="-2.54" y1="-1.905" x2="0" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="0" y1="-1.905" x2="0" y2="0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="0.635" x2="-2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="0.635" x2="-2.54" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="6.985" x2="-1.27" y2="1.27" width="0.762" layer="21"/>
<wire x1="0" y1="-1.905" x2="2.54" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-1.905" x2="2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="0.635" x2="0" y2="0.635" width="0.1524" layer="21"/>
<wire x1="1.27" y1="6.985" x2="1.27" y2="1.27" width="0.762" layer="21"/>
<pad name="1" x="-1.27" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="2" x="1.27" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<text x="-3.175" y="-3.81" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="4.445" y="-3.81" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-1.651" y1="0.635" x2="-0.889" y2="1.143" layer="21"/>
<rectangle x1="0.889" y1="0.635" x2="1.651" y2="1.143" layer="21"/>
<rectangle x1="-1.651" y1="-2.921" x2="-0.889" y2="-1.905" layer="21"/>
<rectangle x1="0.889" y1="-2.921" x2="1.651" y2="-1.905" layer="21"/>
</package>
<package name="1X19">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<wire x1="19.05" y1="0.635" x2="19.685" y2="1.27" width="0.1524" layer="21"/>
<wire x1="19.685" y1="1.27" x2="20.955" y2="1.27" width="0.1524" layer="21"/>
<wire x1="20.955" y1="1.27" x2="21.59" y2="0.635" width="0.1524" layer="21"/>
<wire x1="21.59" y1="0.635" x2="21.59" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="21.59" y1="-0.635" x2="20.955" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="20.955" y1="-1.27" x2="19.685" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="19.685" y1="-1.27" x2="19.05" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="14.605" y1="1.27" x2="15.875" y2="1.27" width="0.1524" layer="21"/>
<wire x1="15.875" y1="1.27" x2="16.51" y2="0.635" width="0.1524" layer="21"/>
<wire x1="16.51" y1="0.635" x2="16.51" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="16.51" y1="-0.635" x2="15.875" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="16.51" y1="0.635" x2="17.145" y2="1.27" width="0.1524" layer="21"/>
<wire x1="17.145" y1="1.27" x2="18.415" y2="1.27" width="0.1524" layer="21"/>
<wire x1="18.415" y1="1.27" x2="19.05" y2="0.635" width="0.1524" layer="21"/>
<wire x1="19.05" y1="0.635" x2="19.05" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="19.05" y1="-0.635" x2="18.415" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="18.415" y1="-1.27" x2="17.145" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="17.145" y1="-1.27" x2="16.51" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="11.43" y1="0.635" x2="12.065" y2="1.27" width="0.1524" layer="21"/>
<wire x1="12.065" y1="1.27" x2="13.335" y2="1.27" width="0.1524" layer="21"/>
<wire x1="13.335" y1="1.27" x2="13.97" y2="0.635" width="0.1524" layer="21"/>
<wire x1="13.97" y1="0.635" x2="13.97" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="13.97" y1="-0.635" x2="13.335" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="13.335" y1="-1.27" x2="12.065" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="12.065" y1="-1.27" x2="11.43" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="14.605" y1="1.27" x2="13.97" y2="0.635" width="0.1524" layer="21"/>
<wire x1="13.97" y1="-0.635" x2="14.605" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="15.875" y1="-1.27" x2="14.605" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="6.985" y1="1.27" x2="8.255" y2="1.27" width="0.1524" layer="21"/>
<wire x1="8.255" y1="1.27" x2="8.89" y2="0.635" width="0.1524" layer="21"/>
<wire x1="8.89" y1="0.635" x2="8.89" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="8.89" y1="-0.635" x2="8.255" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="8.89" y1="0.635" x2="9.525" y2="1.27" width="0.1524" layer="21"/>
<wire x1="9.525" y1="1.27" x2="10.795" y2="1.27" width="0.1524" layer="21"/>
<wire x1="10.795" y1="1.27" x2="11.43" y2="0.635" width="0.1524" layer="21"/>
<wire x1="11.43" y1="0.635" x2="11.43" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="11.43" y1="-0.635" x2="10.795" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="10.795" y1="-1.27" x2="9.525" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="9.525" y1="-1.27" x2="8.89" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="3.81" y1="0.635" x2="4.445" y2="1.27" width="0.1524" layer="21"/>
<wire x1="4.445" y1="1.27" x2="5.715" y2="1.27" width="0.1524" layer="21"/>
<wire x1="5.715" y1="1.27" x2="6.35" y2="0.635" width="0.1524" layer="21"/>
<wire x1="6.35" y1="0.635" x2="6.35" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="6.35" y1="-0.635" x2="5.715" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="5.715" y1="-1.27" x2="4.445" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="4.445" y1="-1.27" x2="3.81" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="6.985" y1="1.27" x2="6.35" y2="0.635" width="0.1524" layer="21"/>
<wire x1="6.35" y1="-0.635" x2="6.985" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="8.255" y1="-1.27" x2="6.985" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="1.27" x2="0.635" y2="1.27" width="0.1524" layer="21"/>
<wire x1="0.635" y1="1.27" x2="1.27" y2="0.635" width="0.1524" layer="21"/>
<wire x1="1.27" y1="0.635" x2="1.27" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="1.27" y1="-0.635" x2="0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="1.27" y1="0.635" x2="1.905" y2="1.27" width="0.1524" layer="21"/>
<wire x1="1.905" y1="1.27" x2="3.175" y2="1.27" width="0.1524" layer="21"/>
<wire x1="3.175" y1="1.27" x2="3.81" y2="0.635" width="0.1524" layer="21"/>
<wire x1="3.81" y1="0.635" x2="3.81" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="3.81" y1="-0.635" x2="3.175" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="3.175" y1="-1.27" x2="1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="1.905" y1="-1.27" x2="1.27" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="0.635" x2="-3.175" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="1.27" x2="-1.905" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="1.27" x2="-1.27" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="0.635" x2="-1.27" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-0.635" x2="-1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="-1.27" x2="-3.175" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="-1.27" x2="-3.81" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="1.27" x2="-1.27" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-0.635" x2="-0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="0.635" y1="-1.27" x2="-0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-8.255" y1="1.27" x2="-6.985" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-6.985" y1="1.27" x2="-6.35" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-6.35" y1="0.635" x2="-6.35" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-6.35" y1="-0.635" x2="-6.985" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-6.35" y1="0.635" x2="-5.715" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-5.715" y1="1.27" x2="-4.445" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="1.27" x2="-3.81" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="0.635" x2="-3.81" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="-0.635" x2="-4.445" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="-1.27" x2="-5.715" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-5.715" y1="-1.27" x2="-6.35" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-11.43" y1="0.635" x2="-10.795" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-10.795" y1="1.27" x2="-9.525" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-9.525" y1="1.27" x2="-8.89" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-8.89" y1="0.635" x2="-8.89" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-8.89" y1="-0.635" x2="-9.525" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-9.525" y1="-1.27" x2="-10.795" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-10.795" y1="-1.27" x2="-11.43" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-8.255" y1="1.27" x2="-8.89" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-8.89" y1="-0.635" x2="-8.255" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-6.985" y1="-1.27" x2="-8.255" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-15.875" y1="1.27" x2="-14.605" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-14.605" y1="1.27" x2="-13.97" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-13.97" y1="0.635" x2="-13.97" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-13.97" y1="-0.635" x2="-14.605" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-13.97" y1="0.635" x2="-13.335" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-13.335" y1="1.27" x2="-12.065" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-12.065" y1="1.27" x2="-11.43" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-11.43" y1="0.635" x2="-11.43" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-11.43" y1="-0.635" x2="-12.065" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-12.065" y1="-1.27" x2="-13.335" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-13.335" y1="-1.27" x2="-13.97" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-19.05" y1="0.635" x2="-18.415" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-18.415" y1="1.27" x2="-17.145" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-17.145" y1="1.27" x2="-16.51" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-16.51" y1="0.635" x2="-16.51" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-16.51" y1="-0.635" x2="-17.145" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-17.145" y1="-1.27" x2="-18.415" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-18.415" y1="-1.27" x2="-19.05" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-15.875" y1="1.27" x2="-16.51" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-16.51" y1="-0.635" x2="-15.875" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-14.605" y1="-1.27" x2="-15.875" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-23.495" y1="1.27" x2="-22.225" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-22.225" y1="1.27" x2="-21.59" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-21.59" y1="0.635" x2="-21.59" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-21.59" y1="-0.635" x2="-22.225" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-21.59" y1="0.635" x2="-20.955" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-20.955" y1="1.27" x2="-19.685" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-19.685" y1="1.27" x2="-19.05" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-19.05" y1="0.635" x2="-19.05" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-19.05" y1="-0.635" x2="-19.685" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-19.685" y1="-1.27" x2="-20.955" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-20.955" y1="-1.27" x2="-21.59" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-24.13" y1="0.635" x2="-24.13" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-23.495" y1="1.27" x2="-24.13" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-24.13" y1="-0.635" x2="-23.495" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-22.225" y1="-1.27" x2="-23.495" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="21.59" y1="0.635" x2="22.225" y2="1.27" width="0.1524" layer="21"/>
<wire x1="22.225" y1="1.27" x2="23.495" y2="1.27" width="0.1524" layer="21"/>
<wire x1="23.495" y1="1.27" x2="24.13" y2="0.635" width="0.1524" layer="21"/>
<wire x1="24.13" y1="0.635" x2="24.13" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="24.13" y1="-0.635" x2="23.495" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="23.495" y1="-1.27" x2="22.225" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="22.225" y1="-1.27" x2="21.59" y2="-0.635" width="0.1524" layer="21"/>
<pad name="1" x="-22.86" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="2" x="-20.32" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="3" x="-17.78" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="4" x="-15.24" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="5" x="-12.7" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="6" x="-10.16" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="7" x="-7.62" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="8" x="-5.08" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="9" x="-2.54" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="10" x="0" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="11" x="2.54" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="12" x="5.08" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="13" x="7.62" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="14" x="10.16" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="15" x="12.7" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="16" x="15.24" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="17" x="17.78" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="18" x="20.32" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="19" x="22.86" y="0" drill="1.016" shape="long" rot="R90"/>
<text x="-24.2062" y="1.8288" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-24.13" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="20.066" y1="-0.254" x2="20.574" y2="0.254" layer="51"/>
<rectangle x1="17.526" y1="-0.254" x2="18.034" y2="0.254" layer="51"/>
<rectangle x1="14.986" y1="-0.254" x2="15.494" y2="0.254" layer="51"/>
<rectangle x1="12.446" y1="-0.254" x2="12.954" y2="0.254" layer="51"/>
<rectangle x1="9.906" y1="-0.254" x2="10.414" y2="0.254" layer="51"/>
<rectangle x1="7.366" y1="-0.254" x2="7.874" y2="0.254" layer="51"/>
<rectangle x1="4.826" y1="-0.254" x2="5.334" y2="0.254" layer="51"/>
<rectangle x1="2.286" y1="-0.254" x2="2.794" y2="0.254" layer="51"/>
<rectangle x1="-0.254" y1="-0.254" x2="0.254" y2="0.254" layer="51"/>
<rectangle x1="-2.794" y1="-0.254" x2="-2.286" y2="0.254" layer="51"/>
<rectangle x1="-5.334" y1="-0.254" x2="-4.826" y2="0.254" layer="51"/>
<rectangle x1="-7.874" y1="-0.254" x2="-7.366" y2="0.254" layer="51"/>
<rectangle x1="-10.414" y1="-0.254" x2="-9.906" y2="0.254" layer="51"/>
<rectangle x1="-12.954" y1="-0.254" x2="-12.446" y2="0.254" layer="51"/>
<rectangle x1="-15.494" y1="-0.254" x2="-14.986" y2="0.254" layer="51"/>
<rectangle x1="-18.034" y1="-0.254" x2="-17.526" y2="0.254" layer="51"/>
<rectangle x1="-20.574" y1="-0.254" x2="-20.066" y2="0.254" layer="51"/>
<rectangle x1="-23.114" y1="-0.254" x2="-22.606" y2="0.254" layer="51"/>
<rectangle x1="22.606" y1="-0.254" x2="23.114" y2="0.254" layer="51"/>
</package>
<package name="1X19/90">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<wire x1="-24.13" y1="-1.905" x2="-21.59" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-21.59" y1="-1.905" x2="-21.59" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-21.59" y1="0.635" x2="-24.13" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-24.13" y1="0.635" x2="-24.13" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-22.86" y1="6.985" x2="-22.86" y2="1.27" width="0.762" layer="21"/>
<wire x1="-21.59" y1="-1.905" x2="-19.05" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-19.05" y1="-1.905" x2="-19.05" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-19.05" y1="0.635" x2="-21.59" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-20.32" y1="6.985" x2="-20.32" y2="1.27" width="0.762" layer="21"/>
<wire x1="-19.05" y1="-1.905" x2="-16.51" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-16.51" y1="-1.905" x2="-16.51" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-16.51" y1="0.635" x2="-19.05" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-17.78" y1="6.985" x2="-17.78" y2="1.27" width="0.762" layer="21"/>
<wire x1="-16.51" y1="-1.905" x2="-13.97" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-13.97" y1="-1.905" x2="-13.97" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-13.97" y1="0.635" x2="-16.51" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-15.24" y1="6.985" x2="-15.24" y2="1.27" width="0.762" layer="21"/>
<wire x1="-13.97" y1="-1.905" x2="-11.43" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-11.43" y1="-1.905" x2="-11.43" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-11.43" y1="0.635" x2="-13.97" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-12.7" y1="6.985" x2="-12.7" y2="1.27" width="0.762" layer="21"/>
<wire x1="-11.43" y1="-1.905" x2="-8.89" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-8.89" y1="-1.905" x2="-8.89" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-8.89" y1="0.635" x2="-11.43" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="6.985" x2="-10.16" y2="1.27" width="0.762" layer="21"/>
<wire x1="-8.89" y1="-1.905" x2="-6.35" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-6.35" y1="-1.905" x2="-6.35" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-6.35" y1="0.635" x2="-8.89" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="6.985" x2="-7.62" y2="1.27" width="0.762" layer="21"/>
<wire x1="-6.35" y1="-1.905" x2="-3.81" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="-1.905" x2="-3.81" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="0.635" x2="-6.35" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="6.985" x2="-5.08" y2="1.27" width="0.762" layer="21"/>
<wire x1="-3.81" y1="-1.905" x2="-1.27" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-1.905" x2="-1.27" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="0.635" x2="-3.81" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="6.985" x2="-2.54" y2="1.27" width="0.762" layer="21"/>
<wire x1="-1.27" y1="-1.905" x2="1.27" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="1.27" y1="-1.905" x2="1.27" y2="0.635" width="0.1524" layer="21"/>
<wire x1="1.27" y1="0.635" x2="-1.27" y2="0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="6.985" x2="0" y2="1.27" width="0.762" layer="21"/>
<wire x1="1.27" y1="-1.905" x2="3.81" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="3.81" y1="-1.905" x2="3.81" y2="0.635" width="0.1524" layer="21"/>
<wire x1="3.81" y1="0.635" x2="1.27" y2="0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="6.985" x2="2.54" y2="1.27" width="0.762" layer="21"/>
<wire x1="3.81" y1="-1.905" x2="6.35" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="6.35" y1="-1.905" x2="6.35" y2="0.635" width="0.1524" layer="21"/>
<wire x1="6.35" y1="0.635" x2="3.81" y2="0.635" width="0.1524" layer="21"/>
<wire x1="5.08" y1="6.985" x2="5.08" y2="1.27" width="0.762" layer="21"/>
<wire x1="6.35" y1="-1.905" x2="8.89" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="8.89" y1="-1.905" x2="8.89" y2="0.635" width="0.1524" layer="21"/>
<wire x1="8.89" y1="0.635" x2="6.35" y2="0.635" width="0.1524" layer="21"/>
<wire x1="7.62" y1="6.985" x2="7.62" y2="1.27" width="0.762" layer="21"/>
<wire x1="8.89" y1="-1.905" x2="11.43" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="11.43" y1="-1.905" x2="11.43" y2="0.635" width="0.1524" layer="21"/>
<wire x1="11.43" y1="0.635" x2="8.89" y2="0.635" width="0.1524" layer="21"/>
<wire x1="10.16" y1="6.985" x2="10.16" y2="1.27" width="0.762" layer="21"/>
<wire x1="11.43" y1="-1.905" x2="13.97" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="13.97" y1="-1.905" x2="13.97" y2="0.635" width="0.1524" layer="21"/>
<wire x1="13.97" y1="0.635" x2="11.43" y2="0.635" width="0.1524" layer="21"/>
<wire x1="12.7" y1="6.985" x2="12.7" y2="1.27" width="0.762" layer="21"/>
<wire x1="13.97" y1="-1.905" x2="16.51" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="16.51" y1="-1.905" x2="16.51" y2="0.635" width="0.1524" layer="21"/>
<wire x1="16.51" y1="0.635" x2="13.97" y2="0.635" width="0.1524" layer="21"/>
<wire x1="15.24" y1="6.985" x2="15.24" y2="1.27" width="0.762" layer="21"/>
<wire x1="16.51" y1="-1.905" x2="19.05" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="19.05" y1="-1.905" x2="19.05" y2="0.635" width="0.1524" layer="21"/>
<wire x1="19.05" y1="0.635" x2="16.51" y2="0.635" width="0.1524" layer="21"/>
<wire x1="17.78" y1="6.985" x2="17.78" y2="1.27" width="0.762" layer="21"/>
<wire x1="19.05" y1="-1.905" x2="21.59" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="21.59" y1="-1.905" x2="21.59" y2="0.635" width="0.1524" layer="21"/>
<wire x1="21.59" y1="0.635" x2="19.05" y2="0.635" width="0.1524" layer="21"/>
<wire x1="20.32" y1="6.985" x2="20.32" y2="1.27" width="0.762" layer="21"/>
<wire x1="21.59" y1="-1.905" x2="24.13" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="24.13" y1="-1.905" x2="24.13" y2="0.635" width="0.1524" layer="21"/>
<wire x1="24.13" y1="0.635" x2="21.59" y2="0.635" width="0.1524" layer="21"/>
<wire x1="22.86" y1="6.985" x2="22.86" y2="1.27" width="0.762" layer="21"/>
<pad name="1" x="-22.86" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="2" x="-20.32" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="3" x="-17.78" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="4" x="-15.24" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="5" x="-12.7" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="6" x="-10.16" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="7" x="-7.62" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="8" x="-5.08" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="9" x="-2.54" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="10" x="0" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="11" x="2.54" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="12" x="5.08" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="13" x="7.62" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="14" x="10.16" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="15" x="12.7" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="16" x="15.24" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="17" x="17.78" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="18" x="20.32" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="19" x="22.86" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<text x="-24.765" y="-3.81" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="26.035" y="-3.81" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-23.241" y1="0.635" x2="-22.479" y2="1.143" layer="21"/>
<rectangle x1="-20.701" y1="0.635" x2="-19.939" y2="1.143" layer="21"/>
<rectangle x1="-18.161" y1="0.635" x2="-17.399" y2="1.143" layer="21"/>
<rectangle x1="-15.621" y1="0.635" x2="-14.859" y2="1.143" layer="21"/>
<rectangle x1="-13.081" y1="0.635" x2="-12.319" y2="1.143" layer="21"/>
<rectangle x1="-10.541" y1="0.635" x2="-9.779" y2="1.143" layer="21"/>
<rectangle x1="-8.001" y1="0.635" x2="-7.239" y2="1.143" layer="21"/>
<rectangle x1="-5.461" y1="0.635" x2="-4.699" y2="1.143" layer="21"/>
<rectangle x1="-2.921" y1="0.635" x2="-2.159" y2="1.143" layer="21"/>
<rectangle x1="-0.381" y1="0.635" x2="0.381" y2="1.143" layer="21"/>
<rectangle x1="2.159" y1="0.635" x2="2.921" y2="1.143" layer="21"/>
<rectangle x1="4.699" y1="0.635" x2="5.461" y2="1.143" layer="21"/>
<rectangle x1="7.239" y1="0.635" x2="8.001" y2="1.143" layer="21"/>
<rectangle x1="9.779" y1="0.635" x2="10.541" y2="1.143" layer="21"/>
<rectangle x1="12.319" y1="0.635" x2="13.081" y2="1.143" layer="21"/>
<rectangle x1="14.859" y1="0.635" x2="15.621" y2="1.143" layer="21"/>
<rectangle x1="17.399" y1="0.635" x2="18.161" y2="1.143" layer="21"/>
<rectangle x1="19.939" y1="0.635" x2="20.701" y2="1.143" layer="21"/>
<rectangle x1="22.479" y1="0.635" x2="23.241" y2="1.143" layer="21"/>
<rectangle x1="-23.241" y1="-2.921" x2="-22.479" y2="-1.905" layer="21"/>
<rectangle x1="-20.701" y1="-2.921" x2="-19.939" y2="-1.905" layer="21"/>
<rectangle x1="-18.161" y1="-2.921" x2="-17.399" y2="-1.905" layer="21"/>
<rectangle x1="-15.621" y1="-2.921" x2="-14.859" y2="-1.905" layer="21"/>
<rectangle x1="-13.081" y1="-2.921" x2="-12.319" y2="-1.905" layer="21"/>
<rectangle x1="-10.541" y1="-2.921" x2="-9.779" y2="-1.905" layer="21"/>
<rectangle x1="-8.001" y1="-2.921" x2="-7.239" y2="-1.905" layer="21"/>
<rectangle x1="-5.461" y1="-2.921" x2="-4.699" y2="-1.905" layer="21"/>
<rectangle x1="-2.921" y1="-2.921" x2="-2.159" y2="-1.905" layer="21"/>
<rectangle x1="-0.381" y1="-2.921" x2="0.381" y2="-1.905" layer="21"/>
<rectangle x1="2.159" y1="-2.921" x2="2.921" y2="-1.905" layer="21"/>
<rectangle x1="4.699" y1="-2.921" x2="5.461" y2="-1.905" layer="21"/>
<rectangle x1="7.239" y1="-2.921" x2="8.001" y2="-1.905" layer="21"/>
<rectangle x1="9.779" y1="-2.921" x2="10.541" y2="-1.905" layer="21"/>
<rectangle x1="12.319" y1="-2.921" x2="13.081" y2="-1.905" layer="21"/>
<rectangle x1="14.859" y1="-2.921" x2="15.621" y2="-1.905" layer="21"/>
<rectangle x1="17.399" y1="-2.921" x2="18.161" y2="-1.905" layer="21"/>
<rectangle x1="19.939" y1="-2.921" x2="20.701" y2="-1.905" layer="21"/>
<rectangle x1="22.479" y1="-2.921" x2="23.241" y2="-1.905" layer="21"/>
</package>
</packages>
<symbols>
<symbol name="PINHD2">
<wire x1="-6.35" y1="-2.54" x2="1.27" y2="-2.54" width="0.4064" layer="94"/>
<wire x1="1.27" y1="-2.54" x2="1.27" y2="5.08" width="0.4064" layer="94"/>
<wire x1="1.27" y1="5.08" x2="-6.35" y2="5.08" width="0.4064" layer="94"/>
<wire x1="-6.35" y1="5.08" x2="-6.35" y2="-2.54" width="0.4064" layer="94"/>
<text x="-6.35" y="5.715" size="1.778" layer="95">&gt;NAME</text>
<text x="-6.35" y="-5.08" size="1.778" layer="96">&gt;VALUE</text>
<pin name="1" x="-2.54" y="2.54" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="2" x="-2.54" y="0" visible="pad" length="short" direction="pas" function="dot"/>
</symbol>
<symbol name="PINHD19">
<wire x1="-6.35" y1="-27.94" x2="1.27" y2="-27.94" width="0.4064" layer="94"/>
<wire x1="1.27" y1="-27.94" x2="1.27" y2="22.86" width="0.4064" layer="94"/>
<wire x1="1.27" y1="22.86" x2="-6.35" y2="22.86" width="0.4064" layer="94"/>
<wire x1="-6.35" y1="22.86" x2="-6.35" y2="-27.94" width="0.4064" layer="94"/>
<text x="-6.35" y="23.495" size="1.778" layer="95">&gt;NAME</text>
<text x="-6.35" y="-30.48" size="1.778" layer="96">&gt;VALUE</text>
<pin name="1" x="-2.54" y="20.32" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="2" x="-2.54" y="17.78" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="3" x="-2.54" y="15.24" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="4" x="-2.54" y="12.7" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="5" x="-2.54" y="10.16" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="6" x="-2.54" y="7.62" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="7" x="-2.54" y="5.08" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="8" x="-2.54" y="2.54" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="9" x="-2.54" y="0" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="10" x="-2.54" y="-2.54" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="11" x="-2.54" y="-5.08" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="12" x="-2.54" y="-7.62" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="13" x="-2.54" y="-10.16" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="14" x="-2.54" y="-12.7" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="15" x="-2.54" y="-15.24" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="16" x="-2.54" y="-17.78" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="17" x="-2.54" y="-20.32" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="18" x="-2.54" y="-22.86" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="19" x="-2.54" y="-25.4" visible="pad" length="short" direction="pas" function="dot"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="PINHD-1X2" prefix="JP" uservalue="yes">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="PINHD2" x="0" y="0"/>
</gates>
<devices>
<device name="" package="1X02">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="/90" package="1X02/90">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="PINHD-1X19" prefix="JP" uservalue="yes">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="PINHD19" x="0" y="0"/>
</gates>
<devices>
<device name="" package="1X19">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="10" pad="10"/>
<connect gate="G$1" pin="11" pad="11"/>
<connect gate="G$1" pin="12" pad="12"/>
<connect gate="G$1" pin="13" pad="13"/>
<connect gate="G$1" pin="14" pad="14"/>
<connect gate="G$1" pin="15" pad="15"/>
<connect gate="G$1" pin="16" pad="16"/>
<connect gate="G$1" pin="17" pad="17"/>
<connect gate="G$1" pin="18" pad="18"/>
<connect gate="G$1" pin="19" pad="19"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
<connect gate="G$1" pin="5" pad="5"/>
<connect gate="G$1" pin="6" pad="6"/>
<connect gate="G$1" pin="7" pad="7"/>
<connect gate="G$1" pin="8" pad="8"/>
<connect gate="G$1" pin="9" pad="9"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="/90" package="1X19/90">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="10" pad="10"/>
<connect gate="G$1" pin="11" pad="11"/>
<connect gate="G$1" pin="12" pad="12"/>
<connect gate="G$1" pin="13" pad="13"/>
<connect gate="G$1" pin="14" pad="14"/>
<connect gate="G$1" pin="15" pad="15"/>
<connect gate="G$1" pin="16" pad="16"/>
<connect gate="G$1" pin="17" pad="17"/>
<connect gate="G$1" pin="18" pad="18"/>
<connect gate="G$1" pin="19" pad="19"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
<connect gate="G$1" pin="5" pad="5"/>
<connect gate="G$1" pin="6" pad="6"/>
<connect gate="G$1" pin="7" pad="7"/>
<connect gate="G$1" pin="8" pad="8"/>
<connect gate="G$1" pin="9" pad="9"/>
</connects>
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
<part name="C11" library="microbuilder" deviceset="CAP_CERAMIC" device="0805" value="2u2"/>
<part name="C10" library="microbuilder" deviceset="CAP_CERAMIC" device="0805" value="4u7"/>
<part name="C7" library="microbuilder" deviceset="CAP_CERAMIC" device="0805" value="1u"/>
<part name="C8" library="microbuilder" deviceset="CAP_CERAMIC" device="0805" value="1u"/>
<part name="C9" library="microbuilder" deviceset="CAP_CERAMIC" device="0805" value="100n"/>
<part name="GND1" library="supply1" deviceset="GND" device=""/>
<part name="GND5" library="supply1" deviceset="GND" device=""/>
<part name="R9" library="microbuilder" deviceset="RESISTOR" device="0805" value="390K"/>
<part name="GND6" library="supply1" deviceset="GND" device=""/>
<part name="GND7" library="supply1" deviceset="GND" device=""/>
<part name="GND4" library="supply1" deviceset="GND" device=""/>
<part name="GND9" library="supply1" deviceset="GND" device=""/>
<part name="GND10" library="supply1" deviceset="GND" device=""/>
<part name="USB1" library="zak" deviceset="USB-MICROB" device="LARGEPAD" value="USB-MICROBLARGEPAD"/>
<part name="C1" library="microbuilder" deviceset="CAP_CERAMIC" device="0805" value="1u"/>
<part name="GND15" library="supply1" deviceset="GND" device=""/>
<part name="GND16" library="supply1" deviceset="GND" device=""/>
<part name="OLED1" library="zak" deviceset="DISP_OLED_UG-2864HSWEG01_NOOUTLINE" device=""/>
<part name="GND24" library="supply1" deviceset="GND" device=""/>
<part name="GND17" library="supply1" deviceset="GND" device=""/>
<part name="C3" library="microbuilder" deviceset="CAP_CERAMIC" device="0805" value="1u"/>
<part name="GND25" library="supply1" deviceset="GND" device=""/>
<part name="C5" library="microbuilder" deviceset="CAP_CERAMIC" device="0805" value="100n"/>
<part name="GND26" library="supply1" deviceset="GND" device=""/>
<part name="U$4" library="microbuilder" deviceset="2.5V" device=""/>
<part name="U$6" library="microbuilder" deviceset="2.5V" device=""/>
<part name="GND27" library="supply1" deviceset="GND" device=""/>
<part name="GND29" library="supply1" deviceset="GND" device=""/>
<part name="GND30" library="supply1" deviceset="GND" device=""/>
<part name="U1" library="SparkFun-DigitalIC" deviceset="ATMEGA328_SMT" device="" value="ATMEGA328P"/>
<part name="GND20" library="supply1" deviceset="GND" device=""/>
<part name="+3V10" library="microbuilder" deviceset="2.5V" device=""/>
<part name="FRAME2" library="zak" deviceset="FRAME_A3" device=""/>
<part name="+3V8" library="microbuilder" deviceset="2.5V" device=""/>
<part name="GND2" library="supply1" deviceset="GND" device=""/>
<part name="LS1" library="zak" deviceset="ABMT-801-RC" device="" value=""/>
<part name="R7" library="microbuilder" deviceset="RESISTOR" device="0805" value="1K"/>
<part name="GND11" library="supply1" deviceset="GND" device=""/>
<part name="LED1" library="microbuilder" deviceset="LED" device="0805"/>
<part name="LED2" library="microbuilder" deviceset="LED" device="0805"/>
<part name="GND18" library="supply1" deviceset="GND" device=""/>
<part name="P+1" library="microbuilder" deviceset="VCC" device=""/>
<part name="P+3" library="microbuilder" deviceset="VCC" device=""/>
<part name="P+4" library="microbuilder" deviceset="VCC" device=""/>
<part name="GND32" library="supply1" deviceset="GND" device=""/>
<part name="GND34" library="supply1" deviceset="GND" device=""/>
<part name="GND35" library="supply1" deviceset="GND" device=""/>
<part name="P+5" library="microbuilder" deviceset="VCC" device=""/>
<part name="D1" library="zak" deviceset="DIODE_0805" device="0805" value="TS4148 RY"/>
<part name="Q1" library="microbuilder" deviceset="TRANSISTOR_NPN" device="WIDE" value="BC817-40"/>
<part name="JP1" library="zak" deviceset="ISP6PIN" device="NORMAL"/>
<part name="C2" library="zak" deviceset="CAP_ELECTROLYTIC" device="PANASONIC_C" value="47u"/>
<part name="SW3" library="zak" deviceset="SPST_TACT" device="MC32882"/>
<part name="SW1" library="zak" deviceset="SPST_TACT" device="MC32882"/>
<part name="SW2" library="zak" deviceset="SPST_TACT" device="MC32882"/>
<part name="GND8" library="supply1" deviceset="GND" device=""/>
<part name="R3" library="microbuilder" deviceset="RESISTOR" device="0805" value="1K"/>
<part name="R4" library="microbuilder" deviceset="RESISTOR" device="0805" value="1K"/>
<part name="GND23" library="supply1" deviceset="GND" device=""/>
<part name="R2" library="microbuilder" deviceset="RESISTOR" device="0805" value="47K"/>
<part name="R1" library="microbuilder" deviceset="RESISTOR" device="0805" value="47K"/>
<part name="R5" library="microbuilder" deviceset="RESISTOR" device="0805" value="0R"/>
<part name="R6" library="microbuilder" deviceset="RESISTOR" device="0805" value="0R"/>
<part name="C6" library="microbuilder" deviceset="CAP_CERAMIC" device="0805" value="1u"/>
<part name="GND3" library="supply1" deviceset="GND" device=""/>
<part name="JP3" library="pinhead" deviceset="PINHD-1X2" device=""/>
<part name="R10" library="microbuilder" deviceset="RESISTOR" device="0805" value="47K"/>
<part name="U$1" library="microbuilder" deviceset="2.5V" device=""/>
<part name="C4" library="microbuilder" deviceset="CAP_CERAMIC" device="0805" value="100n"/>
<part name="GND12" library="supply1" deviceset="GND" device=""/>
<part name="JP2" library="pinhead" deviceset="PINHD-1X2" device=""/>
<part name="SW4" library="zak" deviceset="SPST_TACT" device="KMR2"/>
<part name="GND19" library="supply1" deviceset="GND" device=""/>
<part name="R8" library="microbuilder" deviceset="RESISTOR" device="0805" value="47K"/>
<part name="GND21" library="supply1" deviceset="GND" device=""/>
<part name="JP4" library="pinhead" deviceset="PINHD-1X2" device=""/>
<part name="U3" library="zak" deviceset="REGULATOR_5" device="" value="LP3990MF-2.5"/>
<part name="U2" library="zak" deviceset="CH340G" device="SMPAD" value="CH340G"/>
<part name="U4" library="zak" deviceset="DS3231MZ+" device="SMPAD" value="DS3231MZ+"/>
<part name="P+2" library="microbuilder" deviceset="VCC" device=""/>
<part name="GND13" library="supply1" deviceset="GND" device=""/>
<part name="C12" library="microbuilder" deviceset="CAP_CERAMIC" device="0805" value="100n"/>
<part name="GND14" library="supply1" deviceset="GND" device=""/>
<part name="+3V1" library="microbuilder" deviceset="2.5V" device=""/>
<part name="C13" library="microbuilder" deviceset="CAP_CERAMIC" device="0805" value="100n"/>
<part name="C14" library="microbuilder" deviceset="CAP_CERAMIC" device="0805" value="100n"/>
<part name="GND28" library="supply1" deviceset="GND" device=""/>
<part name="GND22" library="supply1" deviceset="GND" device=""/>
<part name="GND31" library="supply1" deviceset="GND" device=""/>
<part name="C15" library="microbuilder" deviceset="CAP_CERAMIC" device="0805" value="18p"/>
<part name="C16" library="microbuilder" deviceset="CAP_CERAMIC" device="0805" value="18p"/>
<part name="R11" library="microbuilder" deviceset="RESISTOR" device="0805" value="1K"/>
<part name="X1" library="zak" deviceset="XTAL" device="NX5032" value="12MHz"/>
<part name="GND33" library="supply1" deviceset="GND" device=""/>
<part name="GND36" library="supply1" deviceset="GND" device=""/>
<part name="U5" library="zak" deviceset="74LVC1G32W5" device="" value="74LVC1G32W5"/>
<part name="JP5" library="pinhead" deviceset="PINHD-1X2" device=""/>
<part name="RN1" library="microbuilder" deviceset="RESISTOR_4PACK" device="" value="10K"/>
<part name="P+6" library="microbuilder" deviceset="VCC" device=""/>
<part name="F1" library="zak" deviceset="PTCFUSE" device="1206" value="500mA"/>
<part name="JP7" library="pinhead" deviceset="PINHD-1X19" device=""/>
<part name="D2" library="zak" deviceset="DIODE_0805" device="0805" value="TS4148 RY"/>
<part name="D3" library="zak" deviceset="DIODE_0805" device="0805" value="TS4148 RY"/>
<part name="GND37" library="supply1" deviceset="GND" device=""/>
<part name="P+7" library="microbuilder" deviceset="VCC" device=""/>
<part name="C17" library="microbuilder" deviceset="CAP_CERAMIC" device="0805" value="100n"/>
<part name="U6" library="zak" deviceset="OPAMP_SINGLE" device="CONFIG2" value="MCP6561RT"/>
<part name="R12" library="microbuilder" deviceset="RESISTOR" device="0805" value="47K"/>
<part name="R13" library="microbuilder" deviceset="RESISTOR" device="0805" value="47K"/>
<part name="U$2" library="microbuilder" deviceset="2.5V" device=""/>
<part name="GND38" library="supply1" deviceset="GND" device=""/>
</parts>
<sheets>
<sheet>
<plain>
<text x="292.1" y="73.66" size="1.778" layer="97">C10: 16V, X7R</text>
<text x="170.18" y="248.92" size="1.778" layer="97">USB-to-serial converter</text>
<text x="215.9" y="246.38" size="1.778" layer="97">OR gate: High speed, low power
level converter (5V -&gt; 2.5V)</text>
</plain>
<instances>
<instance part="C11" gate="G$1" x="307.34" y="91.44"/>
<instance part="C10" gate="G$1" x="299.72" y="93.98"/>
<instance part="C7" gate="G$1" x="312.42" y="162.56" rot="R90"/>
<instance part="C8" gate="G$1" x="302.26" y="157.48" rot="R90"/>
<instance part="C9" gate="G$1" x="287.02" y="137.16"/>
<instance part="GND1" gate="1" x="309.88" y="172.72"/>
<instance part="GND5" gate="1" x="287.02" y="132.08"/>
<instance part="R9" gate="G$1" x="292.1" y="96.52" rot="R90"/>
<instance part="GND6" gate="1" x="314.96" y="83.82"/>
<instance part="GND7" gate="1" x="292.1" y="83.82"/>
<instance part="GND4" gate="1" x="302.26" y="137.16"/>
<instance part="GND9" gate="1" x="302.26" y="109.22"/>
<instance part="GND10" gate="1" x="302.26" y="124.46"/>
<instance part="USB1" gate="G$1" x="35.56" y="241.3" rot="R180"/>
<instance part="C1" gate="G$1" x="81.28" y="228.6"/>
<instance part="GND15" gate="1" x="81.28" y="205.74"/>
<instance part="GND16" gate="1" x="45.72" y="248.92"/>
<instance part="OLED1" gate="G$1" x="345.44" y="129.54"/>
<instance part="GND24" gate="1" x="287.02" y="198.12"/>
<instance part="GND17" gate="1" x="88.9" y="205.74"/>
<instance part="C3" gate="G$1" x="124.46" y="228.6"/>
<instance part="GND25" gate="1" x="124.46" y="205.74"/>
<instance part="C5" gate="G$1" x="48.26" y="106.68" rot="R270"/>
<instance part="GND26" gate="1" x="43.18" y="104.14"/>
<instance part="U$4" gate="G$1" x="132.08" y="238.76" rot="R270"/>
<instance part="U$6" gate="G$1" x="281.94" y="142.24" rot="R90"/>
<instance part="GND27" gate="1" x="302.26" y="147.32"/>
<instance part="GND29" gate="1" x="299.72" y="83.82"/>
<instance part="GND30" gate="1" x="307.34" y="83.82"/>
<instance part="U1" gate="G$1" x="78.74" y="96.52"/>
<instance part="GND20" gate="1" x="45.72" y="66.04"/>
<instance part="+3V10" gate="G$1" x="15.24" y="114.3" rot="R90"/>
<instance part="FRAME2" gate="G$1" x="0" y="0"/>
<instance part="+3V8" gate="G$1" x="317.5" y="208.28" rot="R180"/>
<instance part="GND2" gate="1" x="147.32" y="137.16"/>
<instance part="LS1" gate="G$1" x="165.1" y="99.06" rot="R270"/>
<instance part="R7" gate="G$1" x="139.7" y="73.66" rot="R180"/>
<instance part="GND11" gate="1" x="165.1" y="55.88"/>
<instance part="LED1" gate="G$1" x="142.24" y="86.36"/>
<instance part="LED2" gate="G$1" x="149.86" y="81.28"/>
<instance part="GND18" gate="1" x="154.94" y="78.74"/>
<instance part="P+1" gate="VCC" x="78.74" y="243.84"/>
<instance part="P+3" gate="VCC" x="259.08" y="152.4" rot="R90"/>
<instance part="P+4" gate="VCC" x="165.1" y="124.46"/>
<instance part="GND32" gate="1" x="147.32" y="111.76"/>
<instance part="GND34" gate="1" x="147.32" y="124.46"/>
<instance part="GND35" gate="1" x="322.58" y="208.28"/>
<instance part="P+5" gate="VCC" x="312.42" y="208.28" rot="R180"/>
<instance part="D1" gate="G$1" x="157.48" y="99.06" rot="R90"/>
<instance part="Q1" gate="G$1" x="165.1" y="73.66"/>
<instance part="JP1" gate="G$1" x="76.2" y="40.64"/>
<instance part="C2" gate="G$1" x="68.58" y="228.6"/>
<instance part="SW3" gate="G$1" x="137.16" y="116.84"/>
<instance part="SW1" gate="G$1" x="137.16" y="142.24"/>
<instance part="SW2" gate="G$1" x="137.16" y="129.54"/>
<instance part="GND8" gate="1" x="91.44" y="30.48"/>
<instance part="R3" gate="G$1" x="58.42" y="40.64" rot="R180"/>
<instance part="R4" gate="G$1" x="99.06" y="40.64"/>
<instance part="GND23" gate="1" x="68.58" y="205.74"/>
<instance part="R2" gate="G$1" x="287.02" y="208.28" rot="R270"/>
<instance part="R1" gate="G$1" x="287.02" y="223.52" rot="R270"/>
<instance part="R5" gate="G$1" x="124.46" y="86.36" rot="R180"/>
<instance part="R6" gate="G$1" x="132.08" y="81.28" rot="R180"/>
<instance part="C6" gate="G$1" x="274.32" y="147.32"/>
<instance part="GND3" gate="1" x="274.32" y="142.24"/>
<instance part="JP3" gate="G$1" x="269.24" y="160.02" rot="R90"/>
<instance part="R10" gate="G$1" x="279.4" y="121.92" rot="R90"/>
<instance part="U$1" gate="G$1" x="279.4" y="132.08"/>
<instance part="C4" gate="G$1" x="30.48" y="106.68"/>
<instance part="GND12" gate="1" x="30.48" y="99.06"/>
<instance part="JP2" gate="G$1" x="25.4" y="121.92" rot="R90"/>
<instance part="SW4" gate="G$1" x="58.42" y="144.78"/>
<instance part="GND19" gate="1" x="68.58" y="139.7"/>
<instance part="R8" gate="G$1" x="152.4" y="66.04" rot="R270"/>
<instance part="GND21" gate="1" x="152.4" y="55.88"/>
<instance part="JP4" gate="G$1" x="172.72" y="83.82"/>
<instance part="U3" gate="G$1" x="106.68" y="233.68"/>
<instance part="U2" gate="G$1" x="185.42" y="220.98"/>
<instance part="U4" gate="G$1" x="228.6" y="91.44"/>
<instance part="P+2" gate="VCC" x="160.02" y="236.22" rot="R90"/>
<instance part="GND13" gate="1" x="208.28" y="83.82"/>
<instance part="C12" gate="G$1" x="200.66" y="93.98"/>
<instance part="GND14" gate="1" x="200.66" y="83.82"/>
<instance part="+3V1" gate="G$1" x="185.42" y="101.6" rot="R90"/>
<instance part="C13" gate="G$1" x="165.1" y="226.06"/>
<instance part="C14" gate="G$1" x="233.68" y="185.42" rot="R90"/>
<instance part="GND28" gate="1" x="165.1" y="205.74"/>
<instance part="GND22" gate="1" x="177.8" y="177.8"/>
<instance part="GND31" gate="1" x="193.04" y="177.8"/>
<instance part="C15" gate="G$1" x="177.8" y="185.42"/>
<instance part="C16" gate="G$1" x="193.04" y="185.42"/>
<instance part="R11" gate="G$1" x="248.92" y="233.68"/>
<instance part="X1" gate="G$1" x="185.42" y="193.04" rot="R180"/>
<instance part="GND33" gate="1" x="220.98" y="223.52"/>
<instance part="GND36" gate="1" x="25.4" y="76.2"/>
<instance part="U5" gate="G$1" x="231.14" y="233.68"/>
<instance part="U5" gate="G$2" x="25.4" y="88.9"/>
<instance part="JP5" gate="G$1" x="195.58" y="109.22" rot="R90"/>
<instance part="RN1" gate="G$1" x="248.92" y="114.3" rot="R270"/>
<instance part="RN1" gate="G$2" x="256.54" y="114.3" rot="R270"/>
<instance part="RN1" gate="G$3" x="45.72" y="129.54" rot="R270"/>
<instance part="P+6" gate="VCC" x="91.44" y="43.18" rot="R270"/>
<instance part="F1" gate="G$1" x="53.34" y="238.76"/>
<instance part="JP7" gate="G$1" x="332.74" y="238.76" rot="R90"/>
<instance part="D2" gate="G$1" x="165.1" y="109.22" smashed="yes" rot="R270">
<attribute name="NAME" x="167.64" y="111.76" size="1.27" layer="95" rot="R270"/>
<attribute name="VALUE" x="169.672" y="115.57" size="1.27" layer="96" rot="R270"/>
</instance>
<instance part="D3" gate="G$1" x="165.1" y="116.84" smashed="yes" rot="R270">
<attribute name="NAME" x="167.64" y="119.38" size="1.27" layer="95" rot="R270"/>
<attribute name="VALUE" x="161.29" y="123.19" size="1.27" layer="96" rot="R270"/>
</instance>
<instance part="GND37" gate="1" x="35.56" y="165.1"/>
<instance part="P+7" gate="VCC" x="35.56" y="195.58"/>
<instance part="C17" gate="G$1" x="40.64" y="180.34"/>
<instance part="U6" gate="G$1" x="231.14" y="213.36" rot="MR0"/>
<instance part="U6" gate="G$2" x="35.56" y="180.34" rot="MR0"/>
<instance part="R12" gate="G$1" x="246.38" y="203.2" rot="R90"/>
<instance part="R13" gate="G$1" x="254" y="210.82"/>
<instance part="U$2" gate="G$1" x="264.16" y="210.82" rot="R270"/>
<instance part="GND38" gate="1" x="246.38" y="193.04"/>
</instances>
<busses>
</busses>
<nets>
<net name="GND" class="0">
<segment>
<wire x1="317.5" y1="165.1" x2="317.5" y2="177.8" width="0.1524" layer="91"/>
<pinref part="GND1" gate="1" pin="GND"/>
<wire x1="317.5" y1="177.8" x2="309.88" y2="177.8" width="0.1524" layer="91"/>
<wire x1="309.88" y1="177.8" x2="309.88" y2="175.26" width="0.1524" layer="91"/>
<wire x1="317.5" y1="165.1" x2="320.04" y2="165.1" width="0.1524" layer="91"/>
<pinref part="OLED1" gate="G$1" pin="NC(GND)@1"/>
</segment>
<segment>
<pinref part="GND6" gate="1" pin="GND"/>
<wire x1="314.96" y1="86.36" x2="314.96" y2="91.44" width="0.1524" layer="91"/>
<junction x="314.96" y="91.44"/>
<wire x1="320.04" y1="93.98" x2="314.96" y2="93.98" width="0.1524" layer="91"/>
<wire x1="314.96" y1="93.98" x2="314.96" y2="91.44" width="0.1524" layer="91"/>
<pinref part="OLED1" gate="G$1" pin="VLSS"/>
<pinref part="OLED1" gate="G$1" pin="NC(GND)@2"/>
<wire x1="320.04" y1="91.44" x2="314.96" y2="91.44" width="0.1524" layer="91"/>
</segment>
<segment>
<wire x1="317.5" y1="137.16" x2="317.5" y2="139.7" width="0.1524" layer="91"/>
<wire x1="317.5" y1="139.7" x2="317.5" y2="142.24" width="0.1524" layer="91"/>
<junction x="317.5" y="139.7"/>
<pinref part="GND4" gate="1" pin="GND"/>
<wire x1="302.26" y1="139.7" x2="317.5" y2="139.7" width="0.1524" layer="91"/>
<wire x1="320.04" y1="142.24" x2="317.5" y2="142.24" width="0.1524" layer="91"/>
<wire x1="320.04" y1="139.7" x2="317.5" y2="139.7" width="0.1524" layer="91"/>
<pinref part="OLED1" gate="G$1" pin="BS0"/>
<pinref part="OLED1" gate="G$1" pin="BS1"/>
<pinref part="OLED1" gate="G$1" pin="BS2"/>
<wire x1="320.04" y1="137.16" x2="317.5" y2="137.16" width="0.1524" layer="91"/>
</segment>
<segment>
<wire x1="317.5" y1="104.14" x2="317.5" y2="106.68" width="0.1524" layer="91"/>
<wire x1="317.5" y1="106.68" x2="317.5" y2="109.22" width="0.1524" layer="91"/>
<wire x1="317.5" y1="109.22" x2="317.5" y2="111.76" width="0.1524" layer="91"/>
<junction x="317.5" y="111.76"/>
<junction x="317.5" y="109.22"/>
<junction x="317.5" y="106.68"/>
<pinref part="GND9" gate="1" pin="GND"/>
<wire x1="302.26" y1="111.76" x2="317.5" y2="111.76" width="0.1524" layer="91"/>
<wire x1="320.04" y1="114.3" x2="317.5" y2="114.3" width="0.1524" layer="91"/>
<wire x1="317.5" y1="114.3" x2="317.5" y2="111.76" width="0.1524" layer="91"/>
<wire x1="320.04" y1="111.76" x2="317.5" y2="111.76" width="0.1524" layer="91"/>
<wire x1="317.5" y1="109.22" x2="320.04" y2="109.22" width="0.1524" layer="91"/>
<wire x1="320.04" y1="106.68" x2="317.5" y2="106.68" width="0.1524" layer="91"/>
<wire x1="317.5" y1="104.14" x2="320.04" y2="104.14" width="0.1524" layer="91"/>
<pinref part="OLED1" gate="G$1" pin="D3"/>
<pinref part="OLED1" gate="G$1" pin="D4"/>
<pinref part="OLED1" gate="G$1" pin="D5"/>
<pinref part="OLED1" gate="G$1" pin="D6"/>
<pinref part="OLED1" gate="G$1" pin="D7"/>
</segment>
<segment>
<pinref part="GND10" gate="1" pin="GND"/>
<wire x1="302.26" y1="127" x2="317.5" y2="127" width="0.1524" layer="91"/>
<junction x="317.5" y="127"/>
<wire x1="320.04" y1="127" x2="317.5" y2="127" width="0.1524" layer="91"/>
<wire x1="320.04" y1="124.46" x2="317.5" y2="124.46" width="0.1524" layer="91"/>
<wire x1="317.5" y1="124.46" x2="317.5" y2="127" width="0.1524" layer="91"/>
<pinref part="OLED1" gate="G$1" pin="R/W"/>
<pinref part="OLED1" gate="G$1" pin="E/RD"/>
</segment>
<segment>
<pinref part="C1" gate="G$1" pin="P$2"/>
<pinref part="GND15" gate="1" pin="GND"/>
<wire x1="81.28" y1="226.06" x2="81.28" y2="208.28" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="USB1" gate="G$1" pin="GND"/>
<wire x1="38.1" y1="241.3" x2="40.64" y2="241.3" width="0.1524" layer="91"/>
<wire x1="40.64" y1="241.3" x2="40.64" y2="251.46" width="0.1524" layer="91"/>
<pinref part="GND16" gate="1" pin="GND"/>
<wire x1="40.64" y1="251.46" x2="45.72" y2="251.46" width="0.1524" layer="91"/>
<pinref part="USB1" gate="G$1" pin="SHEILD2"/>
<wire x1="33.02" y1="248.92" x2="33.02" y2="251.46" width="0.1524" layer="91"/>
<pinref part="USB1" gate="G$1" pin="SHEILD1"/>
<wire x1="33.02" y1="251.46" x2="35.56" y2="251.46" width="0.1524" layer="91"/>
<wire x1="35.56" y1="251.46" x2="35.56" y2="248.92" width="0.1524" layer="91"/>
<wire x1="35.56" y1="251.46" x2="40.64" y2="251.46" width="0.1524" layer="91"/>
<junction x="35.56" y="251.46"/>
<junction x="40.64" y="251.46"/>
</segment>
<segment>
<pinref part="GND17" gate="1" pin="GND"/>
<wire x1="88.9" y1="208.28" x2="88.9" y2="233.68" width="0.1524" layer="91"/>
<wire x1="88.9" y1="233.68" x2="93.98" y2="233.68" width="0.1524" layer="91"/>
<pinref part="U3" gate="G$1" pin="GND"/>
</segment>
<segment>
<pinref part="C3" gate="G$1" pin="P$2"/>
<pinref part="GND25" gate="1" pin="GND"/>
<wire x1="124.46" y1="226.06" x2="124.46" y2="208.28" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C5" gate="G$1" pin="P$2"/>
<pinref part="GND26" gate="1" pin="GND"/>
<wire x1="45.72" y1="106.68" x2="43.18" y2="106.68" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C9" gate="G$1" pin="P$2"/>
<pinref part="GND5" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="GND27" gate="1" pin="GND"/>
<wire x1="302.26" y1="149.86" x2="314.96" y2="149.86" width="0.1524" layer="91"/>
<wire x1="314.96" y1="149.86" x2="314.96" y2="147.32" width="0.1524" layer="91"/>
<pinref part="OLED1" gate="G$1" pin="VSS"/>
<wire x1="320.04" y1="147.32" x2="314.96" y2="147.32" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C11" gate="G$1" pin="P$2"/>
<pinref part="GND30" gate="1" pin="GND"/>
<wire x1="307.34" y1="88.9" x2="307.34" y2="86.36" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C10" gate="G$1" pin="P$2"/>
<pinref part="GND29" gate="1" pin="GND"/>
<wire x1="299.72" y1="91.44" x2="299.72" y2="86.36" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="R9" gate="G$1" pin="1"/>
<pinref part="GND7" gate="1" pin="GND"/>
<wire x1="292.1" y1="91.44" x2="292.1" y2="86.36" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="AGND"/>
<wire x1="55.88" y1="71.12" x2="53.34" y2="71.12" width="0.1524" layer="91"/>
<wire x1="53.34" y1="71.12" x2="53.34" y2="68.58" width="0.1524" layer="91"/>
<pinref part="U1" gate="G$1" pin="GND@2"/>
<wire x1="53.34" y1="68.58" x2="53.34" y2="66.04" width="0.1524" layer="91"/>
<wire x1="53.34" y1="66.04" x2="55.88" y2="66.04" width="0.1524" layer="91"/>
<pinref part="U1" gate="G$1" pin="GND@1"/>
<wire x1="55.88" y1="68.58" x2="53.34" y2="68.58" width="0.1524" layer="91"/>
<pinref part="GND20" gate="1" pin="GND"/>
<wire x1="45.72" y1="68.58" x2="53.34" y2="68.58" width="0.1524" layer="91"/>
<junction x="53.34" y="68.58"/>
</segment>
<segment>
<pinref part="GND24" gate="1" pin="GND"/>
<wire x1="287.02" y1="203.2" x2="287.02" y2="200.66" width="0.1524" layer="91"/>
<pinref part="R2" gate="G$1" pin="2"/>
</segment>
<segment>
<pinref part="GND11" gate="1" pin="GND"/>
<wire x1="165.1" y1="68.58" x2="165.1" y2="58.42" width="0.1524" layer="91"/>
<pinref part="Q1" gate="G$1" pin="E"/>
</segment>
<segment>
<pinref part="LED2" gate="G$1" pin="C"/>
<pinref part="GND18" gate="1" pin="GND"/>
<wire x1="152.4" y1="81.28" x2="154.94" y2="81.28" width="0.1524" layer="91"/>
<pinref part="LED1" gate="G$1" pin="C"/>
<wire x1="144.78" y1="86.36" x2="154.94" y2="86.36" width="0.1524" layer="91"/>
<wire x1="154.94" y1="86.36" x2="154.94" y2="81.28" width="0.1524" layer="91"/>
<junction x="154.94" y="81.28"/>
</segment>
<segment>
<pinref part="GND35" gate="1" pin="GND"/>
<wire x1="322.58" y1="210.82" x2="322.58" y2="236.22" width="0.1524" layer="91"/>
<pinref part="JP7" gate="G$1" pin="5"/>
</segment>
<segment>
<pinref part="JP1" gate="G$1" pin="6"/>
<pinref part="GND8" gate="1" pin="GND"/>
<wire x1="81.28" y1="38.1" x2="91.44" y2="38.1" width="0.1524" layer="91"/>
<wire x1="91.44" y1="38.1" x2="91.44" y2="33.02" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C2" gate="G$1" pin="-"/>
<pinref part="GND23" gate="1" pin="GND"/>
<wire x1="68.58" y1="226.06" x2="68.58" y2="208.28" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C6" gate="G$1" pin="P$2"/>
<pinref part="GND3" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="C4" gate="G$1" pin="P$2"/>
<pinref part="GND12" gate="1" pin="GND"/>
<wire x1="30.48" y1="104.14" x2="30.48" y2="101.6" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="SW3" gate="G$1" pin="S"/>
<wire x1="142.24" y1="116.84" x2="144.78" y2="116.84" width="0.1524" layer="91"/>
<wire x1="144.78" y1="116.84" x2="144.78" y2="114.3" width="0.1524" layer="91"/>
<pinref part="GND32" gate="1" pin="GND"/>
<wire x1="144.78" y1="114.3" x2="147.32" y2="114.3" width="0.1524" layer="91"/>
<pinref part="SW3" gate="G$1" pin="S1"/>
<wire x1="142.24" y1="114.3" x2="144.78" y2="114.3" width="0.1524" layer="91"/>
<junction x="144.78" y="114.3"/>
</segment>
<segment>
<pinref part="SW2" gate="G$1" pin="S"/>
<wire x1="142.24" y1="129.54" x2="144.78" y2="129.54" width="0.1524" layer="91"/>
<wire x1="144.78" y1="129.54" x2="144.78" y2="127" width="0.1524" layer="91"/>
<pinref part="SW2" gate="G$1" pin="S1"/>
<wire x1="144.78" y1="127" x2="142.24" y2="127" width="0.1524" layer="91"/>
<pinref part="GND34" gate="1" pin="GND"/>
<wire x1="144.78" y1="127" x2="147.32" y2="127" width="0.1524" layer="91"/>
<junction x="144.78" y="127"/>
</segment>
<segment>
<pinref part="SW1" gate="G$1" pin="S"/>
<wire x1="142.24" y1="142.24" x2="144.78" y2="142.24" width="0.1524" layer="91"/>
<wire x1="144.78" y1="142.24" x2="144.78" y2="139.7" width="0.1524" layer="91"/>
<pinref part="GND2" gate="1" pin="GND"/>
<wire x1="144.78" y1="139.7" x2="147.32" y2="139.7" width="0.1524" layer="91"/>
<pinref part="SW1" gate="G$1" pin="S1"/>
<wire x1="142.24" y1="139.7" x2="144.78" y2="139.7" width="0.1524" layer="91"/>
<junction x="144.78" y="139.7"/>
</segment>
<segment>
<pinref part="SW4" gate="G$1" pin="S"/>
<wire x1="63.5" y1="144.78" x2="66.04" y2="144.78" width="0.1524" layer="91"/>
<wire x1="66.04" y1="144.78" x2="66.04" y2="142.24" width="0.1524" layer="91"/>
<pinref part="GND19" gate="1" pin="GND"/>
<wire x1="66.04" y1="142.24" x2="68.58" y2="142.24" width="0.1524" layer="91"/>
<pinref part="SW4" gate="G$1" pin="S1"/>
<wire x1="66.04" y1="142.24" x2="63.5" y2="142.24" width="0.1524" layer="91"/>
<junction x="66.04" y="142.24"/>
</segment>
<segment>
<pinref part="R8" gate="G$1" pin="2"/>
<pinref part="GND21" gate="1" pin="GND"/>
<wire x1="152.4" y1="60.96" x2="152.4" y2="58.42" width="0.1524" layer="91"/>
</segment>
<segment>
<wire x1="208.28" y1="106.68" x2="208.28" y2="88.9" width="0.1524" layer="91"/>
<pinref part="U4" gate="G$1" pin="GND"/>
<wire x1="208.28" y1="88.9" x2="210.82" y2="88.9" width="0.1524" layer="91"/>
<pinref part="GND13" gate="1" pin="GND"/>
<wire x1="208.28" y1="88.9" x2="208.28" y2="86.36" width="0.1524" layer="91"/>
<junction x="208.28" y="88.9"/>
<pinref part="U4" gate="G$1" pin="VCC"/>
<wire x1="210.82" y1="106.68" x2="208.28" y2="106.68" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="GND14" gate="1" pin="GND"/>
<pinref part="C12" gate="G$1" pin="P$2"/>
<wire x1="200.66" y1="86.36" x2="200.66" y2="91.44" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U2" gate="G$1" pin="GND"/>
<pinref part="GND28" gate="1" pin="GND"/>
<wire x1="172.72" y1="210.82" x2="165.1" y2="210.82" width="0.1524" layer="91"/>
<wire x1="165.1" y1="208.28" x2="165.1" y2="210.82" width="0.1524" layer="91"/>
<pinref part="C13" gate="G$1" pin="P$2"/>
<wire x1="165.1" y1="210.82" x2="165.1" y2="223.52" width="0.1524" layer="91"/>
<junction x="165.1" y="210.82"/>
</segment>
<segment>
<pinref part="GND22" gate="1" pin="GND"/>
<pinref part="C15" gate="G$1" pin="P$2"/>
<wire x1="177.8" y1="180.34" x2="177.8" y2="182.88" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="GND31" gate="1" pin="GND"/>
<pinref part="C16" gate="G$1" pin="P$2"/>
<wire x1="193.04" y1="180.34" x2="193.04" y2="182.88" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="GND33" gate="1" pin="GND"/>
<wire x1="223.52" y1="231.14" x2="220.98" y2="231.14" width="0.1524" layer="91"/>
<wire x1="220.98" y1="231.14" x2="220.98" y2="226.06" width="0.1524" layer="91"/>
<pinref part="U5" gate="G$1" pin="B"/>
</segment>
<segment>
<pinref part="GND36" gate="1" pin="GND"/>
<pinref part="U5" gate="G$2" pin="GND"/>
<wire x1="25.4" y1="81.28" x2="25.4" y2="78.74" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U6" gate="G$2" pin="VSS"/>
<pinref part="GND37" gate="1" pin="GND"/>
<wire x1="35.56" y1="167.64" x2="35.56" y2="170.18" width="0.1524" layer="91"/>
<pinref part="C17" gate="G$1" pin="P$2"/>
<wire x1="35.56" y1="170.18" x2="35.56" y2="172.72" width="0.1524" layer="91"/>
<wire x1="35.56" y1="170.18" x2="40.64" y2="170.18" width="0.1524" layer="91"/>
<wire x1="40.64" y1="170.18" x2="40.64" y2="177.8" width="0.1524" layer="91"/>
<junction x="35.56" y="170.18"/>
</segment>
<segment>
<pinref part="R12" gate="G$1" pin="1"/>
<pinref part="GND38" gate="1" pin="GND"/>
<wire x1="246.38" y1="198.12" x2="246.38" y2="195.58" width="0.1524" layer="91"/>
</segment>
</net>
<net name="RESET" class="0">
<segment>
<pinref part="JP1" gate="G$1" pin="5"/>
<wire x1="73.66" y1="38.1" x2="66.04" y2="38.1" width="0.1524" layer="91"/>
</segment>
<segment>
<wire x1="314.96" y1="236.22" x2="314.96" y2="231.14" width="0.1524" layer="91"/>
<wire x1="314.96" y1="231.14" x2="307.34" y2="231.14" width="0.1524" layer="91"/>
<wire x1="307.34" y1="231.14" x2="307.34" y2="208.28" width="0.1524" layer="91"/>
<label x="307.34" y="208.28" size="1.778" layer="95" rot="R90"/>
<pinref part="JP7" gate="G$1" pin="2"/>
</segment>
<segment>
<pinref part="C14" gate="G$1" pin="P$2"/>
<wire x1="236.22" y1="185.42" x2="259.08" y2="185.42" width="0.1524" layer="91"/>
<label x="251.46" y="182.88" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="RN1" gate="G$3" pin="2"/>
<pinref part="U1" gate="G$1" pin="PC6(/RESET)"/>
<label x="35.56" y="121.92" size="1.778" layer="95"/>
<wire x1="55.88" y1="121.92" x2="50.8" y2="121.92" width="0.1524" layer="91"/>
<wire x1="50.8" y1="121.92" x2="45.72" y2="121.92" width="0.1524" layer="91"/>
<wire x1="45.72" y1="121.92" x2="35.56" y2="121.92" width="0.1524" layer="91"/>
<wire x1="45.72" y1="124.46" x2="45.72" y2="121.92" width="0.1524" layer="91"/>
<junction x="45.72" y="121.92"/>
<wire x1="50.8" y1="121.92" x2="50.8" y2="144.78" width="0.1524" layer="91"/>
<pinref part="SW4" gate="G$1" pin="P"/>
<wire x1="53.34" y1="144.78" x2="50.8" y2="144.78" width="0.1524" layer="91"/>
<junction x="50.8" y="121.92"/>
</segment>
</net>
<net name="SCK" class="0">
<segment>
<label x="317.5" y="121.92" size="1.778" layer="95" rot="MR0"/>
<pinref part="OLED1" gate="G$1" pin="D0/SPI_SCLK/I2C_SCK"/>
<wire x1="320.04" y1="121.92" x2="312.42" y2="121.92" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="PB5(SCK)"/>
<wire x1="104.14" y1="63.5" x2="111.76" y2="63.5" width="0.1524" layer="91"/>
<label x="106.68" y="63.5" size="1.778" layer="95"/>
</segment>
<segment>
<label x="332.74" y="220.98" size="1.778" layer="95" rot="R90"/>
<wire x1="332.74" y1="236.22" x2="332.74" y2="220.98" width="0.1524" layer="91"/>
<pinref part="JP7" gate="G$1" pin="9"/>
</segment>
<segment>
<pinref part="R3" gate="G$1" pin="2"/>
<wire x1="53.34" y1="40.64" x2="48.26" y2="40.64" width="0.1524" layer="91"/>
<label x="48.26" y="38.1" size="1.778" layer="95"/>
</segment>
</net>
<net name="MISO" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="PB4(MISO)"/>
<wire x1="104.14" y1="66.04" x2="111.76" y2="66.04" width="0.1524" layer="91"/>
<label x="106.68" y="66.04" size="1.778" layer="95"/>
</segment>
<segment>
<label x="335.28" y="220.98" size="1.778" layer="95" rot="R90"/>
<wire x1="335.28" y1="236.22" x2="335.28" y2="220.98" width="0.1524" layer="91"/>
<pinref part="JP7" gate="G$1" pin="10"/>
</segment>
<segment>
<pinref part="JP1" gate="G$1" pin="1"/>
<wire x1="73.66" y1="43.18" x2="66.04" y2="43.18" width="0.1524" layer="91"/>
</segment>
</net>
<net name="MOSI" class="0">
<segment>
<label x="317.5" y="119.38" size="1.778" layer="95" rot="MR0"/>
<wire x1="312.42" y1="119.38" x2="320.04" y2="119.38" width="0.1524" layer="91"/>
<pinref part="OLED1" gate="G$1" pin="D1/SPI_SDIN/I2C_SDA"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="PB3(MOSI/OC2)"/>
<wire x1="104.14" y1="68.58" x2="111.76" y2="68.58" width="0.1524" layer="91"/>
<label x="106.68" y="68.58" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="337.82" y1="236.22" x2="337.82" y2="220.98" width="0.1524" layer="91"/>
<label x="337.82" y="220.98" size="1.778" layer="95" rot="R90"/>
<pinref part="JP7" gate="G$1" pin="11"/>
</segment>
<segment>
<pinref part="R4" gate="G$1" pin="2"/>
<wire x1="104.14" y1="40.64" x2="109.22" y2="40.64" width="0.1524" layer="91"/>
<label x="104.14" y="38.1" size="1.778" layer="95"/>
</segment>
</net>
<net name="SS_OLED" class="0">
<segment>
<label x="317.5" y="134.62" size="1.778" layer="95" rot="MR0"/>
<pinref part="OLED1" gate="G$1" pin="/CS"/>
<wire x1="320.04" y1="134.62" x2="312.42" y2="134.62" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="PB2(SS/OC1B)"/>
<wire x1="104.14" y1="71.12" x2="111.76" y2="71.12" width="0.1524" layer="91"/>
<label x="106.68" y="71.12" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="R10" gate="G$1" pin="1"/>
<wire x1="279.4" y1="116.84" x2="279.4" y2="111.76" width="0.1524" layer="91"/>
<label x="279.4" y="106.68" size="1.778" layer="95" rot="R90"/>
</segment>
</net>
<net name="N$14" class="0">
<segment>
<pinref part="C8" gate="G$1" pin="P$2"/>
<wire x1="304.8" y1="157.48" x2="320.04" y2="157.48" width="0.1524" layer="91"/>
<pinref part="OLED1" gate="G$1" pin="C1P"/>
</segment>
</net>
<net name="N$13" class="0">
<segment>
<pinref part="C8" gate="G$1" pin="P$1"/>
<wire x1="320.04" y1="154.94" x2="294.64" y2="154.94" width="0.1524" layer="91"/>
<wire x1="294.64" y1="154.94" x2="294.64" y2="157.48" width="0.1524" layer="91"/>
<wire x1="294.64" y1="157.48" x2="297.18" y2="157.48" width="0.1524" layer="91"/>
<pinref part="OLED1" gate="G$1" pin="C1N"/>
</segment>
</net>
<net name="N$15" class="0">
<segment>
<pinref part="C7" gate="G$1" pin="P$1"/>
<wire x1="320.04" y1="160.02" x2="304.8" y2="160.02" width="0.1524" layer="91"/>
<wire x1="304.8" y1="160.02" x2="304.8" y2="162.56" width="0.1524" layer="91"/>
<wire x1="304.8" y1="162.56" x2="307.34" y2="162.56" width="0.1524" layer="91"/>
<pinref part="OLED1" gate="G$1" pin="C2N"/>
</segment>
</net>
<net name="DC" class="0">
<segment>
<label x="317.5" y="129.54" size="1.778" layer="95" rot="MR0"/>
<pinref part="OLED1" gate="G$1" pin="DC/I2C_SA0"/>
<wire x1="320.04" y1="129.54" x2="312.42" y2="129.54" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="PB0(ICP)"/>
<wire x1="104.14" y1="76.2" x2="111.76" y2="76.2" width="0.1524" layer="91"/>
<label x="106.68" y="76.2" size="1.778" layer="95"/>
</segment>
</net>
<net name="RES" class="0">
<segment>
<label x="317.5" y="132.08" size="1.778" layer="95" rot="MR0"/>
<wire x1="312.42" y1="132.08" x2="320.04" y2="132.08" width="0.1524" layer="91"/>
<pinref part="OLED1" gate="G$1" pin="/RES"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="PD7(AIN1)"/>
<wire x1="104.14" y1="81.28" x2="111.76" y2="81.28" width="0.1524" layer="91"/>
<label x="106.68" y="81.28" size="1.778" layer="95"/>
</segment>
</net>
<net name="CHRG_STATE" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="PD4(XCK/T0)"/>
<wire x1="104.14" y1="88.9" x2="111.76" y2="88.9" width="0.1524" layer="91"/>
<label x="106.68" y="88.9" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="JP7" gate="G$1" pin="17"/>
<wire x1="353.06" y1="236.22" x2="353.06" y2="220.98" width="0.1524" layer="91"/>
<label x="353.06" y="215.9" size="1.778" layer="95" rot="R90"/>
</segment>
</net>
<net name="BATT_LVL" class="0">
<segment>
<label x="325.12" y="218.44" size="1.778" layer="95" rot="R90"/>
<wire x1="325.12" y1="236.22" x2="325.12" y2="220.98" width="0.1524" layer="91"/>
<pinref part="JP7" gate="G$1" pin="6"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="ADC6"/>
<wire x1="104.14" y1="106.68" x2="111.76" y2="106.68" width="0.1524" layer="91"/>
<label x="106.68" y="106.68" size="1.778" layer="95"/>
</segment>
</net>
<net name="SCL" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="PC5(ADC5/SCL)"/>
<wire x1="104.14" y1="109.22" x2="111.76" y2="109.22" width="0.1524" layer="91"/>
<label x="106.68" y="109.22" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="RN1" gate="G$2" pin="2"/>
<pinref part="U4" gate="G$1" pin="SCL"/>
<wire x1="246.38" y1="99.06" x2="256.54" y2="99.06" width="0.1524" layer="91"/>
<label x="261.62" y="99.06" size="1.778" layer="95"/>
<wire x1="256.54" y1="99.06" x2="264.16" y2="99.06" width="0.1524" layer="91"/>
<wire x1="256.54" y1="109.22" x2="256.54" y2="99.06" width="0.1524" layer="91"/>
<junction x="256.54" y="99.06"/>
</segment>
<segment>
<wire x1="350.52" y1="236.22" x2="350.52" y2="220.98" width="0.1524" layer="91"/>
<label x="350.52" y="220.98" size="1.778" layer="95" rot="R90"/>
<pinref part="JP7" gate="G$1" pin="16"/>
</segment>
</net>
<net name="SDA" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="PC4(ADC4/SDA)"/>
<wire x1="104.14" y1="111.76" x2="111.76" y2="111.76" width="0.1524" layer="91"/>
<label x="106.68" y="111.76" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="RN1" gate="G$1" pin="2"/>
<pinref part="U4" gate="G$1" pin="SDA"/>
<wire x1="246.38" y1="101.6" x2="248.92" y2="101.6" width="0.1524" layer="91"/>
<label x="261.62" y="101.6" size="1.778" layer="95"/>
<wire x1="248.92" y1="101.6" x2="264.16" y2="101.6" width="0.1524" layer="91"/>
<wire x1="248.92" y1="109.22" x2="248.92" y2="101.6" width="0.1524" layer="91"/>
<junction x="248.92" y="101.6"/>
</segment>
<segment>
<wire x1="347.98" y1="236.22" x2="347.98" y2="220.98" width="0.1524" layer="91"/>
<label x="347.98" y="220.98" size="1.778" layer="95" rot="R90"/>
<pinref part="JP7" gate="G$1" pin="15"/>
</segment>
</net>
<net name="RTC_INT" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="PD2(INT0)"/>
<wire x1="104.14" y1="93.98" x2="111.76" y2="93.98" width="0.1524" layer="91"/>
<label x="106.68" y="93.98" size="1.778" layer="95"/>
</segment>
<segment>
<label x="345.44" y="220.98" size="1.778" layer="95" rot="R90"/>
<wire x1="345.44" y1="220.98" x2="345.44" y2="236.22" width="0.1524" layer="91"/>
<pinref part="JP7" gate="G$1" pin="14"/>
</segment>
<segment>
<pinref part="U4" gate="G$1" pin="~INT/SQW"/>
<wire x1="246.38" y1="93.98" x2="251.46" y2="93.98" width="0.1524" layer="91"/>
<label x="248.92" y="93.98" size="1.778" layer="95"/>
</segment>
</net>
<net name="2.5V" class="0">
<segment>
<pinref part="U$6" gate="G$1" pin="2.5V"/>
<wire x1="284.48" y1="142.24" x2="287.02" y2="142.24" width="0.1524" layer="91"/>
<wire x1="314.96" y1="142.24" x2="314.96" y2="144.78" width="0.1524" layer="91"/>
<pinref part="C9" gate="G$1" pin="P$1"/>
<junction x="287.02" y="142.24"/>
<wire x1="314.96" y1="142.24" x2="287.02" y2="142.24" width="0.1524" layer="91"/>
<pinref part="OLED1" gate="G$1" pin="VDD"/>
<wire x1="320.04" y1="144.78" x2="314.96" y2="144.78" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="+3V8" gate="G$1" pin="2.5V"/>
<wire x1="317.5" y1="226.06" x2="317.5" y2="210.82" width="0.1524" layer="91"/>
<wire x1="317.5" y1="226.06" x2="320.04" y2="226.06" width="0.1524" layer="91"/>
<wire x1="320.04" y1="226.06" x2="320.04" y2="236.22" width="0.1524" layer="91"/>
<pinref part="JP7" gate="G$1" pin="4"/>
</segment>
<segment>
<pinref part="U$1" gate="G$1" pin="2.5V"/>
<pinref part="R10" gate="G$1" pin="2"/>
<wire x1="279.4" y1="129.54" x2="279.4" y2="127" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="+3V10" gate="G$1" pin="2.5V"/>
<pinref part="JP2" gate="G$1" pin="1"/>
<wire x1="17.78" y1="114.3" x2="22.86" y2="114.3" width="0.1524" layer="91"/>
<wire x1="22.86" y1="114.3" x2="22.86" y2="119.38" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C3" gate="G$1" pin="P$1"/>
<wire x1="124.46" y1="238.76" x2="124.46" y2="233.68" width="0.1524" layer="91"/>
<wire x1="119.38" y1="238.76" x2="124.46" y2="238.76" width="0.1524" layer="91"/>
<pinref part="U$4" gate="G$1" pin="2.5V"/>
<wire x1="124.46" y1="238.76" x2="129.54" y2="238.76" width="0.1524" layer="91"/>
<junction x="124.46" y="238.76"/>
<pinref part="U3" gate="G$1" pin="VOUT"/>
</segment>
<segment>
<pinref part="+3V1" gate="G$1" pin="2.5V"/>
<pinref part="JP5" gate="G$1" pin="1"/>
<wire x1="187.96" y1="101.6" x2="193.04" y2="101.6" width="0.1524" layer="91"/>
<wire x1="193.04" y1="101.6" x2="193.04" y2="106.68" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="R13" gate="G$1" pin="2"/>
<pinref part="U$2" gate="G$1" pin="2.5V"/>
<wire x1="259.08" y1="210.82" x2="261.62" y2="210.82" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<pinref part="R9" gate="G$1" pin="2"/>
<pinref part="OLED1" gate="G$1" pin="IREF"/>
<wire x1="320.04" y1="101.6" x2="292.1" y2="101.6" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$19" class="0">
<segment>
<pinref part="C10" gate="G$1" pin="P$1"/>
<wire x1="299.72" y1="99.06" x2="320.04" y2="99.06" width="0.1524" layer="91"/>
<pinref part="OLED1" gate="G$1" pin="VCOMH"/>
</segment>
</net>
<net name="N$20" class="0">
<segment>
<pinref part="C11" gate="G$1" pin="P$1"/>
<pinref part="OLED1" gate="G$1" pin="VCC"/>
<wire x1="320.04" y1="96.52" x2="307.34" y2="96.52" width="0.1524" layer="91"/>
</segment>
</net>
<net name="BATT_EN" class="0">
<segment>
<label x="330.2" y="218.44" size="1.778" layer="95" rot="R90"/>
<wire x1="330.2" y1="220.98" x2="330.2" y2="236.22" width="0.1524" layer="91"/>
<pinref part="JP7" gate="G$1" pin="8"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="PC0(ADC0)"/>
<wire x1="104.14" y1="121.92" x2="111.76" y2="121.92" width="0.1524" layer="91"/>
<label x="106.68" y="121.92" size="1.778" layer="95"/>
</segment>
</net>
<net name="PIEZO" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="PB1(OC1A)"/>
<pinref part="R7" gate="G$1" pin="2"/>
<wire x1="104.14" y1="73.66" x2="134.62" y2="73.66" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$1" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="AREF"/>
<pinref part="C5" gate="G$1" pin="P$1"/>
<wire x1="53.34" y1="106.68" x2="55.88" y2="106.68" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<pinref part="C7" gate="G$1" pin="P$2"/>
<wire x1="314.96" y1="162.56" x2="320.04" y2="162.56" width="0.1524" layer="91"/>
<pinref part="OLED1" gate="G$1" pin="C2P"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="PC1(ADC1)"/>
<wire x1="104.14" y1="119.38" x2="127" y2="119.38" width="0.1524" layer="91"/>
<wire x1="127" y1="119.38" x2="127" y2="142.24" width="0.1524" layer="91"/>
<pinref part="SW1" gate="G$1" pin="P"/>
<wire x1="127" y1="142.24" x2="132.08" y2="142.24" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$9" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="PC2(ADC2)"/>
<wire x1="129.54" y1="116.84" x2="104.14" y2="116.84" width="0.1524" layer="91"/>
<wire x1="129.54" y1="116.84" x2="129.54" y2="127" width="0.1524" layer="91"/>
<pinref part="SW2" gate="G$1" pin="P1"/>
<wire x1="129.54" y1="127" x2="132.08" y2="127" width="0.1524" layer="91"/>
</segment>
</net>
<net name="USB_SENSE" class="0">
<segment>
<wire x1="287.02" y1="218.44" x2="287.02" y2="215.9" width="0.1524" layer="91"/>
<wire x1="287.02" y1="215.9" x2="287.02" y2="213.36" width="0.1524" layer="91"/>
<wire x1="287.02" y1="215.9" x2="292.1" y2="215.9" width="0.1524" layer="91"/>
<junction x="287.02" y="215.9"/>
<label x="289.56" y="215.9" size="1.778" layer="95"/>
<pinref part="R2" gate="G$1" pin="1"/>
<pinref part="R1" gate="G$1" pin="2"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="PD3(INT1)"/>
<wire x1="104.14" y1="91.44" x2="111.76" y2="91.44" width="0.1524" layer="91"/>
<label x="106.68" y="91.44" size="1.778" layer="95"/>
</segment>
</net>
<net name="N$8" class="0">
<segment>
<pinref part="R7" gate="G$1" pin="1"/>
<wire x1="144.78" y1="73.66" x2="152.4" y2="73.66" width="0.1524" layer="91"/>
<pinref part="Q1" gate="G$1" pin="B"/>
<pinref part="R8" gate="G$1" pin="1"/>
<wire x1="152.4" y1="73.66" x2="160.02" y2="73.66" width="0.1524" layer="91"/>
<wire x1="152.4" y1="71.12" x2="152.4" y2="73.66" width="0.1524" layer="91"/>
<junction x="152.4" y="73.66"/>
</segment>
</net>
<net name="N$7" class="0">
<segment>
<pinref part="LS1" gate="G$1" pin="GND"/>
<wire x1="165.1" y1="96.52" x2="165.1" y2="93.98" width="0.1524" layer="91"/>
<wire x1="157.48" y1="93.98" x2="157.48" y2="96.52" width="0.1524" layer="91"/>
<pinref part="D1" gate="G$1" pin="A"/>
<wire x1="157.48" y1="93.98" x2="165.1" y2="93.98" width="0.1524" layer="91"/>
<wire x1="165.1" y1="93.98" x2="165.1" y2="86.36" width="0.1524" layer="91"/>
<pinref part="JP4" gate="G$1" pin="1"/>
<wire x1="165.1" y1="86.36" x2="170.18" y2="86.36" width="0.1524" layer="91"/>
<junction x="165.1" y="93.98"/>
</segment>
</net>
<net name="N$11" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="PD5(T1)"/>
<wire x1="104.14" y1="86.36" x2="119.38" y2="86.36" width="0.1524" layer="91"/>
<pinref part="R5" gate="G$1" pin="2"/>
</segment>
</net>
<net name="N$16" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="PD6(AIN0)"/>
<wire x1="104.14" y1="83.82" x2="114.3" y2="83.82" width="0.1524" layer="91"/>
<wire x1="114.3" y1="83.82" x2="114.3" y2="81.28" width="0.1524" layer="91"/>
<pinref part="R6" gate="G$1" pin="2"/>
<wire x1="114.3" y1="81.28" x2="127" y2="81.28" width="0.1524" layer="91"/>
</segment>
</net>
<net name="VCC" class="0">
<segment>
<pinref part="P+1" gate="VCC" pin="VCC"/>
<pinref part="C1" gate="G$1" pin="P$1"/>
<wire x1="58.42" y1="238.76" x2="68.58" y2="238.76" width="0.1524" layer="91"/>
<wire x1="81.28" y1="233.68" x2="81.28" y2="238.76" width="0.1524" layer="91"/>
<pinref part="C2" gate="G$1" pin="+"/>
<wire x1="68.58" y1="233.68" x2="68.58" y2="238.76" width="0.1524" layer="91"/>
<junction x="81.28" y="238.76"/>
<junction x="68.58" y="238.76"/>
<wire x1="68.58" y1="238.76" x2="81.28" y2="238.76" width="0.1524" layer="91"/>
<wire x1="81.28" y1="238.76" x2="78.74" y2="238.76" width="0.1524" layer="91"/>
<wire x1="78.74" y1="238.76" x2="78.74" y2="241.3" width="0.1524" layer="91"/>
<wire x1="78.74" y1="238.76" x2="91.44" y2="238.76" width="0.1524" layer="91"/>
<junction x="78.74" y="238.76"/>
<pinref part="U3" gate="G$1" pin="VIN"/>
<pinref part="U3" gate="G$1" pin="EN"/>
<wire x1="91.44" y1="238.76" x2="93.98" y2="238.76" width="0.1524" layer="91"/>
<wire x1="93.98" y1="228.6" x2="91.44" y2="228.6" width="0.1524" layer="91"/>
<wire x1="91.44" y1="228.6" x2="91.44" y2="238.76" width="0.1524" layer="91"/>
<junction x="91.44" y="238.76"/>
<pinref part="F1" gate="G$1" pin="2"/>
</segment>
<segment>
<pinref part="P+5" gate="VCC" pin="VCC"/>
<wire x1="312.42" y1="210.82" x2="312.42" y2="228.6" width="0.1524" layer="91"/>
<wire x1="312.42" y1="228.6" x2="317.5" y2="228.6" width="0.1524" layer="91"/>
<wire x1="317.5" y1="228.6" x2="317.5" y2="236.22" width="0.1524" layer="91"/>
<pinref part="JP7" gate="G$1" pin="3"/>
</segment>
<segment>
<pinref part="P+3" gate="VCC" pin="VCC"/>
<pinref part="JP3" gate="G$1" pin="1"/>
<wire x1="261.62" y1="152.4" x2="266.7" y2="152.4" width="0.1524" layer="91"/>
<wire x1="266.7" y1="152.4" x2="266.7" y2="157.48" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U2" gate="G$1" pin="VCC"/>
<pinref part="P+2" gate="VCC" pin="VCC"/>
<wire x1="162.56" y1="236.22" x2="172.72" y2="236.22" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="JP1" gate="G$1" pin="2"/>
<wire x1="81.28" y1="43.18" x2="88.9" y2="43.18" width="0.1524" layer="91"/>
<pinref part="P+6" gate="VCC" pin="VCC"/>
</segment>
<segment>
<pinref part="D3" gate="G$1" pin="A"/>
<pinref part="P+4" gate="VCC" pin="VCC"/>
<wire x1="165.1" y1="121.92" x2="165.1" y2="119.38" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U6" gate="G$2" pin="VDD"/>
<pinref part="P+7" gate="VCC" pin="VCC"/>
<wire x1="35.56" y1="193.04" x2="35.56" y2="190.5" width="0.1524" layer="91"/>
<pinref part="C17" gate="G$1" pin="P$1"/>
<wire x1="35.56" y1="190.5" x2="35.56" y2="187.96" width="0.1524" layer="91"/>
<wire x1="35.56" y1="190.5" x2="40.64" y2="190.5" width="0.1524" layer="91"/>
<wire x1="40.64" y1="190.5" x2="40.64" y2="185.42" width="0.1524" layer="91"/>
<junction x="35.56" y="190.5"/>
</segment>
</net>
<net name="RX" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="PD0(RXD)"/>
<wire x1="104.14" y1="99.06" x2="111.76" y2="99.06" width="0.1524" layer="91"/>
<label x="106.68" y="99.06" size="1.778" layer="95"/>
</segment>
<segment>
<label x="340.36" y="220.98" size="1.778" layer="95" rot="R90"/>
<wire x1="340.36" y1="220.98" x2="340.36" y2="236.22" width="0.1524" layer="91"/>
<pinref part="JP7" gate="G$1" pin="12"/>
</segment>
<segment>
<pinref part="R11" gate="G$1" pin="2"/>
<wire x1="254" y1="233.68" x2="259.08" y2="233.68" width="0.1524" layer="91"/>
<label x="256.54" y="231.14" size="1.778" layer="95"/>
</segment>
</net>
<net name="TX" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="PD1(TXD)"/>
<wire x1="104.14" y1="96.52" x2="111.76" y2="96.52" width="0.1524" layer="91"/>
<label x="106.68" y="96.52" size="1.778" layer="95"/>
</segment>
<segment>
<label x="342.9" y="220.98" size="1.778" layer="95" rot="R90"/>
<wire x1="342.9" y1="220.98" x2="342.9" y2="236.22" width="0.1524" layer="91"/>
<pinref part="JP7" gate="G$1" pin="13"/>
</segment>
<segment>
<wire x1="238.76" y1="215.9" x2="259.08" y2="215.9" width="0.1524" layer="91"/>
<pinref part="U6" gate="G$1" pin="+IN"/>
<label x="256.54" y="213.36" size="1.778" layer="95"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="PC3(ADC3)"/>
<wire x1="104.14" y1="114.3" x2="132.08" y2="114.3" width="0.1524" layer="91"/>
<pinref part="SW3" gate="G$1" pin="P1"/>
</segment>
</net>
<net name="N$22" class="0">
<segment>
<pinref part="JP1" gate="G$1" pin="3"/>
<pinref part="R3" gate="G$1" pin="1"/>
<wire x1="73.66" y1="40.64" x2="63.5" y2="40.64" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$24" class="0">
<segment>
<pinref part="JP1" gate="G$1" pin="4"/>
<pinref part="R4" gate="G$1" pin="1"/>
<wire x1="81.28" y1="40.64" x2="93.98" y2="40.64" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$28" class="0">
<segment>
<pinref part="R5" gate="G$1" pin="1"/>
<pinref part="LED1" gate="G$1" pin="A"/>
<wire x1="129.54" y1="86.36" x2="137.16" y2="86.36" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$29" class="0">
<segment>
<pinref part="R6" gate="G$1" pin="1"/>
<pinref part="LED2" gate="G$1" pin="A"/>
<wire x1="137.16" y1="81.28" x2="144.78" y2="81.28" width="0.1524" layer="91"/>
</segment>
</net>
<net name="PB6" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="PB6(XTAL1/TOSC1)"/>
<wire x1="55.88" y1="96.52" x2="48.26" y2="96.52" width="0.1524" layer="91"/>
<label x="48.26" y="96.52" size="1.778" layer="95"/>
</segment>
<segment>
<label x="355.6" y="220.98" size="1.778" layer="95" rot="R90"/>
<pinref part="JP7" gate="G$1" pin="18"/>
<wire x1="355.6" y1="236.22" x2="355.6" y2="220.98" width="0.1524" layer="91"/>
</segment>
</net>
<net name="PB7" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="PB7(XTAL2/TOSC2)"/>
<wire x1="55.88" y1="91.44" x2="48.26" y2="91.44" width="0.1524" layer="91"/>
<label x="48.26" y="91.44" size="1.778" layer="95"/>
</segment>
<segment>
<label x="358.14" y="220.98" size="1.778" layer="95" rot="R90"/>
<pinref part="JP7" gate="G$1" pin="19"/>
<wire x1="358.14" y1="220.98" x2="358.14" y2="236.22" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$12" class="0">
<segment>
<pinref part="OLED1" gate="G$1" pin="VBAT"/>
<wire x1="320.04" y1="152.4" x2="274.32" y2="152.4" width="0.1524" layer="91"/>
<pinref part="C6" gate="G$1" pin="P$1"/>
<pinref part="JP3" gate="G$1" pin="2"/>
<wire x1="269.24" y1="157.48" x2="269.24" y2="152.4" width="0.1524" layer="91"/>
<wire x1="269.24" y1="152.4" x2="274.32" y2="152.4" width="0.1524" layer="91"/>
<junction x="274.32" y="152.4"/>
</segment>
</net>
<net name="ADC7" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="ADC7"/>
<wire x1="104.14" y1="104.14" x2="111.76" y2="104.14" width="0.1524" layer="91"/>
<label x="106.68" y="104.14" size="1.778" layer="95"/>
</segment>
<segment>
<label x="327.66" y="220.98" size="1.778" layer="95" rot="R90"/>
<wire x1="327.66" y1="236.22" x2="327.66" y2="220.98" width="0.1524" layer="91"/>
<pinref part="JP7" gate="G$1" pin="7"/>
</segment>
</net>
<net name="N$18" class="0">
<segment>
<pinref part="JP4" gate="G$1" pin="2"/>
<wire x1="170.18" y1="83.82" x2="165.1" y2="83.82" width="0.1524" layer="91"/>
<pinref part="Q1" gate="G$1" pin="C"/>
<wire x1="165.1" y1="83.82" x2="165.1" y2="78.74" width="0.1524" layer="91"/>
</segment>
</net>
<net name="D-" class="0">
<segment>
<pinref part="USB1" gate="G$1" pin="D-"/>
<wire x1="38.1" y1="236.22" x2="40.64" y2="236.22" width="0.1524" layer="91"/>
<label x="40.64" y="236.22" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U2" gate="G$1" pin="USB-"/>
<wire x1="172.72" y1="220.98" x2="170.18" y2="220.98" width="0.1524" layer="91"/>
<label x="170.18" y="220.98" size="1.778" layer="95"/>
</segment>
</net>
<net name="D+" class="0">
<segment>
<pinref part="USB1" gate="G$1" pin="D+"/>
<wire x1="38.1" y1="233.68" x2="40.64" y2="233.68" width="0.1524" layer="91"/>
<label x="40.64" y="233.68" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U2" gate="G$1" pin="USB+"/>
<wire x1="172.72" y1="223.52" x2="170.18" y2="223.52" width="0.1524" layer="91"/>
<label x="170.18" y="223.52" size="1.778" layer="95"/>
</segment>
</net>
<net name="N$25" class="0">
<segment>
<pinref part="C13" gate="G$1" pin="P$1"/>
<wire x1="165.1" y1="231.14" x2="165.1" y2="233.68" width="0.1524" layer="91"/>
<pinref part="U2" gate="G$1" pin="3V3"/>
<wire x1="165.1" y1="233.68" x2="172.72" y2="233.68" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$21" class="0">
<segment>
<pinref part="U2" gate="G$1" pin="XI"/>
<pinref part="C15" gate="G$1" pin="P$1"/>
<pinref part="X1" gate="G$1" pin="P$2"/>
<wire x1="180.34" y1="200.66" x2="180.34" y2="198.12" width="0.1524" layer="91"/>
<wire x1="180.34" y1="198.12" x2="177.8" y2="198.12" width="0.1524" layer="91"/>
<wire x1="177.8" y1="198.12" x2="177.8" y2="193.04" width="0.1524" layer="91"/>
<wire x1="177.8" y1="193.04" x2="180.34" y2="193.04" width="0.1524" layer="91"/>
<wire x1="177.8" y1="193.04" x2="177.8" y2="190.5" width="0.1524" layer="91"/>
<junction x="177.8" y="193.04"/>
</segment>
</net>
<net name="N$23" class="0">
<segment>
<pinref part="C16" gate="G$1" pin="P$1"/>
<pinref part="U2" gate="G$1" pin="XO"/>
<wire x1="193.04" y1="190.5" x2="193.04" y2="193.04" width="0.1524" layer="91"/>
<pinref part="X1" gate="G$1" pin="P$1"/>
<wire x1="190.5" y1="193.04" x2="193.04" y2="193.04" width="0.1524" layer="91"/>
<junction x="193.04" y="193.04"/>
<wire x1="190.5" y1="200.66" x2="190.5" y2="198.12" width="0.1524" layer="91"/>
<wire x1="190.5" y1="198.12" x2="193.04" y2="198.12" width="0.1524" layer="91"/>
<wire x1="193.04" y1="198.12" x2="193.04" y2="193.04" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$30" class="0">
<segment>
<pinref part="U2" gate="G$1" pin="DTR"/>
<pinref part="C14" gate="G$1" pin="P$1"/>
<wire x1="198.12" y1="226.06" x2="203.2" y2="226.06" width="0.1524" layer="91"/>
<wire x1="203.2" y1="226.06" x2="203.2" y2="185.42" width="0.1524" layer="91"/>
<wire x1="203.2" y1="185.42" x2="228.6" y2="185.42" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$26" class="0">
<segment>
<pinref part="U2" gate="G$1" pin="TXD"/>
<wire x1="198.12" y1="236.22" x2="223.52" y2="236.22" width="0.1524" layer="91"/>
<pinref part="U5" gate="G$1" pin="A"/>
</segment>
</net>
<net name="N$27" class="0">
<segment>
<pinref part="U5" gate="G$1" pin="Y"/>
<pinref part="R11" gate="G$1" pin="1"/>
<wire x1="241.3" y1="233.68" x2="243.84" y2="233.68" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$17" class="0">
<segment>
<pinref part="RN1" gate="G$3" pin="1"/>
<pinref part="U1" gate="G$1" pin="VCC@2"/>
<wire x1="55.88" y1="111.76" x2="53.34" y2="111.76" width="0.1524" layer="91"/>
<wire x1="53.34" y1="111.76" x2="53.34" y2="114.3" width="0.1524" layer="91"/>
<pinref part="U1" gate="G$1" pin="AVCC"/>
<wire x1="53.34" y1="114.3" x2="53.34" y2="116.84" width="0.1524" layer="91"/>
<wire x1="53.34" y1="116.84" x2="55.88" y2="116.84" width="0.1524" layer="91"/>
<pinref part="U1" gate="G$1" pin="VCC@1"/>
<wire x1="55.88" y1="114.3" x2="53.34" y2="114.3" width="0.1524" layer="91"/>
<junction x="53.34" y="114.3"/>
<pinref part="JP2" gate="G$1" pin="2"/>
<wire x1="25.4" y1="119.38" x2="25.4" y2="114.3" width="0.1524" layer="91"/>
<wire x1="25.4" y1="114.3" x2="30.48" y2="114.3" width="0.1524" layer="91"/>
<pinref part="C4" gate="G$1" pin="P$1"/>
<wire x1="30.48" y1="114.3" x2="33.02" y2="114.3" width="0.1524" layer="91"/>
<wire x1="33.02" y1="114.3" x2="53.34" y2="114.3" width="0.1524" layer="91"/>
<wire x1="30.48" y1="111.76" x2="30.48" y2="114.3" width="0.1524" layer="91"/>
<junction x="30.48" y="114.3"/>
<wire x1="45.72" y1="137.16" x2="33.02" y2="137.16" width="0.1524" layer="91"/>
<wire x1="33.02" y1="137.16" x2="33.02" y2="114.3" width="0.1524" layer="91"/>
<junction x="33.02" y="114.3"/>
<pinref part="U5" gate="G$2" pin="VCC"/>
<wire x1="25.4" y1="96.52" x2="25.4" y2="114.3" width="0.1524" layer="91"/>
<junction x="25.4" y="114.3"/>
<wire x1="45.72" y1="137.16" x2="45.72" y2="134.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$31" class="0">
<segment>
<pinref part="C12" gate="G$1" pin="P$1"/>
<wire x1="200.66" y1="101.6" x2="200.66" y2="99.06" width="0.1524" layer="91"/>
<wire x1="200.66" y1="101.6" x2="203.2" y2="101.6" width="0.1524" layer="91"/>
<pinref part="JP5" gate="G$1" pin="2"/>
<wire x1="195.58" y1="106.68" x2="195.58" y2="101.6" width="0.1524" layer="91"/>
<wire x1="195.58" y1="101.6" x2="200.66" y2="101.6" width="0.1524" layer="91"/>
<junction x="200.66" y="101.6"/>
<wire x1="203.2" y1="101.6" x2="203.2" y2="121.92" width="0.1524" layer="91"/>
<pinref part="RN1" gate="G$2" pin="1"/>
<wire x1="203.2" y1="121.92" x2="248.92" y2="121.92" width="0.1524" layer="91"/>
<wire x1="248.92" y1="121.92" x2="256.54" y2="121.92" width="0.1524" layer="91"/>
<wire x1="256.54" y1="121.92" x2="256.54" y2="119.38" width="0.1524" layer="91"/>
<pinref part="RN1" gate="G$1" pin="1"/>
<wire x1="248.92" y1="119.38" x2="248.92" y2="121.92" width="0.1524" layer="91"/>
<junction x="248.92" y="121.92"/>
<pinref part="U4" gate="G$1" pin="VBAT"/>
<wire x1="203.2" y1="101.6" x2="210.82" y2="101.6" width="0.1524" layer="91"/>
<junction x="203.2" y="101.6"/>
</segment>
</net>
<net name="N$6" class="0">
<segment>
<wire x1="312.42" y1="236.22" x2="312.42" y2="233.68" width="0.1524" layer="91"/>
<pinref part="R1" gate="G$1" pin="1"/>
<wire x1="312.42" y1="233.68" x2="287.02" y2="233.68" width="0.1524" layer="91"/>
<wire x1="287.02" y1="233.68" x2="287.02" y2="228.6" width="0.1524" layer="91"/>
<pinref part="JP7" gate="G$1" pin="1"/>
</segment>
</net>
<net name="N$10" class="0">
<segment>
<pinref part="F1" gate="G$1" pin="1"/>
<wire x1="38.1" y1="238.76" x2="48.26" y2="238.76" width="0.1524" layer="91"/>
<pinref part="USB1" gate="G$1" pin="VBUS"/>
</segment>
</net>
<net name="N$32" class="0">
<segment>
<pinref part="LS1" gate="G$1" pin="VCC"/>
<wire x1="165.1" y1="104.14" x2="165.1" y2="101.6" width="0.1524" layer="91"/>
<wire x1="157.48" y1="104.14" x2="157.48" y2="101.6" width="0.1524" layer="91"/>
<pinref part="D1" gate="G$1" pin="C"/>
<wire x1="157.48" y1="104.14" x2="165.1" y2="104.14" width="0.1524" layer="91"/>
<pinref part="D2" gate="G$1" pin="C"/>
<wire x1="165.1" y1="106.68" x2="165.1" y2="104.14" width="0.1524" layer="91"/>
<junction x="165.1" y="104.14"/>
</segment>
</net>
<net name="N$33" class="0">
<segment>
<pinref part="D2" gate="G$1" pin="A"/>
<pinref part="D3" gate="G$1" pin="C"/>
<wire x1="165.1" y1="111.76" x2="165.1" y2="114.3" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$34" class="0">
<segment>
<wire x1="223.52" y1="213.36" x2="208.28" y2="213.36" width="0.1524" layer="91"/>
<wire x1="208.28" y1="213.36" x2="208.28" y2="233.68" width="0.1524" layer="91"/>
<pinref part="U6" gate="G$1" pin="OUT"/>
<pinref part="U2" gate="G$1" pin="RXD"/>
<wire x1="198.12" y1="233.68" x2="208.28" y2="233.68" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$36" class="0">
<segment>
<wire x1="238.76" y1="210.82" x2="246.38" y2="210.82" width="0.1524" layer="91"/>
<pinref part="U6" gate="G$1" pin="-IN"/>
<pinref part="R12" gate="G$1" pin="2"/>
<wire x1="246.38" y1="210.82" x2="246.38" y2="208.28" width="0.1524" layer="91"/>
<pinref part="R13" gate="G$1" pin="1"/>
<wire x1="248.92" y1="210.82" x2="246.38" y2="210.82" width="0.1524" layer="91"/>
<junction x="246.38" y="210.82"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
<compatibility>
<note version="6.3" minversion="6.2.2" severity="warning">
Since Version 6.2.2 text objects can contain more than one line,
which will not be processed correctly with this version.
</note>
</compatibility>
</eagle>
