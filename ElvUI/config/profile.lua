﻿local E, L, V, P, G, _ = unpack(select(2, ...)); --Inport: Engine, Locales, PrivateDB, ProfileDB, GlobalDB, Localize Underscore

P.gridSize = 64
P.farmSize = 340

--Core
P['general'] = {
	["taingLog"] = false,
	["autoscale"] = true,
	["stickyFrames"] = true,
	['loginmessage'] = true,
	["interruptAnnounce"] = "NONE",
	["autoRepair"] = "NONE",
	['vendorGrays'] = false,
	['autoAcceptInvite'] = false,

	["fontsize"] = 12,
	["font"] = "ElvUI Font",

	["bordercolor"] = { r = 0.1,g = 0.1,b = 0.1 },
	["backdropcolor"] = { r = 0.1,g = 0.1,b = 0.1 },
	["backdropfadecolor"] = { r = .054,g = .054,b = .054, a = 0.8 },
	["valuecolor"] = {r = 23/255,g = 132/255,b = 209/255},

	['expRepPos'] = 'TOP_SCREEN',

	['mapAlpha'] = 1,
	['tinyWorldMap'] = true,
	
	['minimap'] = {
		['size'] = 176,
		['locationText'] = 'MOUSEOVER',
	},	
	
	['experience'] = {
		['enable'] = true,
		['width'] = 475,
		['height'] = 10,
		['textFormat'] = 'NONE',
		['textSize'] = 11,
	},
	['reputation'] = {
		['enable'] = true,
		['width'] = 475,
		['height'] = 10,
		['textFormat'] = 'NONE',
		['textSize'] = 11,
	},
};

--Bags
P['bags'] = {
    ['bagCols'] = 0,
    ['bankCols'] = 0,
    ['sortOrientation'] = 'BOTTOM-TOP',
	['xOffset'] = 0,
	['yOffset'] = 0,
	
	['bagBar'] = {
		['enable'] = false,
		['growthDirection'] = 'VERTICAL',
		['sortDirection'] = 'ASCENDING',
		['size'] = 30,
		['spacing'] = 4,
		['showBackdrop'] = false,
		['mouseover'] = false,
	},
};

--NamePlate
P["nameplate"] = {
	["markBGHealers"] = true,
	["width"] = 114,
	["height"] = 8,
	["cbheight"] = 5,
	["showlevel"] = true,
	["enhancethreat"] = true,
	["combat"] = false,
	["healthtext"] = '',
	["trackauras"] = true,
	["trackfilter"] = 'CCDebuffs',
	['goodscale'] = 1,
	['badscale'] = 1,
	["goodcolor"] = {r = 75/255,  g = 175/255, b = 76/255},
	["badcolor"] = {r = 0.78, g = 0.25, b = 0.25},
	["goodtransitioncolor"] = {r = 218/255, g = 197/255, b = 92/255},
	["badtransitioncolor"] = {r = 240/255, g = 154/255, b = 17/255}, 	
	["friendlynpc"] = {r = 0.31, g = 0.45, b = 0.63},
	["friendlyplayer"] = {r = 75/255,  g = 175/255, b = 76/255},
	["neutral"] = { r = 218/255, g = 197/255, b = 92/255 },
	["enemy"] = { r = 0.78, g = 0.25, b = 0.25 },	
	['lowHealthWarning'] = 'PLAYERS',
	['lowHealthWarningThreshold'] = .40,
};

--Auras
P['auras'] = {
	['enable'] = true;
	['consolidedBuffs'] = true;
	['wrapAfter'] = 12,
	['fadeThreshold'] = 5,
	['buffs'] = {
		['sortMethod'] = "TIME",
		['sortDir'] = '-',
		['maxWraps'] = 3,
		['seperateOwn'] = 1,
	},
	['debuffs'] = {
		['sortMethod'] = "TIME",
		['sortDir'] = '-',
		['maxWraps'] = 1,
	},	
}

--Chat
P['chat'] = {
	['url'] = true,
	['shortChannels'] = true,
	['hyperlinkHover'] = true,
	['throttleInterval'] = 45,
	['scrollDownInterval'] = 15,
	['font'] = 'ElvUI Font',
	['fontoutline'] = 'NONE',
	['sticky'] = true,
	['emotionIcons'] = true,
	['keywordSound'] = 'None',
	['whisperSound'] = 'Whisper Alert',
	['keywords'] = '%MYNAME%, ElvUI',
	['panelWidth'] = 412,
	['panelHeight'] = 180,
	['panelBackdropNameLeft'] = '',
	['panelBackdropNameRight'] = '',
	['panelBackdrop'] = 'SHOWBOTH',	
}

--Datatexts
P['datatexts'] = {
	['panels'] = {
		['LeftChatDataPanel'] = {
			['left'] = 'Armor',
			['middle'] = 'Durability',
			['right'] = 'Avoidance',
		},
		['RightChatDataPanel'] = {
			['left'] = 'System',
			['middle'] = 'Time',	
			['right'] = 'Gold',
		},
		['LeftMiniPanel'] = 'Guild',
		['RightMiniPanel'] = 'Friends',
	},
	['localtime'] = true,
	['time24'] = false,
	['battleground'] = true,
	['minimapPanels'] = true,	
}

