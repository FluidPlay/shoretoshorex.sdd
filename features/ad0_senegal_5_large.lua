local objectname= "ad0_senegal_5_large" 
local featureDef	=	{
	name			= "ad0_senegal_5_large",
	world				="All Worlds",
	description				="Palm Tree",
	category				="Vegetation",
	object				="ad0_senegal_5_large.s3o",
	footprintx				=1,
	footprintz				=1,
	height				=30,
	blocking				=true,
	upright				=true,
	hitdensity				=0,
	energy				=250,
	metal				=0,
	damage				=27,
	flammable				=true,
	reclaimable				=true,
	autoreclaimable				=true,
	featurereclamate				="smudge01",
	seqnamereclamate				="tree1reclamate",
} 
return lowerkeys({[objectname] = featureDef}) 
