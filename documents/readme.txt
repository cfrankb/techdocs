LGCK Builder IDE 0.6.0.1 alpha
Copyright 1999-2012 Francois Blanchette
All Right Reserved

Disclaimer
==========

 THE INFORMATION IN DOCUMENT WAS COMPILED, IS PROVIDED 
 COURTESY AND AT THE DISCRETION OF THE AUTHOR. USERS OF THIS  
 APPLICATION AGREE TO ACCEPT IT *AS IS*. NO WARRANTY EXPRESSED OR 
 IMPLIED INCLUDING BUT NOT LIMITED TO ANY PARTICULAR FITNESS, 
 MERCHANTABILITY OR ACCURACY IS PROVIDED. THE AUTHOR EXPRESSLY 
 DISCLAIMS RESPONSIBILITY AS TO ANY DIRECT, INDIRECT OR 
 INCIDENTAL DAMAGES THAT MAY ARISE FROM THE USAGE OR 
 INABILITY TO USE THE MATERIAL PROVIDED HEREIN.

Addiional disclaimer
====================

 NEIL HODGSON DISCLAIMS ALL WARRANTIES WITH REGARD TO THIS
 SOFTWARE, INCLUDING ALL IMPLIED WARRANTIES OF MERCHANTABILITY
 AND FITNESS, IN NO EVENT SHALL NEIL HODGSON BE LIABLE FOR ANY
 SPECIAL, INDIRECT OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
 WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS,
 WHETHER IN AN ACTION OF CONTRACT, NEGLIGENCE OR OTHER
 TORTIOUS ACTION, ARISING OUT OF OR IN CONNECTION WITH THE USE
 OR PERFORMANCE OF THIS SOFTWARE.


Getting Started
===============

LGCK Builder comes with three bundles.

1) The source code in a zip file that can be compiled on
   any platform (2011xxxx_lgck.zip)

2) The Windows installer (lgck-setup.exe)

3) The games demos (lgckdemos.zip)

Try the example games "vla3demo229.lgckdb" and "step2.lgckdb" 
included in the demo package. They contain much tutorial material
to get you started.

Press F5 to test the current Level.
Press ESC to return to the editor.
CTRL PageUp/PageDown to switch to another level.


Known Issues
============

This program may crash when run along side some Logitech software 
(e.g. Logitech Setpoint 4.80, Logitech WebCam Software etc.). If 
you experience problems, close all other applications one by one 
until you find the culprit. Let us know about your experience 
so we may update the documentation.


Keyboard layout
===============

SPACE 		JUMP*
Z		ACTION (pull switch)
LEFT SHIFT	FIRE
CURSOR KEYS	UP, DOWN, LEFT, and RIGHT


*Jump pattern are game dependant.
The engine supports these modes

VLA3 (engine default)

	To jump hold SPACE + [cursor key]
	The following are valid combinations.

	SPACE + UP
	SPACE + DOWN
	SPACE + LEFT
	SPACE + RIGHT
	SPACE + UP + LEFT
	SPACE + UP + RIGHT
	SPACE + DOWN + LEFT
	SPACE + DOWN + RIGHT

GIANA 

	UP is Jump Button
	LEFT/RIGHT to control jump

MIXED
	SPACE is Jump Button
	LEFT/RIGHT to control jump


The biggest difference between GIANA and MIXED is that the later also lets you climb ladders. :D


Making your first game
======================

Go to _Editor_ > _Edit Game Info_
 > tab _Images_ 

You'll also find in the folder, annie.obl, a sprite file for a 
complete player object. Import it. You can also add the other 
example OBL files as well (including wall_brick and little_star). 

 > tab _Objects_

Create a new object. Select Annie.Obl and class "Player Object".
Create a new object. Select wall_brick and class "Solid Background".
Create a new object. Select little_star and Class "Pickup trigger".

For each of those object you may have to visit the Animation tab 
and add some images to each of the animation sequences for them 
to become visible.

Leave Edit Game Info and return to the editor


Press INSERT and select Annie. Place her on the level.

	ESC / SPACE to unselect
	Mouse to select 
	ENTER to make a copy the current object

Repeate the process with Wall_Brick and little star.

Select one of the little star. press F9. 
	in the resulting dialog box. check the box GOAL.
	click OK.


You should have a function level. To continue improving it, 
simple add new images. Create more objects.

Feedback and more information
=============================

Don't be shy. Give us some feedback !
We need your suggestions to improve.

Visit the project homepage for more details
http://www.sassociations.net/cfrankb/lgck


revision history
================

*** 0.5.0.9

- GUI: added a new toolbox to drag&drop sprites on the level
- GUI: added popup menu to spriteBox
- GUI: added popup menu to LevelView
- GUI: added checkmarks to sprite event combo
- BUG FIX: png transparency bug in obl5t
- BUG FIX: unMap bug w/ random attacker
- ENGINE: OBL5 format moved to version 0x501
- TOOLS: obl5t merged now uses the shared libraries

*** 0.5.0.8

- ENGINE: added CMusic class to handle streaming music (ogg)
- ENGINE: more reorganization of the code
- ENGINE: added closureTime, closureEvent
- ENGINE: added Level property : music
- BUG FIX: windows-setup now uses static build (ati issue on win7)

*** 0.5.0.7