--Tooltip
P['tooltip'] = {
	['anchor'] = 'SMART',
	['ufhide'] = false,
	['whostarget'] = true,
	['combathide'] = false,
}

--UnitFrame
P['unitframe'] = {
	['smoothbars'] = true,
	['statusbar'] = "Minimalist",
	['font'] = 'ElvUI Pixel',
	['fontsize'] = 10,
	['fontoutline'] = 'MONOCHROMEOUTLINE',
	['OORAlpha'] = 0.35,
	['debuffHighlighting'] = true,
	["smartRaidFilter"] = true,

	['colors'] = {
		['healthclass'] = false,
		['powerclass'] = false,
		['colorhealthbyvalue'] = true,
		['customhealthbackdrop'] = false,
		['classbackdrop'] = false,
		
		['health'] = P.general.bordercolor,
		['health_backdrop'] = { r = .8,g = .01,b = .01 },
		['tapped'] = { r = 0.55, g = 0.57, b = 0.61},
		['disconnected'] = { r = 0.84, g = 0.75, b = 0.65},
		['power'] = {
			["MANA"] = {r = 0.31, g = 0.45, b = 0.63},
			["RAGE"] = {r = 0.78, g = 0.25, b = 0.25},
			["FOCUS"] = {r = 0.71, g = 0.43, b = 0.27},
			["ENERGY"] = {r = 0.65, g = 0.63, b = 0.35},
			["RUNIC_POWER"] = {r = 0, g = 0.82, b = 1},
		},
		['reaction'] = {
			['BAD'] = { r = 0.78, g = 0.25, b = 0.25 },
			['NEUTRAL'] = { r = 218/255, g = 197/255, b = 92/255 },
			['GOOD'] = { r = 75/255, g = 175/255, b = 76/255 },
		},
	},

	['units'] = {
		['player'] = {
			['enable'] = true,
			['width'] = 280,
			['height'] = 54,
			['lowmana'] = 30,
			['combatfade'] = false,
			['healPrediction'] = true,
			['restIcon'] = true,
			['health'] = {
				['text_format'] = '[health:current-percent]',
				['position'] = 'LEFT',
			},
			['power'] = {
				['enable'] = true,
				['text_format'] = '[power:current]',	
				['width'] = 'fill',
				['height'] = 10,
				['offset'] = 0,
				['position'] = 'RIGHT',
				['hideonnpc'] = false,
			},
			['name'] = {
				['position'] = 'CENTER',
				['text_format'] = '',
			},
			['portrait'] = {
				['enable'] = false,
				['width'] = 45,
				['overlay'] = false,
				['camDistanceScale'] = 1,
			},
			['buffs'] = {
				['enable'] = false,
				['perrow'] = 8,
				['numrows'] = 1,
				['attachTo'] = 'DEBUFFS',
				['anchorPoint'] = 'TOPRIGHT',
				['fontsize'] = 10,
				['playerOnly'] = 'ALL',
				['noConsolidated'] = 'ALL',
				['useBlacklist'] = 'ALL',
				['useWhitelist'] = 'ALL',
				['noDuration'] = 'ALL',
				['useFilter'] = '',
			},
			['debuffs'] = {
				['enable'] = true,
				['perrow'] = 8,
				['numrows'] = 1,
				['attachTo'] = 'FRAME',
				['anchorPoint'] = 'TOPRIGHT',					
				['fontsize'] = 10,
				['playerOnly'] = 'NONE',
				['useBlacklist'] = 'ALL',
				['useWhitelist'] = 'NONE',
				['noDuration'] = 'NONE',
				['useFilter'] = '',
			},
			['castbar'] = {
				['enable'] = true,
				['width'] = 280,
				['height'] = 18,
				['icon'] = true,
				['latency'] = true,
				['displayTarget'] = false,
				['color'] = P.general.bordercolor,
				['interruptcolor'] = { r = 0.78, g = 0.25, b = 0.25 },
				['format'] = 'REMAINING',
				["ticks"] = true,
				['spark'] = true,
			},
			['classbar'] = {
				['enable'] = true,
				['fill'] = 'spaced',
				['height'] = 10,
			},
			['aurabar'] = {
				['enable'] = true,
				['anchorPoint'] = 'ABOVE',
				['attachTo'] = 'DEBUFFS',
				['playerOnly'] = 'ALL',
				['noConsolidated'] = 'ALL',
				['useBlacklist'] = 'ALL',
				['useWhitelist'] = 'ALL',
				['noDuration'] = 'ALL',
				['useFilter'] = '',
				['friendlyAuraType'] = 'HELPFUL',
				['enemyAuraType'] = 'HARMFUL'
			},	
		},	
		['target'] = {
			['enable'] = true,
			['width'] = 280,
			['height'] = 54,
			['healPrediction'] = true,
			['smartAuraDisplay'] = 'SHOW_DEBUFFS_ON_FRIENDLIES',
			['health'] = {
				['text_format'] = '[health:current-percent]',
				['position'] = 'RIGHT',
			},
			['power'] = {
				['enable'] = true,
				['text_format'] = '[power:current]',	
				['width'] = 'fill',
				['height'] = 10,
				['offset'] = 0,
				['position'] = 'LEFT',
				['hideonnpc'] = true,					
			},
			['name'] = {
				['position'] = 'CENTER',
				['text_format'] = '[colorname][name:medium] [difficultycolor][level] [shortclassification]',
			},
			['portrait'] = {
				['enable'] = false,
				['width'] = 45,
				['overlay'] = false,
				['camDistanceScale'] = 1,
			},
			['buffs'] = {
				['enable'] = true,
				['perrow'] = 8,
				['numrows'] = 1,
				['attachTo'] = 'FRAME',
				['anchorPoint'] = 'TOPRIGHT',
				['fontsize'] = 10,
				['playerOnly'] = 'FRIENDLY',
				['noConsolidated'] = 'FRIENDLY',
				['useBlacklist'] = 'ALL',
				['useWhitelist'] = 'NONE',
				['noDuration'] = 'FRIENDLY',
				['useFilter'] = '',
			},
			['debuffs'] = {
				['enable'] = false,
				['perrow'] = 8,
				['numrows'] = 1,
				['attachTo'] = 'BUFFS',
				['anchorPoint'] = 'TOPRIGHT',					
				['fontsize'] = 10,
				['playerOnly'] = 'ENEMY',
				['useBlacklist'] = 'ALL',
				['useWhitelist'] = 'NONE',
				['noDuration'] = 'NONE',
				['useFilter'] = '',
			},
			['castbar'] = {
				['enable'] = true,
				['width'] = 280,
				['height'] = 18,
				['icon'] = true,
				['color'] = P.general.bordercolor,
				['interruptcolor'] = { r = 0.78, g = 0.25, b = 0.25 },
				['format'] = 'REMAINING',
				['spark'] = true,
			},	
			['combobar'] = {
				['enable'] = true,
				['fill'] = 'spaced',
				['height'] = 10,
			},		
			['aurabar'] = {
				['enable'] = true,
				['anchorPoint'] = 'ABOVE',
				['attachTo'] = 'BUFFS',
				['playerOnly'] = 'ALL',
				['useBlacklist'] = 'ALL',
				['useWhitelist'] = 'NONE',
				['noDuration'] = 'ENEMY',
				['noConsolidated'] = 'ALL',
				['useFilter'] = '',
				['friendlyAuraType'] = 'HELPFUL',
				['enemyAuraType'] = 'HARMFUL'				
			},			
		},
		['targettarget'] = {
			['enable'] = true,
			['width'] = 130,
			['height'] = 36,
			['health'] = {
				['text_format'] = '',
				['position'] = 'RIGHT',
			},
			['power'] = {
				['enable'] = true,
				['text_format'] = '',	
				['width'] = 'fill',
				['height'] = 7,
				['offset'] = 0,
				['position'] = 'LEFT',
				['hideonnpc'] = false,					
			},
			['name'] = {
				['position'] = 'CENTER',
				['text_format'] = '[colorname][name:medium]',
			},
			['buffs'] = {
				['enable'] = false,
				['perrow'] = 7,
				['numrows'] = 1,
				['attachTo'] = 'FRAME',
				['anchorPoint'] = 'BOTTOMLEFT',					
				['fontsize'] = 10,
				['playerOnly'] = 'FRIENDLY',
				['noConsolidated'] = 'FRIENDLY',
				['useBlacklist'] = 'ALL',
				['useWhitelist'] = 'NONE',
				['noDuration'] = 'FRIENDLY',
				['useFilter'] = '',
			},
			['debuffs'] = {
				['enable'] = true,
				['perrow'] = 5,
				['numrows'] = 1,
				['attachTo'] = 'FRAME',
				['anchorPoint'] = 'BOTTOMRIGHT',					
				['fontsize'] = 10,
				['playerOnly'] = 'ENEMY',
				['useBlacklist'] = 'ALL',
				['useWhitelist'] = 'NONE',
				['noDuration'] = 'NONE',
				['useFilter'] = '',
			},			
		},
		['focus'] = {
			['enable'] = true,
			['width'] = 190,
			['height'] = 36,
			['healPrediction'] = true,
			['smartAuraDisplay'] = 'DISABLED',
			['health'] = {
				['text_format'] = '',
				['position'] = 'RIGHT',
			},
			['power'] = {
				['enable'] = true,
				['text_format'] = '',	
				['width'] = 'fill',
				['height'] = 7,
				['offset'] = 0,
				['position'] = 'LEFT',
				['hideonnpc'] = false,					
			},
			['name'] = {
				['position'] = 'CENTER',
				['text_format'] = '[colorname][name:medium]',
			},
			['buffs'] = {
				['enable'] = false,
				['perrow'] = 7,
				['numrows'] = 1,
				['attachTo'] = 'FRAME',
				['anchorPoint'] = 'BOTTOMLEFT',					
				['fontsize'] = 10,
				['playerOnly'] = 'FRIENDLY',
				['noConsolidated'] = 'FRIENDLY',
				['useBlacklist'] = 'ALL',
				['useWhitelist'] = 'NONE',
				['noDuration'] = 'FRIENDLY',
				['useFilter'] = '',
			},
			['debuffs'] = {
				['enable'] = true,
				['perrow'] = 5,
				['numrows'] = 1,
				['attachTo'] = 'FRAME',
				['anchorPoint'] = 'BOTTOMRIGHT',					
				['fontsize'] = 10,
				['playerOnly'] = 'ENEMY',
				['useBlacklist'] = 'ALL',
				['useWhitelist'] = 'NONE',
				['noDuration'] = 'NONE',
				['useFilter'] = '',
			},	
			['castbar'] = {
				['enable'] = true,
				['width'] = 190,
				['height'] = 18,
				['icon'] = true,
				['color'] = P.general.bordercolor,
				['interruptcolor'] = { r = 0.78, g = 0.25, b = 0.25 },
				['format'] = 'REMAINING',
				['spark'] = true,
			},	
			['aurabar'] = {
				['enable'] = false,
				['anchorPoint'] = 'ABOVE',
				['attachTo'] = 'FRAME',
				['playerOnly'] = 'ENEMY',
				['useBlacklist'] = 'ALL',
				['useWhitelist'] = 'NONE',
				['noDuration'] = 'NONE',
				['useFilter'] = '',
				['friendlyAuraType'] = 'HELPFUL',
				['enemyAuraType'] = 'HARMFUL'				
			},				
		},	
		['focustarget'] = {
			['enable'] = false,
			['width'] = 190,
			['height'] = 26,
			['health'] = {
				['text_format'] = '',
				['position'] = 'RIGHT',
			},
			['power'] = {
				['enable'] = false,
				['text_format'] = '',	
				['width'] = 'fill',
				['height'] = 7,
				['offset'] = 0,
				['position'] = 'LEFT',
				['hideonnpc'] = false,					
			},
			['name'] = {
				['position'] = 'CENTER',
				['text_format'] = '[colorname][name:medium]',
			},
			['buffs'] = {
				['enable'] = false,
				['perrow'] = 7,
				['numrows'] = 1,
				['attachTo'] = 'FRAME',
				['anchorPoint'] = 'BOTTOMLEFT',					
				['fontsize'] = 10,
				['playerOnly'] = 'FRIENDLY',
				['noConsolidated'] = 'FRIENDLY',
				['useBlacklist'] = 'ALL',
				['useWhitelist'] = 'NONE',
				['noDuration'] = 'FRIENDLY',
				['useFilter'] = '',
			},
			['debuffs'] = {
				['enable'] = false,
				['perrow'] = 5,
				['numrows'] = 1,
				['attachTo'] = 'FRAME',
				['anchorPoint'] = 'BOTTOMRIGHT',					
				['fontsize'] = 10,
				['playerOnly'] = 'ENEMY',
				['useBlacklist'] = 'ALL',
				['useWhitelist'] = 'NONE',
				['noDuration'] = 'NONE',
				['useFilter'] = '',
			},			
		},				
		['pet'] = {
			['enable'] = true,
			['width'] = 130,
			['height'] = 36,
			['healPrediction'] = true,
			['health'] = {
				['text_format'] = '',
				['position'] = 'RIGHT',
			},
			['power'] = {
				['enable'] = true,
				['text_format'] = '',	
				['width'] = 'fill',
				['height'] = 7,
				['offset'] = 0,
				['position'] = 'LEFT',
				['hideonnpc'] = false,					
			},
			['name'] = {
				['position'] = 'CENTER',
				['text_format'] = '[colorname][name:medium]',
			},
			['buffs'] = {
				['enable'] = false,
				['perrow'] = 7,
				['numrows'] = 1,
				['attachTo'] = 'FRAME',
				['anchorPoint'] = 'BOTTOMLEFT',					
				['fontsize'] = 10,
				['playerOnly'] = 'FRIENDLY',
				['noConsolidated'] = 'FRIENDLY',
				['useBlacklist'] = 'ALL',
				['useWhitelist'] = 'NONE',
				['noDuration'] = 'FRIENDLY',
				['useFilter'] = '',
			},
			['debuffs'] = {
				['enable'] = false,
				['perrow'] = 5,
				['numrows'] = 1,
				['attachTo'] = 'FRAME',
				['anchorPoint'] = 'BOTTOMRIGHT',					
				['fontsize'] = 10,
				['playerOnly'] = 'NONE',
				['useBlacklist'] = 'ALL',
				['useWhitelist'] = 'NONE',
				['noDuration'] = 'NONE',
				['useFilter'] = '',
			},			
		},
		['pettarget'] = {
			['enable'] = false,
			['width'] = 130,
			['height'] = 26,
			['health'] = {
				['text_format'] = '',
				['position'] = 'RIGHT',
			},
			['power'] = {
				['enable'] = false,
				['text_format'] = '',	
				['width'] = 'fill',
				['height'] = 7,
				['offset'] = 0,
				['position'] = 'LEFT',
				['hideonnpc'] = false,					
			},
			['name'] = {
				['position'] = 'CENTER',
				['text_format'] = '[colorname][name:medium]',
			},
			['buffs'] = {
				['enable'] = false,
				['perrow'] = 7,
				['numrows'] = 1,
				['attachTo'] = 'FRAME',
				['anchorPoint'] = 'BOTTOMLEFT',					
				['fontsize'] = 10,
				['playerOnly'] = 'FRIENDLY',
				['noConsolidated'] = 'FRIENDLY',
				['useBlacklist'] = 'ALL',
				['useWhitelist'] = 'NONE',
				['noDuration'] = 'FRIENDLY',
				['useFilter'] = '',
			},
			['debuffs'] = {
				['enable'] = false,
				['perrow'] = 5,
				['numrows'] = 1,
				['attachTo'] = 'FRAME',
				['anchorPoint'] = 'BOTTOMRIGHT',					
				['fontsize'] = 10,
				['playerOnly'] = 'ENEMY',
				['useBlacklist'] = 'ALL',
				['useWhitelist'] = 'NONE',
				['noDuration'] = 'NONE',
				['useFilter'] = '',
			},			
		},	
		['boss'] = {
			['enable'] = true,
			['growthDirection'] = 'UP',
			['width'] = 216,
			['height'] = 46,
			['health'] = {
				['text_format'] = '[health:current-percent]',
				['position'] = 'RIGHT',
			},
			['power'] = {
				['enable'] = true,
				['text_format'] = '[power:current]',	
				['width'] = 'fill',
				['height'] = 7,
				['offset'] = 0,
				['position'] = 'LEFT',
				['hideonnpc'] = false,					
			},
			['portrait'] = {
				['enable'] = false,
				['width'] = 35,
				['overlay'] = false,
				['camDistanceScale'] = 1,
			},				
			['name'] = {
				['position'] = 'CENTER',
				['text_format'] = '[colorname][name:medium]',
			},
			['buffs'] = {
				['enable'] = true,
				['perrow'] = 3,
				['numrows'] = 1,
				['attachTo'] = 'FRAME',
				['anchorPoint'] = 'LEFT',					
				['fontsize'] = 10,
				['playerOnly'] = 'ALL',
				['noConsolidated'] = 'NONE',
				['useBlacklist'] = 'ALL',
				['useWhitelist'] = 'NONE',
				['noDuration'] = 'NONE',
				['useFilter'] = '',
				['sizeOverride'] = 46,
			},
			['debuffs'] = {
				['enable'] = true,
				['perrow'] = 1,
				['numrows'] = 1,
				['attachTo'] = 'FRAME',
				['anchorPoint'] = 'RIGHT',					
				['fontsize'] = 10,
				['playerOnly'] = 'ALL',
				['useBlacklist'] = 'ALL',
				['useWhitelist'] = 'NONE',
				['noDuration'] = 'NONE',
				['useFilter'] = '',
				['sizeOverride'] = 46,
			},	
			['castbar'] = {
				['enable'] = true,
				['width'] = 215,
				['height'] = 18,
				['icon'] = true,
				['color'] = P.general.bordercolor,
				['interruptcolor'] = { r = 0.78, g = 0.25, b = 0.25 },
				['format'] = 'REMAINING',
				['spark'] = true,
			},					
		},	
		['arena'] = {
			['enable'] = true,
			['growthDirection'] = 'UP',
			['pvpTrinket'] = true,
			['width'] = 240,
			['height'] = 46,
			['health'] = {
				['text_format'] = '[health:current-percent]',
				['position'] = 'RIGHT',
			},
			['power'] = {
				['enable'] = true,
				['text_format'] = '[power:current]',	
				['width'] = 'fill',
				['height'] = 7,
				['offset'] = 0,
				['position'] = 'LEFT',
				['hideonnpc'] = false,					
			},			
			['name'] = {
				['position'] = 'CENTER',
				['text_format'] = '[colorname][name:medium]',
			},
			['buffs'] = {
				['enable'] = true,
				['perrow'] = 3,
				['numrows'] = 1,
				['attachTo'] = 'FRAME',
				['anchorPoint'] = 'LEFT',					
				['fontsize'] = 10,
				['playerOnly'] = 'NONE',
				['noConsolidated'] = 'NONE',
				['useBlacklist'] = 'NONE',
				['useWhitelist'] = 'NONE',
				['noDuration'] = 'NONE',
				['useFilter'] = 'TurtleBuffs',
				['sizeOverride'] = 46,
			},
			['debuffs'] = {
				['enable'] = true,
				['perrow'] = 1,
				['numrows'] = 1,
				['attachTo'] = 'FRAME',
				['anchorPoint'] = 'RIGHT',					
				['fontsize'] = 10,
				['playerOnly'] = 'NONE',
				['useBlacklist'] = 'NONE',
				['useWhitelist'] = 'NONE',
				['noDuration'] = 'NONE',
				['useFilter'] = 'CCDebuffs',
				['sizeOverride'] = 46,
			},	
			['castbar'] = {
				['enable'] = true,
				['width'] = 240,
				['height'] = 18,
				['icon'] = true,
				['color'] = P.general.bordercolor,
				['interruptcolor'] = { r = 0.78, g = 0.25, b = 0.25 },
				['format'] = 'REMAINING',
				['spark'] = true,
			},					
		},
		['party'] = {
			['enable'] = true,
			['visibility'] = "[@raid6,exists] hide;show",
			['point'] = 'TOP', --Requires ReloadUI()
			['maxColumns'] = 1,
			['unitsPerColumn'] = 5,
			['columnSpacing'] = 3,
			['xOffset'] = 0,
			['yOffset'] = -3,
			['groupBy'] = 'GROUP',
			["showParty"] = true,
			["showRaid"] = true,
			["showSolo"] = false,
			["showPlayer"] = true,
			['healPrediction'] = false,
			['columnAnchorPoint'] = "TOP",
			['width'] = 180,
			['height'] = 44,
			['health'] = {
				['text_format'] = '[health:current-percent]',
				['position'] = 'RIGHT',
				['orientation'] = 'HORIZONTAL',
				['frequentUpdates'] = false,
			},
			['power'] = {
				['enable'] = true,
				['text_format'] = '',	
				['width'] = 'fill',
				['height'] = 7,
				['offset'] = 0,
				['position'] = 'BOTTOMRIGHT',
				['hideonnpc'] = false,					
			},			
			['name'] = {
				['position'] = 'LEFT',
				['text_format'] = '[colorname][name:medium] [difficultycolor][level]',
			},
			['buffs'] = {
				['enable'] = false,
				['perrow'] = 3,
				['numrows'] = 1,
				['attachTo'] = 'FRAME',
				['anchorPoint'] = 'LEFT',					
				['fontsize'] = 10,
				['playerOnly'] = 'ALL',
				['noConsolidated'] = 'ALL',
				['useBlacklist'] = 'ALL',
				['useWhitelist'] = 'NONE',
				['noDuration'] = 'ALL',
				['useFilter'] = '',
			},
			['debuffs'] = {
				['enable'] = true,
				['perrow'] = 3,
				['numrows'] = 1,
				['attachTo'] = 'FRAME',
				['anchorPoint'] = 'RIGHT',					
				['fontsize'] = 10,
				['playerOnly'] = 'N',
				['useBlacklist'] = 'ALL',
				['useWhitelist'] = 'NONE',
				['noDuration'] = 'NONE',
				['useFilter'] = '',
				['sizeOverride'] = 44,
			},	
			['buffIndicator'] = {
				['enable'] = true,
				['size'] = 6,
				['fontsize'] = 8,
				['colorIcons'] = true,
			},
			['roleIcon'] = {
				['enable'] = true,
				['position'] = 'CENTER',
			},		
			['raidRoleIcons'] = {
				['enable'] = true,
				['position'] = 'TOPLEFT',
			},					
			['petsGroup'] = {
				['enable'] = false,
				['width'] = 100,
				['height'] = 22,
				['anchorPoint'] = 'TOPLEFT',
				['xOffset'] = -1,
				['yOffset'] = 0,
			},
			['targetsGroup'] = {
				['enable'] = false,
				['width'] = 100,
				['height'] = 22,
				['anchorPoint'] = 'TOPLEFT',
				['xOffset'] = -1,
				['yOffset'] = 0,
			},				
		},
		['raid10'] = {
			['enable'] = true,
			['visibility'] = '[@raid6,noexists][@raid11,exists] hide;show',
			['point'] = 'LEFT',
			['maxColumns'] = 2,
			['unitsPerColumn'] = 5,
			['columnSpacing'] = 3,
			['xOffset'] = 3,
			['yOffset'] = -3,
			['groupBy'] = 'GROUP',
			["showParty"] = true,
			["showRaid"] = true,
			["showSolo"] = false,
			["showPlayer"] = true,
			['healPrediction'] = false,
			['columnAnchorPoint'] = "TOP",
			['width'] = 80,
			['height'] = 44,
			['health'] = {
				['text_format'] = '[health:deficit]',
				['position'] = 'BOTTOM',
				['orientation'] = 'HORIZONTAL',
				['frequentUpdates'] = false,
			},
			['power'] = {
				['enable'] = true,
				['text_format'] = '',	
				['width'] = 'fill',
				['height'] = 7,
				['offset'] = 0,
				['position'] = 'BOTTOMRIGHT',
				['hideonnpc'] = false,					
			},			
			['name'] = {
				['position'] = 'TOP',
				['text_format'] = '[colorname][name:short]',
			},
			['buffs'] = {
				['enable'] = false,
				['perrow'] = 3,
				['numrows'] = 1,
				['attachTo'] = 'FRAME',
				['anchorPoint'] = 'LEFT',					
				['fontsize'] = 10,
				['playerOnly'] = 'ALL',
				['noConsolidated'] = 'ALL',
				['useBlacklist'] = 'ALL',
				['useWhitelist'] = 'NONE',
				['noDuration'] = 'ALL',
				['useFilter'] = '',
			},
			['debuffs'] = {
				['enable'] = false,
				['perrow'] = 3,
				['numrows'] = 1,
				['attachTo'] = 'FRAME',
				['anchorPoint'] = 'RIGHT',					
				['fontsize'] = 10,
				['playerOnly'] = 'NONE',
				['useBlacklist'] = 'ALL',
				['useWhitelist'] = 'NONE',
				['noDuration'] = 'NONE',
				['useFilter'] = '',
			},	
			['buffIndicator'] = {
				['enable'] = true,
				['size'] = 6,
				['fontsize'] = 8,
				['colorIcons'] = true,
			},
			['rdebuffs'] = {
				['enable'] = true,
				['fontsize'] = 10,
				['size'] = 26,
			},
			['roleIcon'] = {
				['enable'] = true,
				['position'] = 'BOTTOMRIGHT',
			},		
			['raidRoleIcons'] = {
				['enable'] = true,
				['position'] = 'TOPLEFT',
			},				
		},			
		['raid25'] = {
			['enable'] = true,
			['visibility'] = '[@raid11,noexists][@raid26,exists] hide;show',
			['point'] = 'LEFT',
			['maxColumns'] = 5,
			['unitsPerColumn'] = 5,
			['columnSpacing'] = 3,
			['xOffset'] = 3,
			['yOffset'] = -3,
			['groupBy'] = 'GROUP',
			["showParty"] = true,
			["showRaid"] = true,
			["showSolo"] = false,
			["showPlayer"] = true,
			['healPrediction'] = false,
			['columnAnchorPoint'] = "TOP",
			['width'] = 80,
			['height'] = 44,
			['health'] = {
				['text_format'] = '[health:deficit]',
				['position'] = 'BOTTOM',
				['orientation'] = 'HORIZONTAL',
				['frequentUpdates'] = false,
			},
			['power'] = {
				['enable'] = true,
				['text_format'] = '',	
				['width'] = 'fill',
				['height'] = 7,
				['offset'] = 0,
				['position'] = 'BOTTOMRIGHT',
				['hideonnpc'] = false,					
			},			
			['name'] = {
				['position'] = 'TOP',
				['text_format'] = '[colorname][name:short]',
			},
			['buffs'] = {
				['enable'] = false,
				['perrow'] = 3,
				['numrows'] = 1,
				['attachTo'] = 'FRAME',
				['anchorPoint'] = 'LEFT',					
				['fontsize'] = 10,
				['playerOnly'] = 'ALL',
				['noConsolidated'] = 'ALL',
				['useBlacklist'] = 'ALL',
				['useWhitelist'] = 'NONE',
				['noDuration'] = 'ALL',
				['useFilter'] = '',
			},
			['debuffs'] = {
				['enable'] = false,
				['perrow'] = 3,
				['numrows'] = 1,
				['attachTo'] = 'FRAME',
				['anchorPoint'] = 'RIGHT',					
				['fontsize'] = 10,
				['playerOnly'] = 'NONE',
				['useBlacklist'] = 'ALL',
				['useWhitelist'] = 'NONE',
				['noDuration'] = 'NONE',
				['useFilter'] = '',
			},	
			['buffIndicator'] = {
				['enable'] = true,
				['size'] = 6,
				['fontsize'] = 8,
				['colorIcons'] = true,
			},
			['rdebuffs'] = {
				['enable'] = true,
				['fontsize'] = 10,
				['size'] = 26,
			},
			['roleIcon'] = {
				['enable'] = true,
				['position'] = 'BOTTOMRIGHT',
			},				
			['raidRoleIcons'] = {
				['enable'] = true,
				['position'] = 'TOPLEFT',
			},				
		},					
		['raid40'] = {
			['enable'] = true,
			['visibility'] = '[@raid26,noexists] hide;show',
			['point'] = 'LEFT',
			['maxColumns'] = 8,
			['unitsPerColumn'] = 5,
			['columnSpacing'] = 3,
			['xOffset'] = 3,
			['yOffset'] = -3,
			['groupBy'] = 'GROUP',
			["showParty"] = true,
			["showRaid"] = true,
			["showSolo"] = false,
			["showPlayer"] = true,
			['healPrediction'] = false,
			['columnAnchorPoint'] = "TOP",
			['width'] = 80,
			['height'] = 26,
			['health'] = {
				['text_format'] = '[health:deficit]',
				['position'] = 'BOTTOM',
				['orientation'] = 'HORIZONTAL',
				['frequentUpdates'] = false,
			},
			['power'] = {
				['enable'] = false,
				['text_format'] = '',	
				['width'] = 'fill',
				['height'] = 7,
				['offset'] = 0,
				['position'] = 'BOTTOMRIGHT',
				['hideonnpc'] = false,					
			},			
			['name'] = {
				['position'] = 'CENTER',
				['text_format'] = '[colorname][name:short]',
			},
			['buffs'] = {
				['enable'] = false,
				['perrow'] = 3,
				['numrows'] = 1,
				['attachTo'] = 'FRAME',
				['anchorPoint'] = 'LEFT',					
				['fontsize'] = 10,
				['playerOnly'] = 'ALL',
				['noConsolidated'] = 'ALL',
				['useBlacklist'] = 'ALL',
				['useWhitelist'] = 'NONE',
				['noDuration'] = 'ALL',
				['useFilter'] = '',
			},
			['debuffs'] = {
				['enable'] = false,
				['perrow'] = 3,
				['numrows'] = 1,
				['attachTo'] = 'FRAME',
				['anchorPoint'] = 'RIGHT',					
				['fontsize'] = 10,
				['playerOnly'] = 'NONE',
				['useBlacklist'] = 'ALL',
				['useWhitelist'] = 'NONE',
				['noDuration'] = 'NONE',
				['useFilter'] = '',
			},	
			['rdebuffs'] = {
				['enable'] = false,
				['fontsize'] = 10,
				['size'] = 22,
			},
			['roleIcon'] = {
				['enable'] = false,
				['position'] = 'BOTTOMRIGHT',
			},		
			['raidRoleIcons'] = {
				['enable'] = true,
				['position'] = 'TOPLEFT',
			},				
			['buffIndicator'] = {
				['enable'] = true,
				['size'] = 6,
				['fontsize'] = 8,
				['colorIcons'] = true,
			},			
		},	
		['tank'] = {
			['enable'] = true,
			['width'] = 120,
			['height'] = 28,
		},	
		['assist'] = {
			['enable'] = true,
			['width'] = 120,
			['height'] = 28,
		},					
	},
}


