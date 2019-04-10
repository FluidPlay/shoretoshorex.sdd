local mapinfo = {
   name        = "Shore to Shore X",
   shortname   = "Shore to Shore",
   description = "Shore to Shore * 12 Players *",
   author      = "MaDDoX",
   version     = "0.1",
   modtype     = 3, --// 3=map

   maphardness     = 10,
   notDeformable   = false,
   gravity         = 120,
   tidalStrength   = 15, --20
   maxMetal        = 1.175, --1.0,
   extractorRadius = 100,
   voidWater       = false,
   voidGround      = false,
   autoShowMetal   = true,
   
   resources = {
		--grassBladeTex = "",
		--grassShadingTex = "",
--		detailTex = "detailtexblurred.bmp",
--		specularTex = "specular.png",
--		splatDetailTex = "detailtex.tga",
--		splatDetailNormalDiffuseAlpha = 1,
--		splatDetailNormalTex1 = "sandpebbles_NORM.tga";
--		splatDetailNormalTex2 = "earth_NORM.tga";
--		splatDetailNormalTex3 = "dirt_265_dnts_u8888.dds";
--		splatDetailNormalTex4 = "rock_77_highpass_dnts.tga";
		--splatDistrTex = "splatmap.tga",
		--splatDetailNormalDiffuseAlpha = 1,
		--splatDetailNormalTex1 = "cliff_nrm_height_lo.tga";
		--splatDetailNormalTex2 = "dirt_nrm_height_lo.tga";
		--splatDetailNormalTex3 = "sand_nrm_height_lo.tga";
		--splatDetailNormalTex4 = "sandstones_nrm_height_lo.tga";
--		splatDistrTex = "detaildist.png",
		--skyReflectModTex = "",
		detailNormalTex = "normal.tga",
		--lightEmissionTex = "",
	},   

--[[<Hourglass>	atmosphere = {
		--FogColor={0.63, 0.74, 0.28};
		--CloudColor={1, 0.89, 0.7};
		--SkyColor={0.63, 0.74, 0.28};
		--SunColor={1, 0.99, 0.81};
		--FogStart=0.9;
		--CloudDensity=0.3;
		--MinWind=6;
		--MaxWind=11;
	}, ]]
	
   splats = {
		texScales = {0.004, 0.007, 0.008, 0.0015}, -- cliff, dirt, sand, sandstones
		texMults  = {0.18, 0.36, 0.36, 0.026},
	},

   atmosphere = {
		minWind      = 9.0,
		maxWind      = 24.0,

		fogStart     = 0.7,
		fogEnd       = 1.0,
		fogColor     = {0.7, 0.7, 0.8},

		sunColor     = {1.0, 0.8, 0.8},
		skyColor     = {0.1, 0.15, 0.5},
		skyDir       = {1.0, 0.8, 1.0},
		skyBox       = "",

		cloudDensity = 0.1,
		cloudColor   = {1.0, 1.0, 1.0},
	},	

   terrainTypes = {
--      [0] = {
         --name = "Earth",
         --hardness = 15,
         --receiveTracks = true,
         --moveSpeeds = {
            --tank  = 1.0,
            --kbot  = 1.0,
            --hover = 1.0,
            --ship  = 1.0,
         --},
      --},
	[0] = {
		name = "Default",
		hardness = 1.0,
		receiveTracks = true,
		moveSpeeds = {
			tank  = 1.0,
			kbot  = 1.0,
			hover = 1.0,
			ship  = 1.0,
		},
	},	  
    [50]  = { 
         name = "LowerLands",
         hardness = 15,
         receiveTracks = true,
         moveSpeeds = {
            tank  = 1.1,
            kbot  = 1.0,
            hover = 1.0,
            ship  = 1.0,
         },
		 },
	[100]  = { 
         name = "RockSand",
         hardness = 13,
         receiveTracks = true,
         moveSpeeds = {
            tank  = 1,
            kbot  = 0.9,
            hover = 1,
            ship  = 1,
         },
		 },
	[150]  = { 
         name = "GrassnBushes",
         hardness = 20,
         receiveTracks = true,
         moveSpeeds = {
            tank  = 0.9,
            kbot  = 1,
            hover = 0.9,
            ship  = 1,
         },
		 },
	[255]  = { 
         name = "Rock",
         hardness = 50,
         receiveTracks = true,
         moveSpeeds = {
            tank  = 1,
            kbot  = 1,
            hover = 1,
            ship  = 1,
         },
		},
	},

   lighting = {
		--// dynsun
		sunStartAngle = 0.0,
		sunOrbitTime  = 1440.0,
		sunDir        = {0.25, .2, 0.25},

		--// unit & ground lighting
		groundAmbientColor  = {0.2, 0.2, 0.34},
		groundDiffuseColor  = {0.9, 0.9, 0.9},
		groundSpecularColor = {0.5, 0.5, 0.5},
		groundShadowDensity = 0.8,
		unitAmbientColor    = {0.4, 0.4, 0.4},
		unitDiffuseColor    = {1.0, 1.0, 1.0},
		unitSpecularColor   = {0.3, 0.3, 0.3},
		unitShadowDensity   = 0.8,

		specularExponent    = 100.0,
	},

   water = {
		damage =  0.0,

		repeatX = 0.0,
		repeatY = 0.0,

		absorb    = {0.004, 0.004, 0.002},
		baseColor = {0.4, 0.6, 0.8},
		minColor  = {0.1, 0.1, 0.23},

		ambientFactor  = 1.3,
		--diffuseFactor  = 0.3,
		specularFactor = 0.5,
		specularPower  = 2.0,

		--planeColor = {0.0, 0.0, 0.0},

		surfaceColor  = {0.65, 0.7, 0.75},
		surfaceAlpha  = 0.1,
		--diffuseColor  = {0.55, 0.4, 0.3},
		specularColor = {0.5, 0.5, 0.5},

		fresnelMin   = 0.3,
		fresnelMax   = 0.8,
		fresnelPower = 4.0,

		reflectionDistortion = 1.0,

		blurBase      = 2.0,
		blurExponent = 1.5,

		perlinStartFreq  =  8.0,
		perlinLacunarity = 3.0,
		perlinAmplitude  =  0.9,
		windSpeed = 1.0, --// does nothing yet

		shoreWaves = true,
		forceRendering = false,

		--// undefined == load them from resources.lua!
		--texture =       "",
		--foamTexture =   "",
		--normalTexture = "",
		--caustics = {
		--	"",
		--	"",
		--},
	},

   teams = {
      [0] = {startPos = {x = 320, z = 9200}},
      [1] = {startPos = {x = 1536, z = 9256}},   
	  [2] = {startPos = {x = 280, z = 7680}},
      [3] = {startPos = {x = 1900, z = 7340}},  
	  [4] = {startPos = {x = 410, z = 1040}},
      [5] = {startPos = {x = 1820, z = 1740}},  
	  [6] = {startPos = {x = 1050, z = 3390}},
      [7] = {startPos = {x = 1490, z = 4450}},  
	  [8] = {startPos = {x = 7900, z = 990}},
      [9] = {startPos = {x = 6690, z = 970}},  
      [10] = {startPos = {x = 7950, z = 2560}},
      [11] = {startPos = {x = 6350, z = 2910}},   
	  [12] = {startPos = {x = 7790, z = 9210}},
   },

   custom = {
	   fog = {
		   color    = {0.6, 0.6, 0.6},
		   height   = "11%", --// allows either absolue sizes or in percent of map's MaxHeight
		   fogatten = 0.008,
	   },
	   --precipitation = {
		--   weather = "snow",
		--   density   = 17500,
		--   size      = 1.2,
		--   speed     = 20,
		--   windscale = 1,
		--   texture   = 'LuaUI/effects/snowflake.png',
	   --},
	   pbr = {
		   enabled = true,
		   textures = {
			   --- Hilltops
			   [2] = "dirt_dfs_metal_lo.dds",
			   [3] = "dirt_nrm_height_lo.tga",
			   	--- Cliff Sides
				[4] = "cliff_dfs_metal_lo.dds", --diffuse RGB + metallic A
				[5] = "cliff_nrm_height_lo.tga", -- Normal RGB + height A"
				--- Beach Sand
				[6] = "sand_dfs_metal_lo.dds",
				[7] = "sand_nrm_height_lo.tga",
				--- Seabed
				[8] ="sandstones_dfs_metal_lo.dds",
				[9] ="sandstones_nrm_height_lo.tga",
				-- Splatmap
				[20]="splatmap.tga",
		   },
		   --splatDetailNormalDiffuseAlpha = 1,
		   --splatDetailNormalTex1 = "cliff_nrm_height_lo.tga";
		   --splatDetailNormalTex2 = "dirt_nrm_height_lo.tga";
		   --splatDetailNormalTex3 = "sand_nrm_height_lo.tga";
		   --splatDetailNormalTex4 = "sandstones_nrm_height_lo.tga";
		   definitions = {
			   ["SUN_COLOR"] = "vec3(1.0)",
			   ["SHADOW_SAMPLES"] = "8",
			   --["WEIGHT_CUTOFF"] = "0.3",
			   ["MAT_BLENDING_HEIGHT_SMOOTHNESS"] = "0.2",
			   --["PBR_SCHLICK_SMITH_GGX"] = "PBR_SCHLICK_SMITH_GGX_THIN",
			   --["PBR_BRDF_DIFFUSE"] = "PBR_DIFFUSE_LAMBERT",
			   --["IBL_DIFFUSECOLOR"] = "vec3(0.6, 0.77, 0.77)",
			   --["IBL_SPECULARCOLOR"] = "vec3(0.6, 0.77, 0.77)",
			   --["IBL_DIFFUSECOLOR"] = "vec3(1.0)",
			   --["IBL_SPECULARCOLOR"] = "vec3(1.0)",

			   --["OUTPUT_EXPOSURE(preExpColor)"] = "1.4 * preExpColor",
			   --["OUTPUT_TONEMAPPING(preTMColor)"] = "SteveMTM2(preTMColor)"
		   },
		   ----- Hilltops (Red)
		   --[2] = "dirt_dfs_metal_lo.dds",
		   --[3] = "dirt_nrm_height_lo.tga",
		   ----- Cliff Sides (Green)
		   --[4] = "cliff_dfs_metal_lo.dds", --diffuse RGB + metallic A
		   --[5] = "cliff_nrm_height_lo.tga", -- Normal RGB + height A"
		   ----- Beach Sand (Blue)
		   --[6] = "sand_dfs_metal_lo.dds",
		   --[7] = "sand_nrm_height_lo.tga",
		   ----- Seabed (Alpha)
		   --[8] ="sandstones_dfs_metal_lo.tga",
		   --[9] ="sandstones_nrm_metal_lo.tga",
		   ---- Splatmap
		   --[20]="splatmap.tga",
		   splats = {
			   --[[
                               {
                                   workflow = "SPECULAR",
                                   --specularF0 = "0.01",
                                   --weight = "1.0",
                                   --weight = "texture(tex20, (mapTexCoords)).g",
                                   --weight = "1.0",
                                   weight = "mapTexCoords.x",
                                   diffuseColor = "fromSRGB(texture(tex2, 15.0 * mapTexCoords).rgb)",
                                   specularColor = "fromSRGB(texture(tex3, 15.0 * mapTexCoords).rgb)",
                                   occlusion = "texture(tex5, 15.0 * mapTexCoords).r",
                                   --blendNormal = "OGLUnpackNormals(texture(tex4, 15.0 * mapTexCoords).xyz)",
                                   --blendNormalStrength = "vec3(0.0)",
                                   roughness = "0.0",


                                   --height = "texture(tex10, 15.0 * mapTexCoords).r",
                                   height = "0.1",
                               },
               ]]--
			   {   --- Hilltops (Red)
				   workflow = "METALNESS",
				   weight = "texture(tex20, (mapTexCoords)).r",
				   baseColor = "texture(tex2, 1.0 * mapTexCoords).rgb",
				   roughness = "texture(tex2, 1.0 * mapTexCoords).a",
				   blendNormal = "DXUnpackNormals(texture(tex3, 1.0 * mapTexCoords).rgb)",
				   height = "texture(tex3, 1.0 * mapTexCoords).a",

				   --occlusion = "texture(tex5, 1.0 * mapTexCoords).r",
				   metalness = "0.0",
				   specularF0 = "0.004",
			   },
			   {   --- Cliff Sides (Green)
				   workflow = "METALNESS",
				   weight = "texture(tex20, (mapTexCoords)).g",
				   baseColor = "texture(tex4, 1.0 * mapTexCoords).rgb",
				   roughness = "texture(tex4, 1.0 * mapTexCoords).a",
				   blendNormal = "DXUnpackNormals(texture(tex5, 1.0 * mapTexCoords).rgb)",
				   height = "texture(tex5, 1.0 * mapTexCoords).a",

				   --occlusion = "texture(tex5, 1.0 * mapTexCoords).r",
				   metalness = "0.0",
				   specularF0 = "0.004",
			   },
			   {   --- Beach Sand (Blue)
				   workflow = "METALNESS",
				   weight = "texture(tex20, (mapTexCoords)).b",
				   baseColor = "texture(tex6, 1.0 * mapTexCoords).rgb",
				   roughness = "texture(tex6, 1.0 * mapTexCoords).a",
				   blendNormal = "DXUnpackNormals(texture(tex7, 1.0 * mapTexCoords).rgb)",
				   height = "texture(tex7, 1.0 * mapTexCoords).a",

				   --occlusion = "texture(tex5, 1.0 * mapTexCoords).r",
				   metalness = "0.0",
				   specularF0 = "0.004",
			   },
			   {   --- Seabed (Alpha)
				   workflow = "METALNESS",
				   weight = "texture(tex20, (mapTexCoords)).a",
				   baseColor = "texture(tex8, 1.0 * mapTexCoords).rgb",
				   roughness = "texture(tex8, 1.0 * mapTexCoords).a",
				   blendNormal = "DXUnpackNormals(texture(tex9, 1.0 * mapTexCoords).rgb)",
				   height = "texture(tex9, 1.0 * mapTexCoords).a",

				   --occlusion = "texture(tex5, 1.0 * mapTexCoords).r",
				   metalness = "0.0",
				   specularF0 = "0.004",
			   },
			   --{ },
			   --{ },
		   },
	   },
   },		--custom

smf = {
      minHeight = -200, -- -25, -350, -110
      maxHeight = 320, --550, 325, 305
	  smtFileName0 = "maps/shoretoshorex.smt",
	},
}

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- Helper

local function lowerkeys(ta)
	local fix = {}
	for i,v in pairs(ta) do
		if (type(i) == "string") then
			if (i ~= i:lower()) then
				fix[#fix+1] = i
			end
		end
		if (type(v) == "table") then
			lowerkeys(v)
		end
	end

	for i=1,#fix do
		local idx = fix[i]
		ta[idx:lower()] = ta[idx]
		ta[idx] = nil
	end
end

lowerkeys(mapinfo)

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- Map Options

if (Spring and Spring.GetMapOptions) then
	local function tmerge(t1, t2)
		for i,v in pairs(t2) do
			if (type(v) == "table") then
				t1[i] = t1[i] or {}
				tmerge(t1[i], v)
			else
				t1[i] = v
			end
		end
	end

	getfenv()["mapinfo"] = mapinfo
	local files = VFS.DirList("mapconfig/mapinfo/", "*.lua")
	table.sort(files)
	for i=1,#files do
		local newcfg = VFS.Include(files[i])
		if newcfg then
			lowerkeys(newcfg)
			tmerge(mapinfo, newcfg)
		end
	end
	getfenv()["mapinfo"] = nil
end

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

return mapinfo

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------