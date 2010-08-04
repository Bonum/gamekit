/*
-------------------------------------------------------------------------------
    This file is part of OgreKit.
    http://gamekit.googlecode.com/

    Copyright (c) 2006-2010 Charlie C.

    Contributor(s): none yet.
-------------------------------------------------------------------------------
  This software is provided 'as-is', without any express or implied
  warranty. In no event will the authors be held liable for any damages
  arising from the use of this software.

  Permission is granted to anyone to use this software for any purpose,
  including commercial applications, and to alter it and redistribute it
  freely, subject to the following restrictions:

  1. The origin of this software must not be misrepresented; you must not
     claim that you wrote the original software. If you use this software
     in a product, an acknowledgment in the product documentation would be
     appreciated but is not required.
  2. Altered source versions must be plainly marked as such, and must not be
     misrepresented as being the original software.
  3. This notice may not be removed or altered from any source distribution.
-------------------------------------------------------------------------------
*/
%{
#include "gsCore.h"
%}

// Enable ownership
%newobject gsEngine::loadBlendFile;
%newobject gsGameObject::getEntity;
%newobject gsGameObject::getLight;
%newobject gsGameObject::getCamera;
%newobject gsGameObject::getParent;
%newobject gsGameObject::getSkeleton;

%newobject gsScene::getObject;
%newobject gsScene::getEntity;
%newobject gsScene::getLight;
%newobject gsScene::getCamera;
%newobject gsScene::getSkeleton;
%newobject gsScene::createEmpty;

%rename(Camera)          gsCamera;
%rename(Debugger)        gsDebugger;
%rename(Engine)          gsEngine;
%rename(Entity)          gsEntity;
%rename(GameObject)      gsGameObject;
%rename(Keyboard)        gsKeyboard;
%rename(Light)           gsLight;
%rename(Loadable)        gsLoadable;
%rename(Mouse)           gsMouse;
%rename(Property)        gsProperty;
%rename(Scene)           gsScene;
%rename(Skeleton)        gsSkeleton;
%rename(UserDefs)        gsUserDefs;
%rename(RenderSystem)    gsRenderSystem;
%rename(PropertyType)    gsPropertyType;
%rename(TransformSpace)  gsTransformSpace;
%rename(GameObjectTypes) gsGameObjectTypes;
%rename(EngineEvents)    gsEngineEvents;
%rename(MouseButton)     gsMouseButton;
%rename(DebugPrint)      gsDebugPrint;


%rename(OGRE_RS_GL)       GS_RS_GL;
%rename(OGRE_RS_GLES)     GS_RS_GLES;
%rename(OGRE_RS_D3D9)     GS_RS_D3D9;
%rename(OGRE_RS_D3D10)    GS_RS_D3D10;
%rename(OGRE_RS_D3D11)    GS_RS_D3D11;

%newobject gsArray<gsGameObject, gkGameObject>::at;
%newobject gsArray<gsGameObject, gkGameObject>::__getitem__;
%template(ObjectList)	  gsArray<gsGameObject, gkGameObject>;


%newobject gsArrayIterator<gsGameObject, gkGameObject>::peekNext;
%newobject gsArrayIterator<gsGameObject, gkGameObject>::getNext;
%template(ObjectIterator) gsArrayIterator<gsGameObject, gkGameObject>;


%include "gsCore.h"



typedef enum ScanCode
{
    KC_NONE = 0,
    KC_AKEY,
    KC_BKEY,
    KC_CKEY,
    KC_DKEY,
    KC_EKEY,
    KC_FKEY,
    KC_GKEY,
    KC_HKEY,
    KC_IKEY,
    KC_JKEY,
    KC_KKEY,
    KC_LKEY,
    KC_MKEY,
    KC_NKEY,
    KC_OKEY,
    KC_PKEY,
    KC_QKEY,
    KC_RKEY,
    KC_SKEY,
    KC_TKEY,
    KC_UKEY,
    KC_VKEY,
    KC_WKEY,
    KC_XKEY,
    KC_YKEY,
    KC_ZKEY,
    KC_ZEROKEY,
    KC_ONEKEY,
    KC_TWOKEY,
    KC_THREEKEY,
    KC_FOURKEY,
    KC_FIVEKEY,
    KC_SIXKEY,
    KC_SEVENKEY,
    KC_EIGHTKEY,
    KC_NINEKEY,
    KC_CAPSLOCKKEY,
    KC_LEFTCTRLKEY,
    KC_LEFTALTKEY,
    KC_RIGHTALTKEY,
    KC_RIGHTCTRLKEY,
    KC_RIGHTSHIFTKEY,
    KC_LEFTSHIFTKEY,
    KC_ESCKEY,
    KC_TABKEY,
    KC_RETKEY,
    KC_SPACEKEY,
    KC_LINEFEEDKEY,
    KC_BACKSPACEKEY,
    KC_DELKEY,
    KC_SEMICOLONKEY,
    KC_PERIODKEY,
    KC_COMMAKEY,
    KC_QUOTEKEY,
    KC_ACCENTGRAVEKEY,
    KC_MINUSKEY,
    KC_SLASHKEY,
    KC_BACKSLASHKEY,
    KC_EQUALKEY,
    KC_LEFTBRACKETKEY,
    KC_RIGHTBRACKETKEY,
    KC_LEFTARROWKEY,
    KC_DOWNARROWKEY,
    KC_RIGHTARROWKEY,
    KC_UPARROWKEY,
    KC_PAD0,
    KC_PAD1,
    KC_PAD2,
    KC_PAD3,
    KC_PAD4,
    KC_PAD5,
    KC_PAD6,
    KC_PAD7,
    KC_PAD8,
    KC_PAD9,
    KC_PADEQUALS,
    KC_PADPERIOD,
    KC_PADSLASHKEY,
    KC_PADASTERKEY,
    KC_PADMINUS,
    KC_PADENTER,
    KC_PADPLUSKEY,
    KC_F1KEY,
    KC_F2KEY,
    KC_F3KEY,
    KC_F4KEY,
    KC_F5KEY,
    KC_F6KEY,
    KC_F7KEY,
    KC_F8KEY,
    KC_F9KEY,
    KC_F10KEY,
    KC_F11KEY,
    KC_F12KEY,
    KC_PAUSEKEY,
    KC_INSERTKEY,
    KC_HOMEKEY,
    KC_PAGEUPKEY,
    KC_PAGEDOWNKEY,
    KC_ENDKEY,
    KC_UNKNOWNKEY,
    KC_COMMANDKEY,
    KC_GRLESSKEY,
    KC_MAX
};