--Actionbar
P["actionbar"] = {
	["macrotext"] = false,
	["hotkeytext"] = true,
	['fontsize'] = 11,
	["enablecd"] = true,
	["treshold"] = 3,
	['useMaxPaging'] = false,
	["expiringcolor"] = { r = 1, g = 0, b = 0 },
	["secondscolor"] = { r = 1, g = 1, b = 0 },
	["minutescolor"] = { r = 1, g = 1, b = 1 },
	["hourscolor"] = { r = 0.4, g = 1, b = 1 },
	["dayscolor"] = { r = 0.4, g = 0.4, b = 1 },
	['microbar'] = {
		['enabled'] = false,
		['mouseover'] = false,
		['buttonsPerRow'] = 12,
		['alpha'] = 1,
	},
	['bar1'] = {
		['enabled'] = true,
		['buttons'] = 12,
		['mouseover'] = false,
		['buttonsPerRow'] = 12,
		['point'] = 'BOTTOMLEFT',
		['backdrop'] = true,
		['heightMult'] = 1,
		['widthMult'] = 1,
		["buttonsize"] = 30,
		["buttonspacing"] = 4,		
		['paging'] = {
			["DRUID"] = "[bonusbar:1,nostealth] 7; [bonusbar:1,stealth] 8; [bonusbar:2] 8; [bonusbar:3] 9; [bonusbar:4] 10;",
			["WARRIOR"] = "[bonusbar:1] 7; [bonusbar:2] 8; [bonusbar:3] 9;",
			["PRIEST"] = "[bonusbar:1] 7;",
			["ROGUE"] = "[stance:1] 7; [stance:3] 7;", -- set to "[stance:1] 7; [stance:3] 10;" if you want a shadow dance bar
			["MONK"] = "[bonusbar:1] 7; [bonusbar:2] 8; [bonusbar:3] 9;"
		},
		['visibility'] = "[petbattle] hide; show",
	},
	['bar2'] = {
		['enabled'] = false,
		['mouseover'] = false,
		['buttons'] = 12,
		['buttonsPerRow'] = 12,
		['point'] = 'BOTTOMLEFT',
		['backdrop'] = false,
		['heightMult'] = 1,
		['widthMult'] = 1,
		["buttonsize"] = 30,
		["buttonspacing"] = 4,		
		['paging'] = {},
		['visibility'] = "[vehicleui] hide; [overridebar] hide; [petbattle] hide; show",
	},
	['bar3'] = {
		['enabled'] = true,
		['mouseover'] = false,
		['buttons'] = 6,
		['buttonsPerRow'] = 6,
		['point'] = 'BOTTOMLEFT',
		['backdrop'] = true,
		['heightMult'] = 1,
		['widthMult'] = 1,
		["buttonsize"] = 30,
		["buttonspacing"] = 4,
		['paging'] = {},
		['visibility'] = "[vehicleui] hide; [overridebar] hide; [petbattle] hide; show",
	},
	['bar4'] = {
		['enabled'] = true,
		['mouseover'] = false,
		['buttons'] = 12,
		['buttonsPerRow'] = 1,
		['point'] = 'TOPRIGHT',
		['backdrop'] = true,
		['heightMult'] = 1,
		['widthMult'] = 1,
		["buttonsize"] = 30,
		["buttonspacing"] = 4,
		['paging'] = {},
		['visibility'] = "[vehicleui] hide; [overridebar] hide; [petbattle] hide; show",
	},
	['bar5'] = {
		['enabled'] = true,
		['mouseover'] = false,
		['buttons'] = 6,
		['buttonsPerRow'] = 6,
		['point'] = 'BOTTOMLEFT',
		['backdrop'] = true,
		['heightMult'] = 1,
		['widthMult'] = 1,
		["buttonsize"] = 30,
		["buttonspacing"] = 4,
		['paging'] = {},
		['visibility'] = "[vehicleui] hide; [overridebar] hide; [petbattle] hide; show",
	},
	['barPet'] = {
		['enabled'] = true,
		['mouseover'] = false,
		['buttons'] = NUM_PET_ACTION_SLOTS,
		['buttonsPerRow'] = 1,
		['point'] = 'TOPRIGHT',
		['backdrop'] = true,
		['heightMult'] = 1,
		['widthMult'] = 1,
		["buttonsize"] = 30,
		["buttonspacing"] = 4,
		['visibility'] = "[petbattle] hide;[pet,novehicleui,nooverridebar,nopossessbar] show;hide",
	},
	['barShapeShift'] = {
		['enabled'] = true,
		['mouseover'] = false,
		['buttonsPerRow'] = NUM_STANCE_SLOTS,
		['buttons'] = NUM_STANCE_SLOTS,
		['point'] = 'TOPLEFT',
		['backdrop'] = false,
		['heightMult'] = 1,
		['widthMult'] = 1,
		["buttonsize"] = 30,
		["buttonspacing"] = 4,
	},
};

if GetLocale() ~= 'enUS' then
	P['general'].font = 'Arial Narrow'
	P['unitframe'].font = 'Arial Narrow'
	P['chat'].font = 'Arial Narrow'
end