- ENGINE: Created CActor which replaces CLevelEntry at runtime.
- ENGINE: reorganized the code to be more OO-like
- ENGINE: added NO_SPLAT flag to prevent player from crushing monsters
- ENGINE: added properties `max active bullets`, `fire rate`
- ENGINE: improved the collision detection code
- ENGINE: maxFall property now applies to monster
- ENGINE: bullet to monster attack now do damage
- LUA: added isHidden(), isDead(), land(), triggerHitState() 
- LUA: added isMonster(), getPlayerC(), getPlayer()
- LUA: added tryPath(), stopAnimation(), callObjEvent(), killSprite(), spawn()
- EDITOR: added menu items: view source, edit object 
- EDITOR: new shortcuts F9 and SHIFT-F9 (edit local, edit object)

*** 0.5.0.6

- GUI: added status text to all implemented menu items
- LUA: added setImage(), getImage(), Sprite:SetImage()
- LUA: added setState(), findSprite(), alert()
- LUA: added getExtra(), getExtraC(), getExtraUID()
- LUA: added triggerPlayerHitState()
- LUA: added hitTest(), hitTestC()
- LUA: added Extra class to provide access to sprites runtime data (readonly)
- ENGINE: onZKEY event called for player object when Z-KEY is pressed
- ENGINE: ZKeyTrigger class no longer changes the image of the source object
- ENGINE: noChangeAtDeath flag to preserve sprite corpses
- ENGINE: three jump modes available (VLA3, GIANA and MIXED)
- BUG FIX: hitTest logic not working in some cases

VLA3: is the engine default; you need to press JUMP + AIM
GIANA: press UP to jump and move LEFT/RIGHT 
MIXED: press JUMP and move LEFT/RIGHT 

The biggest difference between GIANA and MIXED is that the later also lets you 
climb ladders. :D

*** 0.5.0.5 

- GUI: added pause/restart/debug menu items.
- GUI: added splash screen
- BUG FIX: exiting the game from the menu corrupts the imageSets
- BUG FIX: UI for animation (add, duplicate and delete) showing wrong tooltips
- BUG FIX: a monster repeating animation prevents 'death sequence'
- BUG FIX: player sprite disapears from view when killed (animSeq bug)
- ENGINE: maxFall now an object property (player only atm)
- ENGINE: added game.prepareLevel() event
- ENGINE: added object.mouseClickLeft and object.mouseClickRight events
- DEMOS: updated the demos

0.5.0.4a 

- GUI: new icons curtosy of Ronnie Edwards 
- BUG FIX: player hurt animation not running
- BUG FIX: animation doesn't switch to UP while default animation running (loop)  
- BUG FIX: skill level not initialized properly through gui (editor)
- BUG FIX: layer UI not updated correctly in editor
- BUG FIX: class_immediatly_deadly not working
- BUG FIX: player can be hurt after being killed
- BUG FIX: player leaves the viewport
- BUF FIX: mysterious crash condition reported by model76 (windows only)
- LUA: Inventory Class 
- LUA: addToInventory(), removeFromInventory(), hasItem() and resetInventory()
- LUA: getSkill() (alias for SKILL)
- ENGINE: fallSpeed now an object property
- CODE: reorganized some files to speed up compilation time


*** 0.5.0.4 

- ENGINE: added custom animation sequences for all objects
- ENGINE: per player object jump paths  
- LUA: tryAnimation()
- LUA: setBkColor, setBkColorC
- LUA: getBkColor, getBkColorC
- LUA: setLookUp, getLookUp
- LUA: setLevelGoal, getLevelGoal
- LUA: getTicks(), ticks()
- LUA: getSpriteCount()
- LUA: newColor
- LUA: copySpriteC, copySprite
- etc.

- DEMOS: updated the demos to use the latest features


*** 0.5.0.3

- FIXED: an application crash when an imageSet is added to a fresh database.
         this bus was introduced in 0.5.0.2

*** 0.5.0.2a

- ENGINE: LGCK now implements images caching and hardware acceleration

- BUG FIX: fixed a critical bug in vla3demo224.lgckdb

- TOOLS: added LGCK-TEST.EXE which lets you benchmark your machine

- TOOLS: added LGCK.EXE which is a stand alone runtime 
         (drag and drop an lgckdb file on LGCK.EXE to open)

*** 0.5.0.2

- ENGINE: implemented optional lookup/lookdn
  Players can look up and down to see what's ahead.

- ENGINE: added new scroll ratio 1/2 and 1/4
  Smaller scroll ration allows for faster background scroll

- ENGINE: per level game speed (1-200)
  You can set the game speed to optimize user experience

- ENGINE: systemClass demoted to ObjectInvisibleTag
  This new change allows all objects to be made system invisible

- ENGINE: added foreground layers and support scripting functions
  Foregroung layers make it possible to add weather system (snow, rain etc.) 
  at no extra cost. Scripting support allows you to manage the elements
  as you see fit.

- LUA: too many new functions to list
- LUA: new Layer and Element class 
  
- TOOLS: include a copy obl5t
  This is a special command line utility to split strips into individual
  images.


*** 0.5.0.1

- parallax scrolling support 
- inventory system 
- scripting event model 
- customizable overlay displays (scores, time left, lives etc.)
- implemented wrap around  
- fixed monster ai in gravity free mode

*** 0.5.0.0

- ported the source from MFC to qt
