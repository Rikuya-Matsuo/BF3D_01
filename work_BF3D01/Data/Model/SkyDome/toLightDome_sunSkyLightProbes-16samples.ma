//Maya ASCII 5.0 scene
//Name: toLightDome_sunSkyLightProbes-16samples.ma
//Last modified: Wed, Aug 18, 2004 03:24:11 PM
requires maya "5.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya Unlimited 5.0";
fileInfo "version" "5.0.1";
fileInfo "cutIdentifier" "200309220008";
fileInfo "osv" "Microsoft Windows 2000 Professional Service Pack 2 (Build 2195)\n";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 4.0681404790313955 2.3062352800551773 3.2670542462272998 ;
	setAttr ".r" -type "double3" -20.138352729602595 51.000000000000085 0 ;
createNode camera -s -n "perspShape" -p "persp";
	addAttr -ci true -sn "dfp" -ln "displayFilmPivot" -bt "DFBP" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -sn "dfo" -ln "displayFilmOrigin" -bt "DFBO" -min 0 -max 
		1 -at "bool";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 5.6960665280510661;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -2.2204460492503131e-016 0 0 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 100 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	addAttr -ci true -sn "dfp" -ln "displayFilmPivot" -bt "DFBP" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -sn "dfo" -ln "displayFilmOrigin" -bt "DFBO" -min 0 -max 
		1 -at "bool";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 100 ;
createNode camera -s -n "frontShape" -p "front";
	addAttr -ci true -sn "dfp" -ln "displayFilmPivot" -bt "DFBP" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -sn "dfo" -ln "displayFilmOrigin" -bt "DFBO" -min 0 -max 
		1 -at "bool";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	addAttr -ci true -sn "dfp" -ln "displayFilmPivot" -bt "DFBP" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -sn "dfo" -ln "displayFilmOrigin" -bt "DFBO" -min 0 -max 
		1 -at "bool";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "testObjs";
	addAttr -ci true -h true -sn "dfm" -ln "miDeriveFromMaya" -bt "UNKN" -dv 
		1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "hde" -ln "miHide" -bt "UNKN" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "vsb" -ln "miVisible" -bt "UNKN" -dv 2 -at "short";
	addAttr -ci true -sn "trc" -ln "miTrace" -bt "UNKN" -dv 2 -at "short";
	addAttr -ci true -sn "shd" -ln "miShadow" -bt "UNKN" -dv 2 -at "short";
	addAttr -ci true -sn "cst" -ln "miCaustic" -bt "UNKN" -dv 5 -at "short";
	addAttr -ci true -sn "glb" -ln "miGlobillum" -bt "UNKN" -dv 5 -at "short";
	addAttr -ci true -sn "mieg" -ln "miExportGeoShader" -bt "UNKN" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -sn "migs" -ln "miGeoShader" -bt "UNKN" -at "message";
createNode transform -n "nurbsPlane1" -p "testObjs";
	setAttr ".s" -type "double3" 10 10 10 ;
createNode nurbsSurface -n "nurbsPlaneShape1" -p "nurbsPlane1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".csh" no;
	setAttr ".dvu" 3;
	setAttr ".dvv" 3;
	setAttr ".cpr" 15;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 0 no 
		6 0 0 0 1 1 1
		6 0 0 0 1 1 1
		
		16
		-0.5 -3.0615158845559431e-017 0.5
		-0.5 -1.0205052948519812e-017 0.16666666666666669
		-0.5 1.0205052948519809e-017 -0.16666666666666663
		-0.5 3.0615158845559431e-017 -0.5
		-0.16666666666666669 -3.0615158845559431e-017 0.5
		-0.16666666666666669 -1.0205052948519812e-017 0.16666666666666669
		-0.16666666666666669 1.0205052948519809e-017 -0.16666666666666663
		-0.16666666666666669 3.0615158845559431e-017 -0.5
		0.16666666666666663 -3.0615158845559431e-017 0.5
		0.16666666666666663 -1.0205052948519812e-017 0.16666666666666669
		0.16666666666666663 1.0205052948519809e-017 -0.16666666666666663
		0.16666666666666663 3.0615158845559431e-017 -0.5
		0.5 -3.0615158845559431e-017 0.5
		0.5 -1.0205052948519812e-017 0.16666666666666669
		0.5 1.0205052948519809e-017 -0.16666666666666663
		0.5 3.0615158845559431e-017 -0.5
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "nurbsSphere1" -p "testObjs";
	setAttr ".t" -type "double3" 0 0.74984945849999907 -0.77018039972722196 ;
	setAttr ".s" -type "double3" 0.79804463416957816 0.79804463416957816 0.79804463416957816 ;
createNode nurbsSurface -n "nurbsSphereShape1" -p "nurbsSphere1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".cc" -type "nurbsSurface" 
		3 3 0 2 no 
		9 0 0 0 1 2 3 4 4 4
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		
		77
		9.5961577477087039e-017 -1 -2.5315347264529299e-016
		9.5961577477087039e-017 -1 -2.5315347264529299e-016
		9.5961577477087039e-017 -1 -2.5315347264529299e-016
		9.5961577477087039e-017 -1 -2.5315347264529299e-016
		9.5961577477087039e-017 -1 -2.5315347264529299e-016
		9.5961577477087039e-017 -1 -2.5315347264529299e-016
		9.5961577477087039e-017 -1 -2.5315347264529299e-016
		9.5961577477087039e-017 -1 -2.5315347264529299e-016
		9.5961577477087039e-017 -1 -2.5315347264529299e-016
		9.5961577477087039e-017 -1 -2.5315347264529299e-016
		9.5961577477087039e-017 -1 -2.5315347264529299e-016
		0.19991679083637262 -1 -0.19991679083637287
		0.2827250369469036 -1 -9.0530858139317832e-017
		0.19991679083637276 -1 0.19991679083637259
		5.054373833591431e-017 -1 0.28272503694690354
		-0.19991679083637259 -1 0.1999167908363727
		-0.28272503694690371 -1 1.7637684495082576e-017
		-0.19991679083637268 -1 -0.19991679083637276
		-7.8868002186201414e-017 -1 -0.28272503694690365
		0.19991679083637262 -1 -0.19991679083637287
		0.2827250369469036 -1 -9.0530858139317832e-017
		0.19991679083637276 -1 0.19991679083637259
		0.61642997969058932 -0.78361162489122427 -0.61642997969058966
		0.87176363753180319 -0.78361162489122427 1.7727516578747309e-017
		0.61642997969058944 -0.78361162489122427 0.61642997969058932
		-2.0633328330873783e-019 -0.78361162489122427 0.87176363753180319
		-0.61642997969058921 -0.78361162489122427 0.61642997969058944
		-0.87176363753180353 -0.78361162489122427 3.914884069012388e-017
		-0.61642997969058932 -0.78361162489122427 -0.61642997969058944
		-8.7129629428667406e-017 -0.78361162489122427 -0.87176363753180319
		0.61642997969058932 -0.78361162489122427 -0.61642997969058966
		0.87176363753180319 -0.78361162489122427 1.7727516578747309e-017
		0.61642997969058944 -0.78361162489122427 0.61642997969058932
		0.86720244749154174 1.4861664477372013e-016 -0.86720244749154196
		1.2264094625656803 9.5517563411297176e-017 1.6724254526563002e-016
		0.86720244749154174 4.2418482048874259e-017 0.86720244749154185
		-7.5093441012290953e-017 2.0424122399006235e-017 1.2264094625656803
		-0.86720244749154163 4.2418482048874265e-017 0.86720244749154174
		-1.2264094625656807 9.5517563411297188e-017 4.7772031325494453e-017
		-0.86720244749154152 1.4861664477372013e-016 -0.86720244749154196
		-4.7772031325494446e-017 1.7061100442358815e-016 -1.2264094625656803
		0.86720244749154174 1.4861664477372013e-016 -0.86720244749154196
		1.2264094625656803 9.5517563411297176e-017 1.6724254526563002e-016
		0.86720244749154174 4.2418482048874259e-017 0.86720244749154185
		0.61642997969058955 0.78361162489122449 -0.61642997969058966
		0.87176363753180341 0.78361162489122449 2.2003315644449237e-016
		0.61642997969058955 0.78361162489122449 0.61642997969058966
		-1.0655039567196669e-016 0.78361162489122449 0.87176363753180341
		-0.61642997969058944 0.78361162489122449 0.61642997969058955
		-0.87176363753180375 0.78361162489122449 2.8766355778552965e-017
		-0.61642997969058932 0.78361162489122449 -0.61642997969058977
		1.9214432959990524e-017 0.78361162489122449 -0.87176363753180341
		0.61642997969058955 0.78361162489122449 -0.61642997969058966
		0.87176363753180341 0.78361162489122449 2.2003315644449237e-016
		0.61642997969058955 0.78361162489122449 0.61642997969058966
		0.1999167908363727 0.99999999999999989 -0.19991679083637259
		0.28272503694690354 0.99999999999999989 1.6763994157773291e-016
		0.19991679083637259 0.99999999999999989 0.19991679083637279
		-8.5166425998898734e-017 0.99999999999999989 0.2827250369469036
		-0.19991679083637268 0.99999999999999989 0.19991679083637265
		-0.28272503694690365 0.99999999999999989 4.388155542507171e-018
		-0.19991679083637254 0.99999999999999989 -0.1999167908363727
		5.684216214861163e-017 0.99999999999999989 -0.28272503694690349
		0.1999167908363727 0.99999999999999989 -0.19991679083637259
		0.28272503694690354 0.99999999999999989 1.6763994157773291e-016
		0.19991679083637259 0.99999999999999989 0.19991679083637279
		4.3499183415908449e-017 1 1.136927117522975e-016
		4.3499183415908449e-017 1 1.136927117522975e-016
		4.3499183415908449e-017 1 1.136927117522975e-016
		4.3499183415908449e-017 1 1.136927117522975e-016
		4.3499183415908449e-017 1 1.136927117522975e-016
		4.3499183415908449e-017 1 1.136927117522975e-016
		4.3499183415908449e-017 1 1.136927117522975e-016
		4.3499183415908449e-017 1 1.136927117522975e-016
		4.3499183415908449e-017 1 1.136927117522975e-016
		4.3499183415908449e-017 1 1.136927117522975e-016
		4.3499183415908449e-017 1 1.136927117522975e-016
		
		;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "pCube1" -p "testObjs";
	setAttr ".t" -type "double3" 0 0.49750128083747713 1.2290792136575877 ;
createNode mesh -n "pCubeShape1" -p "pCube1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0 0 1 0 
		0 1 1 1 0 2 1 2 0 3 1 3 0 4 1 4 2 0 2 1 -1 0 -1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 
		0.5 0.5 0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 
		0 4 5 0 6 7 0 0 2 0 1 
		3 0 2 4 0 3 5 0 4 6 0 
		5 7 0 6 0 0 7 1 0;
	setAttr -s 6 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5 
		mu 0 4 0 1 3 2 
		f 4 1 7 -3 -7 
		mu 0 4 2 3 5 4 
		f 4 2 9 -4 -9 
		mu 0 4 4 5 7 6 
		f 4 3 11 -1 -11 
		mu 0 4 6 7 9 8 
		f 4 -12 -10 -8 -6 
		mu 0 4 1 10 11 3 
		f 4 10 4 6 8 
		mu 0 4 12 0 2 13 ;
createNode transform -n "README";
	addAttr -ci true -h true -sn "dfm" -ln "miDeriveFromMaya" -bt "UNKN" -dv 
		1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "hde" -ln "miHide" -bt "UNKN" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "vsb" -ln "miVisible" -bt "UNKN" -dv 2 -at "short";
	addAttr -ci true -sn "trc" -ln "miTrace" -bt "UNKN" -dv 2 -at "short";
	addAttr -ci true -sn "shd" -ln "miShadow" -bt "UNKN" -dv 2 -at "short";
	addAttr -ci true -sn "cst" -ln "miCaustic" -bt "UNKN" -dv 5 -at "short";
	addAttr -ci true -sn "glb" -ln "miGlobillum" -bt "UNKN" -dv 5 -at "short";
	addAttr -ci true -sn "mieg" -ln "miExportGeoShader" -bt "UNKN" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -sn "migs" -ln "miGeoShader" -bt "UNKN" -at "message";
	addAttr -ci true -sn "nts" -ln "notes" -dt "string";
	setAttr ".nts" -type "string" (
		"* Each light group is named after the light map image it was generated from, use one at a time. \r\n"
		+ "\r\n"
		+ "* You will find basic controls attached to the light group itself (e.g. light intensity, shadows etc). \r\n"
		+ "\r\n"
		+ "* The light dome sphere has a texture attached ready for the appropriate lat/long image (I didn't include them to keep the size down). You can find them all through Paul Debevec's awesome site www.debevec.org Make sure the lat/long image is oriented correctly after unwrapping the angular light map.\r\n"
		+ "\r\n"
		+ "* Intensity values will need to be tweaked as the light domes are generated in batch direct from the HDR map\r\n"
		+ "\r\n"
		+ "aug2004\r\n"
		+ "jeremy pronk\r\n"
		+ "www.thereisnoluck.com");
createNode transform -n "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData";
	addAttr -ci true -sn "intensity" -ln "intensity" -dv 0.10000000000000001 
		-at "double";
	addAttr -ci true -sn "emitSpecular" -ln "emitSpecular" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "useDepthMapShadows" -ln "useDepthMapShadows" -dv 1 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "dmapResolution" -ln "dmapResolution" -dv 512 -at "short";
	addAttr -ci true -sn "dmapFilterSize" -ln "dmapFilterSize" -dv 6 -at "short";
	addAttr -ci true -sn "reuseDmap" -ln "reuseDmap" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "dmapSceneName" -ln "dmapSceneName" -dv 1 -min 0 -max 
		1 -at "bool";
	addAttr -ci true -sn "dmapLightName" -ln "dmapLightName" -dv 1 -min 0 -max 
		1 -at "bool";
	addAttr -ci true -sn "dmapFrameExt" -ln "dmapFrameExt" -dv 1 -min 0 -max 
		1 -at "bool";
	addAttr -ci true -sn "useRayTraceShadows" -ln "useRayTraceShadows" -min 
		0 -max 1 -at "bool";
	addAttr -ci true -sn "shadowRays" -ln "shadowRays" -dv 1 -at "short";
	addAttr -ci true -sn "rayDepthLimit" -ln "rayDepthLimit" -dv 1 -at "short";
	addAttr -ci true -h true -sn "dfm" -ln "miDeriveFromMaya" -bt "UNKN" -dv 
		1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "hde" -ln "miHide" -bt "UNKN" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "vsb" -ln "miVisible" -bt "UNKN" -dv 2 -at "short";
	addAttr -ci true -sn "trc" -ln "miTrace" -bt "UNKN" -dv 2 -at "short";
	addAttr -ci true -sn "shd" -ln "miShadow" -bt "UNKN" -dv 2 -at "short";
	addAttr -ci true -sn "cst" -ln "miCaustic" -bt "UNKN" -dv 5 -at "short";
	addAttr -ci true -sn "glb" -ln "miGlobillum" -bt "UNKN" -dv 5 -at "short";
	addAttr -ci true -sn "mieg" -ln "miExportGeoShader" -bt "UNKN" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -sn "migs" -ln "miGeoShader" -bt "UNKN" -at "message";
	setAttr ".v" no;
	setAttr -k on ".intensity" 1;
	setAttr -k on ".emitSpecular";
	setAttr -k on ".useDepthMapShadows";
	setAttr -k on ".dmapResolution";
	setAttr -k on ".dmapFilterSize";
	setAttr -k on ".reuseDmap";
	setAttr -k on ".dmapSceneName";
	setAttr -k on ".dmapLightName";
	setAttr -k on ".dmapFrameExt";
	setAttr -k on ".useRayTraceShadows";
	setAttr -k on ".shadowRays";
	setAttr -k on ".rayDepthLimit";
createNode transform -n "isLight1" -p "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" 8.9713368358778123 14.140695363356816 10.934159776496816 ;
	setAttr ".r" -type "double3" -44.99416519247383 39.368435841533071 1.8513527902227532e-014 ;
createNode directionalLight -n "isLightShape1" -p "isLight1";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.060172024188415024 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.060744483 0.081254035 0.093562588 ;
	setAttr -l on ".cl";
createNode transform -n "isLight2" -p "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" -14.584484005727498 1.8343605426655387 -13.562003822672756 ;
	setAttr ".r" -type "double3" 174.73754834854532 -47.08047446897195 -179.99999999999997 ;
createNode directionalLight -n "isLightShape2" -p "isLight2";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.047494669000636543 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.028484378 0.030495435 0.029263565 ;
	setAttr -l on ".cl";
createNode transform -n "isLight3" -p "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" -14.404069382949938 0.11866021473479108 13.874750627114107 ;
	setAttr ".r" -type "double3" -0.33993846938601874 -46.072328675879852 6.3012972237401484e-012 ;
createNode directionalLight -n "isLightShape3" -p "isLight3";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.095680856142584342 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.0099449409 0.011335235 0.011434981 ;
	setAttr -l on ".cl";
createNode transform -n "isLight4" -p "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" 9.6105832473520536 10.06843050580561 -14.361873025322257 ;
	setAttr ".r" -type "double3" 149.77337435374568 33.789384950801605 180 ;
createNode directionalLight -n "isLightShape4" -p "isLight4";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.028897278803309993 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.028979737 0.039075132 0.045294836 ;
	setAttr -l on ".cl";
createNode transform -n "isLight5" -p "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" -10.122890436383715 17.216634336922638 1.0557420715627139 ;
	setAttr ".r" -type "double3" -59.41009665425949 -84.046001794730088 -3.0661875667562815e-014 ;
createNode directionalLight -n "isLightShape5" -p "isLight5";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.053444064290260981 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.056706104 0.067302853 0.072073109 ;
	setAttr -l on ".cl";
createNode transform -n "isLight6" -p "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" 19.993622908610071 0.11866021473479108 0.49087955930317417 ;
	setAttr ".r" -type "double3" -0.33993846941895822 88.593567662264803 -3.7489162695976344e-011 ;
createNode directionalLight -n "isLightShape6" -p "isLight6";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.079377227880330997 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.027117942 0.037136253 0.042271402 ;
	setAttr -l on ".cl";
createNode transform -n "isLight7" -p "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" 2.4444434530756873 0.11866021473479108 19.849700651600632 ;
	setAttr ".r" -type "double3" -0.33993846938343319 7.0204920736235081 -1.5991231718222435e-011 ;
createNode directionalLight -n "isLightShape7" -p "isLight7";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.1225352482495226 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.021797799 0.027251557 0.029355491 ;
	setAttr -l on ".cl";
createNode transform -n "isLight8" -p "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" 4.7089697272569611 19.208406512799133 -2.9770326412105854 ;
	setAttr ".r" -type "double3" 106.17397188395471 57.698734692299908 180 ;
createNode directionalLight -n "isLightShape8" -p "isLight8";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.04950628580521961 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.044010252 0.055900045 0.063049696 ;
	setAttr -l on ".cl";
createNode transform -n "isLight9" -p "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" -19.33476228540437 5.09402040727442 0.46682272564269345 ;
	setAttr ".r" -type "double3" -14.755869931167311 -88.616906892369457 1.9765487037754276e-013 ;
createNode directionalLight -n "isLightShape9" -p "isLight9";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.048226129853596436 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.037157558 0.041747861 0.042158443 ;
	setAttr -l on ".cl";
createNode transform -n "isLight10" -p "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" -5.561417920159526 12.399309025924261 14.674050783507656 ;
	setAttr ".r" -type "double3" -38.31361158823168 -20.756546596646395 2.8060875003717749e-014 ;
createNode directionalLight -n "isLightShape10" -p "isLight10";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.035855585614258438 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.034068372 0.040449265 0.043038126 ;
	setAttr -l on ".cl";
createNode transform -n "isLight11" -p "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" -11.902446152373857 7.3093718527498499 14.314498199659983 ;
	setAttr ".r" -type "double3" -21.436423535409418 -39.743383156071488 7.1353166778493005e-014 ;
createNode directionalLight -n "isLightShape11" -p "isLight11";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.025889560789306175 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.026471419 0.030856352 0.032185458 ;
	setAttr -l on ".cl";
createNode transform -n "isLight12" -p "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" -15.418923577114549 1.3449888097024034 -12.666799154675044 ;
	setAttr ".r" -type "double3" 176.14398068628054 -50.59655531330997 -180 ;
createNode directionalLight -n "isLightShape12" -p "isLight12";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.02052975811584978 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.0072549758 0.0065140664 0.0053482791 ;
	setAttr -l on ".cl";
createNode transform -n "isLight13" -p "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" -3.5602606436054396 9.2082600380336679 -17.393461162791791 ;
	setAttr ".r" -type "double3" 152.58623902921605 -11.568057941158369 180 ;
createNode directionalLight -n "isLightShape13" -p "isLight13";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.057729073838319545 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.084416978 0.096909292 0.099957325 ;
	setAttr -l on ".cl";
createNode transform -n "isLight14" -p "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" 19.999364756791937 0.11866021473479108 -0.10643814272936475 ;
	setAttr ".r" -type "double3" 179.66006153068108 89.695070375775529 -179.99999999993744 ;
createNode directionalLight -n "isLightShape14" -p "isLight14";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.048236473583704649 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.0099824471 0.012637038 0.013705877 ;
	setAttr -l on ".cl";
createNode transform -n "isLight15" -p "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" -17.391909028254801 0.48681595207657646 -9.8632910624047252 ;
	setAttr ".r" -type "double3" 178.60523727731712 -60.441581677456298 -179.99999999999997 ;
createNode directionalLight -n "isLightShape15" -p "isLight15";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.076229789942711651 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.036146514 0.029489607 0.020629434 ;
	setAttr -l on ".cl";
createNode transform -n "isLight16" -p "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" 11.826165412363704 0.11866021473479108 -16.128475792611386 ;
	setAttr ".r" -type "double3" 179.66006153061838 36.250641541838156 179.99999999999974 ;
createNode directionalLight -n "isLightShape16" -p "isLight16";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.11403851050286441 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.021624185 0.025984677 0.026824843 ;
	setAttr -l on ".cl";
createNode transform -n "isLight17" -p "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" 15.488820871958842 10.06843050580561 -7.6631021881569046 ;
	setAttr ".r" -type "double3" 149.77337435374571 63.676072127674423 -180 ;
createNode directionalLight -n "isLightShape17" -p "isLight17";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.036024586250795673 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.032580219 0.047715258 0.057987519 ;
	setAttr -l on ".cl";
createNode transform -n "toLightDome" -p "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData";
createNode nurbsSurface -n "toLightDomeShape" -p "|toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData|toLightDome";
	setAttr -k off ".v";
	setAttr ".csh" no;
	setAttr ".rcsh" no;
	setAttr ".tw" yes;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData";
	addAttr -ci true -sn "intensity" -ln "intensity" -dv 0.10000000000000001 
		-at "double";
	addAttr -ci true -sn "emitSpecular" -ln "emitSpecular" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "useDepthMapShadows" -ln "useDepthMapShadows" -dv 1 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "dmapResolution" -ln "dmapResolution" -dv 512 -at "short";
	addAttr -ci true -sn "dmapFilterSize" -ln "dmapFilterSize" -dv 6 -at "short";
	addAttr -ci true -sn "reuseDmap" -ln "reuseDmap" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "dmapSceneName" -ln "dmapSceneName" -dv 1 -min 0 -max 
		1 -at "bool";
	addAttr -ci true -sn "dmapLightName" -ln "dmapLightName" -dv 1 -min 0 -max 
		1 -at "bool";
	addAttr -ci true -sn "dmapFrameExt" -ln "dmapFrameExt" -dv 1 -min 0 -max 
		1 -at "bool";
	addAttr -ci true -sn "useRayTraceShadows" -ln "useRayTraceShadows" -min 
		0 -max 1 -at "bool";
	addAttr -ci true -sn "shadowRays" -ln "shadowRays" -dv 1 -at "short";
	addAttr -ci true -sn "rayDepthLimit" -ln "rayDepthLimit" -dv 1 -at "short";
	addAttr -ci true -h true -sn "dfm" -ln "miDeriveFromMaya" -bt "UNKN" -dv 
		1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "hde" -ln "miHide" -bt "UNKN" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "vsb" -ln "miVisible" -bt "UNKN" -dv 2 -at "short";
	addAttr -ci true -sn "trc" -ln "miTrace" -bt "UNKN" -dv 2 -at "short";
	addAttr -ci true -sn "shd" -ln "miShadow" -bt "UNKN" -dv 2 -at "short";
	addAttr -ci true -sn "cst" -ln "miCaustic" -bt "UNKN" -dv 5 -at "short";
	addAttr -ci true -sn "glb" -ln "miGlobillum" -bt "UNKN" -dv 5 -at "short";
	addAttr -ci true -sn "mieg" -ln "miExportGeoShader" -bt "UNKN" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -sn "migs" -ln "miGeoShader" -bt "UNKN" -at "message";
	setAttr ".v" no;
	setAttr -k on ".intensity" 0.3;
	setAttr -k on ".emitSpecular";
	setAttr -k on ".useDepthMapShadows";
	setAttr -k on ".dmapResolution";
	setAttr -k on ".dmapFilterSize";
	setAttr -k on ".reuseDmap";
	setAttr -k on ".dmapSceneName";
	setAttr -k on ".dmapLightName";
	setAttr -k on ".dmapFrameExt";
	setAttr -k on ".useRayTraceShadows";
	setAttr -k on ".shadowRays";
	setAttr -k on ".rayDepthLimit";
createNode transform -n "isLight18" -p "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" -14.143574564011823 14.140695363356816 -0.0057613346448020528 ;
	setAttr ".r" -type "double3" 135.0058348075118 -89.976660769895346 180 ;
createNode directionalLight -n "isLightShape18" -p "isLight18";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.044932129217059198 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.38493481 0.40094468 0.38521251 ;
	setAttr -l on ".cl";
createNode transform -n "isLight19" -p "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" 19.999647990738215 0.11866021473479108 0 ;
	setAttr ".r" -type "double3" -0.33993846938148053 89.999999999999886 0 ;
createNode directionalLight -n "isLightShape19" -p "isLight19";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.11481397199236155 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.093942091 0.12267699 0.13665585 ;
	setAttr -l on ".cl";
createNode transform -n "isLight20" -p "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" -0.0040733923790494788 0.11866021473479108 
		19.999647575917773 ;
	setAttr ".r" -type "double3" -0.3399384764312805 -0.011669409661663016 3.4617671888136095e-005 ;
createNode directionalLight -n "isLightShape20" -p "isLight20";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.11265833863781033 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.068745919 0.094223499 0.10892808 ;
	setAttr -l on ".cl";
createNode transform -n "isLight21" -p "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" 0.012220176461250417 0.11866021473479108 -19.999644257354337 ;
	setAttr ".r" -type "double3" 179.66006153061818 0.035008845156947133 180 ;
createNode directionalLight -n "isLightShape21" -p "isLight21";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.090153962444302987 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.21976857 0.2223818 0.20372203 ;
	setAttr -l on ".cl";
createNode transform -n "isLight22" -p "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" 7.121218788529152 17.278768025283885 7.1226693377080688 ;
	setAttr ".r" -type "double3" -59.761704738693375 44.994165192473858 4.4975255769923167e-015 ;
createNode directionalLight -n "isLightShape22" -p "isLight22";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.052190006365372375 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.1015663 0.13320403 0.15509103 ;
	setAttr -l on ".cl";
createNode transform -n "isLight23" -p "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" 10.940837360475543 12.686094382948154 -10.925249981513183 ;
	setAttr ".r" -type "double3" 140.63156415846694 45.040843652683137 180 ;
createNode directionalLight -n "isLightShape23" -p "isLight23";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.053765754296626354 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.17316891 0.20502095 0.2205275 ;
	setAttr -l on ".cl";
createNode transform -n "isLight24" -p "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" -16.284237526836925 0.11866021473479108 11.61075053228666 ;
	setAttr ".r" -type "double3" -0.33993846938092781 -54.510922702291026 -6.7916789254140685e-013 ;
createNode directionalLight -n "isLightShape24" -p "isLight24";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.11766931890515596 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.14617983 0.15819883 0.15472396 ;
	setAttr -l on ".cl";
createNode transform -n "isLight25" -p "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" -16.274772928662522 0.11866021473479108 -11.624013329049161 ;
	setAttr ".r" -type "double3" 179.66006153061926 -54.464244242081712 179.99999999999912 ;
createNode directionalLight -n "isLightShape25" -p "isLight25";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.095743316359007014 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.095323078 0.093268096 0.081363827 ;
	setAttr -l on ".cl";
createNode transform -n "isLight26" -p "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" -5.062673873615684 13.966044384189239 -13.39100210993432 ;
	setAttr ".r" -type "double3" 135.70905097639371 -20.70986813643712 180 ;
createNode directionalLight -n "isLightShape26" -p "isLight26";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.041149188415022284 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.43840384 0.44677666 0.4210003 ;
	setAttr -l on ".cl";
createNode transform -n "isLight27" -p "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" 13.758613949941305 4.6177871529947181 13.761416496353762 ;
	setAttr ".r" -type "double3" -13.349437593432123 44.994165192473822 -1.6303530216597139e-013 ;
createNode directionalLight -n "isLightShape27" -p "isLight27";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.068283975175047737 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.12629257 0.17205331 0.19877201 ;
	setAttr -l on ".cl";
createNode transform -n "isLight28" -p "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" -6.5976629938748514 12.968580114564194 13.721762745047901 ;
	setAttr ".r" -type "double3" -40.423260094834468 -25.679059778719591 1.9410078341883997e-014 ;
createNode directionalLight -n "isLightShape28" -p "isLight28";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.049362110120942077 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.12310643 0.16005519 0.18384568 ;
	setAttr -l on ".cl";
createNode transform -n "isLight29" -p "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" 12.698463174237906 0.11866021473479108 -15.45105021563139 ;
	setAttr ".r" -type "double3" 179.66006153061863 39.415114301742385 -179.99999999999986 ;
createNode directionalLight -n "isLightShape29" -p "isLight29";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.083163510502864413 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.080902226 0.093648054 0.094783954 ;
	setAttr -l on ".cl";
createNode transform -n "isLight30" -p "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" -2.2905459701536852 19.783474161190352 -1.835088355400464 ;
	setAttr ".r" -type "double3" 98.438594026411153 -51.299771482177562 -180 ;
createNode directionalLight -n "isLightShape30" -p "isLight30";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.039717536600891154 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.14213549 0.1601911 0.16656221 ;
	setAttr -l on ".cl";
createNode transform -n "isLight31" -p "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" -15.843388195777811 5.8025262901482595 -10.738609739162079 ;
	setAttr ".r" -type "double3" 163.13448156223004 -55.870676579816966 179.99999999999997 ;
createNode directionalLight -n "isLightShape31" -p "isLight31";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.014077100572883514 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.32486773 0.31414324 0.27622297 ;
	setAttr -l on ".cl";
createNode transform -n "isLight32" -p "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" -15.038008471309121 5.6849623998400105 -11.897037603085922 ;
	setAttr ".r" -type "double3" 163.48608964666383 -51.651379566611347 179.99999999999997 ;
createNode directionalLight -n "isLightShape32" -p "isLight32";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.015666534054742203 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.83920199 0.78488356 0.62085974 ;
	setAttr -l on ".cl";
createNode transform -n "isLight33" -p "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" -15.968040727580259 4.9752386569538993 -10.966707602042176 ;
	setAttr ".r" -type "double3" 165.59573815326664 -55.519068495383145 179.99999999999997 ;
createNode directionalLight -n "isLightShape33" -p "isLight33";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.006520369191597708 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.12083066 0.11162458 0.094905443 ;
	setAttr -l on ".cl";
createNode transform -n "toLightDome" -p "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData";
createNode nurbsSurface -n "toLightDomeShape" -p "|toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData|toLightDome";
	setAttr -k off ".v";
	setAttr ".csh" no;
	setAttr ".rcsh" no;
	setAttr ".tw" yes;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData";
	addAttr -ci true -sn "intensity" -ln "intensity" -dv 0.10000000000000001 
		-at "double";
	addAttr -ci true -sn "emitSpecular" -ln "emitSpecular" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "useDepthMapShadows" -ln "useDepthMapShadows" -dv 1 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "dmapResolution" -ln "dmapResolution" -dv 512 -at "short";
	addAttr -ci true -sn "dmapFilterSize" -ln "dmapFilterSize" -dv 6 -at "short";
	addAttr -ci true -sn "reuseDmap" -ln "reuseDmap" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "dmapSceneName" -ln "dmapSceneName" -dv 1 -min 0 -max 
		1 -at "bool";
	addAttr -ci true -sn "dmapLightName" -ln "dmapLightName" -dv 1 -min 0 -max 
		1 -at "bool";
	addAttr -ci true -sn "dmapFrameExt" -ln "dmapFrameExt" -dv 1 -min 0 -max 
		1 -at "bool";
	addAttr -ci true -sn "useRayTraceShadows" -ln "useRayTraceShadows" -min 
		0 -max 1 -at "bool";
	addAttr -ci true -sn "shadowRays" -ln "shadowRays" -dv 1 -at "short";
	addAttr -ci true -sn "rayDepthLimit" -ln "rayDepthLimit" -dv 1 -at "short";
	setAttr ".v" no;
	setAttr -k on ".intensity" 0.3;
	setAttr -k on ".emitSpecular";
	setAttr -k on ".useDepthMapShadows";
	setAttr -k on ".dmapResolution";
	setAttr -k on ".dmapFilterSize";
	setAttr -k on ".reuseDmap";
	setAttr -k on ".dmapSceneName";
	setAttr -k on ".dmapLightName";
	setAttr -k on ".dmapFrameExt";
	setAttr -k on ".useRayTraceShadows";
	setAttr -k on ".shadowRays";
	setAttr -k on ".rayDepthLimit";
createNode transform -n "isLight34" -p "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" -14.143574564011823 14.140695363356816 -0.0057613346448020528 ;
	setAttr ".r" -type "double3" 135.0058348075118 -89.976660769895346 180 ;
createNode directionalLight -n "isLightShape34" -p "isLight34";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.057730346912794397 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.60755467 0.66068721 0.65896541 ;
	setAttr -l on ".cl";
createNode transform -n "isLight35" -p "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" 19.999647990738215 0.11866021473479108 0 ;
	setAttr ".r" -type "double3" -0.33993846938148053 89.999999999999886 0 ;
createNode directionalLight -n "isLightShape35" -p "isLight35";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.14470202100572885 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.13776273 0.17892638 0.20045508 ;
	setAttr -l on ".cl";
createNode transform -n "isLight36" -p "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" -0.0040733923790494788 0.11866021473479108 
		19.999647575917773 ;
	setAttr ".r" -type "double3" -0.3399384764312805 -0.011669409661663016 3.4617671888136095e-005 ;
createNode directionalLight -n "isLightShape36" -p "isLight36";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.11265833863781033 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.13447598 0.17354584 0.19384579 ;
	setAttr -l on ".cl";
createNode transform -n "isLight37" -p "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" 0.012220176461250417 0.11866021473479108 -19.999644257354337 ;
	setAttr ".r" -type "double3" 179.66006153061818 0.035008845156947133 180 ;
createNode directionalLight -n "isLightShape37" -p "isLight37";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.12885025461489499 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.383167 0.41823074 0.41110468 ;
	setAttr -l on ".cl";
createNode transform -n "isLight38" -p "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" 7.121218788529152 17.278768025283885 7.1226693377080688 ;
	setAttr ".r" -type "double3" -59.761704738693375 44.994165192473858 4.4975255769923167e-015 ;
createNode directionalLight -n "isLightShape38" -p "isLight38";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.066164942711648633 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.12772137 0.17774451 0.21590358 ;
	setAttr -l on ".cl";
createNode transform -n "isLight39" -p "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" 10.940837360475543 12.686094382948154 -10.925249981513183 ;
	setAttr ".r" -type "double3" 140.63156415846694 45.040843652683137 180 ;
createNode directionalLight -n "isLightShape39" -p "isLight39";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.070411998726925523 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.31949875 0.38344198 0.41615903 ;
	setAttr -l on ".cl";
createNode transform -n "isLight40" -p "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" -16.284237526836925 0.11866021473479108 11.61075053228666 ;
	setAttr ".r" -type "double3" -0.33993846938092781 -54.510922702291026 -6.7916789254140685e-013 ;
createNode directionalLight -n "isLightShape40" -p "isLight40";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.11777339274347549 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.28368494 0.30891353 0.30552116 ;
	setAttr -l on ".cl";
createNode transform -n "isLight41" -p "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" -16.274772928662522 0.11866021473479108 -11.624013329049161 ;
	setAttr ".r" -type "double3" 179.66006153061926 -54.464244242081712 179.99999999999912 ;
createNode directionalLight -n "isLightShape41" -p "isLight41";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.10788422978994271 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.64115685 0.65522766 0.60687685 ;
	setAttr -l on ".cl";
createNode transform -n "isLight42" -p "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" -5.062673873615684 13.966044384189239 -13.39100210993432 ;
	setAttr ".r" -type "double3" 135.70905097639371 -20.70986813643712 180 ;
createNode directionalLight -n "isLightShape42" -p "isLight42";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.044935550604710377 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.49890235 0.54353368 0.54201722 ;
	setAttr -l on ".cl";
createNode transform -n "isLight43" -p "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" 13.758613949941305 4.6177871529947181 13.761416496353762 ;
	setAttr ".r" -type "double3" -13.349437593432123 44.994165192473822 -1.6303530216597139e-013 ;
createNode directionalLight -n "isLightShape43" -p "isLight43";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.068283975175047737 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.20048912 0.25399834 0.28263405 ;
	setAttr -l on ".cl";
createNode transform -n "isLight44" -p "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" -6.5976629938748514 12.968580114564194 13.721762745047901 ;
	setAttr ".r" -type "double3" -40.423260094834468 -25.679059778719591 1.9410078341883997e-014 ;
createNode directionalLight -n "isLightShape44" -p "isLight44";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.05105649267982177 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.12916911 0.18202235 0.22116876 ;
	setAttr -l on ".cl";
createNode transform -n "isLight45" -p "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" -11.708765742045177 9.0991354363612924 -13.420526782085101 ;
	setAttr ".r" -type "double3" 152.93784711364989 -41.103137033597385 -180 ;
createNode directionalLight -n "isLightShape45" -p "isLight45";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.0026849936346276257 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 2.4830797 2.6582146 2.332937 ;
	setAttr -l on ".cl";
createNode transform -n "isLight46" -p "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" -11.946145664983595 8.8798623570143711 -13.358055557283507 ;
	setAttr ".r" -type "double3" 153.64106328251748 -41.806353202465019 -180 ;
createNode directionalLight -n "isLightShape46" -p "isLight46";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.0063630649267982179 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.52791137 0.42306766 0.35578614 ;
	setAttr -l on ".cl";
createNode transform -n "isLight47" -p "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" -11.835149391443784 9.2082600380336679 -13.233940681224167 ;
	setAttr ".r" -type "double3" 152.58623902921607 -41.806353202465026 180 ;
createNode directionalLight -n "isLightShape47" -p "isLight47";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.010212046467218332 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.57029921 0.64951372 0.64695692 ;
	setAttr -l on ".cl";
createNode transform -n "isLight48" -p "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" -11.781300765014885 8.8798623570143711 -13.503666050548601 ;
	setAttr ".r" -type "double3" 153.64106328251748 -41.103137033597385 180 ;
createNode directionalLight -n "isLightShape48" -p "isLight48";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.010147437937619352 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.58764952 0.52872407 0.47463119 ;
	setAttr -l on ".cl";
createNode transform -n "isLight49" -p "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" -11.827647390088941 8.9896681685383264 -13.390019545739692 ;
	setAttr ".r" -type "double3" 153.28945519808366 -41.454745118031227 -180 ;
createNode directionalLight -n "isLightShape49" -p "isLight49";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 8.0362826225334193e-006 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 2.2167218 1.6564054 1.18112 ;
	setAttr -l on ".cl";
createNode transform -n "toLightDome" -p "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData";
createNode nurbsSurface -n "toLightDomeShape" -p "|toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData|toLightDome";
	setAttr -k off ".v";
	setAttr ".csh" no;
	setAttr ".rcsh" no;
	setAttr ".tw" yes;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData";
	addAttr -ci true -sn "intensity" -ln "intensity" -dv 0.10000000000000001 
		-at "double";
	addAttr -ci true -sn "emitSpecular" -ln "emitSpecular" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "useDepthMapShadows" -ln "useDepthMapShadows" -dv 1 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "dmapResolution" -ln "dmapResolution" -dv 512 -at "short";
	addAttr -ci true -sn "dmapFilterSize" -ln "dmapFilterSize" -dv 6 -at "short";
	addAttr -ci true -sn "reuseDmap" -ln "reuseDmap" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "dmapSceneName" -ln "dmapSceneName" -dv 1 -min 0 -max 
		1 -at "bool";
	addAttr -ci true -sn "dmapLightName" -ln "dmapLightName" -dv 1 -min 0 -max 
		1 -at "bool";
	addAttr -ci true -sn "dmapFrameExt" -ln "dmapFrameExt" -dv 1 -min 0 -max 
		1 -at "bool";
	addAttr -ci true -sn "useRayTraceShadows" -ln "useRayTraceShadows" -min 
		0 -max 1 -at "bool";
	addAttr -ci true -sn "shadowRays" -ln "shadowRays" -dv 1 -at "short";
	addAttr -ci true -sn "rayDepthLimit" -ln "rayDepthLimit" -dv 1 -at "short";
	setAttr ".v" no;
	setAttr -k on ".intensity" 0.3;
	setAttr -k on ".emitSpecular";
	setAttr -k on ".useDepthMapShadows";
	setAttr -k on ".dmapResolution";
	setAttr -k on ".dmapFilterSize";
	setAttr -k on ".reuseDmap";
	setAttr -k on ".dmapSceneName";
	setAttr -k on ".dmapLightName";
	setAttr -k on ".dmapFrameExt";
	setAttr -k on ".useRayTraceShadows";
	setAttr -k on ".shadowRays";
	setAttr -k on ".rayDepthLimit";
createNode transform -n "isLight50" -p "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" -14.143574564011823 14.140695363356816 -0.0057613346448020528 ;
	setAttr ".r" -type "double3" 135.0058348075118 -89.976660769895346 180 ;
createNode directionalLight -n "isLightShape50" -p "isLight50";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.05982264481222152 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.50337529 0.56378299 0.58072382 ;
	setAttr -l on ".cl";
createNode transform -n "isLight51" -p "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" 19.999647990738215 0.11866021473479108 0 ;
	setAttr ".r" -type "double3" -0.33993846938148053 89.999999999999886 0 ;
createNode directionalLight -n "isLightShape51" -p "isLight51";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.14470202100572885 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.21098995 0.24181829 0.2472512 ;
	setAttr -l on ".cl";
createNode transform -n "isLight52" -p "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" -0.0040733923790494788 0.11866021473479108 
		19.999647575917773 ;
	setAttr ".r" -type "double3" -0.3399384764312805 -0.011669409661663016 3.4617671888136095e-005 ;
createNode directionalLight -n "isLightShape52" -p "isLight52";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.11265833863781033 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.20365342 0.2236544 0.222675 ;
	setAttr -l on ".cl";
createNode transform -n "isLight53" -p "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" 0.012220176461250417 0.11866021473479108 -19.999644257354337 ;
	setAttr ".r" -type "double3" 179.66006153061818 0.035008845156947133 180 ;
createNode directionalLight -n "isLightShape53" -p "isLight53";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.12861497453851051 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.46425164 0.49516451 0.47886866 ;
	setAttr -l on ".cl";
createNode transform -n "isLight54" -p "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" 7.121218788529152 17.278768025283885 7.1226693377080688 ;
	setAttr ".r" -type "double3" -59.761704738693375 44.994165192473858 4.4975255769923167e-015 ;
createNode directionalLight -n "isLightShape54" -p "isLight54";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.066164942711648633 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.49004525 0.52155298 0.51414961 ;
	setAttr -l on ".cl";
createNode transform -n "isLight55" -p "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" 10.940837360475543 12.686094382948154 -10.925249981513183 ;
	setAttr ".r" -type "double3" 140.63156415846694 45.040843652683137 180 ;
createNode directionalLight -n "isLightShape55" -p "isLight55";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.070411998726925523 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.57179552 0.631634 0.63971198 ;
	setAttr -l on ".cl";
createNode transform -n "isLight56" -p "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" -16.284237526836925 0.11866021473479108 11.61075053228666 ;
	setAttr ".r" -type "double3" -0.33993846938092781 -54.510922702291026 -6.7916789254140685e-013 ;
createNode directionalLight -n "isLightShape56" -p "isLight56";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.11777339274347549 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.25624993 0.28755859 0.29209521 ;
	setAttr -l on ".cl";
createNode transform -n "isLight57" -p "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" -16.274772928662522 0.11866021473479108 -11.624013329049161 ;
	setAttr ".r" -type "double3" 179.66006153061926 -54.464244242081712 179.99999999999912 ;
createNode directionalLight -n "isLightShape57" -p "isLight57";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.11508052196053468 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.54135215 0.56169236 0.53325385 ;
	setAttr -l on ".cl";
createNode transform -n "isLight58" -p "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" -5.062673873615684 13.966044384189239 -13.39100210993432 ;
	setAttr ".r" -type "double3" 135.70905097639371 -20.70986813643712 180 ;
createNode directionalLight -n "isLightShape58" -p "isLight58";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.036844844048376832 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.27049398 0.3419404 0.38646343 ;
	setAttr -l on ".cl";
createNode transform -n "isLight59" -p "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" 13.758613949941305 4.6177871529947181 13.761416496353762 ;
	setAttr ".r" -type "double3" -13.349437593432123 44.994165192473822 -1.6303530216597139e-013 ;
createNode directionalLight -n "isLightShape59" -p "isLight59";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.068283975175047737 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.37885776 0.39278519 0.37277472 ;
	setAttr -l on ".cl";
createNode transform -n "isLight60" -p "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" -6.5976629938748514 12.968580114564194 13.721762745047901 ;
	setAttr ".r" -type "double3" -40.423260094834468 -25.679059778719591 1.9410078341883997e-014 ;
createNode directionalLight -n "isLightShape60" -p "isLight60";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.05105649267982177 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.28656337 0.32843319 0.34554386 ;
	setAttr -l on ".cl";
createNode transform -n "isLight61" -p "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" -7.4783947208699049 11.912043349490498 -14.21889009869351 ;
	setAttr ".r" -type "double3" 143.44442883393731 -27.7420298251131 -180 ;
createNode directionalLight -n "isLightShape61" -p "isLight61";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.00055776575429662635 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 5.0004935 4.6391902 3.7344549 ;
	setAttr -l on ".cl";
createNode transform -n "isLight62" -p "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" -7.7739517668875759 11.813229654040271 -14.142605101854791 ;
	setAttr ".r" -type "double3" 143.79603691837113 -28.796854078414508 179.99999999999997 ;
createNode directionalLight -n "isLightShape62" -p "isLight62";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.0081389242520687466 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.66178262 0.53203547 0.45006931 ;
	setAttr -l on ".cl";
createNode transform -n "isLight63" -p "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" -7.5458854012764371 11.713971081825665 -14.347212098695525 ;
	setAttr ".r" -type "double3" 144.14764500280492 -27.742029825113104 -180 ;
createNode directionalLight -n "isLightShape63" -p "isLight63";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.0095360439210693832 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.34840769 0.32909563 0.31842941 ;
	setAttr -l on ".cl";
createNode transform -n "isLight64" -p "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" -7.6173785637017204 12.010408446931734 -14.061494684247771 ;
	setAttr ".r" -type "double3" 143.09282074950352 -28.445245993980652 180 ;
createNode directionalLight -n "isLightShape64" -p "isLight64";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.0043765913430935709 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.83540112 1.0378464 0.98314393 ;
	setAttr -l on ".cl";
createNode transform -n "isLight65" -p "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" -7.7214022527127932 11.713971081825665 -14.253519872156277 ;
	setAttr ".r" -type "double3" 144.14764500280489 -28.44524599398067 -180 ;
createNode directionalLight -n "isLightShape65" -p "isLight65";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.0058438096753660089 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.20709731 0.20824584 0.2032198 ;
	setAttr -l on ".cl";
createNode transform -n "toLightDome" -p "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData";
createNode nurbsSurface -n "toLightDomeShape" -p "|toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData|toLightDome";
	setAttr -k off ".v";
	setAttr ".csh" no;
	setAttr ".rcsh" no;
	setAttr ".tw" yes;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData";
	addAttr -ci true -sn "intensity" -ln "intensity" -dv 0.10000000000000001 
		-at "double";
	addAttr -ci true -sn "emitSpecular" -ln "emitSpecular" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "useDepthMapShadows" -ln "useDepthMapShadows" -dv 1 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "dmapResolution" -ln "dmapResolution" -dv 512 -at "short";
	addAttr -ci true -sn "dmapFilterSize" -ln "dmapFilterSize" -dv 6 -at "short";
	addAttr -ci true -sn "reuseDmap" -ln "reuseDmap" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "dmapSceneName" -ln "dmapSceneName" -dv 1 -min 0 -max 
		1 -at "bool";
	addAttr -ci true -sn "dmapLightName" -ln "dmapLightName" -dv 1 -min 0 -max 
		1 -at "bool";
	addAttr -ci true -sn "dmapFrameExt" -ln "dmapFrameExt" -dv 1 -min 0 -max 
		1 -at "bool";
	addAttr -ci true -sn "useRayTraceShadows" -ln "useRayTraceShadows" -min 
		0 -max 1 -at "bool";
	addAttr -ci true -sn "shadowRays" -ln "shadowRays" -dv 1 -at "short";
	addAttr -ci true -sn "rayDepthLimit" -ln "rayDepthLimit" -dv 1 -at "short";
	setAttr ".v" no;
	setAttr -k on ".intensity" 0.3;
	setAttr -k on ".emitSpecular";
	setAttr -k on ".useDepthMapShadows";
	setAttr -k on ".dmapResolution";
	setAttr -k on ".dmapFilterSize";
	setAttr -k on ".reuseDmap";
	setAttr -k on ".dmapSceneName";
	setAttr -k on ".dmapLightName";
	setAttr -k on ".dmapFrameExt";
	setAttr -k on ".useRayTraceShadows";
	setAttr -k on ".shadowRays";
	setAttr -k on ".rayDepthLimit";
createNode transform -n "isLight66" -p "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" -14.143574564011823 14.140695363356816 -0.0057613346448020528 ;
	setAttr ".r" -type "double3" 135.0058348075118 -89.976660769895346 180 ;
createNode directionalLight -n "isLightShape66" -p "isLight66";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.061088796944621264 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.68396908 0.73854911 0.73650199 ;
	setAttr -l on ".cl";
createNode transform -n "isLight67" -p "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" 19.999647990738215 0.11866021473479108 0 ;
	setAttr ".r" -type "double3" -0.33993846938148053 89.999999999999886 0 ;
createNode directionalLight -n "isLightShape67" -p "isLight67";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.14470202100572885 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.17616807 0.22226205 0.24565677 ;
	setAttr -l on ".cl";
createNode transform -n "isLight68" -p "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" -0.0040733923790494788 0.11866021473479108 
		19.999647575917773 ;
	setAttr ".r" -type "double3" -0.3399384764312805 -0.011669409661663016 3.4617671888136095e-005 ;
createNode directionalLight -n "isLightShape68" -p "isLight68";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.11265833863781033 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.23851933 0.25168878 0.24246074 ;
	setAttr -l on ".cl";
createNode transform -n "isLight69" -p "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" 0.012220176461250417 0.11866021473479108 -19.999644257354337 ;
	setAttr ".r" -type "double3" 179.66006153061818 0.035008845156947133 180 ;
createNode directionalLight -n "isLightShape69" -p "isLight69";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.12863033099936347 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.45154715 0.5281896 0.54885077 ;
	setAttr -l on ".cl";
createNode transform -n "isLight70" -p "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" 7.121218788529152 17.278768025283885 7.1226693377080688 ;
	setAttr ".r" -type "double3" -59.761704738693375 44.994165192473858 4.4975255769923167e-015 ;
createNode directionalLight -n "isLightShape70" -p "isLight70";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.066096037555697013 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.37222371 0.4325611 0.46212009 ;
	setAttr -l on ".cl";
createNode transform -n "isLight71" -p "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" 10.940837360475543 12.686094382948154 -10.925249981513183 ;
	setAttr ".r" -type "double3" 140.63156415846694 45.040843652683137 180 ;
createNode directionalLight -n "isLightShape71" -p "isLight71";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.06667791215786123 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.62299114 0.72861427 0.7720089 ;
	setAttr -l on ".cl";
createNode transform -n "isLight72" -p "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" -16.284237526836925 0.11866021473479108 11.61075053228666 ;
	setAttr ".r" -type "double3" -0.33993846938092781 -54.510922702291026 -6.7916789254140685e-013 ;
createNode directionalLight -n "isLightShape72" -p "isLight72";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.11777339274347549 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.30099389 0.32019904 0.31156641 ;
	setAttr -l on ".cl";
createNode transform -n "isLight73" -p "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" -16.274772928662522 0.11866021473479108 -11.624013329049161 ;
	setAttr ".r" -type "double3" 179.66006153061926 -54.464244242081712 179.99999999999912 ;
createNode directionalLight -n "isLightShape73" -p "isLight73";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.11927259707192871 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.53503352 0.56670272 0.54809707 ;
	setAttr -l on ".cl";
createNode transform -n "isLight74" -p "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" -5.062673873615684 13.966044384189239 -13.39100210993432 ;
	setAttr ".r" -type "double3" 135.70905097639371 -20.70986813643712 180 ;
createNode directionalLight -n "isLightShape74" -p "isLight74";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.033763605983450032 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.65772825 0.74123174 0.76414299 ;
	setAttr -l on ".cl";
createNode transform -n "isLight75" -p "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" 13.758613949941305 4.6177871529947181 13.761416496353762 ;
	setAttr ".r" -type "double3" -13.349437593432123 44.994165192473822 -1.6303530216597139e-013 ;
createNode directionalLight -n "isLightShape75" -p "isLight75";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.068283975175047737 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.24180113 0.28929266 0.31131315 ;
	setAttr -l on ".cl";
createNode transform -n "isLight76" -p "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" -6.5976629938748514 12.968580114564194 13.721762745047901 ;
	setAttr ".r" -type "double3" -40.423260094834468 -25.679059778719591 1.9410078341883997e-014 ;
createNode directionalLight -n "isLightShape76" -p "isLight76";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.05105649267982177 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.35302404 0.39687735 0.41127574 ;
	setAttr -l on ".cl";
createNode transform -n "isLight77" -p "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" -2.7305809315495031 13.789289624659107 -14.226714990591715 ;
	setAttr ".r" -type "double3" 136.41226714526138 -10.864841772290765 -180 ;
createNode directionalLight -n "isLightShape77" -p "isLight77";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.00032606619987269258 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 4.7605982 4.9570031 4.2421098 ;
	setAttr -l on ".cl";
createNode transform -n "isLight78" -p "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" -2.9387003322386969 13.61045771028628 -14.356861818440997 ;
	setAttr ".r" -type "double3" 137.11548331412894 -11.568057941158354 -180 ;
createNode directionalLight -n "isLightShape78" -p "isLight78";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.0040623010821133039 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.6858685 0.52559084 0.42171359 ;
	setAttr -l on ".cl";
createNode transform -n "isLight79" -p "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" -2.992019452243698 13.789289624659107 -14.174036519095894 ;
	setAttr ".r" -type "double3" 136.41226714526138 -11.919666025592127 179.99999999999997 ;
createNode directionalLight -n "isLightShape79" -p "isLight79";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.00097310630171865056 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.17019935 0.17608967 0.1788945 ;
	setAttr -l on ".cl";
createNode transform -n "isLight80" -p "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" -2.6739051949190529 13.61045771028628 -14.408527750089309 ;
	setAttr ".r" -type "double3" 137.11548331412897 -10.513233687856996 -179.99999999999997 ;
createNode directionalLight -n "isLightShape80" -p "isLight80";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.008872056015276894 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 1.1105881 0.93857831 0.74148172 ;
	setAttr -l on ".cl";
createNode transform -n "isLight81" -p "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" -2.5557689570180329 13.789289624659107 -14.259156240311407 ;
	setAttr ".r" -type "double3" 136.41226714526135 -10.161625603423179 180 ;
createNode directionalLight -n "isLightShape81" -p "isLight81";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.015630171865054106 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.33327255 0.37540722 0.38500315 ;
	setAttr -l on ".cl";
createNode transform -n "toLightDome" -p "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData";
createNode nurbsSurface -n "toLightDomeShape" -p "|toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData|toLightDome";
	setAttr -k off ".v";
	setAttr ".csh" no;
	setAttr ".rcsh" no;
	setAttr ".tw" yes;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData";
	addAttr -ci true -sn "intensity" -ln "intensity" -dv 0.10000000000000001 
		-at "double";
	addAttr -ci true -sn "emitSpecular" -ln "emitSpecular" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "useDepthMapShadows" -ln "useDepthMapShadows" -dv 1 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "dmapResolution" -ln "dmapResolution" -dv 512 -at "short";
	addAttr -ci true -sn "dmapFilterSize" -ln "dmapFilterSize" -dv 6 -at "short";
	addAttr -ci true -sn "reuseDmap" -ln "reuseDmap" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "dmapSceneName" -ln "dmapSceneName" -dv 1 -min 0 -max 
		1 -at "bool";
	addAttr -ci true -sn "dmapLightName" -ln "dmapLightName" -dv 1 -min 0 -max 
		1 -at "bool";
	addAttr -ci true -sn "dmapFrameExt" -ln "dmapFrameExt" -dv 1 -min 0 -max 
		1 -at "bool";
	addAttr -ci true -sn "useRayTraceShadows" -ln "useRayTraceShadows" -min 
		0 -max 1 -at "bool";
	addAttr -ci true -sn "shadowRays" -ln "shadowRays" -dv 1 -at "short";
	addAttr -ci true -sn "rayDepthLimit" -ln "rayDepthLimit" -dv 1 -at "short";
	setAttr ".v" no;
	setAttr -k on ".intensity" 0.3;
	setAttr -k on ".emitSpecular";
	setAttr -k on ".useDepthMapShadows";
	setAttr -k on ".dmapResolution";
	setAttr -k on ".dmapFilterSize";
	setAttr -k on ".reuseDmap";
	setAttr -k on ".dmapSceneName";
	setAttr -k on ".dmapLightName";
	setAttr -k on ".dmapFrameExt";
	setAttr -k on ".useRayTraceShadows";
	setAttr -k on ".shadowRays";
	setAttr -k on ".rayDepthLimit";
createNode transform -n "isLight82" -p "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" -14.143574564011823 14.140695363356816 -0.0057613346448020528 ;
	setAttr ".r" -type "double3" 135.0058348075118 -89.976660769895346 180 ;
createNode directionalLight -n "isLightShape82" -p "isLight82";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.074485996180776573 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.32231006 0.41684291 0.48202091 ;
	setAttr -l on ".cl";
createNode transform -n "isLight83" -p "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" 19.999647990738215 0.11866021473479108 0 ;
	setAttr ".r" -type "double3" -0.33993846938148053 89.999999999999886 0 ;
createNode directionalLight -n "isLightShape83" -p "isLight83";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.14470202100572885 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.18976477 0.24611847 0.27843487 ;
	setAttr -l on ".cl";
createNode transform -n "isLight84" -p "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" -0.0040733923790494788 0.11866021473479108 
		19.999647575917773 ;
	setAttr ".r" -type "double3" -0.3399384764312805 -0.011669409661663016 3.4617671888136095e-005 ;
createNode directionalLight -n "isLightShape84" -p "isLight84";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.12591860280076386 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.23498985 0.28462619 0.30987206 ;
	setAttr -l on ".cl";
createNode transform -n "isLight85" -p "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" 0.012220176461250417 0.11866021473479108 -19.999644257354337 ;
	setAttr ".r" -type "double3" 179.66006153061818 0.035008845156947133 180 ;
createNode directionalLight -n "isLightShape85" -p "isLight85";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.12864727880330998 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.33997214 0.42024976 0.4584057 ;
	setAttr -l on ".cl";
createNode transform -n "isLight86" -p "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" 7.121218788529152 17.278768025283885 7.1226693377080688 ;
	setAttr ".r" -type "double3" -59.761704738693375 44.994165192473858 4.4975255769923167e-015 ;
createNode directionalLight -n "isLightShape86" -p "isLight86";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.080207431572246968 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.2395054 0.32519266 0.38911036 ;
	setAttr -l on ".cl";
createNode transform -n "isLight87" -p "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" 10.940837360475543 12.686094382948154 -10.925249981513183 ;
	setAttr ".r" -type "double3" 140.63156415846694 45.040843652683137 180 ;
createNode directionalLight -n "isLightShape87" -p "isLight87";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.057243475493316355 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.39220801 0.51178855 0.58812302 ;
	setAttr -l on ".cl";
createNode transform -n "isLight88" -p "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" -16.284237526836925 0.11866021473479108 11.61075053228666 ;
	setAttr ".r" -type "double3" -0.33993846938092781 -54.510922702291026 -6.7916789254140685e-013 ;
createNode directionalLight -n "isLightShape88" -p "isLight88";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.12712269255251432 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.34418577 0.37695107 0.37946054 ;
	setAttr -l on ".cl";
createNode transform -n "isLight89" -p "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" -16.274772928662522 0.11866021473479108 -11.624013329049161 ;
	setAttr ".r" -type "double3" 179.66006153061926 -54.464244242081712 179.99999999999912 ;
createNode directionalLight -n "isLightShape89" -p "isLight89";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.11927259707192871 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.29689261 0.35265371 0.37498942 ;
	setAttr -l on ".cl";
createNode transform -n "isLight90" -p "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" -5.062673873615684 13.966044384189239 -13.39100210993432 ;
	setAttr ".r" -type "double3" 135.70905097639371 -20.70986813643712 180 ;
createNode directionalLight -n "isLightShape90" -p "isLight90";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.040818586887332912 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.30424726 0.39408353 0.45450979 ;
	setAttr -l on ".cl";
createNode transform -n "isLight91" -p "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" 13.758613949941305 4.6177871529947181 13.761416496353762 ;
	setAttr ".r" -type "double3" -13.349437593432123 44.994165192473822 -1.6303530216597139e-013 ;
createNode directionalLight -n "isLightShape91" -p "isLight91";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.068311903246339914 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.19275407 0.24971798 0.28579691 ;
	setAttr -l on ".cl";
createNode transform -n "isLight92" -p "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" 2.2683689171778725 14.56794691249379 -13.514045479068949 ;
	setAttr ".r" -type "double3" 133.24779438535722 9.5284271248695092 180 ;
createNode directionalLight -n "isLightShape92" -p "isLight92";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.00038518459579885421 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 2.1317871 2.6304312 2.5363801 ;
	setAttr -l on ".cl";
createNode transform -n "isLight93" -p "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" 2.1296108355535948 14.398669781460288 -13.716525296646925 ;
	setAttr ".r" -type "double3" 133.95101055422478 8.8252109560019285 -180 ;
createNode directionalLight -n "isLightShape93" -p "isLight93";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.0059912476129853603 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.18771768 0.17305438 0.16750428 ;
	setAttr -l on ".cl";
createNode transform -n "isLight94" -p "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" 2.3817590565171702 14.398669781460288 -13.674996611376573 ;
	setAttr ".r" -type "double3" 133.95101055422478 9.8800352093032977 180 ;
createNode directionalLight -n "isLightShape94" -p "isLight94";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.0071536441756842777 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.7577042 0.58966541 0.4506014 ;
	setAttr -l on ".cl";
createNode transform -n "isLight95" -p "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" 2.0192028796627235 14.56794691249379 -13.553514027200636 ;
	setAttr ".r" -type "double3" 133.24779438535714 8.4736028715681382 180 ;
createNode directionalLight -n "isLightShape95" -p "isLight95";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.0082154678548695091 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.36251134 0.470622 0.51635551 ;
	setAttr -l on ".cl";
createNode transform -n "isLight96" -p "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" 2.4340576972536865 14.56794691249379 -13.485187647237346 ;
	setAttr ".r" -type "double3" 133.2477943853572 10.231643293737115 -180 ;
createNode directionalLight -n "isLightShape96" -p "isLight96";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.011384945894334818 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.21547653 0.23071837 0.22697461 ;
	setAttr -l on ".cl";
createNode transform -n "isLight97" -p "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" 2.1996111650113743 14.483581067006636 -13.615711152863231 ;
	setAttr ".r" -type "double3" 133.59940246979096 9.1768190404357544 180 ;
createNode directionalLight -n "isLightShape97" -p "isLight97";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 6.206238064926798e-006 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 2.1874664 1.5941621 1.1509006 ;
	setAttr -l on ".cl";
createNode transform -n "toLightDome" -p "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData";
createNode nurbsSurface -n "toLightDomeShape" -p "|toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData|toLightDome";
	setAttr -k off ".v";
	setAttr ".csh" no;
	setAttr ".rcsh" no;
	setAttr ".tw" yes;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData";
	addAttr -ci true -sn "intensity" -ln "intensity" -dv 0.10000000000000001 
		-at "double";
	addAttr -ci true -sn "emitSpecular" -ln "emitSpecular" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "useDepthMapShadows" -ln "useDepthMapShadows" -dv 1 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "dmapResolution" -ln "dmapResolution" -dv 512 -at "short";
	addAttr -ci true -sn "dmapFilterSize" -ln "dmapFilterSize" -dv 6 -at "short";
	addAttr -ci true -sn "reuseDmap" -ln "reuseDmap" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "dmapSceneName" -ln "dmapSceneName" -dv 1 -min 0 -max 
		1 -at "bool";
	addAttr -ci true -sn "dmapLightName" -ln "dmapLightName" -dv 1 -min 0 -max 
		1 -at "bool";
	addAttr -ci true -sn "dmapFrameExt" -ln "dmapFrameExt" -dv 1 -min 0 -max 
		1 -at "bool";
	addAttr -ci true -sn "useRayTraceShadows" -ln "useRayTraceShadows" -min 
		0 -max 1 -at "bool";
	addAttr -ci true -sn "shadowRays" -ln "shadowRays" -dv 1 -at "short";
	addAttr -ci true -sn "rayDepthLimit" -ln "rayDepthLimit" -dv 1 -at "short";
	setAttr ".v" no;
	setAttr -k on ".intensity" 0.3;
	setAttr -k on ".emitSpecular";
	setAttr -k on ".useDepthMapShadows";
	setAttr -k on ".dmapResolution";
	setAttr -k on ".dmapFilterSize";
	setAttr -k on ".reuseDmap";
	setAttr -k on ".dmapSceneName";
	setAttr -k on ".dmapLightName";
	setAttr -k on ".dmapFrameExt";
	setAttr -k on ".useRayTraceShadows";
	setAttr -k on ".shadowRays";
	setAttr -k on ".rayDepthLimit";
createNode transform -n "isLight98" -p "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" -14.143574564011823 14.140695363356816 -0.0057613346448020528 ;
	setAttr ".r" -type "double3" 135.0058348075118 -89.976660769895346 180 ;
createNode directionalLight -n "isLightShape98" -p "isLight98";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.074485996180776573 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.2234662 0.30918092 0.37455028 ;
	setAttr -l on ".cl";
createNode transform -n "isLight99" -p "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" 19.999647990738215 0.11866021473479108 0 ;
	setAttr ".r" -type "double3" -0.33993846938148053 89.999999999999886 0 ;
createNode directionalLight -n "isLightShape99" -p "isLight99";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.14470202100572885 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.22281778 0.28914636 0.32665715 ;
	setAttr -l on ".cl";
createNode transform -n "isLight100" -p "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" -0.0040733923790494788 0.11866021473479108 
		19.999647575917773 ;
	setAttr ".r" -type "double3" -0.3399384764312805 -0.011669409661663016 3.4617671888136095e-005 ;
createNode directionalLight -n "isLightShape100" -p "isLight100";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.12591860280076386 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.20061983 0.25897831 0.29423323 ;
	setAttr -l on ".cl";
createNode transform -n "isLight101" -p "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" 0.012220176461250417 0.11866021473479108 -19.999644257354337 ;
	setAttr ".r" -type "double3" 179.66006153061818 0.035008845156947133 180 ;
createNode directionalLight -n "isLightShape101" -p "isLight101";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.12942178548695099 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.29010305 0.36622164 0.40542552 ;
	setAttr -l on ".cl";
createNode transform -n "isLight102" -p "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" 7.121218788529152 17.278768025283885 7.1226693377080688 ;
	setAttr ".r" -type "double3" -59.761704738693375 44.994165192473858 4.4975255769923167e-015 ;
createNode directionalLight -n "isLightShape102" -p "isLight102";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.079924331635900694 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.23024343 0.31704712 0.3824144 ;
	setAttr -l on ".cl";
createNode transform -n "isLight103" -p "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" 10.940837360475543 12.686094382948154 -10.925249981513183 ;
	setAttr ".r" -type "double3" 140.63156415846694 45.040843652683137 180 ;
createNode directionalLight -n "isLightShape103" -p "isLight103";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.04725421705919796 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.37807783 0.48961911 0.56101447 ;
	setAttr -l on ".cl";
createNode transform -n "isLight104" -p "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" -16.284237526836925 0.11866021473479108 11.61075053228666 ;
	setAttr ".r" -type "double3" -0.33993846938092781 -54.510922702291026 -6.7916789254140685e-013 ;
createNode directionalLight -n "isLightShape104" -p "isLight104";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.12712269255251432 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.25510839 0.31425741 0.34619483 ;
	setAttr -l on ".cl";
createNode transform -n "isLight105" -p "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" -16.274772928662522 0.11866021473479108 -11.624013329049161 ;
	setAttr ".r" -type "double3" 179.66006153061926 -54.464244242081712 179.99999999999912 ;
createNode directionalLight -n "isLightShape105" -p "isLight105";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.11927259707192871 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.24016894 0.29034683 0.31388733 ;
	setAttr -l on ".cl";
createNode transform -n "isLight106" -p "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" -5.062673873615684 13.966044384189239 -13.39100210993432 ;
	setAttr ".r" -type "double3" 135.70905097639371 -20.70986813643712 180 ;
createNode directionalLight -n "isLightShape106" -p "isLight106";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.050054344366645444 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.25786874 0.34322062 0.40386891 ;
	setAttr -l on ".cl";
createNode transform -n "isLight107" -p "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" 13.758613949941305 4.6177871529947181 13.761416496353762 ;
	setAttr ".r" -type "double3" -13.349437593432123 44.994165192473822 -1.6303530216597139e-013 ;
createNode directionalLight -n "isLightShape107" -p "isLight107";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.068311903246339914 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.18631788 0.24717505 0.28666094 ;
	setAttr -l on ".cl";
createNode transform -n "isLight108" -p "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" 7.2347112475856301 14.227223701374371 -12.051765800707768 ;
	setAttr ".r" -type "double3" 134.65422672309236 30.976520275331222 -180 ;
createNode directionalLight -n "isLightShape108" -p "isLight108";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.0034683322724379374 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 1.2658596 1.737908 1.705919 ;
	setAttr -l on ".cl";
createNode transform -n "isLight109" -p "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" 7.0981943123369629 14.05363449808096 -12.333328622016682 ;
	setAttr ".r" -type "double3" 135.35744289195995 29.921696022029803 180 ;
createNode directionalLight -n "isLightShape109" -p "isLight109";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.011743793761935075 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.24369767 0.23861043 0.2421834 ;
	setAttr -l on ".cl";
createNode transform -n "isLight110" -p "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" 6.9679402677190687 14.313216253545733 -12.107008255747303 ;
	setAttr ".r" -type "double3" 134.3026186386586 29.921696022029778 -180 ;
createNode directionalLight -n "isLightShape110" -p "isLight110";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.016216104392106939 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.29903212 0.3760989 0.4198373 ;
	setAttr -l on ".cl";
createNode transform -n "isLight111" -p "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" 7.3240371180666397 14.05363449808096 -12.200567105160761 ;
	setAttr ".r" -type "double3" 135.35744289195998 30.976520275331218 -180 ;
createNode directionalLight -n "isLightShape111" -p "isLight111";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.0011060630171865055 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.15377332 0.099829711 0.078517877 ;
	setAttr -l on ".cl";
createNode transform -n "isLight112" -p "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" 7.1301341652068961 14.140695363356816 -12.214823839371913 ;
	setAttr ".r" -type "double3" 135.00583480752618 30.273304106463616 180 ;
createNode directionalLight -n "isLightShape112" -p "isLight112";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 8.4341183959261613e-006 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 3.3187392 2.9916101 2.4193847 ;
	setAttr -l on ".cl";
createNode transform -n "isLight113" -p "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" 7.3537899900153105 14.140695363356816 -12.081494420124093 ;
	setAttr ".r" -type "double3" 135.00583480752616 31.328128359765007 -180 ;
createNode directionalLight -n "isLightShape113" -p "isLight113";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.00085598345003182696 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.78101575 0.73863465 0.61211234 ;
	setAttr -l on ".cl";
createNode transform -n "toLightDome" -p "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData";
createNode nurbsSurface -n "toLightDomeShape" -p "|toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData|toLightDome";
	setAttr -k off ".v";
	setAttr ".csh" no;
	setAttr ".rcsh" no;
	setAttr ".tw" yes;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData";
	addAttr -ci true -sn "intensity" -ln "intensity" -dv 0.10000000000000001 
		-at "double";
	addAttr -ci true -sn "emitSpecular" -ln "emitSpecular" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "useDepthMapShadows" -ln "useDepthMapShadows" -dv 1 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "dmapResolution" -ln "dmapResolution" -dv 512 -at "short";
	addAttr -ci true -sn "dmapFilterSize" -ln "dmapFilterSize" -dv 6 -at "short";
	addAttr -ci true -sn "reuseDmap" -ln "reuseDmap" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "dmapSceneName" -ln "dmapSceneName" -dv 1 -min 0 -max 
		1 -at "bool";
	addAttr -ci true -sn "dmapLightName" -ln "dmapLightName" -dv 1 -min 0 -max 
		1 -at "bool";
	addAttr -ci true -sn "dmapFrameExt" -ln "dmapFrameExt" -dv 1 -min 0 -max 
		1 -at "bool";
	addAttr -ci true -sn "useRayTraceShadows" -ln "useRayTraceShadows" -min 
		0 -max 1 -at "bool";
	addAttr -ci true -sn "shadowRays" -ln "shadowRays" -dv 1 -at "short";
	addAttr -ci true -sn "rayDepthLimit" -ln "rayDepthLimit" -dv 1 -at "short";
	setAttr ".v" no;
	setAttr -k on ".intensity" 0.3;
	setAttr -k on ".emitSpecular";
	setAttr -k on ".useDepthMapShadows";
	setAttr -k on ".dmapResolution";
	setAttr -k on ".dmapFilterSize";
	setAttr -k on ".reuseDmap";
	setAttr -k on ".dmapSceneName";
	setAttr -k on ".dmapLightName";
	setAttr -k on ".dmapFrameExt";
	setAttr -k on ".useRayTraceShadows";
	setAttr -k on ".shadowRays";
	setAttr -k on ".rayDepthLimit";
createNode transform -n "isLight114" -p "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" -14.143574564011823 14.140695363356816 -0.0057613346448020528 ;
	setAttr ".r" -type "double3" 135.0058348075118 -89.976660769895346 180 ;
createNode directionalLight -n "isLightShape114" -p "isLight114";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.074485996180776573 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.18196595 0.26035786 0.3220669 ;
	setAttr -l on ".cl";
createNode transform -n "isLight115" -p "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" 19.999647990738215 0.11866021473479108 0 ;
	setAttr ".r" -type "double3" -0.33993846938148053 89.999999999999886 0 ;
createNode directionalLight -n "isLightShape115" -p "isLight115";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.16961187141947806 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.34701878 0.44274256 0.49268541 ;
	setAttr -l on ".cl";
createNode transform -n "isLight116" -p "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" -0.0040733923790494788 0.11866021473479108 
		19.999647575917773 ;
	setAttr ".r" -type "double3" -0.3399384764312805 -0.011669409661663016 3.4617671888136095e-005 ;
createNode directionalLight -n "isLightShape116" -p "isLight116";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.15225509229789944 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.26070124 0.33867872 0.38586783 ;
	setAttr -l on ".cl";
createNode transform -n "isLight117" -p "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" 0.012220176461250417 0.11866021473479108 -19.999644257354337 ;
	setAttr ".r" -type "double3" 179.66006153061818 0.035008845156947133 180 ;
createNode directionalLight -n "isLightShape117" -p "isLight117";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.13050246658179504 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.24749728 0.3165361 0.35299051 ;
	setAttr -l on ".cl";
createNode transform -n "isLight118" -p "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" 7.121218788529152 17.278768025283885 7.1226693377080688 ;
	setAttr ".r" -type "double3" -59.761704738693375 44.994165192473858 4.4975255769923167e-015 ;
createNode directionalLight -n "isLightShape118" -p "isLight118";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.094940324633991102 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.26791331 0.37502328 0.45630094 ;
	setAttr -l on ".cl";
createNode transform -n "isLight119" -p "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" 10.940837360475543 12.686094382948154 -10.925249981513183 ;
	setAttr ".r" -type "double3" 140.63156415846694 45.040843652683137 180 ;
createNode directionalLight -n "isLightShape119" -p "isLight119";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.02967059197963081 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.26420748 0.33289409 0.37626392 ;
	setAttr -l on ".cl";
createNode transform -n "isLight120" -p "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" -16.284237526836925 0.11866021473479108 11.61075053228666 ;
	setAttr ".r" -type "double3" -0.33993846938092781 -54.510922702291026 -6.7916789254140685e-013 ;
createNode directionalLight -n "isLightShape120" -p "isLight120";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.12712269255251432 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.25670204 0.31678677 0.34968215 ;
	setAttr -l on ".cl";
createNode transform -n "isLight121" -p "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" -16.274772928662522 0.11866021473479108 -11.624013329049161 ;
	setAttr ".r" -type "double3" 179.66006153061926 -54.464244242081712 179.99999999999912 ;
createNode directionalLight -n "isLightShape121" -p "isLight121";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.11927259707192871 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.19040574 0.24184917 0.27028644 ;
	setAttr -l on ".cl";
createNode transform -n "isLight122" -p "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" -5.062673873615684 13.966044384189239 -13.39100210993432 ;
	setAttr ".r" -type "double3" 135.70905097639371 -20.70986813643712 180 ;
createNode directionalLight -n "isLightShape122" -p "isLight122";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.057933640992998095 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.20722596 0.28415009 0.34175941 ;
	setAttr -l on ".cl";
createNode transform -n "isLight123" -p "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" 11.655793874567685 12.780738787905603 -10.039680532213943 ;
	setAttr ".r" -type "double3" 140.27995607403315 49.260140665888677 180 ;
createNode directionalLight -n "isLightShape123" -p "isLight123";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.00023432527052832591 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 1.0663319 1.5491506 1.6698631 ;
	setAttr -l on ".cl";
createNode transform -n "isLight124" -p "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" 11.648413295282287 12.590972229839945 -10.285032134596864 ;
	setAttr ".r" -type "double3" 140.98317224290074 48.556924497021114 179.99999999999997 ;
createNode directionalLight -n "isLightShape124" -p "isLight124";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.0050340547422024198 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.39835155 0.23651348 0.19021106 ;
	setAttr -l on ".cl";
createNode transform -n "isLight125" -p "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" 11.468997012293054 12.780738787905603 -10.252552051432767 ;
	setAttr ".r" -type "double3" 140.27995607403315 48.205316412587301 179.99999999999997 ;
createNode directionalLight -n "isLightShape125" -p "isLight125";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 8.2113303628262254e-005 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.16440849 0.23399442 0.29865506 ;
	setAttr -l on ".cl";
createNode transform -n "isLight126" -p "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" 11.835777682917927 12.590972229839945 -10.068852216014555 ;
	setAttr ".r" -type "double3" 140.98317224290074 49.611748750322512 -180 ;
createNode directionalLight -n "isLightShape126" -p "isLight126";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.017369271164863143 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.65506142 0.50638694 0.43833005 ;
	setAttr -l on ".cl";
createNode transform -n "isLight127" -p "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" 11.652856421264786 12.686094382948154 -10.162378979959332 ;
	setAttr ".r" -type "double3" 140.63156415846694 48.908532581454899 180 ;
createNode directionalLight -n "isLightShape127" -p "isLight127";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 6.9223424570337364e-006 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 4.2941408 3.9772279 3.1430163 ;
	setAttr -l on ".cl";
createNode transform -n "isLight128" -p "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" 11.534635142484586 12.874901880479824 -10.059278984985786 ;
	setAttr ".r" -type "double3" 139.92834798959936 48.908532581454907 180 ;
createNode directionalLight -n "isLightShape128" -p "isLight128";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.013325747931253977 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.14180565 0.17277542 0.18698335 ;
	setAttr -l on ".cl";
createNode transform -n "isLight129" -p "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" 11.776702946908966 12.686094382948154 -10.018596558759961 ;
	setAttr ".r" -type "double3" 140.63156415846692 49.611748750322505 180 ;
createNode directionalLight -n "isLightShape129" -p "isLight129";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.008019653087205602 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.38172626 0.42282116 0.37036029 ;
	setAttr -l on ".cl";
createNode transform -n "toLightDome" -p "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData";
createNode nurbsSurface -n "toLightDomeShape" -p "|toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData|toLightDome";
	setAttr -k off ".v";
	setAttr ".csh" no;
	setAttr ".rcsh" no;
	setAttr ".tw" yes;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData";
	addAttr -ci true -sn "intensity" -ln "intensity" -dv 0.10000000000000001 
		-at "double";
	addAttr -ci true -sn "emitSpecular" -ln "emitSpecular" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "useDepthMapShadows" -ln "useDepthMapShadows" -dv 1 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "dmapResolution" -ln "dmapResolution" -dv 512 -at "short";
	addAttr -ci true -sn "dmapFilterSize" -ln "dmapFilterSize" -dv 6 -at "short";
	addAttr -ci true -sn "reuseDmap" -ln "reuseDmap" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "dmapSceneName" -ln "dmapSceneName" -dv 1 -min 0 -max 
		1 -at "bool";
	addAttr -ci true -sn "dmapLightName" -ln "dmapLightName" -dv 1 -min 0 -max 
		1 -at "bool";
	addAttr -ci true -sn "dmapFrameExt" -ln "dmapFrameExt" -dv 1 -min 0 -max 
		1 -at "bool";
	addAttr -ci true -sn "useRayTraceShadows" -ln "useRayTraceShadows" -min 
		0 -max 1 -at "bool";
	addAttr -ci true -sn "shadowRays" -ln "shadowRays" -dv 1 -at "short";
	addAttr -ci true -sn "rayDepthLimit" -ln "rayDepthLimit" -dv 1 -at "short";
	setAttr ".v" no;
	setAttr -k on ".intensity" 0.3;
	setAttr -k on ".emitSpecular";
	setAttr -k on ".useDepthMapShadows";
	setAttr -k on ".dmapResolution";
	setAttr -k on ".dmapFilterSize";
	setAttr -k on ".reuseDmap";
	setAttr -k on ".dmapSceneName";
	setAttr -k on ".dmapLightName";
	setAttr -k on ".dmapFrameExt";
	setAttr -k on ".useRayTraceShadows";
	setAttr -k on ".shadowRays";
	setAttr -k on ".rayDepthLimit";
createNode transform -n "isLight130" -p "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" -14.143574564011823 14.140695363356816 -0.0057613346448020528 ;
	setAttr ".r" -type "double3" 135.0058348075118 -89.976660769895346 180 ;
createNode directionalLight -n "isLightShape130" -p "isLight130";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.074485996180776573 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.22895932 0.29841474 0.34757799 ;
	setAttr -l on ".cl";
createNode transform -n "isLight131" -p "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" 19.999647990738215 0.11866021473479108 0 ;
	setAttr ".r" -type "double3" -0.33993846938148053 89.999999999999886 0 ;
createNode directionalLight -n "isLightShape131" -p "isLight131";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.13165070019096117 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.26574531 0.31670362 0.33285716 ;
	setAttr -l on ".cl";
createNode transform -n "isLight132" -p "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" -0.0040733923790494788 0.11866021473479108 
		19.999647575917773 ;
	setAttr ".r" -type "double3" -0.3399384764312805 -0.011669409661663016 3.4617671888136095e-005 ;
createNode directionalLight -n "isLightShape132" -p "isLight132";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.12591860280076386 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.20633391 0.24918863 0.26989964 ;
	setAttr -l on ".cl";
createNode transform -n "isLight133" -p "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" 0.012220176461250417 0.11866021473479108 -19.999644257354337 ;
	setAttr ".r" -type "double3" 179.66006153061818 0.035008845156947133 180 ;
createNode directionalLight -n "isLightShape133" -p "isLight133";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.12978485041374921 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.20640521 0.26276034 0.29080084 ;
	setAttr -l on ".cl";
createNode transform -n "isLight134" -p "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" 7.121218788529152 17.278768025283885 7.1226693377080688 ;
	setAttr ".r" -type "double3" -59.761704738693375 44.994165192473858 4.4975255769923167e-015 ;
createNode directionalLight -n "isLightShape134" -p "isLight134";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.078516390833863775 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.19737124 0.27631015 0.33522102 ;
	setAttr -l on ".cl";
createNode transform -n "isLight135" -p "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" 10.940837360475543 12.686094382948154 -10.925249981513183 ;
	setAttr ".r" -type "double3" 140.63156415846694 45.040843652683137 180 ;
createNode directionalLight -n "isLightShape135" -p "isLight135";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.042670591979630808 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.24498618 0.32250392 0.37363675 ;
	setAttr -l on ".cl";
createNode transform -n "isLight136" -p "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" -16.284237526836925 0.11866021473479108 11.61075053228666 ;
	setAttr ".r" -type "double3" -0.33993846938092781 -54.510922702291026 -6.7916789254140685e-013 ;
createNode directionalLight -n "isLightShape136" -p "isLight136";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.12712269255251432 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.29423153 0.33591759 0.34849 ;
	setAttr -l on ".cl";
createNode transform -n "isLight137" -p "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" -16.274772928662522 0.11866021473479108 -11.624013329049161 ;
	setAttr ".r" -type "double3" 179.66006153061926 -54.464244242081712 179.99999999999912 ;
createNode directionalLight -n "isLightShape137" -p "isLight137";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.11927259707192871 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.17967302 0.228341 0.25434601 ;
	setAttr -l on ".cl";
createNode transform -n "isLight138" -p "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" -5.062673873615684 13.966044384189239 -13.39100210993432 ;
	setAttr ".r" -type "double3" 135.70905097639371 -20.70986813643712 180 ;
createNode directionalLight -n "isLightShape138" -p "isLight138";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.05794326861871419 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.15328924 0.21475714 0.26164907 ;
	setAttr -l on ".cl";
createNode transform -n "isLight139" -p "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" 13.758613949941305 4.6177871529947181 13.761416496353762 ;
	setAttr ".r" -type "double3" -13.349437593432123 44.994165192473822 -1.6303530216597139e-013 ;
createNode directionalLight -n "isLightShape139" -p "isLight139";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.068301798217695733 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.2260773 0.28947303 0.32564136 ;
	setAttr -l on ".cl";
createNode transform -n "isLight140" -p "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" 15.423293958125081 10.279761902627797 -7.513221593068085 ;
	setAttr ".r" -type "double3" 149.0701581848781 64.027680212108265 180 ;
createNode directionalLight -n "isLightShape140" -p "isLight140";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.0064323679185232336 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.97835672 1.5694827 1.6398839 ;
	setAttr -l on ".cl";
createNode transform -n "isLight141" -p "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" 15.441503215947696 10.06843050580561 -7.7580078358841593 ;
	setAttr ".r" -type "double3" 149.77337435374571 63.324464043240646 180 ;
createNode directionalLight -n "isLightShape141" -p "isLight141";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.017125397835773395 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.48517334 0.39144015 0.35557079 ;
	setAttr -l on ".cl";
createNode transform -n "isLight142" -p "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" 15.282368523653092 10.279761902627797 -7.7958775986119333 ;
	setAttr ".r" -type "double3" 149.0701581848781 62.972855958806825 -180 ;
createNode directionalLight -n "isLightShape142" -p "isLight142";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.001659213876511776 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.27626339 0.34071761 0.35861483 ;
	setAttr -l on ".cl";
createNode transform -n "isLight143" -p "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" 15.581704534247967 10.06843050580561 -7.4724287187740615 ;
	setAttr ".r" -type "double3" 149.77337435374571 64.379288296542029 180 ;
createNode directionalLight -n "isLightShape143" -p "isLight143";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.013971594525779759 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.57945722 0.4845919 0.39991707 ;
	setAttr -l on ".cl";
createNode transform -n "isLight144" -p "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" 15.433149688628077 10.174287781979981 -7.635558841227791 ;
	setAttr ".r" -type "double3" 149.42176626931189 63.676072127674395 -180 ;
createNode directionalLight -n "isLightShape144" -p "isLight144";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 7.7180140038192237e-006 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 3.2162685 2.9615746 2.3588665 ;
	setAttr -l on ".cl";
createNode transform -n "isLight145" -p "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" 15.273263723302042 10.384848895678189 -7.6734821725470459 ;
	setAttr ".r" -type "double3" 148.7185501004443 63.324464043240653 -179.99999999999997 ;
createNode directionalLight -n "isLightShape145" -p "isLight145";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.005003500954805856 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.10837802 0.13803186 0.15032089 ;
	setAttr -l on ".cl";
createNode transform -n "toLightDome" -p "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData";
createNode nurbsSurface -n "toLightDomeShape" -p "|toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData|toLightDome";
	setAttr -k off ".v";
	setAttr ".csh" no;
	setAttr ".rcsh" no;
	setAttr ".tw" yes;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData";
	addAttr -ci true -sn "intensity" -ln "intensity" -dv 0.10000000000000001 
		-at "double";
	addAttr -ci true -sn "emitSpecular" -ln "emitSpecular" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "useDepthMapShadows" -ln "useDepthMapShadows" -dv 1 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "dmapResolution" -ln "dmapResolution" -dv 512 -at "short";
	addAttr -ci true -sn "dmapFilterSize" -ln "dmapFilterSize" -dv 6 -at "short";
	addAttr -ci true -sn "reuseDmap" -ln "reuseDmap" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "dmapSceneName" -ln "dmapSceneName" -dv 1 -min 0 -max 
		1 -at "bool";
	addAttr -ci true -sn "dmapLightName" -ln "dmapLightName" -dv 1 -min 0 -max 
		1 -at "bool";
	addAttr -ci true -sn "dmapFrameExt" -ln "dmapFrameExt" -dv 1 -min 0 -max 
		1 -at "bool";
	addAttr -ci true -sn "useRayTraceShadows" -ln "useRayTraceShadows" -min 
		0 -max 1 -at "bool";
	addAttr -ci true -sn "shadowRays" -ln "shadowRays" -dv 1 -at "short";
	addAttr -ci true -sn "rayDepthLimit" -ln "rayDepthLimit" -dv 1 -at "short";
	setAttr ".v" no;
	setAttr -k on ".intensity" 0.3;
	setAttr -k on ".emitSpecular";
	setAttr -k on ".useDepthMapShadows";
	setAttr -k on ".dmapResolution";
	setAttr -k on ".dmapFilterSize";
	setAttr -k on ".reuseDmap";
	setAttr -k on ".dmapSceneName";
	setAttr -k on ".dmapLightName";
	setAttr -k on ".dmapFrameExt";
	setAttr -k on ".useRayTraceShadows";
	setAttr -k on ".shadowRays";
	setAttr -k on ".rayDepthLimit";
createNode transform -n "isLight146" -p "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" -14.143574564011823 14.140695363356816 -0.0057613346448020528 ;
	setAttr ".r" -type "double3" 135.0058348075118 -89.976660769895346 180 ;
createNode directionalLight -n "isLightShape146" -p "isLight146";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.074485996180776573 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.29549623 0.33782977 0.35374495 ;
	setAttr -l on ".cl";
createNode transform -n "isLight147" -p "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" 19.999647990738215 0.11866021473479108 0 ;
	setAttr ".r" -type "double3" -0.33993846938148053 89.999999999999886 0 ;
createNode directionalLight -n "isLightShape147" -p "isLight147";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.11979877466581795 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.25534362 0.27158713 0.25844952 ;
	setAttr -l on ".cl";
createNode transform -n "isLight148" -p "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" -0.0040733923790494788 0.11866021473479108 
		19.999647575917773 ;
	setAttr ".r" -type "double3" -0.3399384764312805 -0.011669409661663016 3.4617671888136095e-005 ;
createNode directionalLight -n "isLightShape148" -p "isLight148";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.12591860280076386 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.20266554 0.23443487 0.24279594 ;
	setAttr -l on ".cl";
createNode transform -n "isLight149" -p "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" 0.012220176461250417 0.11866021473479108 -19.999644257354337 ;
	setAttr ".r" -type "double3" 179.66006153061818 0.035008845156947133 180 ;
createNode directionalLight -n "isLightShape149" -p "isLight149";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.12964497135582431 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.16677859 0.2092777 0.22654174 ;
	setAttr -l on ".cl";
createNode transform -n "isLight150" -p "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" 7.121218788529152 17.278768025283885 7.1226693377080688 ;
	setAttr ".r" -type "double3" -59.761704738693375 44.994165192473858 4.4975255769923167e-015 ;
createNode directionalLight -n "isLightShape150" -p "isLight150";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.078710773392743474 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.17691648 0.2431106 0.28863186 ;
	setAttr -l on ".cl";
createNode transform -n "isLight151" -p "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" 10.940837360475543 12.686094382948154 -10.925249981513183 ;
	setAttr ".r" -type "double3" 140.63156415846694 45.040843652683137 180 ;
createNode directionalLight -n "isLightShape151" -p "isLight151";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.053101607256524505 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.25430644 0.32850391 0.37021422 ;
	setAttr -l on ".cl";
createNode transform -n "isLight152" -p "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" -16.284237526836925 0.11866021473479108 11.61075053228666 ;
	setAttr ".r" -type "double3" -0.33993846938092781 -54.510922702291026 -6.7916789254140685e-013 ;
createNode directionalLight -n "isLightShape152" -p "isLight152";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.12712269255251432 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.26085109 0.28076044 0.2737112 ;
	setAttr -l on ".cl";
createNode transform -n "isLight153" -p "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" -16.274772928662522 0.11866021473479108 -11.624013329049161 ;
	setAttr ".r" -type "double3" 179.66006153061926 -54.464244242081712 179.99999999999912 ;
createNode directionalLight -n "isLightShape153" -p "isLight153";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.11927259707192871 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.16608927 0.20771629 0.22591665 ;
	setAttr -l on ".cl";
createNode transform -n "isLight154" -p "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" -5.062673873615684 13.966044384189239 -13.39100210993432 ;
	setAttr ".r" -type "double3" 135.70905097639371 -20.70986813643712 180 ;
createNode directionalLight -n "isLightShape154" -p "isLight154";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.05794326861871419 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.14231263 0.18759219 0.2182916 ;
	setAttr -l on ".cl";
createNode transform -n "isLight155" -p "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" 13.758613949941305 4.6177871529947181 13.761416496353762 ;
	setAttr ".r" -type "double3" -13.349437593432123 44.994165192473822 -1.6303530216597139e-013 ;
createNode directionalLight -n "isLightShape155" -p "isLight155";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.06793133354551241 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.2315093 0.28968769 0.31585354 ;
	setAttr -l on ".cl";
createNode transform -n "isLight156" -p "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" 18.173484253026892 6.8502394797689048 -4.7747972914877881 ;
	setAttr ".r" -type "double3" 159.97000880232594 75.279138913989797 -179.99999999999991 ;
createNode directionalLight -n "isLightShape156" -p "isLight156";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 2.2437937619350734e-005 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 3.1325002 3.0381255 2.3832092 ;
	setAttr -l on ".cl";
createNode transform -n "isLight157" -p "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" 18.061292557291722 7.0803389410226023 -4.8640016077461921 ;
	setAttr ".r" -type "double3" 159.26679263345827 74.927530829555963 -179.99999999999997 ;
createNode directionalLight -n "isLightShape157" -p "isLight157";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.014537953532781667 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.58662689 0.73902631 0.70975977 ;
	setAttr -l on ".cl";
createNode transform -n "isLight158" -p "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" 18.253429643494226 6.6191081301078727 -4.795801686052731 ;
	setAttr ".r" -type "double3" 160.67322497119341 75.279138913989783 179.99999999999997 ;
createNode directionalLight -n "isLightShape158" -p "isLight158";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.010669637173774666 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.23821606 0.21884786 0.19735846 ;
	setAttr -l on ".cl";
createNode transform -n "isLight159" -p "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" 18.113513763360356 6.8502394797689048 -4.9974831880027777 ;
	setAttr ".r" -type "double3" 159.97000880232585 74.57592274512217 -180 ;
createNode directionalLight -n "isLightShape159" -p "isLight159";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.012853119032463398 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.20264043 0.21973452 0.216341 ;
	setAttr -l on ".cl";
createNode transform -n "isLight160" -p "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" 18.184090542522931 6.7348006185361804 -4.8970717546195646 ;
	setAttr ".r" -type "double3" 160.32161688675964 74.927530829555977 -180 ;
createNode directionalLight -n "isLightShape160" -p "isLight160";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.00055434436664544883 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.79448003 0.4285244 0.19633006 ;
	setAttr -l on ".cl";
createNode transform -n "isLight161" -p "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" 18.242823353998176 6.7348006185361804 -4.6735272229209697 ;
	setAttr ".r" -type "double3" 160.32161688675973 75.630746998423589 -179.99999999999989 ;
createNode directionalLight -n "isLightShape161" -p "isLight161";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.0072990133672819861 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.29261318 0.24085373 0.19955471 ;
	setAttr -l on ".cl";
createNode transform -n "toLightDome" -p "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData";
createNode nurbsSurface -n "toLightDomeShape" -p "|toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData|toLightDome";
	setAttr -k off ".v";
	setAttr ".csh" no;
	setAttr ".rcsh" no;
	setAttr ".tw" yes;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData";
	addAttr -ci true -sn "intensity" -ln "intensity" -dv 0.10000000000000001 
		-at "double";
	addAttr -ci true -sn "emitSpecular" -ln "emitSpecular" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "useDepthMapShadows" -ln "useDepthMapShadows" -dv 1 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "dmapResolution" -ln "dmapResolution" -dv 512 -at "short";
	addAttr -ci true -sn "dmapFilterSize" -ln "dmapFilterSize" -dv 6 -at "short";
	addAttr -ci true -sn "reuseDmap" -ln "reuseDmap" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "dmapSceneName" -ln "dmapSceneName" -dv 1 -min 0 -max 
		1 -at "bool";
	addAttr -ci true -sn "dmapLightName" -ln "dmapLightName" -dv 1 -min 0 -max 
		1 -at "bool";
	addAttr -ci true -sn "dmapFrameExt" -ln "dmapFrameExt" -dv 1 -min 0 -max 
		1 -at "bool";
	addAttr -ci true -sn "useRayTraceShadows" -ln "useRayTraceShadows" -min 
		0 -max 1 -at "bool";
	addAttr -ci true -sn "shadowRays" -ln "shadowRays" -dv 1 -at "short";
	addAttr -ci true -sn "rayDepthLimit" -ln "rayDepthLimit" -dv 1 -at "short";
	setAttr -k on ".intensity" 0.3;
	setAttr -k on ".emitSpecular";
	setAttr -k on ".useDepthMapShadows";
	setAttr -k on ".dmapResolution";
	setAttr -k on ".dmapFilterSize";
	setAttr -k on ".reuseDmap";
	setAttr -k on ".dmapSceneName";
	setAttr -k on ".dmapLightName";
	setAttr -k on ".dmapFrameExt";
	setAttr -k on ".useRayTraceShadows";
	setAttr -k on ".shadowRays";
	setAttr -k on ".rayDepthLimit";
createNode transform -n "isLight162" -p "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" -14.143574564011823 14.140695363356816 -0.0057613346448020528 ;
	setAttr ".r" -type "double3" 135.0058348075118 -89.976660769895346 180 ;
createNode directionalLight -n "isLightShape162" -p "isLight162";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.061088796944621264 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.11415414 0.13752393 0.14603747 ;
	setAttr -l on ".cl";
createNode transform -n "isLight163" -p "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" 19.999647990738215 0.11866021473479108 0 ;
	setAttr ".r" -type "double3" -0.33993846938148053 89.999999999999886 0 ;
createNode directionalLight -n "isLightShape163" -p "isLight163";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.088581317632081477 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.11711426 0.10582621 0.083801866 ;
	setAttr -l on ".cl";
createNode transform -n "isLight164" -p "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" -0.0040733923790494788 0.11866021473479108 
		19.999647575917773 ;
	setAttr ".r" -type "double3" -0.3399384764312805 -0.011669409661663016 3.4617671888136095e-005 ;
createNode directionalLight -n "isLightShape164" -p "isLight164";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.11265833863781033 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.068867289 0.077033103 0.075120866 ;
	setAttr -l on ".cl";
createNode transform -n "isLight165" -p "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" 0.012220176461250417 0.11866021473479108 -19.999644257354337 ;
	setAttr ".r" -type "double3" 179.66006153061818 0.035008845156947133 180 ;
createNode directionalLight -n "isLightShape165" -p "isLight165";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.090731381285805227 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.072643943 0.088476472 0.090369828 ;
	setAttr -l on ".cl";
createNode transform -n "isLight166" -p "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" 7.121218788529152 17.278768025283885 7.1226693377080688 ;
	setAttr ".r" -type "double3" -59.761704738693375 44.994165192473858 4.4975255769923167e-015 ;
createNode directionalLight -n "isLightShape166" -p "isLight166";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.064939290260980276 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.15277676 0.17151861 0.17265885 ;
	setAttr -l on ".cl";
createNode transform -n "isLight167" -p "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" 10.940837360475543 12.686094382948154 -10.925249981513183 ;
	setAttr ".r" -type "double3" 140.63156415846694 45.040843652683137 180 ;
createNode directionalLight -n "isLightShape167" -p "isLight167";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.05248138128580522 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.12541489 0.15649235 0.16830906 ;
	setAttr -l on ".cl";
createNode transform -n "isLight168" -p "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" -16.284237526836925 0.11866021473479108 11.61075053228666 ;
	setAttr ".r" -type "double3" -0.33993846938092781 -54.510922702291026 -6.7916789254140685e-013 ;
createNode directionalLight -n "isLightShape168" -p "isLight168";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.11777339274347549 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.088686578 0.096424222 0.09174946 ;
	setAttr -l on ".cl";
createNode transform -n "isLight169" -p "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" -16.274772928662522 0.11866021473479108 -11.624013329049161 ;
	setAttr ".r" -type "double3" 179.66006153061926 -54.464244242081712 179.99999999999912 ;
createNode directionalLight -n "isLightShape169" -p "isLight169";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.11927259707192871 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.09931016 0.11892883 0.12022363 ;
	setAttr -l on ".cl";
createNode transform -n "isLight170" -p "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" -5.062673873615684 13.966044384189239 -13.39100210993432 ;
	setAttr ".r" -type "double3" 135.70905097639371 -20.70986813643712 180 ;
createNode directionalLight -n "isLightShape170" -p "isLight170";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.05794326861871419 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.075085506 0.10059882 0.11486889 ;
	setAttr -l on ".cl";
createNode transform -n "isLight171" -p "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" 13.758613949941305 4.6177871529947181 13.761416496353762 ;
	setAttr ".r" -type "double3" -13.349437593432123 44.994165192473822 -1.6303530216597139e-013 ;
createNode directionalLight -n "isLightShape171" -p "isLight171";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.067590388287714839 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.19448303 0.21248205 0.20218612 ;
	setAttr -l on ".cl";
createNode transform -n "isLight172" -p "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" -6.5976629938748514 12.968580114564194 13.721762745047901 ;
	setAttr ".r" -type "double3" -40.423260094834468 -25.679059778719591 1.9410078341883997e-014 ;
createNode directionalLight -n "isLightShape172" -p "isLight172";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.05105649267982177 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.10925122 0.12418702 0.12529032 ;
	setAttr -l on ".cl";
createNode transform -n "isLight173" -p "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" 12.698463174237906 0.11866021473479108 -15.45105021563139 ;
	setAttr ".r" -type "double3" 179.66006153061863 39.415114301742385 -179.99999999999986 ;
createNode directionalLight -n "isLightShape173" -p "isLight173";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.081240133672819861 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.11465101 0.12412222 0.11442315 ;
	setAttr -l on ".cl";
createNode transform -n "isLight174" -p "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" 19.683504569388077 3.0523111499525801 -1.8008454988570866 ;
	setAttr ".r" -type "double3" 171.22146750420731 84.77255719370234 179.99999999999994 ;
createNode directionalLight -n "isLightShape174" -p "isLight174";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.0022169796308084025 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 1.0940617 1.0735987 0.7535221 ;
	setAttr -l on ".cl";
createNode transform -n "isLight175" -p "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" 19.724673228627339 2.6879245958726843 -1.9267400942458996 ;
	setAttr ".r" -type "double3" 172.27629175750906 84.420949109268534 -179.99999999999972 ;
createNode directionalLight -n "isLightShape175" -p "isLight175";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.004835295989815404 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.27401966 0.14434707 0.083044782 ;
	setAttr -l on ".cl";
createNode transform -n "isLight176" -p "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" 19.633317112726722 3.2946684052588009 -1.9178162713100233 ;
	setAttr ".r" -type "double3" 170.51825133534035 84.42094910926852 -179.99999999999946 ;
createNode directionalLight -n "isLightShape176" -p "isLight176";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.021917886696371739 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.25034273 0.28393367 0.26451331 ;
	setAttr -l on ".cl";
createNode transform -n "isLight177" -p "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" 19.678180657837022 2.9309578180405245 -2.0441849883012404 ;
	setAttr ".r" -type "double3" 171.57307558864079 84.069341024834685 179.99999999999963 ;
createNode directionalLight -n "isLightShape177" -p "isLight177";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.0055401814131126673 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.81427532 0.47616604 0.25243145 ;
	setAttr -l on ".cl";
createNode transform -n "toLightDome" -p "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData";
createNode nurbsSurface -n "toLightDomeShape" -p "|toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData|toLightDome";
	setAttr -k off ".v";
	setAttr ".csh" no;
	setAttr ".rcsh" no;
	setAttr ".tw" yes;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData";
	addAttr -ci true -sn "intensity" -ln "intensity" -dv 0.10000000000000001 
		-at "double";
	addAttr -ci true -sn "emitSpecular" -ln "emitSpecular" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "useDepthMapShadows" -ln "useDepthMapShadows" -dv 1 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "dmapResolution" -ln "dmapResolution" -dv 512 -at "short";
	addAttr -ci true -sn "dmapFilterSize" -ln "dmapFilterSize" -dv 6 -at "short";
	addAttr -ci true -sn "reuseDmap" -ln "reuseDmap" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "dmapSceneName" -ln "dmapSceneName" -dv 1 -min 0 -max 
		1 -at "bool";
	addAttr -ci true -sn "dmapLightName" -ln "dmapLightName" -dv 1 -min 0 -max 
		1 -at "bool";
	addAttr -ci true -sn "dmapFrameExt" -ln "dmapFrameExt" -dv 1 -min 0 -max 
		1 -at "bool";
	addAttr -ci true -sn "useRayTraceShadows" -ln "useRayTraceShadows" -min 
		0 -max 1 -at "bool";
	addAttr -ci true -sn "shadowRays" -ln "shadowRays" -dv 1 -at "short";
	addAttr -ci true -sn "rayDepthLimit" -ln "rayDepthLimit" -dv 1 -at "short";
	addAttr -ci true -h true -sn "dfm" -ln "miDeriveFromMaya" -bt "UNKN" -dv 
		1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "hde" -ln "miHide" -bt "UNKN" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "vsb" -ln "miVisible" -bt "UNKN" -dv 2 -at "short";
	addAttr -ci true -sn "trc" -ln "miTrace" -bt "UNKN" -dv 2 -at "short";
	addAttr -ci true -sn "shd" -ln "miShadow" -bt "UNKN" -dv 2 -at "short";
	addAttr -ci true -sn "cst" -ln "miCaustic" -bt "UNKN" -dv 5 -at "short";
	addAttr -ci true -sn "glb" -ln "miGlobillum" -bt "UNKN" -dv 5 -at "short";
	addAttr -ci true -sn "mieg" -ln "miExportGeoShader" -bt "UNKN" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -sn "migs" -ln "miGeoShader" -bt "UNKN" -at "message";
	setAttr ".v" no;
	setAttr -k on ".intensity" 4;
	setAttr -k on ".emitSpecular";
	setAttr -k on ".useDepthMapShadows";
	setAttr -k on ".dmapResolution";
	setAttr -k on ".dmapFilterSize";
	setAttr -k on ".reuseDmap";
	setAttr -k on ".dmapSceneName";
	setAttr -k on ".dmapLightName";
	setAttr -k on ".dmapFrameExt";
	setAttr -k on ".useRayTraceShadows";
	setAttr -k on ".shadowRays";
	setAttr -k on ".rayDepthLimit";
createNode transform -n "isLight178" -p "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" 13.836826584505543 14.140695363356816 2.9296697273002903 ;
	setAttr ".r" -type "double3" -44.994165192473879 78.045325129250841 -6.141909527229359e-014 ;
createNode directionalLight -n "isLightShape178" -p "isLight178";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.054655315085932528 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.0035400605 0.0051901969 0.0061451183 ;
	setAttr -l on ".cl";
createNode transform -n "isLight179" -p "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" -19.564545792356892 -0.0040734640739035575 
		-4.1507266045429505 ;
	setAttr ".r" -type "double3" 0.011669614998308826 258.02198589914622 5.5214429270206651e-011 ;
createNode directionalLight -n "isLightShape179" -p "isLight179";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.13521912794398472 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.0006397572 0.00088744151 0.00082025613 ;
	setAttr -l on ".cl";
createNode transform -n "isLight180" -p "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" 4.1546382535017132 0.11866021473479108 -19.563356070367359 ;
	setAttr ".r" -type "double3" 179.66006153061855 11.989683715906096 -179.99999999999991 ;
createNode directionalLight -n "isLightShape180" -p "isLight180";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.090370623806492675 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.0018011244 0.0022404646 0.002281578 ;
	setAttr -l on ".cl";
createNode transform -n "isLight181" -p "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" -4.146668846163398 0.11866021473479108 19.565046824214271 ;
	setAttr ".r" -type "double3" -0.33993846938255162 -11.966344485801418 5.1666343195646421e-012 ;
createNode directionalLight -n "isLightShape181" -p "isLight181";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.17899005410566521 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.0021068465 0.0031070786 0.0033840798 ;
	setAttr -l on ".cl";
createNode transform -n "isLight182" -p "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" -8.4779127794335469 17.278768025283885 5.437754171783113 ;
	setAttr ".r" -type "double3" -59.761704738693375 -57.323787377761434 -5.8911062381285343e-015 ;
createNode directionalLight -n "isLightShape182" -p "isLight182";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.090873488224061119 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.003951869 0.0059783095 0.0070691337 ;
	setAttr -l on ".cl";
createNode transform -n "isLight183" -p "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" -8.4246799771990961 12.686094382948154 -12.964867010066545 ;
	setAttr ".r" -type "double3" 140.63156415846694 -33.016151091620024 -180 ;
createNode directionalLight -n "isLightShape183" -p "isLight183";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.060588796944621263 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.0029364333 0.0044683777 0.0053298092 ;
	setAttr -l on ".cl";
createNode transform -n "isLight184" -p "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" 14.566918566930697 8.7697221369883209 10.530757670007734 ;
	setAttr ".r" -type "double3" -26.007328633048829 54.13597538775258 -7.8718051292663453e-014 ;
createNode directionalLight -n "isLightShape184" -p "isLight184";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.04073878103119033 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.0032579012 0.004671352 0.0053066565 ;
	setAttr -l on ".cl";
createNode transform -n "isLight185" -p "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" 16.477250924647485 6.6191081301078727 9.202587110597948 ;
	setAttr ".r" -type "double3" -19.326775028806441 60.816528991994772 1.4023960186973271e-013 ;
createNode directionalLight -n "isLightShape185" -p "isLight185";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.0066952577975811587 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.0011492607 0.0014718107 0.0015763576 ;
	setAttr -l on ".cl";
createNode transform -n "isLight186" -p "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" 13.63012695861849 7.8770619780646012 -12.335782653957164 ;
	setAttr ".r" -type "double3" 156.80553604242166 47.853708328153516 180 ;
createNode directionalLight -n "isLightShape186" -p "isLight186";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.044161123488224062 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.0041764891 0.0055796625 0.0061777523 ;
	setAttr -l on ".cl";
createNode transform -n "isLight187" -p "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" -17.55840441221936 7.4234775647295468 -6.0493318096226787 ;
	setAttr ".r" -type "double3" 158.21196838015683 -70.989824210470275 -180 ;
createNode directionalLight -n "isLightShape187" -p "isLight187";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.040092934436664548 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.002100199 0.0029870751 0.0032950598 ;
	setAttr -l on ".cl";
createNode transform -n "isLight188" -p "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" -3.8856711183963597 0.97741205245530782 -19.594545813551676 ;
	setAttr ".r" -type "double3" 177.19880493958195 -11.216449856724585 180 ;
createNode directionalLight -n "isLightShape188" -p "isLight188";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.073231779121578619 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.0015706163 0.0020591309 0.0021200606 ;
	setAttr -l on ".cl";
createNode transform -n "isLight189" -p "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" 19.999364756791937 0.11866021473479108 -0.10643814272936475 ;
	setAttr ".r" -type "double3" 179.66006153068108 89.695070375775529 -179.99999999993744 ;
createNode directionalLight -n "isLightShape189" -p "isLight189";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.088352721196690007 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.001970842 0.0015698173 0.0011957983 ;
	setAttr -l on ".cl";
createNode transform -n "isLight190" -p "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" 17.589159962484505 4.3786091607486703 8.4527648513098903 ;
	setAttr ".r" -type "double3" -12.646221424564482 64.332609836332722 -8.9950685914041274e-014 ;
createNode directionalLight -n "isLightShape190" -p "isLight190";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.036104869509866327 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.0017817426 0.0018799591 0.0017155504 ;
	setAttr -l on ".cl";
createNode transform -n "isLight191" -p "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" 17.491149267224227 4.3786091607486703 -8.6537552039036303 ;
	setAttr ".r" -type "double3" 167.35377857543565 63.676072127674438 -179.99999999999997 ;
createNode directionalLight -n "isLightShape191" -p "isLight191";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.020479949077021008 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.002618565 0.002818547 0.0026900035 ;
	setAttr -l on ".cl";
createNode transform -n "isLight192" -p "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" 18.539246870970906 3.536529366947347 -6.6173473154969269 ;
	setAttr ".r" -type "double3" 169.81503516647214 70.356625731916594 179.99999999999997 ;
createNode directionalLight -n "isLightShape192" -p "isLight192";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.013445735200509229 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.0015691611 0.0016449549 0.0015438297 ;
	setAttr -l on ".cl";
createNode transform -n "isLight193" -p "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" 18.939014596182425 3.536529366947347 5.3671860562410192 ;
	setAttr ".r" -type "double3" -10.184964833527875 74.1776362004791 -4.6660363269403488e-014 ;
createNode directionalLight -n "isLightShape193" -p "isLight193";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.014774427116486313 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.0032389415 0.0034709745 0.0032902493 ;
	setAttr -l on ".cl";
createNode transform -n "isLight194" -p "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData";
	setAttr ".t" -type "double3" 19.350118322723212 2.8094941086052279 -4.2047192237204136 ;
	setAttr ".r" -type "double3" 171.9246836730749 77.740395505026385 179.99999999999991 ;
createNode directionalLight -n "isLightShape194" -p "isLight194";
	addAttr -ci true -sn "nSolidAngle" -ln "nSolidAngle" -dv 0.011092218332272438 
		-at "double";
	setAttr -k off ".v";
	setAttr -l on ".cl" -type "float3" 0.0028098638 0.0029444152 0.0027620094 ;
	setAttr -l on ".cl";
createNode transform -n "toLightDome" -p "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData";
createNode nurbsSurface -n "toLightDomeShape" -p "|toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData|toLightDome";
	setAttr -k off ".v";
	setAttr ".csh" no;
	setAttr ".rcsh" no;
	setAttr ".tw" yes;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode lightLinker -n "lightLinker1";
	setAttr ".ihi" 0;
	setAttr -s 17 ".lnk";
createNode brush -n "brush1";
createNode displayLayerManager -n "layerManager";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
createNode renderLayer -s -n "globalRender";
createNode checker -n "checker1";
	setAttr ".c1" -type "float3" 0.89999998 0.89999998 0.89999998 ;
	setAttr ".c2" -type "float3" 0.1 0.1 0.1 ;
createNode place2dTexture -n "place2dTexture1";
	setAttr ".re" -type "float2" 6 6 ;
createNode lambert -n "lambert2";
createNode shadingEngine -n "lambert2SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
createNode script -n "uiConfigurationScriptNode";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n"
		+ "//\n"
		+ "//  This script is machine generated.  Edit at your own risk.\n"
		+ "//\n"
		+ "//\n"
		+ "global string $gMainPane;\n"
		+ "if (`paneLayout -exists $gMainPane`) {\n"
		+ "\tglobal int $gUseScenePanelConfig;\n"
		+ "\tint    $useSceneConfig = $gUseScenePanelConfig;\n"
		+ "\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n"
		+ "\tint    $nPanes = 0;\n"
		+ "\tstring $editorName;\n"
		+ "\tstring $panelName;\n"
		+ "\tstring $itemFilterName;\n"
		+ "\tstring $panelConfig;\n"
		+ "\t//\n"
		+ "\t//  get current state of the UI\n"
		+ "\t//\n"
		+ "\tsceneUIReplacement -update $gMainPane;\n"
		+ "\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" \"Top View\"`;\n"
		+ "\tif (\"\" == $panelName) {\n"
		+ "\t\tif ($useSceneConfig) {\n"
		+ "\t\t\t$panelName = `modelPanel -unParent -l \"Top View\" -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n"
		+ "            modelEditor -e \n"
		+ "                -camera \"top\" \n"
		+ "                -useInteractiveMode 0\n"
		+ "                -displayLights \"default\" \n"
		+ "                -displayAppearance \"wireframe\" \n"
		+ "                -activeOnly 0\n"
		+ "                -wireframeOnShaded 0\n"
		+ "                -bufferMode \"double\" \n"
		+ "                -twoSidedLighting 1\n"
		+ "                -backfaceCulling 0\n"
		+ "                -xray 0\n"
		+ "                -displayTextures 0\n"
		+ "                -smoothWireframe 0\n"
		+ "                -textureAnisotropic 0\n"
		+ "                -textureHilight 1\n"
		+ "                -textureSampling 2\n"
		+ "                -textureDisplay \"modulate\" \n"
		+ "                -textureMaxSize 1024\n"
		+ "                -fogging 0\n"
		+ "                -fogSource \"fragment\" \n"
		+ "                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n"
		+ "                -fogEnd 100\n"
		+ "                -fogDensity 0.1\n"
		+ "                -fogColor 0.5 0.5 0.5 1 \n"
		+ "                -sortTransparent 1\n"
		+ "                -nurbsCurves 1\n"
		+ "                -nurbsSurfaces 1\n"
		+ "                -polymeshes 1\n"
		+ "                -subdivSurfaces 1\n"
		+ "                -planes 1\n"
		+ "                -lights 1\n"
		+ "                -cameras 1\n"
		+ "                -controlVertices 1\n"
		+ "                -hulls 1\n"
		+ "                -grid 1\n"
		+ "                -joints 1\n"
		+ "                -ikHandles 1\n"
		+ "                -deformers 1\n"
		+ "                -dynamics 1\n"
		+ "                -fluids 1\n"
		+ "                -locators 1\n"
		+ "                -dimensions 1\n"
		+ "                -handles 1\n"
		+ "                -pivots 1\n"
		+ "                -textures 1\n"
		+ "                -strokes 1\n"
		+ "                -shadows 0\n"
		+ "                $editorName;\n"
		+ "modelEditor -e -viewSelected 0 $editorName;\n"
		+ "\t\t}\n"
		+ "\t} else {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tmodelPanel -edit -l \"Top View\" -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n"
		+ "        modelEditor -e \n"
		+ "            -camera \"top\" \n"
		+ "            -useInteractiveMode 0\n"
		+ "            -displayLights \"default\" \n"
		+ "            -displayAppearance \"wireframe\" \n"
		+ "            -activeOnly 0\n"
		+ "            -wireframeOnShaded 0\n"
		+ "            -bufferMode \"double\" \n"
		+ "            -twoSidedLighting 1\n"
		+ "            -backfaceCulling 0\n"
		+ "            -xray 0\n"
		+ "            -displayTextures 0\n"
		+ "            -smoothWireframe 0\n"
		+ "            -textureAnisotropic 0\n"
		+ "            -textureHilight 1\n"
		+ "            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n"
		+ "            -textureMaxSize 1024\n"
		+ "            -fogging 0\n"
		+ "            -fogSource \"fragment\" \n"
		+ "            -fogMode \"linear\" \n"
		+ "            -fogStart 0\n"
		+ "            -fogEnd 100\n"
		+ "            -fogDensity 0.1\n"
		+ "            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -sortTransparent 1\n"
		+ "            -nurbsCurves 1\n"
		+ "            -nurbsSurfaces 1\n"
		+ "            -polymeshes 1\n"
		+ "            -subdivSurfaces 1\n"
		+ "            -planes 1\n"
		+ "            -lights 1\n"
		+ "            -cameras 1\n"
		+ "            -controlVertices 1\n"
		+ "            -hulls 1\n"
		+ "            -grid 1\n"
		+ "            -joints 1\n"
		+ "            -ikHandles 1\n"
		+ "            -deformers 1\n"
		+ "            -dynamics 1\n"
		+ "            -fluids 1\n"
		+ "            -locators 1\n"
		+ "            -dimensions 1\n"
		+ "            -handles 1\n"
		+ "            -pivots 1\n"
		+ "            -textures 1\n"
		+ "            -strokes 1\n"
		+ "            -shadows 0\n"
		+ "            $editorName;\n"
		+ "modelEditor -e -viewSelected 0 $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n"
		+ "\t}\n"
		+ "\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" \"Side View\"`;\n"
		+ "\tif (\"\" == $panelName) {\n"
		+ "\t\tif ($useSceneConfig) {\n"
		+ "\t\t\t$panelName = `modelPanel -unParent -l \"Side View\" -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n"
		+ "            modelEditor -e \n"
		+ "                -camera \"side\" \n"
		+ "                -useInteractiveMode 0\n"
		+ "                -displayLights \"default\" \n"
		+ "                -displayAppearance \"wireframe\" \n"
		+ "                -activeOnly 0\n"
		+ "                -wireframeOnShaded 0\n"
		+ "                -bufferMode \"double\" \n"
		+ "                -twoSidedLighting 1\n"
		+ "                -backfaceCulling 0\n"
		+ "                -xray 0\n"
		+ "                -displayTextures 0\n"
		+ "                -smoothWireframe 0\n"
		+ "                -textureAnisotropic 0\n"
		+ "                -textureHilight 1\n"
		+ "                -textureSampling 2\n"
		+ "                -textureDisplay \"modulate\" \n"
		+ "                -textureMaxSize 1024\n"
		+ "                -fogging 0\n"
		+ "                -fogSource \"fragment\" \n"
		+ "                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n"
		+ "                -fogEnd 100\n"
		+ "                -fogDensity 0.1\n"
		+ "                -fogColor 0.5 0.5 0.5 1 \n"
		+ "                -sortTransparent 1\n"
		+ "                -nurbsCurves 1\n"
		+ "                -nurbsSurfaces 1\n"
		+ "                -polymeshes 1\n"
		+ "                -subdivSurfaces 1\n"
		+ "                -planes 1\n"
		+ "                -lights 1\n"
		+ "                -cameras 1\n"
		+ "                -controlVertices 1\n"
		+ "                -hulls 1\n"
		+ "                -grid 1\n"
		+ "                -joints 1\n"
		+ "                -ikHandles 1\n"
		+ "                -deformers 1\n"
		+ "                -dynamics 1\n"
		+ "                -fluids 1\n"
		+ "                -locators 1\n"
		+ "                -dimensions 1\n"
		+ "                -handles 1\n"
		+ "                -pivots 1\n"
		+ "                -textures 1\n"
		+ "                -strokes 1\n"
		+ "                -shadows 0\n"
		+ "                $editorName;\n"
		+ "modelEditor -e -viewSelected 0 $editorName;\n"
		+ "\t\t}\n"
		+ "\t} else {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tmodelPanel -edit -l \"Side View\" -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n"
		+ "        modelEditor -e \n"
		+ "            -camera \"side\" \n"
		+ "            -useInteractiveMode 0\n"
		+ "            -displayLights \"default\" \n"
		+ "            -displayAppearance \"wireframe\" \n"
		+ "            -activeOnly 0\n"
		+ "            -wireframeOnShaded 0\n"
		+ "            -bufferMode \"double\" \n"
		+ "            -twoSidedLighting 1\n"
		+ "            -backfaceCulling 0\n"
		+ "            -xray 0\n"
		+ "            -displayTextures 0\n"
		+ "            -smoothWireframe 0\n"
		+ "            -textureAnisotropic 0\n"
		+ "            -textureHilight 1\n"
		+ "            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n"
		+ "            -textureMaxSize 1024\n"
		+ "            -fogging 0\n"
		+ "            -fogSource \"fragment\" \n"
		+ "            -fogMode \"linear\" \n"
		+ "            -fogStart 0\n"
		+ "            -fogEnd 100\n"
		+ "            -fogDensity 0.1\n"
		+ "            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -sortTransparent 1\n"
		+ "            -nurbsCurves 1\n"
		+ "            -nurbsSurfaces 1\n"
		+ "            -polymeshes 1\n"
		+ "            -subdivSurfaces 1\n"
		+ "            -planes 1\n"
		+ "            -lights 1\n"
		+ "            -cameras 1\n"
		+ "            -controlVertices 1\n"
		+ "            -hulls 1\n"
		+ "            -grid 1\n"
		+ "            -joints 1\n"
		+ "            -ikHandles 1\n"
		+ "            -deformers 1\n"
		+ "            -dynamics 1\n"
		+ "            -fluids 1\n"
		+ "            -locators 1\n"
		+ "            -dimensions 1\n"
		+ "            -handles 1\n"
		+ "            -pivots 1\n"
		+ "            -textures 1\n"
		+ "            -strokes 1\n"
		+ "            -shadows 0\n"
		+ "            $editorName;\n"
		+ "modelEditor -e -viewSelected 0 $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n"
		+ "\t}\n"
		+ "\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" \"Front View\"`;\n"
		+ "\tif (\"\" == $panelName) {\n"
		+ "\t\tif ($useSceneConfig) {\n"
		+ "\t\t\t$panelName = `modelPanel -unParent -l \"Front View\" -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n"
		+ "            modelEditor -e \n"
		+ "                -camera \"front\" \n"
		+ "                -useInteractiveMode 0\n"
		+ "                -displayLights \"default\" \n"
		+ "                -displayAppearance \"wireframe\" \n"
		+ "                -activeOnly 0\n"
		+ "                -wireframeOnShaded 0\n"
		+ "                -bufferMode \"double\" \n"
		+ "                -twoSidedLighting 1\n"
		+ "                -backfaceCulling 0\n"
		+ "                -xray 0\n"
		+ "                -displayTextures 0\n"
		+ "                -smoothWireframe 0\n"
		+ "                -textureAnisotropic 0\n"
		+ "                -textureHilight 1\n"
		+ "                -textureSampling 2\n"
		+ "                -textureDisplay \"modulate\" \n"
		+ "                -textureMaxSize 1024\n"
		+ "                -fogging 0\n"
		+ "                -fogSource \"fragment\" \n"
		+ "                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n"
		+ "                -fogEnd 100\n"
		+ "                -fogDensity 0.1\n"
		+ "                -fogColor 0.5 0.5 0.5 1 \n"
		+ "                -sortTransparent 1\n"
		+ "                -nurbsCurves 1\n"
		+ "                -nurbsSurfaces 1\n"
		+ "                -polymeshes 1\n"
		+ "                -subdivSurfaces 1\n"
		+ "                -planes 1\n"
		+ "                -lights 1\n"
		+ "                -cameras 1\n"
		+ "                -controlVertices 1\n"
		+ "                -hulls 1\n"
		+ "                -grid 1\n"
		+ "                -joints 1\n"
		+ "                -ikHandles 1\n"
		+ "                -deformers 1\n"
		+ "                -dynamics 1\n"
		+ "                -fluids 1\n"
		+ "                -locators 1\n"
		+ "                -dimensions 1\n"
		+ "                -handles 1\n"
		+ "                -pivots 1\n"
		+ "                -textures 1\n"
		+ "                -strokes 1\n"
		+ "                -shadows 0\n"
		+ "                $editorName;\n"
		+ "modelEditor -e -viewSelected 0 $editorName;\n"
		+ "\t\t}\n"
		+ "\t} else {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tmodelPanel -edit -l \"Front View\" -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n"
		+ "        modelEditor -e \n"
		+ "            -camera \"front\" \n"
		+ "            -useInteractiveMode 0\n"
		+ "            -displayLights \"default\" \n"
		+ "            -displayAppearance \"wireframe\" \n"
		+ "            -activeOnly 0\n"
		+ "            -wireframeOnShaded 0\n"
		+ "            -bufferMode \"double\" \n"
		+ "            -twoSidedLighting 1\n"
		+ "            -backfaceCulling 0\n"
		+ "            -xray 0\n"
		+ "            -displayTextures 0\n"
		+ "            -smoothWireframe 0\n"
		+ "            -textureAnisotropic 0\n"
		+ "            -textureHilight 1\n"
		+ "            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n"
		+ "            -textureMaxSize 1024\n"
		+ "            -fogging 0\n"
		+ "            -fogSource \"fragment\" \n"
		+ "            -fogMode \"linear\" \n"
		+ "            -fogStart 0\n"
		+ "            -fogEnd 100\n"
		+ "            -fogDensity 0.1\n"
		+ "            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -sortTransparent 1\n"
		+ "            -nurbsCurves 1\n"
		+ "            -nurbsSurfaces 1\n"
		+ "            -polymeshes 1\n"
		+ "            -subdivSurfaces 1\n"
		+ "            -planes 1\n"
		+ "            -lights 1\n"
		+ "            -cameras 1\n"
		+ "            -controlVertices 1\n"
		+ "            -hulls 1\n"
		+ "            -grid 1\n"
		+ "            -joints 1\n"
		+ "            -ikHandles 1\n"
		+ "            -deformers 1\n"
		+ "            -dynamics 1\n"
		+ "            -fluids 1\n"
		+ "            -locators 1\n"
		+ "            -dimensions 1\n"
		+ "            -handles 1\n"
		+ "            -pivots 1\n"
		+ "            -textures 1\n"
		+ "            -strokes 1\n"
		+ "            -shadows 0\n"
		+ "            $editorName;\n"
		+ "modelEditor -e -viewSelected 0 $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n"
		+ "\t}\n"
		+ "\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" \"Persp View\"`;\n"
		+ "\tif (\"\" == $panelName) {\n"
		+ "\t\tif ($useSceneConfig) {\n"
		+ "\t\t\t$panelName = `modelPanel -unParent -l \"Persp View\" -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n"
		+ "            modelEditor -e \n"
		+ "                -camera \"persp\" \n"
		+ "                -useInteractiveMode 0\n"
		+ "                -displayLights \"default\" \n"
		+ "                -displayAppearance \"smoothShaded\" \n"
		+ "                -activeOnly 0\n"
		+ "                -wireframeOnShaded 0\n"
		+ "                -bufferMode \"double\" \n"
		+ "                -twoSidedLighting 1\n"
		+ "                -backfaceCulling 0\n"
		+ "                -xray 0\n"
		+ "                -displayTextures 0\n"
		+ "                -smoothWireframe 0\n"
		+ "                -textureAnisotropic 0\n"
		+ "                -textureHilight 1\n"
		+ "                -textureSampling 2\n"
		+ "                -textureDisplay \"modulate\" \n"
		+ "                -textureMaxSize 1024\n"
		+ "                -fogging 0\n"
		+ "                -fogSource \"fragment\" \n"
		+ "                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n"
		+ "                -fogEnd 100\n"
		+ "                -fogDensity 0.1\n"
		+ "                -fogColor 0.5 0.5 0.5 1 \n"
		+ "                -sortTransparent 1\n"
		+ "                -nurbsCurves 1\n"
		+ "                -nurbsSurfaces 1\n"
		+ "                -polymeshes 1\n"
		+ "                -subdivSurfaces 1\n"
		+ "                -planes 1\n"
		+ "                -lights 1\n"
		+ "                -cameras 1\n"
		+ "                -controlVertices 1\n"
		+ "                -hulls 1\n"
		+ "                -grid 1\n"
		+ "                -joints 1\n"
		+ "                -ikHandles 1\n"
		+ "                -deformers 1\n"
		+ "                -dynamics 1\n"
		+ "                -fluids 1\n"
		+ "                -locators 1\n"
		+ "                -dimensions 1\n"
		+ "                -handles 1\n"
		+ "                -pivots 1\n"
		+ "                -textures 1\n"
		+ "                -strokes 1\n"
		+ "                -shadows 0\n"
		+ "                $editorName;\n"
		+ "modelEditor -e -viewSelected 0 $editorName;\n"
		+ "\t\t}\n"
		+ "\t} else {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tmodelPanel -edit -l \"Persp View\" -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n"
		+ "        modelEditor -e \n"
		+ "            -camera \"persp\" \n"
		+ "            -useInteractiveMode 0\n"
		+ "            -displayLights \"default\" \n"
		+ "            -displayAppearance \"smoothShaded\" \n"
		+ "            -activeOnly 0\n"
		+ "            -wireframeOnShaded 0\n"
		+ "            -bufferMode \"double\" \n"
		+ "            -twoSidedLighting 1\n"
		+ "            -backfaceCulling 0\n"
		+ "            -xray 0\n"
		+ "            -displayTextures 0\n"
		+ "            -smoothWireframe 0\n"
		+ "            -textureAnisotropic 0\n"
		+ "            -textureHilight 1\n"
		+ "            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n"
		+ "            -textureMaxSize 1024\n"
		+ "            -fogging 0\n"
		+ "            -fogSource \"fragment\" \n"
		+ "            -fogMode \"linear\" \n"
		+ "            -fogStart 0\n"
		+ "            -fogEnd 100\n"
		+ "            -fogDensity 0.1\n"
		+ "            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -sortTransparent 1\n"
		+ "            -nurbsCurves 1\n"
		+ "            -nurbsSurfaces 1\n"
		+ "            -polymeshes 1\n"
		+ "            -subdivSurfaces 1\n"
		+ "            -planes 1\n"
		+ "            -lights 1\n"
		+ "            -cameras 1\n"
		+ "            -controlVertices 1\n"
		+ "            -hulls 1\n"
		+ "            -grid 1\n"
		+ "            -joints 1\n"
		+ "            -ikHandles 1\n"
		+ "            -deformers 1\n"
		+ "            -dynamics 1\n"
		+ "            -fluids 1\n"
		+ "            -locators 1\n"
		+ "            -dimensions 1\n"
		+ "            -handles 1\n"
		+ "            -pivots 1\n"
		+ "            -textures 1\n"
		+ "            -strokes 1\n"
		+ "            -shadows 0\n"
		+ "            $editorName;\n"
		+ "modelEditor -e -viewSelected 0 $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n"
		+ "\t}\n"
		+ "\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" \"Outliner\"`;\n"
		+ "\tif (\"\" == $panelName) {\n"
		+ "\t\tif ($useSceneConfig) {\n"
		+ "\t\t\t$panelName = `outlinerPanel -unParent -l \"Outliner\" -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n"
		+ "            outlinerEditor -e \n"
		+ "                -mainListConnection \"worldList\" \n"
		+ "                -selectionConnection \"modelList\" \n"
		+ "                -showShapes 0\n"
		+ "                -showAttributes 0\n"
		+ "                -showConnected 0\n"
		+ "                -showAnimCurvesOnly 0\n"
		+ "                -autoExpand 0\n"
		+ "                -showDagOnly 1\n"
		+ "                -ignoreDagHierarchy 0\n"
		+ "                -expandConnections 0\n"
		+ "                -showUnitlessCurves 1\n"
		+ "                -showCompounds 1\n"
		+ "                -showLeafs 1\n"
		+ "                -showNumericAttrsOnly 0\n"
		+ "                -highlightActive 1\n"
		+ "                -autoSelectNewObjects 0\n"
		+ "                -doNotSelectNewObjects 0\n"
		+ "                -dropIsParent 1\n"
		+ "                -transmitFilters 0\n"
		+ "                -setFilter \"defaultSetFilter\" \n"
		+ "                -showSetMembers 1\n"
		+ "                -allowMultiSelection 1\n"
		+ "                -alwaysToggleSelect 0\n"
		+ "                -directSelect 0\n"
		+ "                -displayMode \"DAG\" \n"
		+ "                -expandObjects 0\n"
		+ "                -setsIgnoreFilters 1\n"
		+ "                -editAttrName 0\n"
		+ "                -showAttrValues 0\n"
		+ "                -highlightSecondary 0\n"
		+ "                -showUVAttrsOnly 0\n"
		+ "                -showTextureNodesOnly 0\n"
		+ "                -sortOrder \"none\" \n"
		+ "                -longNames 0\n"
		+ "                -niceNames 1\n"
		+ "                $editorName;\n"
		+ "\t\t}\n"
		+ "\t} else {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\toutlinerPanel -edit -l \"Outliner\" -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n"
		+ "        outlinerEditor -e \n"
		+ "            -mainListConnection \"worldList\" \n"
		+ "            -selectionConnection \"modelList\" \n"
		+ "            -showShapes 0\n"
		+ "            -showAttributes 0\n"
		+ "            -showConnected 0\n"
		+ "            -showAnimCurvesOnly 0\n"
		+ "            -autoExpand 0\n"
		+ "            -showDagOnly 1\n"
		+ "            -ignoreDagHierarchy 0\n"
		+ "            -expandConnections 0\n"
		+ "            -showUnitlessCurves 1\n"
		+ "            -showCompounds 1\n"
		+ "            -showLeafs 1\n"
		+ "            -showNumericAttrsOnly 0\n"
		+ "            -highlightActive 1\n"
		+ "            -autoSelectNewObjects 0\n"
		+ "            -doNotSelectNewObjects 0\n"
		+ "            -dropIsParent 1\n"
		+ "            -transmitFilters 0\n"
		+ "            -setFilter \"defaultSetFilter\" \n"
		+ "            -showSetMembers 1\n"
		+ "            -allowMultiSelection 1\n"
		+ "            -alwaysToggleSelect 0\n"
		+ "            -directSelect 0\n"
		+ "            -displayMode \"DAG\" \n"
		+ "            -expandObjects 0\n"
		+ "            -setsIgnoreFilters 1\n"
		+ "            -editAttrName 0\n"
		+ "            -showAttrValues 0\n"
		+ "            -highlightSecondary 0\n"
		+ "            -showUVAttrsOnly 0\n"
		+ "            -showTextureNodesOnly 0\n"
		+ "            -sortOrder \"none\" \n"
		+ "            -longNames 0\n"
		+ "            -niceNames 1\n"
		+ "            $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n"
		+ "\t}\n"
		+ "\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" \"Graph Editor\"`;\n"
		+ "\tif (\"\" == $panelName) {\n"
		+ "\t\tif ($useSceneConfig) {\n"
		+ "\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l \"Graph Editor\" -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = ($panelName+\"OutlineEd\");\n"
		+ "            outlinerEditor -e \n"
		+ "                -mainListConnection \"graphEditorList\" \n"
		+ "                -selectionConnection \"graphEditor1FromOutliner\" \n"
		+ "                -highlightConnection \"keyframeList\" \n"
		+ "                -showShapes 1\n"
		+ "                -showAttributes 1\n"
		+ "                -showConnected 1\n"
		+ "                -showAnimCurvesOnly 1\n"
		+ "                -autoExpand 1\n"
		+ "                -showDagOnly 0\n"
		+ "                -ignoreDagHierarchy 0\n"
		+ "                -expandConnections 1\n"
		+ "                -showUnitlessCurves 1\n"
		+ "                -showCompounds 0\n"
		+ "                -showLeafs 1\n"
		+ "                -showNumericAttrsOnly 1\n"
		+ "                -highlightActive 0\n"
		+ "                -autoSelectNewObjects 1\n"
		+ "                -doNotSelectNewObjects 0\n"
		+ "                -dropIsParent 1\n"
		+ "                -transmitFilters 1\n"
		+ "                -setFilter \"0\" \n"
		+ "                -showSetMembers 0\n"
		+ "                -allowMultiSelection 1\n"
		+ "                -alwaysToggleSelect 0\n"
		+ "                -directSelect 0\n"
		+ "                -displayMode \"DAG\" \n"
		+ "                -expandObjects 0\n"
		+ "                -setsIgnoreFilters 1\n"
		+ "                -editAttrName 0\n"
		+ "                -showAttrValues 0\n"
		+ "                -highlightSecondary 0\n"
		+ "                -showUVAttrsOnly 0\n"
		+ "                -showTextureNodesOnly 0\n"
		+ "                -sortOrder \"none\" \n"
		+ "                -longNames 0\n"
		+ "                -niceNames 1\n"
		+ "                $editorName;\n"
		+ "\t\t\t$editorName = ($panelName+\"GraphEd\");\n"
		+ "            animCurveEditor -e \n"
		+ "                -mainListConnection \"graphEditor1FromOutliner\" \n"
		+ "                -displayKeys 1\n"
		+ "                -displayTangents 0\n"
		+ "                -displayActiveKeys 0\n"
		+ "                -displayActiveKeyTangents 1\n"
		+ "                -displayInfinities 0\n"
		+ "                -autoFit 0\n"
		+ "                -snapTime \"integer\" \n"
		+ "                -snapValue \"none\" \n"
		+ "                -showResults \"off\" \n"
		+ "                -showBufferCurves \"off\" \n"
		+ "                -smoothness \"fine\" \n"
		+ "                -resultSamples 1\n"
		+ "                -resultScreenSamples 0\n"
		+ "                -resultUpdate \"delayed\" \n"
		+ "                $editorName;\n"
		+ "\t\t}\n"
		+ "\t} else {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l \"Graph Editor\" -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t\t$editorName = ($panelName+\"OutlineEd\");\n"
		+ "            outlinerEditor -e \n"
		+ "                -mainListConnection \"graphEditorList\" \n"
		+ "                -selectionConnection \"graphEditor1FromOutliner\" \n"
		+ "                -highlightConnection \"keyframeList\" \n"
		+ "                -showShapes 1\n"
		+ "                -showAttributes 1\n"
		+ "                -showConnected 1\n"
		+ "                -showAnimCurvesOnly 1\n"
		+ "                -autoExpand 1\n"
		+ "                -showDagOnly 0\n"
		+ "                -ignoreDagHierarchy 0\n"
		+ "                -expandConnections 1\n"
		+ "                -showUnitlessCurves 1\n"
		+ "                -showCompounds 0\n"
		+ "                -showLeafs 1\n"
		+ "                -showNumericAttrsOnly 1\n"
		+ "                -highlightActive 0\n"
		+ "                -autoSelectNewObjects 1\n"
		+ "                -doNotSelectNewObjects 0\n"
		+ "                -dropIsParent 1\n"
		+ "                -transmitFilters 1\n"
		+ "                -setFilter \"0\" \n"
		+ "                -showSetMembers 0\n"
		+ "                -allowMultiSelection 1\n"
		+ "                -alwaysToggleSelect 0\n"
		+ "                -directSelect 0\n"
		+ "                -displayMode \"DAG\" \n"
		+ "                -expandObjects 0\n"
		+ "                -setsIgnoreFilters 1\n"
		+ "                -editAttrName 0\n"
		+ "                -showAttrValues 0\n"
		+ "                -highlightSecondary 0\n"
		+ "                -showUVAttrsOnly 0\n"
		+ "                -showTextureNodesOnly 0\n"
		+ "                -sortOrder \"none\" \n"
		+ "                -longNames 0\n"
		+ "                -niceNames 1\n"
		+ "                $editorName;\n"
		+ "\t\t\t$editorName = ($panelName+\"GraphEd\");\n"
		+ "            animCurveEditor -e \n"
		+ "                -mainListConnection \"graphEditor1FromOutliner\" \n"
		+ "                -displayKeys 1\n"
		+ "                -displayTangents 0\n"
		+ "                -displayActiveKeys 0\n"
		+ "                -displayActiveKeyTangents 1\n"
		+ "                -displayInfinities 0\n"
		+ "                -autoFit 0\n"
		+ "                -snapTime \"integer\" \n"
		+ "                -snapValue \"none\" \n"
		+ "                -showResults \"off\" \n"
		+ "                -showBufferCurves \"off\" \n"
		+ "                -smoothness \"fine\" \n"
		+ "                -resultSamples 1\n"
		+ "                -resultScreenSamples 0\n"
		+ "                -resultUpdate \"delayed\" \n"
		+ "                $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n"
		+ "\t}\n"
		+ "\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" \"Dope Sheet\"`;\n"
		+ "\tif (\"\" == $panelName) {\n"
		+ "\t\tif ($useSceneConfig) {\n"
		+ "\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l \"Dope Sheet\" -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = ($panelName+\"OutlineEd\");\n"
		+ "            outlinerEditor -e \n"
		+ "                -mainListConnection \"animationList\" \n"
		+ "                -selectionConnection \"dopeSheetPanel1OutlinerSelection\" \n"
		+ "                -highlightConnection \"keyframeList\" \n"
		+ "                -showShapes 1\n"
		+ "                -showAttributes 1\n"
		+ "                -showConnected 1\n"
		+ "                -showAnimCurvesOnly 1\n"
		+ "                -autoExpand 0\n"
		+ "                -showDagOnly 0\n"
		+ "                -ignoreDagHierarchy 0\n"
		+ "                -expandConnections 1\n"
		+ "                -showUnitlessCurves 0\n"
		+ "                -showCompounds 1\n"
		+ "                -showLeafs 1\n"
		+ "                -showNumericAttrsOnly 1\n"
		+ "                -highlightActive 0\n"
		+ "                -autoSelectNewObjects 0\n"
		+ "                -doNotSelectNewObjects 1\n"
		+ "                -dropIsParent 1\n"
		+ "                -transmitFilters 0\n"
		+ "                -setFilter \"0\" \n"
		+ "                -showSetMembers 0\n"
		+ "                -allowMultiSelection 1\n"
		+ "                -alwaysToggleSelect 0\n"
		+ "                -directSelect 0\n"
		+ "                -displayMode \"DAG\" \n"
		+ "                -expandObjects 0\n"
		+ "                -setsIgnoreFilters 1\n"
		+ "                -editAttrName 0\n"
		+ "                -showAttrValues 0\n"
		+ "                -highlightSecondary 0\n"
		+ "                -showUVAttrsOnly 0\n"
		+ "                -showTextureNodesOnly 0\n"
		+ "                -sortOrder \"none\" \n"
		+ "                -longNames 0\n"
		+ "                -niceNames 1\n"
		+ "                $editorName;\n"
		+ "\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n"
		+ "            dopeSheetEditor -e \n"
		+ "                -mainListConnection \"dopeSheetPanel1FromOutliner\" \n"
		+ "                -highlightConnection \"dopeSheetPanel1OutlinerSelection\" \n"
		+ "                -displayKeys 1\n"
		+ "                -displayTangents 0\n"
		+ "                -displayActiveKeys 0\n"
		+ "                -displayActiveKeyTangents 0\n"
		+ "                -displayInfinities 0\n"
		+ "                -autoFit 0\n"
		+ "                -snapTime \"integer\" \n"
		+ "                -snapValue \"none\" \n"
		+ "                -outliner \"dopeSheetPanel1OutlineEd\" \n"
		+ "                -showSummary 1\n"
		+ "                -showScene 0\n"
		+ "                -hierarchyBelow 0\n"
		+ "                $editorName;\n"
		+ "\t\t}\n"
		+ "\t} else {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l \"Dope Sheet\" -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t\t$editorName = ($panelName+\"OutlineEd\");\n"
		+ "            outlinerEditor -e \n"
		+ "                -mainListConnection \"animationList\" \n"
		+ "                -selectionConnection \"dopeSheetPanel1OutlinerSelection\" \n"
		+ "                -highlightConnection \"keyframeList\" \n"
		+ "                -showShapes 1\n"
		+ "                -showAttributes 1\n"
		+ "                -showConnected 1\n"
		+ "                -showAnimCurvesOnly 1\n"
		+ "                -autoExpand 0\n"
		+ "                -showDagOnly 0\n"
		+ "                -ignoreDagHierarchy 0\n"
		+ "                -expandConnections 1\n"
		+ "                -showUnitlessCurves 0\n"
		+ "                -showCompounds 1\n"
		+ "                -showLeafs 1\n"
		+ "                -showNumericAttrsOnly 1\n"
		+ "                -highlightActive 0\n"
		+ "                -autoSelectNewObjects 0\n"
		+ "                -doNotSelectNewObjects 1\n"
		+ "                -dropIsParent 1\n"
		+ "                -transmitFilters 0\n"
		+ "                -setFilter \"0\" \n"
		+ "                -showSetMembers 0\n"
		+ "                -allowMultiSelection 1\n"
		+ "                -alwaysToggleSelect 0\n"
		+ "                -directSelect 0\n"
		+ "                -displayMode \"DAG\" \n"
		+ "                -expandObjects 0\n"
		+ "                -setsIgnoreFilters 1\n"
		+ "                -editAttrName 0\n"
		+ "                -showAttrValues 0\n"
		+ "                -highlightSecondary 0\n"
		+ "                -showUVAttrsOnly 0\n"
		+ "                -showTextureNodesOnly 0\n"
		+ "                -sortOrder \"none\" \n"
		+ "                -longNames 0\n"
		+ "                -niceNames 1\n"
		+ "                $editorName;\n"
		+ "\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n"
		+ "            dopeSheetEditor -e \n"
		+ "                -mainListConnection \"dopeSheetPanel1FromOutliner\" \n"
		+ "                -highlightConnection \"dopeSheetPanel1OutlinerSelection\" \n"
		+ "                -displayKeys 1\n"
		+ "                -displayTangents 0\n"
		+ "                -displayActiveKeys 0\n"
		+ "                -displayActiveKeyTangents 0\n"
		+ "                -displayInfinities 0\n"
		+ "                -autoFit 0\n"
		+ "                -snapTime \"integer\" \n"
		+ "                -snapValue \"none\" \n"
		+ "                -outliner \"dopeSheetPanel1OutlineEd\" \n"
		+ "                -showSummary 1\n"
		+ "                -showScene 0\n"
		+ "                -hierarchyBelow 0\n"
		+ "                $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n"
		+ "\t}\n"
		+ "\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" \"Trax Editor\"`;\n"
		+ "\tif (\"\" == $panelName) {\n"
		+ "\t\tif ($useSceneConfig) {\n"
		+ "\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l \"Trax Editor\" -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = ($panelName+\"ClipEditor\");\n"
		+ "            clipEditor -e \n"
		+ "                -characterOutline \"clipEditorPanel1OutlineEditor\" \n"
		+ "                -menuContext \"track\" \n"
		+ "                $editorName;\n"
		+ "\t\t}\n"
		+ "\t} else {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l \"Trax Editor\" -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t\t$editorName = ($panelName+\"ClipEditor\");\n"
		+ "            clipEditor -e \n"
		+ "                -characterOutline \"clipEditorPanel1OutlineEditor\" \n"
		+ "                -menuContext \"track\" \n"
		+ "                $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n"
		+ "\t}\n"
		+ "\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" \"Hypergraph\"`;\n"
		+ "\tif (\"\" == $panelName) {\n"
		+ "\t\tif ($useSceneConfig) {\n"
		+ "\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l \"Hypergraph\" -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n"
		+ "            hyperGraph -e \n"
		+ "                -orientation \"horiz\" \n"
		+ "                -zoom 1\n"
		+ "                -animateTransition 0\n"
		+ "                -showShapes 0\n"
		+ "                -showDeformers 0\n"
		+ "                -showExpressions 0\n"
		+ "                -showConstraints 0\n"
		+ "                -showUnderworld 0\n"
		+ "                -showInvisible 0\n"
		+ "                -transitionFrames 1\n"
		+ "                -freeform 0\n"
		+ "                -imageEnabled 0\n"
		+ "                -graphType \"DAG\" \n"
		+ "                -updateSelection 1\n"
		+ "                -updateNodeAdded 1\n"
		+ "                $editorName;\n"
		+ "\t\t}\n"
		+ "\t} else {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l \"Hypergraph\" -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n"
		+ "            hyperGraph -e \n"
		+ "                -orientation \"horiz\" \n"
		+ "                -zoom 1\n"
		+ "                -animateTransition 0\n"
		+ "                -showShapes 0\n"
		+ "                -showDeformers 0\n"
		+ "                -showExpressions 0\n"
		+ "                -showConstraints 0\n"
		+ "                -showUnderworld 0\n"
		+ "                -showInvisible 0\n"
		+ "                -transitionFrames 1\n"
		+ "                -freeform 0\n"
		+ "                -imageEnabled 0\n"
		+ "                -graphType \"DAG\" \n"
		+ "                -updateSelection 1\n"
		+ "                -updateNodeAdded 1\n"
		+ "                $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n"
		+ "\t}\n"
		+ "\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" \"Hypershade\"`;\n"
		+ "\tif (\"\" == $panelName) {\n"
		+ "\t\tif ($useSceneConfig) {\n"
		+ "\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l \"Hypershade\" -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n"
		+ "\t} else {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l \"Hypershade\" -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n"
		+ "\t}\n"
		+ "\tif ($useSceneConfig) {\n"
		+ "\t\tscriptedPanel -e -to $panelName;\n"
		+ "\t}\n"
		+ "\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" \"Visor\"`;\n"
		+ "\tif (\"\" == $panelName) {\n"
		+ "\t\tif ($useSceneConfig) {\n"
		+ "\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l \"Visor\" -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n"
		+ "\t} else {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l \"Visor\" -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n"
		+ "\t}\n"
		+ "\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" \"UV Texture Editor\"`;\n"
		+ "\tif (\"\" == $panelName) {\n"
		+ "\t\tif ($useSceneConfig) {\n"
		+ "\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l \"UV Texture Editor\" -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n"
		+ "\t} else {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l \"UV Texture Editor\" -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n"
		+ "\t}\n"
		+ "\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"multiListerPanel\" \"Multilister\"`;\n"
		+ "\tif (\"\" == $panelName) {\n"
		+ "\t\tif ($useSceneConfig) {\n"
		+ "\t\t\t$panelName = `scriptedPanel -unParent  -type \"multiListerPanel\" -l \"Multilister\" -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n"
		+ "\t} else {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l \"Multilister\" -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n"
		+ "\t}\n"
		+ "\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" \"Render View\"`;\n"
		+ "\tif (\"\" == $panelName) {\n"
		+ "\t\tif ($useSceneConfig) {\n"
		+ "\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l \"Render View\" -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n"
		+ "\t} else {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l \"Render View\" -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n"
		+ "\t}\n"
		+ "\tif ($useSceneConfig) {\n"
		+ "\t\tscriptedPanel -e -to $panelName;\n"
		+ "\t}\n"
		+ "\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" \"Blend Shape\"`;\n"
		+ "\tif (\"\" == $panelName) {\n"
		+ "\t\tif ($useSceneConfig) {\n"
		+ "\t\t\tblendShapePanel -unParent -l \"Blend Shape\" -mbv $menusOkayInPanels ;\n"
		+ "\t\t}\n"
		+ "\t} else {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tblendShapePanel -edit -l \"Blend Shape\" -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n"
		+ "\t}\n"
		+ "\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" \"Dynamic Relationships\"`;\n"
		+ "\tif (\"\" == $panelName) {\n"
		+ "\t\tif ($useSceneConfig) {\n"
		+ "\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l \"Dynamic Relationships\" -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n"
		+ "\t} else {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l \"Dynamic Relationships\" -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n"
		+ "\t}\n"
		+ "\t$panelName = `sceneUIReplacement -getNextPanel \"devicePanel\" \"Devices\"`;\n"
		+ "\tif (\"\" == $panelName) {\n"
		+ "\t\tif ($useSceneConfig) {\n"
		+ "\t\t\tdevicePanel -unParent -l \"Devices\" -mbv $menusOkayInPanels ;\n"
		+ "\t\t}\n"
		+ "\t} else {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tdevicePanel -edit -l \"Devices\" -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n"
		+ "\t}\n"
		+ "\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" \"Relationship Editor\"`;\n"
		+ "\tif (\"\" == $panelName) {\n"
		+ "\t\tif ($useSceneConfig) {\n"
		+ "\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l \"Relationship Editor\" -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n"
		+ "\t} else {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l \"Relationship Editor\" -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n"
		+ "\t}\n"
		+ "\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" \"Reference Editor\"`;\n"
		+ "\tif (\"\" == $panelName) {\n"
		+ "\t\tif ($useSceneConfig) {\n"
		+ "\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l \"Reference Editor\" -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n"
		+ "\t} else {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l \"Reference Editor\" -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n"
		+ "\t}\n"
		+ "\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" \"Component Editor\"`;\n"
		+ "\tif (\"\" == $panelName) {\n"
		+ "\t\tif ($useSceneConfig) {\n"
		+ "\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l \"Component Editor\" -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n"
		+ "\t} else {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l \"Component Editor\" -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n"
		+ "\t}\n"
		+ "\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" \"Paint Effects\"`;\n"
		+ "\tif (\"\" == $panelName) {\n"
		+ "\t\tif ($useSceneConfig) {\n"
		+ "\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l \"Paint Effects\" -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n"
		+ "\t} else {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l \"Paint Effects\" -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n"
		+ "\t}\n"
		+ "\tif ($useSceneConfig) {\n"
		+ "        string $configName = `getPanel -cwl \"Current Layout\"`;\n"
		+ "        if (\"\" != $configName) {\n"
		+ "\t\t\tpanelConfiguration -edit -label \"Current Layout\"\n"
		+ "\t\t\t\t-defaultImage \"\"\n"
		+ "\t\t\t\t-image \"\"\n"
		+ "\t\t\t\t-sc false\n"
		+ "\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"vertical2\\\" -ps 1 43 100 -ps 2 57 100 $gMainPane;\"\n"
		+ "\t\t\t\t-removeAllPanels\n"
		+ "\t\t\t\t-ap true\n"
		+ "\t\t\t\t\t\"Outliner\"\n"
		+ "\t\t\t\t\t\"outlinerPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `outlinerPanel -unParent -l \\\"Outliner\\\" -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\noutlinerEditor -e \\n    -mainListConnection \\\"worldList\\\" \\n    -selectionConnection \\\"modelList\\\" \\n    -showShapes 0\\n    -showAttributes 0\\n    -showConnected 0\\n    -showAnimCurvesOnly 0\\n    -autoExpand 0\\n    -showDagOnly 1\\n    -ignoreDagHierarchy 0\\n    -expandConnections 0\\n    -showUnitlessCurves 1\\n    -showCompounds 1\\n    -showLeafs 1\\n    -showNumericAttrsOnly 0\\n    -highlightActive 1\\n    -autoSelectNewObjects 0\\n    -doNotSelectNewObjects 0\\n    -dropIsParent 1\\n    -transmitFilters 0\\n    -setFilter \\\"defaultSetFilter\\\" \\n    -showSetMembers 1\\n    -allowMultiSelection 1\\n    -alwaysToggleSelect 0\\n    -directSelect 0\\n    -displayMode \\\"DAG\\\" \\n    -expandObjects 0\\n    -setsIgnoreFilters 1\\n    -editAttrName 0\\n    -showAttrValues 0\\n    -highlightSecondary 0\\n    -showUVAttrsOnly 0\\n    -showTextureNodesOnly 0\\n    -sortOrder \\\"none\\\" \\n    -longNames 0\\n    -niceNames 1\\n    $editorName\"\n"
		+ "\t\t\t\t\t\"outlinerPanel -edit -l \\\"Outliner\\\" -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\noutlinerEditor -e \\n    -mainListConnection \\\"worldList\\\" \\n    -selectionConnection \\\"modelList\\\" \\n    -showShapes 0\\n    -showAttributes 0\\n    -showConnected 0\\n    -showAnimCurvesOnly 0\\n    -autoExpand 0\\n    -showDagOnly 1\\n    -ignoreDagHierarchy 0\\n    -expandConnections 0\\n    -showUnitlessCurves 1\\n    -showCompounds 1\\n    -showLeafs 1\\n    -showNumericAttrsOnly 0\\n    -highlightActive 1\\n    -autoSelectNewObjects 0\\n    -doNotSelectNewObjects 0\\n    -dropIsParent 1\\n    -transmitFilters 0\\n    -setFilter \\\"defaultSetFilter\\\" \\n    -showSetMembers 1\\n    -allowMultiSelection 1\\n    -alwaysToggleSelect 0\\n    -directSelect 0\\n    -displayMode \\\"DAG\\\" \\n    -expandObjects 0\\n    -setsIgnoreFilters 1\\n    -editAttrName 0\\n    -showAttrValues 0\\n    -highlightSecondary 0\\n    -showUVAttrsOnly 0\\n    -showTextureNodesOnly 0\\n    -sortOrder \\\"none\\\" \\n    -longNames 0\\n    -niceNames 1\\n    $editorName\"\n"
		+ "\t\t\t\t-ap false\n"
		+ "\t\t\t\t\t\"Persp View\"\n"
		+ "\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l \\\"Persp View\\\" -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -wireframeOnShaded 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 1024\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -locators 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l \\\"Persp View\\\" -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -wireframeOnShaded 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 1024\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -locators 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n"
		+ "            setNamedPanelLayout \"Current Layout\";\n"
		+ "        }\n"
		+ "        panelHistory -e -clear mainPanelHistory;\n"
		+ "        setFocus `paneLayout -q -p1 $gMainPane`;\n"
		+ "        sceneUIReplacement -deleteRemaining;\n"
		+ "        sceneUIReplacement -clear;\n"
		+ "\t}\n"
		+ "grid -spacing 1 -size 10 -divisions 1 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\n"
		+ "}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 10 -ast 1 -aet 10 ";
	setAttr ".st" 6;
createNode makeNurbSphere -n "makeNurbSphere1";
	setAttr ".ax" -type "double3" 0 1 0 ;
	setAttr ".r" 20;
createNode reverseSurface -n "reverseSurface1";
	setAttr ".d" 3;
createNode file -n "file1";
createNode surfaceShader -n "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapDataDomeShader";
createNode shadingEngine -n "LightMapDomeShaderSG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo3";
createNode makeNurbSphere -n "makeNurbSphere2";
	setAttr ".ax" -type "double3" 0 1 0 ;
	setAttr ".r" 20;
createNode reverseSurface -n "reverseSurface2";
	setAttr ".d" 3;
createNode file -n "file2";
createNode surfaceShader -n "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapDataDomeShader";
createNode shadingEngine -n "LightMapDomeShaderSG1";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo4";
createNode makeNurbSphere -n "makeNurbSphere3";
	setAttr ".ax" -type "double3" 0 1 0 ;
	setAttr ".r" 20;
createNode reverseSurface -n "reverseSurface3";
	setAttr ".d" 3;
createNode file -n "file3";
createNode surfaceShader -n "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapDataDomeShader";
createNode shadingEngine -n "LightMapDomeShaderSG2";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo5";
createNode makeNurbSphere -n "makeNurbSphere4";
	setAttr ".ax" -type "double3" 0 1 0 ;
	setAttr ".r" 20;
createNode reverseSurface -n "reverseSurface4";
	setAttr ".d" 3;
createNode file -n "file4";
createNode surfaceShader -n "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapDataDomeShader";
createNode shadingEngine -n "LightMapDomeShaderSG3";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo6";
createNode makeNurbSphere -n "makeNurbSphere5";
	setAttr ".ax" -type "double3" 0 1 0 ;
	setAttr ".r" 20;
createNode reverseSurface -n "reverseSurface5";
	setAttr ".d" 3;
createNode file -n "file5";
createNode surfaceShader -n "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapDataDomeShader";
createNode shadingEngine -n "LightMapDomeShaderSG4";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo7";
createNode makeNurbSphere -n "makeNurbSphere6";
	setAttr ".ax" -type "double3" 0 1 0 ;
	setAttr ".r" 20;
createNode reverseSurface -n "reverseSurface6";
	setAttr ".d" 3;
createNode file -n "file6";
createNode surfaceShader -n "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapDataDomeShader";
createNode shadingEngine -n "LightMapDomeShaderSG5";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo8";
createNode makeNurbSphere -n "makeNurbSphere7";
	setAttr ".ax" -type "double3" 0 1 0 ;
	setAttr ".r" 20;
createNode reverseSurface -n "reverseSurface7";
	setAttr ".d" 3;
createNode file -n "file7";
createNode surfaceShader -n "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapDataDomeShader";
createNode shadingEngine -n "LightMapDomeShaderSG6";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo9";
createNode makeNurbSphere -n "makeNurbSphere8";
	setAttr ".ax" -type "double3" 0 1 0 ;
	setAttr ".r" 20;
createNode reverseSurface -n "reverseSurface8";
	setAttr ".d" 3;
createNode file -n "file8";
createNode surfaceShader -n "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapDataDomeShader";
createNode shadingEngine -n "LightMapDomeShaderSG7";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo10";
createNode makeNurbSphere -n "makeNurbSphere9";
	setAttr ".ax" -type "double3" 0 1 0 ;
	setAttr ".r" 20;
createNode reverseSurface -n "reverseSurface9";
	setAttr ".d" 3;
createNode file -n "file9";
createNode surfaceShader -n "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapDataDomeShader";
createNode shadingEngine -n "LightMapDomeShaderSG8";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo11";
createNode makeNurbSphere -n "makeNurbSphere10";
	setAttr ".ax" -type "double3" 0 1 0 ;
	setAttr ".r" 20;
createNode reverseSurface -n "reverseSurface10";
	setAttr ".d" 3;
createNode file -n "file10";
createNode surfaceShader -n "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapDataDomeShader";
createNode shadingEngine -n "LightMapDomeShaderSG9";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo12";
createNode makeNurbSphere -n "makeNurbSphere11";
	setAttr ".ax" -type "double3" 0 1 0 ;
	setAttr ".r" 20;
createNode reverseSurface -n "reverseSurface11";
	setAttr ".d" 3;
createNode file -n "file11";
createNode surfaceShader -n "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapDataDomeShader";
createNode shadingEngine -n "LightMapDomeShaderSG10";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo13";
createNode makeNurbSphere -n "makeNurbSphere12";
	setAttr ".ax" -type "double3" 0 1 0 ;
	setAttr ".r" 20;
createNode reverseSurface -n "reverseSurface12";
	setAttr ".d" 3;
createNode file -n "file12";
createNode surfaceShader -n "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapDataDomeShader";
createNode shadingEngine -n "LightMapDomeShaderSG11";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo14";
select -ne :time1;
	setAttr ".o" 0;
select -ne :renderPartition;
	setAttr -s 15 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 15 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
select -ne :lightList1;
	setAttr -s 194 ".l";
select -ne :defaultTextureList1;
	setAttr -s 13 ".tx";
select -ne :initialShadingGroup;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	addAttr -ci true -sn "currentRenderer" -ln "currentRenderer" -dt "string";
	setAttr ".top" 239;
	setAttr ".rght" 319;
	setAttr ".currentRenderer" -type "string" "mayaSoftware";
select -ne :defaultLightSet;
	setAttr -s 194 ".dsm";
select -ne :hardwareRenderGlobals;
	addAttr -ci true -sn "tcov" -ln "textureCompression" -bt "TCOV" -min 0 
		-max 1 -en "Disabled:Enabled" -at "enum";
	addAttr -ci true -sn "ehql" -ln "enableHighQualityLighting" -bt "EHQL" -min 
		0 -max 1 -at "bool";
	addAttr -ci true -sn "eams" -ln "enableAcceleratedMultiSampling" -bt "EAMS" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "tshc" -ln "transparentShadowCasting" -bt "TSHC" -min 
		0 -max 1 -at "bool";
	addAttr -ci true -sn "lith" -ln "lightIntensityThreshold" -bt "LITH" -at "float";
	addAttr -ci true -sn "ani" -ln "animation" -bt "ANIM" -min 0 -max 1 -at "bool";
	setAttr ".fn" -type "string" "%s.%e";
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
	setAttr -k on ".tcov" 1;
	setAttr -k on ".ehql" yes;
	setAttr -k on ".eams" yes;
	setAttr -k on ".tshc" yes;
	setAttr -k on ".lith" 0.0010000000474974513;
	setAttr -k on ".ani";
select -ne :defaultHardwareRenderGlobals;
	setAttr ".fn" -type "string" "im";
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape1.in"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape1.esp"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape1.dms"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape1.dr"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape1.fs"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape1.du"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape1.um"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape1.ul"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape1.uf"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape1.urs"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape1.shr"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape1.rdl"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape2.in"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape2.esp"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape2.dms"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape2.dr"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape2.fs"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape2.du"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape2.um"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape2.ul"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape2.uf"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape2.urs"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape2.shr"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape2.rdl"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape3.in"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape3.esp"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape3.dms"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape3.dr"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape3.fs"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape3.du"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape3.um"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape3.ul"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape3.uf"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape3.urs"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape3.shr"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape3.rdl"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape4.in"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape4.esp"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape4.dms"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape4.dr"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape4.fs"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape4.du"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape4.um"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape4.ul"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape4.uf"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape4.urs"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape4.shr"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape4.rdl"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape5.in"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape5.esp"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape5.dms"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape5.dr"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape5.fs"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape5.du"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape5.um"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape5.ul"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape5.uf"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape5.urs"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape5.shr"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape5.rdl"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape6.in"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape6.esp"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape6.dms"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape6.dr"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape6.fs"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape6.du"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape6.um"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape6.ul"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape6.uf"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape6.urs"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape6.shr"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape6.rdl"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape7.in"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape7.esp"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape7.dms"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape7.dr"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape7.fs"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape7.du"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape7.um"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape7.ul"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape7.uf"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape7.urs"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape7.shr"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape7.rdl"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape8.in"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape8.esp"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape8.dms"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape8.dr"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape8.fs"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape8.du"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape8.um"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape8.ul"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape8.uf"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape8.urs"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape8.shr"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape8.rdl"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape9.in"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape9.esp"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape9.dms"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape9.dr"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape9.fs"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape9.du"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape9.um"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape9.ul"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape9.uf"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape9.urs"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape9.shr"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape9.rdl"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape10.in"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape10.esp"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape10.dms"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape10.dr"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape10.fs"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape10.du"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape10.um"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape10.ul"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape10.uf"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape10.urs"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape10.shr"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape10.rdl"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape11.in"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape11.esp"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape11.dms"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape11.dr"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape11.fs"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape11.du"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape11.um"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape11.ul"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape11.uf"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape11.urs"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape11.shr"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape11.rdl"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape12.in"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape12.esp"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape12.dms"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape12.dr"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape12.fs"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape12.du"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape12.um"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape12.ul"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape12.uf"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape12.urs"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape12.shr"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape12.rdl"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape13.in"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape13.esp"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape13.dms"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape13.dr"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape13.fs"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape13.du"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape13.um"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape13.ul"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape13.uf"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape13.urs"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape13.shr"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape13.rdl"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape14.in"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape14.esp"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape14.dms"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape14.dr"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape14.fs"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape14.du"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape14.um"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape14.ul"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape14.uf"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape14.urs"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape14.shr"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape14.rdl"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape15.in"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape15.esp"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape15.dms"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape15.dr"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape15.fs"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape15.du"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape15.um"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape15.ul"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape15.uf"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape15.urs"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape15.shr"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape15.rdl"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape16.in"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape16.esp"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape16.dms"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape16.dr"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape16.fs"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape16.du"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape16.um"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape16.ul"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape16.uf"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape16.urs"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape16.shr"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape16.rdl"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape17.in"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape17.esp"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape17.dms"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape17.dr"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape17.fs"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape17.du"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape17.um"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape17.ul"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape17.uf"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape17.urs"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape17.shr"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape17.rdl"
		;
connectAttr "reverseSurface1.os" "|toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData|toLightDome|toLightDomeShape.cr"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape18.in"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape18.esp"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape18.dms"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape18.dr"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape18.fs"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape18.du"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape18.um"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape18.ul"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape18.uf"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape18.urs"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape18.shr"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape18.rdl"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape19.in"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape19.esp"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape19.dms"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape19.dr"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape19.fs"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape19.du"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape19.um"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape19.ul"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape19.uf"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape19.urs"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape19.shr"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape19.rdl"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape20.in"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape20.esp"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape20.dms"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape20.dr"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape20.fs"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape20.du"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape20.um"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape20.ul"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape20.uf"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape20.urs"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape20.shr"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape20.rdl"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape21.in"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape21.esp"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape21.dms"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape21.dr"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape21.fs"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape21.du"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape21.um"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape21.ul"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape21.uf"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape21.urs"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape21.shr"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape21.rdl"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape22.in"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape22.esp"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape22.dms"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape22.dr"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape22.fs"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape22.du"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape22.um"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape22.ul"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape22.uf"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape22.urs"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape22.shr"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape22.rdl"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape23.in"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape23.esp"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape23.dms"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape23.dr"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape23.fs"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape23.du"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape23.um"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape23.ul"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape23.uf"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape23.urs"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape23.shr"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape23.rdl"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape24.in"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape24.esp"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape24.dms"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape24.dr"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape24.fs"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape24.du"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape24.um"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape24.ul"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape24.uf"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape24.urs"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape24.shr"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape24.rdl"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape25.in"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape25.esp"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape25.dms"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape25.dr"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape25.fs"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape25.du"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape25.um"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape25.ul"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape25.uf"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape25.urs"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape25.shr"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape25.rdl"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape26.in"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape26.esp"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape26.dms"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape26.dr"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape26.fs"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape26.du"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape26.um"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape26.ul"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape26.uf"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape26.urs"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape26.shr"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape26.rdl"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape27.in"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape27.esp"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape27.dms"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape27.dr"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape27.fs"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape27.du"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape27.um"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape27.ul"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape27.uf"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape27.urs"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape27.shr"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape27.rdl"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape28.in"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape28.esp"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape28.dms"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape28.dr"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape28.fs"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape28.du"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape28.um"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape28.ul"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape28.uf"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape28.urs"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape28.shr"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape28.rdl"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape29.in"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape29.esp"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape29.dms"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape29.dr"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape29.fs"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape29.du"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape29.um"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape29.ul"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape29.uf"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape29.urs"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape29.shr"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape29.rdl"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape30.in"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape30.esp"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape30.dms"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape30.dr"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape30.fs"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape30.du"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape30.um"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape30.ul"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape30.uf"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape30.urs"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape30.shr"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape30.rdl"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape31.in"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape31.esp"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape31.dms"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape31.dr"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape31.fs"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape31.du"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape31.um"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape31.ul"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape31.uf"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape31.urs"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape31.shr"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape31.rdl"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape32.in"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape32.esp"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape32.dms"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape32.dr"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape32.fs"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape32.du"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape32.um"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape32.ul"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape32.uf"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape32.urs"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape32.shr"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape32.rdl"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape33.in"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape33.esp"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape33.dms"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape33.dr"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape33.fs"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape33.du"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape33.um"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape33.ul"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape33.uf"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape33.urs"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape33.shr"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape33.rdl"
		;
connectAttr "reverseSurface2.os" "|toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData|toLightDome|toLightDomeShape.cr"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape34.in"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape34.esp"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape34.dms"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape34.dr"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape34.fs"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape34.du"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape34.um"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape34.ul"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape34.uf"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape34.urs"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape34.shr"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape34.rdl"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape35.in"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape35.esp"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape35.dms"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape35.dr"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape35.fs"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape35.du"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape35.um"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape35.ul"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape35.uf"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape35.urs"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape35.shr"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape35.rdl"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape36.in"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape36.esp"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape36.dms"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape36.dr"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape36.fs"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape36.du"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape36.um"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape36.ul"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape36.uf"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape36.urs"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape36.shr"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape36.rdl"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape37.in"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape37.esp"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape37.dms"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape37.dr"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape37.fs"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape37.du"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape37.um"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape37.ul"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape37.uf"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape37.urs"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape37.shr"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape37.rdl"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape38.in"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape38.esp"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape38.dms"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape38.dr"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape38.fs"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape38.du"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape38.um"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape38.ul"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape38.uf"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape38.urs"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape38.shr"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape38.rdl"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape39.in"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape39.esp"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape39.dms"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape39.dr"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape39.fs"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape39.du"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape39.um"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape39.ul"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape39.uf"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape39.urs"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape39.shr"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape39.rdl"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape40.in"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape40.esp"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape40.dms"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape40.dr"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape40.fs"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape40.du"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape40.um"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape40.ul"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape40.uf"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape40.urs"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape40.shr"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape40.rdl"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape41.in"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape41.esp"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape41.dms"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape41.dr"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape41.fs"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape41.du"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape41.um"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape41.ul"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape41.uf"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape41.urs"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape41.shr"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape41.rdl"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape42.in"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape42.esp"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape42.dms"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape42.dr"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape42.fs"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape42.du"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape42.um"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape42.ul"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape42.uf"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape42.urs"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape42.shr"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape42.rdl"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape43.in"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape43.esp"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape43.dms"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape43.dr"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape43.fs"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape43.du"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape43.um"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape43.ul"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape43.uf"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape43.urs"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape43.shr"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape43.rdl"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape44.in"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape44.esp"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape44.dms"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape44.dr"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape44.fs"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape44.du"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape44.um"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape44.ul"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape44.uf"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape44.urs"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape44.shr"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape44.rdl"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape45.in"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape45.esp"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape45.dms"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape45.dr"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape45.fs"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape45.du"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape45.um"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape45.ul"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape45.uf"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape45.urs"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape45.shr"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape45.rdl"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape46.in"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape46.esp"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape46.dms"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape46.dr"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape46.fs"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape46.du"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape46.um"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape46.ul"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape46.uf"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape46.urs"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape46.shr"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape46.rdl"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape47.in"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape47.esp"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape47.dms"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape47.dr"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape47.fs"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape47.du"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape47.um"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape47.ul"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape47.uf"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape47.urs"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape47.shr"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape47.rdl"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape48.in"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape48.esp"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape48.dms"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape48.dr"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape48.fs"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape48.du"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape48.um"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape48.ul"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape48.uf"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape48.urs"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape48.shr"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape48.rdl"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape49.in"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape49.esp"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape49.dms"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape49.dr"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape49.fs"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape49.du"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape49.um"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape49.ul"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape49.uf"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape49.urs"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape49.shr"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape49.rdl"
		;
connectAttr "reverseSurface3.os" "|toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData|toLightDome|toLightDomeShape.cr"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape50.in"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape50.esp"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape50.dms"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape50.dr"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape50.fs"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape50.du"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape50.um"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape50.ul"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape50.uf"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape50.urs"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape50.shr"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape50.rdl"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape51.in"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape51.esp"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape51.dms"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape51.dr"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape51.fs"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape51.du"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape51.um"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape51.ul"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape51.uf"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape51.urs"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape51.shr"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape51.rdl"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape52.in"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape52.esp"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape52.dms"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape52.dr"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape52.fs"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape52.du"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape52.um"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape52.ul"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape52.uf"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape52.urs"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape52.shr"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape52.rdl"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape53.in"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape53.esp"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape53.dms"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape53.dr"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape53.fs"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape53.du"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape53.um"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape53.ul"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape53.uf"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape53.urs"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape53.shr"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape53.rdl"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape54.in"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape54.esp"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape54.dms"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape54.dr"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape54.fs"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape54.du"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape54.um"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape54.ul"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape54.uf"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape54.urs"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape54.shr"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape54.rdl"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape55.in"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape55.esp"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape55.dms"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape55.dr"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape55.fs"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape55.du"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape55.um"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape55.ul"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape55.uf"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape55.urs"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape55.shr"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape55.rdl"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape56.in"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape56.esp"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape56.dms"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape56.dr"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape56.fs"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape56.du"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape56.um"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape56.ul"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape56.uf"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape56.urs"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape56.shr"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape56.rdl"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape57.in"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape57.esp"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape57.dms"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape57.dr"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape57.fs"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape57.du"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape57.um"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape57.ul"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape57.uf"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape57.urs"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape57.shr"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape57.rdl"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape58.in"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape58.esp"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape58.dms"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape58.dr"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape58.fs"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape58.du"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape58.um"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape58.ul"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape58.uf"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape58.urs"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape58.shr"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape58.rdl"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape59.in"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape59.esp"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape59.dms"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape59.dr"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape59.fs"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape59.du"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape59.um"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape59.ul"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape59.uf"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape59.urs"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape59.shr"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape59.rdl"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape60.in"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape60.esp"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape60.dms"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape60.dr"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape60.fs"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape60.du"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape60.um"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape60.ul"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape60.uf"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape60.urs"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape60.shr"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape60.rdl"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape61.in"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape61.esp"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape61.dms"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape61.dr"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape61.fs"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape61.du"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape61.um"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape61.ul"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape61.uf"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape61.urs"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape61.shr"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape61.rdl"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape62.in"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape62.esp"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape62.dms"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape62.dr"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape62.fs"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape62.du"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape62.um"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape62.ul"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape62.uf"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape62.urs"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape62.shr"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape62.rdl"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape63.in"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape63.esp"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape63.dms"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape63.dr"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape63.fs"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape63.du"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape63.um"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape63.ul"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape63.uf"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape63.urs"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape63.shr"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape63.rdl"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape64.in"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape64.esp"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape64.dms"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape64.dr"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape64.fs"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape64.du"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape64.um"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape64.ul"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape64.uf"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape64.urs"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape64.shr"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape64.rdl"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape65.in"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape65.esp"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape65.dms"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape65.dr"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape65.fs"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape65.du"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape65.um"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape65.ul"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape65.uf"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape65.urs"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape65.shr"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape65.rdl"
		;
connectAttr "reverseSurface4.os" "|toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData|toLightDome|toLightDomeShape.cr"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape66.in"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape66.esp"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape66.dms"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape66.dr"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape66.fs"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape66.du"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape66.um"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape66.ul"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape66.uf"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape66.urs"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape66.shr"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape66.rdl"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape67.in"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape67.esp"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape67.dms"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape67.dr"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape67.fs"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape67.du"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape67.um"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape67.ul"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape67.uf"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape67.urs"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape67.shr"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape67.rdl"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape68.in"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape68.esp"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape68.dms"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape68.dr"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape68.fs"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape68.du"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape68.um"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape68.ul"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape68.uf"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape68.urs"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape68.shr"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape68.rdl"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape69.in"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape69.esp"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape69.dms"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape69.dr"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape69.fs"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape69.du"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape69.um"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape69.ul"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape69.uf"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape69.urs"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape69.shr"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape69.rdl"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape70.in"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape70.esp"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape70.dms"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape70.dr"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape70.fs"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape70.du"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape70.um"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape70.ul"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape70.uf"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape70.urs"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape70.shr"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape70.rdl"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape71.in"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape71.esp"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape71.dms"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape71.dr"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape71.fs"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape71.du"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape71.um"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape71.ul"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape71.uf"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape71.urs"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape71.shr"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape71.rdl"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape72.in"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape72.esp"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape72.dms"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape72.dr"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape72.fs"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape72.du"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape72.um"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape72.ul"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape72.uf"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape72.urs"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape72.shr"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape72.rdl"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape73.in"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape73.esp"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape73.dms"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape73.dr"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape73.fs"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape73.du"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape73.um"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape73.ul"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape73.uf"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape73.urs"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape73.shr"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape73.rdl"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape74.in"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape74.esp"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape74.dms"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape74.dr"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape74.fs"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape74.du"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape74.um"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape74.ul"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape74.uf"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape74.urs"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape74.shr"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape74.rdl"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape75.in"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape75.esp"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape75.dms"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape75.dr"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape75.fs"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape75.du"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape75.um"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape75.ul"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape75.uf"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape75.urs"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape75.shr"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape75.rdl"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape76.in"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape76.esp"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape76.dms"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape76.dr"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape76.fs"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape76.du"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape76.um"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape76.ul"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape76.uf"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape76.urs"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape76.shr"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape76.rdl"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape77.in"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape77.esp"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape77.dms"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape77.dr"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape77.fs"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape77.du"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape77.um"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape77.ul"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape77.uf"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape77.urs"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape77.shr"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape77.rdl"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape78.in"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape78.esp"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape78.dms"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape78.dr"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape78.fs"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape78.du"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape78.um"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape78.ul"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape78.uf"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape78.urs"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape78.shr"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape78.rdl"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape79.in"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape79.esp"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape79.dms"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape79.dr"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape79.fs"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape79.du"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape79.um"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape79.ul"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape79.uf"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape79.urs"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape79.shr"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape79.rdl"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape80.in"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape80.esp"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape80.dms"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape80.dr"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape80.fs"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape80.du"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape80.um"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape80.ul"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape80.uf"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape80.urs"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape80.shr"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape80.rdl"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape81.in"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape81.esp"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape81.dms"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape81.dr"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape81.fs"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape81.du"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape81.um"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape81.ul"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape81.uf"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape81.urs"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape81.shr"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape81.rdl"
		;
connectAttr "reverseSurface5.os" "|toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData|toLightDome|toLightDomeShape.cr"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape82.in"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape82.esp"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape82.dms"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape82.dr"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape82.fs"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape82.du"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape82.um"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape82.ul"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape82.uf"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape82.urs"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape82.shr"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape82.rdl"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape83.in"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape83.esp"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape83.dms"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape83.dr"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape83.fs"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape83.du"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape83.um"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape83.ul"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape83.uf"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape83.urs"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape83.shr"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape83.rdl"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape84.in"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape84.esp"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape84.dms"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape84.dr"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape84.fs"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape84.du"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape84.um"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape84.ul"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape84.uf"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape84.urs"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape84.shr"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape84.rdl"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape85.in"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape85.esp"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape85.dms"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape85.dr"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape85.fs"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape85.du"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape85.um"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape85.ul"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape85.uf"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape85.urs"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape85.shr"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape85.rdl"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape86.in"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape86.esp"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape86.dms"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape86.dr"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape86.fs"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape86.du"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape86.um"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape86.ul"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape86.uf"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape86.urs"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape86.shr"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape86.rdl"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape87.in"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape87.esp"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape87.dms"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape87.dr"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape87.fs"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape87.du"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape87.um"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape87.ul"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape87.uf"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape87.urs"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape87.shr"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape87.rdl"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape88.in"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape88.esp"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape88.dms"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape88.dr"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape88.fs"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape88.du"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape88.um"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape88.ul"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape88.uf"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape88.urs"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape88.shr"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape88.rdl"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape89.in"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape89.esp"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape89.dms"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape89.dr"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape89.fs"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape89.du"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape89.um"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape89.ul"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape89.uf"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape89.urs"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape89.shr"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape89.rdl"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape90.in"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape90.esp"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape90.dms"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape90.dr"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape90.fs"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape90.du"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape90.um"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape90.ul"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape90.uf"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape90.urs"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape90.shr"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape90.rdl"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape91.in"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape91.esp"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape91.dms"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape91.dr"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape91.fs"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape91.du"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape91.um"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape91.ul"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape91.uf"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape91.urs"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape91.shr"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape91.rdl"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape92.in"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape92.esp"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape92.dms"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape92.dr"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape92.fs"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape92.du"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape92.um"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape92.ul"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape92.uf"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape92.urs"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape92.shr"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape92.rdl"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape93.in"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape93.esp"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape93.dms"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape93.dr"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape93.fs"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape93.du"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape93.um"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape93.ul"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape93.uf"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape93.urs"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape93.shr"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape93.rdl"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape94.in"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape94.esp"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape94.dms"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape94.dr"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape94.fs"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape94.du"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape94.um"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape94.ul"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape94.uf"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape94.urs"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape94.shr"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape94.rdl"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape95.in"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape95.esp"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape95.dms"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape95.dr"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape95.fs"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape95.du"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape95.um"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape95.ul"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape95.uf"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape95.urs"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape95.shr"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape95.rdl"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape96.in"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape96.esp"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape96.dms"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape96.dr"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape96.fs"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape96.du"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape96.um"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape96.ul"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape96.uf"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape96.urs"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape96.shr"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape96.rdl"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape97.in"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape97.esp"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape97.dms"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape97.dr"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape97.fs"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape97.du"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape97.um"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape97.ul"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape97.uf"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape97.urs"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape97.shr"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape97.rdl"
		;
connectAttr "reverseSurface6.os" "|toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData|toLightDome|toLightDomeShape.cr"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape98.in"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape98.esp"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape98.dms"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape98.dr"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape98.fs"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape98.du"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape98.um"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape98.ul"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape98.uf"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape98.urs"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape98.shr"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape98.rdl"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape99.in"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape99.esp"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape99.dms"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape99.dr"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape99.fs"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape99.du"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape99.um"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape99.ul"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape99.uf"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape99.urs"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape99.shr"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape99.rdl"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape100.in"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape100.esp"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape100.dms"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape100.dr"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape100.fs"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape100.du"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape100.um"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape100.ul"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape100.uf"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape100.urs"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape100.shr"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape100.rdl"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape101.in"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape101.esp"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape101.dms"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape101.dr"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape101.fs"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape101.du"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape101.um"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape101.ul"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape101.uf"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape101.urs"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape101.shr"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape101.rdl"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape102.in"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape102.esp"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape102.dms"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape102.dr"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape102.fs"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape102.du"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape102.um"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape102.ul"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape102.uf"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape102.urs"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape102.shr"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape102.rdl"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape103.in"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape103.esp"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape103.dms"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape103.dr"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape103.fs"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape103.du"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape103.um"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape103.ul"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape103.uf"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape103.urs"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape103.shr"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape103.rdl"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape104.in"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape104.esp"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape104.dms"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape104.dr"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape104.fs"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape104.du"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape104.um"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape104.ul"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape104.uf"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape104.urs"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape104.shr"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape104.rdl"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape105.in"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape105.esp"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape105.dms"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape105.dr"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape105.fs"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape105.du"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape105.um"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape105.ul"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape105.uf"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape105.urs"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape105.shr"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape105.rdl"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape106.in"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape106.esp"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape106.dms"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape106.dr"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape106.fs"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape106.du"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape106.um"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape106.ul"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape106.uf"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape106.urs"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape106.shr"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape106.rdl"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape107.in"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape107.esp"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape107.dms"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape107.dr"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape107.fs"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape107.du"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape107.um"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape107.ul"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape107.uf"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape107.urs"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape107.shr"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape107.rdl"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape108.in"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape108.esp"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape108.dms"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape108.dr"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape108.fs"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape108.du"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape108.um"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape108.ul"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape108.uf"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape108.urs"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape108.shr"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape108.rdl"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape109.in"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape109.esp"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape109.dms"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape109.dr"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape109.fs"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape109.du"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape109.um"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape109.ul"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape109.uf"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape109.urs"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape109.shr"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape109.rdl"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape110.in"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape110.esp"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape110.dms"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape110.dr"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape110.fs"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape110.du"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape110.um"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape110.ul"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape110.uf"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape110.urs"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape110.shr"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape110.rdl"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape111.in"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape111.esp"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape111.dms"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape111.dr"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape111.fs"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape111.du"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape111.um"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape111.ul"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape111.uf"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape111.urs"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape111.shr"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape111.rdl"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape112.in"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape112.esp"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape112.dms"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape112.dr"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape112.fs"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape112.du"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape112.um"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape112.ul"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape112.uf"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape112.urs"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape112.shr"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape112.rdl"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape113.in"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape113.esp"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape113.dms"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape113.dr"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape113.fs"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape113.du"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape113.um"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape113.ul"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape113.uf"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape113.urs"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape113.shr"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape113.rdl"
		;
connectAttr "reverseSurface7.os" "|toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData|toLightDome|toLightDomeShape.cr"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape114.in"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape114.esp"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape114.dms"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape114.dr"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape114.fs"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape114.du"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape114.um"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape114.ul"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape114.uf"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape114.urs"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape114.shr"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape114.rdl"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape115.in"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape115.esp"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape115.dms"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape115.dr"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape115.fs"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape115.du"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape115.um"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape115.ul"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape115.uf"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape115.urs"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape115.shr"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape115.rdl"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape116.in"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape116.esp"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape116.dms"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape116.dr"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape116.fs"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape116.du"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape116.um"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape116.ul"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape116.uf"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape116.urs"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape116.shr"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape116.rdl"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape117.in"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape117.esp"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape117.dms"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape117.dr"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape117.fs"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape117.du"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape117.um"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape117.ul"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape117.uf"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape117.urs"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape117.shr"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape117.rdl"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape118.in"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape118.esp"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape118.dms"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape118.dr"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape118.fs"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape118.du"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape118.um"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape118.ul"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape118.uf"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape118.urs"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape118.shr"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape118.rdl"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape119.in"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape119.esp"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape119.dms"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape119.dr"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape119.fs"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape119.du"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape119.um"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape119.ul"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape119.uf"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape119.urs"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape119.shr"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape119.rdl"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape120.in"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape120.esp"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape120.dms"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape120.dr"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape120.fs"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape120.du"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape120.um"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape120.ul"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape120.uf"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape120.urs"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape120.shr"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape120.rdl"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape121.in"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape121.esp"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape121.dms"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape121.dr"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape121.fs"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape121.du"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape121.um"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape121.ul"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape121.uf"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape121.urs"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape121.shr"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape121.rdl"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape122.in"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape122.esp"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape122.dms"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape122.dr"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape122.fs"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape122.du"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape122.um"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape122.ul"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape122.uf"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape122.urs"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape122.shr"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape122.rdl"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape123.in"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape123.esp"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape123.dms"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape123.dr"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape123.fs"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape123.du"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape123.um"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape123.ul"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape123.uf"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape123.urs"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape123.shr"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape123.rdl"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape124.in"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape124.esp"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape124.dms"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape124.dr"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape124.fs"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape124.du"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape124.um"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape124.ul"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape124.uf"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape124.urs"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape124.shr"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape124.rdl"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape125.in"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape125.esp"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape125.dms"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape125.dr"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape125.fs"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape125.du"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape125.um"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape125.ul"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape125.uf"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape125.urs"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape125.shr"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape125.rdl"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape126.in"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape126.esp"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape126.dms"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape126.dr"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape126.fs"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape126.du"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape126.um"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape126.ul"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape126.uf"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape126.urs"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape126.shr"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape126.rdl"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape127.in"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape127.esp"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape127.dms"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape127.dr"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape127.fs"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape127.du"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape127.um"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape127.ul"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape127.uf"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape127.urs"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape127.shr"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape127.rdl"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape128.in"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape128.esp"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape128.dms"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape128.dr"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape128.fs"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape128.du"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape128.um"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape128.ul"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape128.uf"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape128.urs"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape128.shr"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape128.rdl"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape129.in"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape129.esp"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape129.dms"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape129.dr"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape129.fs"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape129.du"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape129.um"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape129.ul"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape129.uf"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape129.urs"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape129.shr"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape129.rdl"
		;
connectAttr "reverseSurface8.os" "|toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData|toLightDome|toLightDomeShape.cr"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape130.in"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape130.esp"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape130.dms"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape130.dr"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape130.fs"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape130.du"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape130.um"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape130.ul"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape130.uf"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape130.urs"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape130.shr"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape130.rdl"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape131.in"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape131.esp"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape131.dms"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape131.dr"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape131.fs"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape131.du"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape131.um"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape131.ul"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape131.uf"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape131.urs"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape131.shr"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape131.rdl"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape132.in"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape132.esp"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape132.dms"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape132.dr"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape132.fs"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape132.du"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape132.um"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape132.ul"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape132.uf"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape132.urs"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape132.shr"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape132.rdl"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape133.in"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape133.esp"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape133.dms"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape133.dr"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape133.fs"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape133.du"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape133.um"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape133.ul"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape133.uf"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape133.urs"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape133.shr"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape133.rdl"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape134.in"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape134.esp"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape134.dms"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape134.dr"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape134.fs"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape134.du"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape134.um"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape134.ul"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape134.uf"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape134.urs"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape134.shr"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape134.rdl"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape135.in"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape135.esp"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape135.dms"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape135.dr"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape135.fs"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape135.du"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape135.um"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape135.ul"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape135.uf"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape135.urs"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape135.shr"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape135.rdl"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape136.in"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape136.esp"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape136.dms"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape136.dr"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape136.fs"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape136.du"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape136.um"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape136.ul"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape136.uf"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape136.urs"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape136.shr"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape136.rdl"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape137.in"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape137.esp"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape137.dms"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape137.dr"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape137.fs"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape137.du"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape137.um"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape137.ul"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape137.uf"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape137.urs"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape137.shr"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape137.rdl"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape138.in"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape138.esp"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape138.dms"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape138.dr"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape138.fs"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape138.du"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape138.um"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape138.ul"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape138.uf"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape138.urs"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape138.shr"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape138.rdl"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape139.in"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape139.esp"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape139.dms"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape139.dr"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape139.fs"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape139.du"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape139.um"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape139.ul"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape139.uf"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape139.urs"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape139.shr"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape139.rdl"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape140.in"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape140.esp"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape140.dms"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape140.dr"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape140.fs"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape140.du"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape140.um"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape140.ul"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape140.uf"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape140.urs"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape140.shr"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape140.rdl"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape141.in"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape141.esp"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape141.dms"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape141.dr"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape141.fs"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape141.du"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape141.um"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape141.ul"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape141.uf"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape141.urs"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape141.shr"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape141.rdl"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape142.in"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape142.esp"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape142.dms"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape142.dr"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape142.fs"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape142.du"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape142.um"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape142.ul"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape142.uf"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape142.urs"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape142.shr"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape142.rdl"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape143.in"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape143.esp"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape143.dms"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape143.dr"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape143.fs"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape143.du"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape143.um"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape143.ul"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape143.uf"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape143.urs"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape143.shr"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape143.rdl"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape144.in"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape144.esp"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape144.dms"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape144.dr"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape144.fs"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape144.du"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape144.um"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape144.ul"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape144.uf"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape144.urs"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape144.shr"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape144.rdl"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape145.in"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape145.esp"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape145.dms"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape145.dr"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape145.fs"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape145.du"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape145.um"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape145.ul"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape145.uf"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape145.urs"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape145.shr"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape145.rdl"
		;
connectAttr "reverseSurface9.os" "|toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData|toLightDome|toLightDomeShape.cr"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape146.in"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape146.esp"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape146.dms"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape146.dr"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape146.fs"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape146.du"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape146.um"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape146.ul"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape146.uf"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape146.urs"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape146.shr"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape146.rdl"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape147.in"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape147.esp"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape147.dms"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape147.dr"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape147.fs"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape147.du"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape147.um"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape147.ul"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape147.uf"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape147.urs"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape147.shr"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape147.rdl"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape148.in"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape148.esp"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape148.dms"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape148.dr"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape148.fs"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape148.du"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape148.um"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape148.ul"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape148.uf"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape148.urs"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape148.shr"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape148.rdl"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape149.in"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape149.esp"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape149.dms"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape149.dr"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape149.fs"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape149.du"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape149.um"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape149.ul"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape149.uf"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape149.urs"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape149.shr"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape149.rdl"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape150.in"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape150.esp"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape150.dms"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape150.dr"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape150.fs"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape150.du"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape150.um"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape150.ul"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape150.uf"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape150.urs"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape150.shr"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape150.rdl"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape151.in"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape151.esp"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape151.dms"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape151.dr"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape151.fs"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape151.du"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape151.um"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape151.ul"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape151.uf"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape151.urs"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape151.shr"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape151.rdl"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape152.in"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape152.esp"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape152.dms"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape152.dr"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape152.fs"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape152.du"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape152.um"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape152.ul"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape152.uf"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape152.urs"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape152.shr"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape152.rdl"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape153.in"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape153.esp"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape153.dms"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape153.dr"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape153.fs"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape153.du"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape153.um"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape153.ul"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape153.uf"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape153.urs"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape153.shr"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape153.rdl"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape154.in"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape154.esp"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape154.dms"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape154.dr"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape154.fs"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape154.du"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape154.um"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape154.ul"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape154.uf"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape154.urs"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape154.shr"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape154.rdl"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape155.in"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape155.esp"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape155.dms"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape155.dr"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape155.fs"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape155.du"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape155.um"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape155.ul"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape155.uf"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape155.urs"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape155.shr"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape155.rdl"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape156.in"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape156.esp"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape156.dms"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape156.dr"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape156.fs"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape156.du"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape156.um"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape156.ul"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape156.uf"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape156.urs"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape156.shr"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape156.rdl"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape157.in"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape157.esp"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape157.dms"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape157.dr"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape157.fs"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape157.du"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape157.um"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape157.ul"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape157.uf"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape157.urs"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape157.shr"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape157.rdl"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape158.in"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape158.esp"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape158.dms"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape158.dr"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape158.fs"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape158.du"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape158.um"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape158.ul"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape158.uf"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape158.urs"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape158.shr"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape158.rdl"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape159.in"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape159.esp"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape159.dms"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape159.dr"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape159.fs"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape159.du"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape159.um"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape159.ul"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape159.uf"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape159.urs"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape159.shr"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape159.rdl"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape160.in"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape160.esp"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape160.dms"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape160.dr"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape160.fs"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape160.du"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape160.um"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape160.ul"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape160.uf"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape160.urs"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape160.shr"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape160.rdl"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape161.in"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape161.esp"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape161.dms"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape161.dr"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape161.fs"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape161.du"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape161.um"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape161.ul"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape161.uf"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape161.urs"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape161.shr"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape161.rdl"
		;
connectAttr "reverseSurface10.os" "|toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData|toLightDome|toLightDomeShape.cr"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape162.in"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape162.esp"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape162.dms"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape162.dr"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape162.fs"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape162.du"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape162.um"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape162.ul"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape162.uf"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape162.urs"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape162.shr"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape162.rdl"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape163.in"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape163.esp"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape163.dms"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape163.dr"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape163.fs"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape163.du"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape163.um"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape163.ul"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape163.uf"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape163.urs"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape163.shr"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape163.rdl"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape164.in"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape164.esp"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape164.dms"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape164.dr"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape164.fs"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape164.du"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape164.um"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape164.ul"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape164.uf"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape164.urs"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape164.shr"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape164.rdl"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape165.in"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape165.esp"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape165.dms"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape165.dr"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape165.fs"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape165.du"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape165.um"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape165.ul"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape165.uf"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape165.urs"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape165.shr"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape165.rdl"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape166.in"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape166.esp"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape166.dms"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape166.dr"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape166.fs"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape166.du"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape166.um"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape166.ul"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape166.uf"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape166.urs"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape166.shr"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape166.rdl"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape167.in"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape167.esp"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape167.dms"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape167.dr"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape167.fs"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape167.du"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape167.um"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape167.ul"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape167.uf"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape167.urs"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape167.shr"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape167.rdl"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape168.in"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape168.esp"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape168.dms"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape168.dr"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape168.fs"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape168.du"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape168.um"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape168.ul"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape168.uf"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape168.urs"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape168.shr"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape168.rdl"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape169.in"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape169.esp"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape169.dms"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape169.dr"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape169.fs"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape169.du"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape169.um"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape169.ul"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape169.uf"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape169.urs"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape169.shr"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape169.rdl"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape170.in"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape170.esp"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape170.dms"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape170.dr"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape170.fs"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape170.du"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape170.um"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape170.ul"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape170.uf"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape170.urs"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape170.shr"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape170.rdl"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape171.in"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape171.esp"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape171.dms"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape171.dr"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape171.fs"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape171.du"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape171.um"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape171.ul"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape171.uf"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape171.urs"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape171.shr"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape171.rdl"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape172.in"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape172.esp"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape172.dms"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape172.dr"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape172.fs"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape172.du"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape172.um"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape172.ul"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape172.uf"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape172.urs"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape172.shr"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape172.rdl"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape173.in"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape173.esp"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape173.dms"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape173.dr"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape173.fs"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape173.du"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape173.um"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape173.ul"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape173.uf"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape173.urs"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape173.shr"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape173.rdl"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape174.in"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape174.esp"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape174.dms"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape174.dr"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape174.fs"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape174.du"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape174.um"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape174.ul"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape174.uf"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape174.urs"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape174.shr"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape174.rdl"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape175.in"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape175.esp"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape175.dms"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape175.dr"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape175.fs"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape175.du"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape175.um"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape175.ul"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape175.uf"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape175.urs"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape175.shr"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape175.rdl"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape176.in"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape176.esp"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape176.dms"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape176.dr"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape176.fs"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape176.du"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape176.um"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape176.ul"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape176.uf"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape176.urs"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape176.shr"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape176.rdl"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape177.in"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape177.esp"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape177.dms"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape177.dr"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape177.fs"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape177.du"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape177.um"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape177.ul"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape177.uf"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape177.urs"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape177.shr"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape177.rdl"
		;
connectAttr "reverseSurface11.os" "|toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData|toLightDome|toLightDomeShape.cr"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape178.in"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape178.esp"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape178.dms"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape178.dr"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape178.fs"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape178.du"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape178.um"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape178.ul"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape178.uf"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape178.urs"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape178.shr"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape178.rdl"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape179.in"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape179.esp"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape179.dms"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape179.dr"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape179.fs"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape179.du"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape179.um"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape179.ul"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape179.uf"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape179.urs"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape179.shr"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape179.rdl"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape180.in"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape180.esp"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape180.dms"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape180.dr"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape180.fs"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape180.du"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape180.um"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape180.ul"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape180.uf"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape180.urs"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape180.shr"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape180.rdl"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape181.in"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape181.esp"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape181.dms"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape181.dr"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape181.fs"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape181.du"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape181.um"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape181.ul"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape181.uf"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape181.urs"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape181.shr"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape181.rdl"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape182.in"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape182.esp"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape182.dms"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape182.dr"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape182.fs"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape182.du"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape182.um"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape182.ul"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape182.uf"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape182.urs"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape182.shr"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape182.rdl"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape183.in"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape183.esp"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape183.dms"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape183.dr"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape183.fs"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape183.du"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape183.um"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape183.ul"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape183.uf"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape183.urs"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape183.shr"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape183.rdl"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape184.in"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape184.esp"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape184.dms"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape184.dr"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape184.fs"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape184.du"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape184.um"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape184.ul"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape184.uf"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape184.urs"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape184.shr"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape184.rdl"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape185.in"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape185.esp"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape185.dms"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape185.dr"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape185.fs"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape185.du"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape185.um"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape185.ul"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape185.uf"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape185.urs"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape185.shr"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape185.rdl"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape186.in"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape186.esp"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape186.dms"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape186.dr"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape186.fs"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape186.du"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape186.um"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape186.ul"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape186.uf"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape186.urs"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape186.shr"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape186.rdl"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape187.in"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape187.esp"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape187.dms"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape187.dr"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape187.fs"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape187.du"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape187.um"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape187.ul"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape187.uf"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape187.urs"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape187.shr"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape187.rdl"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape188.in"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape188.esp"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape188.dms"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape188.dr"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape188.fs"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape188.du"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape188.um"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape188.ul"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape188.uf"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape188.urs"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape188.shr"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape188.rdl"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape189.in"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape189.esp"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape189.dms"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape189.dr"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape189.fs"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape189.du"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape189.um"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape189.ul"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape189.uf"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape189.urs"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape189.shr"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape189.rdl"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape190.in"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape190.esp"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape190.dms"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape190.dr"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape190.fs"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape190.du"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape190.um"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape190.ul"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape190.uf"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape190.urs"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape190.shr"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape190.rdl"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape191.in"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape191.esp"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape191.dms"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape191.dr"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape191.fs"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape191.du"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape191.um"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape191.ul"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape191.uf"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape191.urs"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape191.shr"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape191.rdl"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape192.in"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape192.esp"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape192.dms"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape192.dr"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape192.fs"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape192.du"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape192.um"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape192.ul"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape192.uf"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape192.urs"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape192.shr"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape192.rdl"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape193.in"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape193.esp"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape193.dms"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape193.dr"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape193.fs"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape193.du"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape193.um"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape193.ul"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape193.uf"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape193.urs"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape193.shr"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape193.rdl"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.intensity" "isLightShape194.in"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.emitSpecular" "isLightShape194.esp"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.useDepthMapShadows" "isLightShape194.dms"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.dmapResolution" "isLightShape194.dr"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.dmapFilterSize" "isLightShape194.fs"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.reuseDmap" "isLightShape194.du"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.dmapSceneName" "isLightShape194.um"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.dmapLightName" "isLightShape194.ul"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.dmapFrameExt" "isLightShape194.uf"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.useRayTraceShadows" "isLightShape194.urs"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.shadowRays" "isLightShape194.shr"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData.rayDepthLimit" "isLightShape194.rdl"
		;
connectAttr "reverseSurface12.os" "|toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData|toLightDome|toLightDomeShape.cr"
		;
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[0].llnk";
connectAttr ":initialShadingGroup.msg" "lightLinker1.lnk[0].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[1].llnk";
connectAttr ":initialParticleSE.msg" "lightLinker1.lnk[1].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[4].llnk";
connectAttr "LightMapDomeShaderSG.msg" "lightLinker1.lnk[4].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[5].llnk";
connectAttr "lambert2SG.msg" "lightLinker1.lnk[5].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[6].llnk";
connectAttr "LightMapDomeShaderSG1.msg" "lightLinker1.lnk[6].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[7].llnk";
connectAttr "LightMapDomeShaderSG2.msg" "lightLinker1.lnk[7].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[8].llnk";
connectAttr "LightMapDomeShaderSG3.msg" "lightLinker1.lnk[8].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[9].llnk";
connectAttr "LightMapDomeShaderSG4.msg" "lightLinker1.lnk[9].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[10].llnk";
connectAttr "LightMapDomeShaderSG5.msg" "lightLinker1.lnk[10].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[11].llnk";
connectAttr "LightMapDomeShaderSG6.msg" "lightLinker1.lnk[11].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[12].llnk";
connectAttr "LightMapDomeShaderSG7.msg" "lightLinker1.lnk[12].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[13].llnk";
connectAttr "LightMapDomeShaderSG8.msg" "lightLinker1.lnk[13].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[14].llnk";
connectAttr "LightMapDomeShaderSG9.msg" "lightLinker1.lnk[14].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[15].llnk";
connectAttr "LightMapDomeShaderSG10.msg" "lightLinker1.lnk[15].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[16].llnk";
connectAttr "LightMapDomeShaderSG11.msg" "lightLinker1.lnk[16].olnk";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "place2dTexture1.o" "checker1.uv";
connectAttr "place2dTexture1.ofs" "checker1.fs";
connectAttr "checker1.oc" "lambert2.c";
connectAttr "lambert2.oc" "lambert2SG.ss";
connectAttr "nurbsPlaneShape1.iog" "lambert2SG.dsm" -na;
connectAttr "lambert2SG.msg" "materialInfo2.sg";
connectAttr "makeNurbSphere1.os" "reverseSurface1.is";
connectAttr "file1.oc" "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapDataDomeShader.oc"
		;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapDataDomeShader.oc" "LightMapDomeShaderSG.ss"
		;
connectAttr "|toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapData|toLightDome|toLightDomeShape.iog" "LightMapDomeShaderSG.dsm"
		 -na;
connectAttr "LightMapDomeShaderSG.msg" "materialInfo3.sg";
connectAttr "makeNurbSphere2.os" "reverseSurface2.is";
connectAttr "file2.oc" "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapDataDomeShader.oc"
		;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapDataDomeShader.oc" "LightMapDomeShaderSG1.ss"
		;
connectAttr "|toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapData|toLightDome|toLightDomeShape.iog" "LightMapDomeShaderSG1.dsm"
		 -na;
connectAttr "LightMapDomeShaderSG1.msg" "materialInfo4.sg";
connectAttr "makeNurbSphere3.os" "reverseSurface3.is";
connectAttr "file3.oc" "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapDataDomeShader.oc"
		;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapDataDomeShader.oc" "LightMapDomeShaderSG2.ss"
		;
connectAttr "|toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapData|toLightDome|toLightDomeShape.iog" "LightMapDomeShaderSG2.dsm"
		 -na;
connectAttr "LightMapDomeShaderSG2.msg" "materialInfo5.sg";
connectAttr "makeNurbSphere4.os" "reverseSurface4.is";
connectAttr "file4.oc" "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapDataDomeShader.oc"
		;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapDataDomeShader.oc" "LightMapDomeShaderSG3.ss"
		;
connectAttr "|toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapData|toLightDome|toLightDomeShape.iog" "LightMapDomeShaderSG3.dsm"
		 -na;
connectAttr "LightMapDomeShaderSG3.msg" "materialInfo6.sg";
connectAttr "makeNurbSphere5.os" "reverseSurface5.is";
connectAttr "file5.oc" "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapDataDomeShader.oc"
		;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapDataDomeShader.oc" "LightMapDomeShaderSG4.ss"
		;
connectAttr "|toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapData|toLightDome|toLightDomeShape.iog" "LightMapDomeShaderSG4.dsm"
		 -na;
connectAttr "LightMapDomeShaderSG4.msg" "materialInfo7.sg";
connectAttr "makeNurbSphere6.os" "reverseSurface6.is";
connectAttr "file6.oc" "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapDataDomeShader.oc"
		;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapDataDomeShader.oc" "LightMapDomeShaderSG5.ss"
		;
connectAttr "|toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapData|toLightDome|toLightDomeShape.iog" "LightMapDomeShaderSG5.dsm"
		 -na;
connectAttr "LightMapDomeShaderSG5.msg" "materialInfo8.sg";
connectAttr "makeNurbSphere7.os" "reverseSurface7.is";
connectAttr "file7.oc" "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapDataDomeShader.oc"
		;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapDataDomeShader.oc" "LightMapDomeShaderSG6.ss"
		;
connectAttr "|toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapData|toLightDome|toLightDomeShape.iog" "LightMapDomeShaderSG6.dsm"
		 -na;
connectAttr "LightMapDomeShaderSG6.msg" "materialInfo9.sg";
connectAttr "makeNurbSphere8.os" "reverseSurface8.is";
connectAttr "file8.oc" "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapDataDomeShader.oc"
		;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapDataDomeShader.oc" "LightMapDomeShaderSG7.ss"
		;
connectAttr "|toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapData|toLightDome|toLightDomeShape.iog" "LightMapDomeShaderSG7.dsm"
		 -na;
connectAttr "LightMapDomeShaderSG7.msg" "materialInfo10.sg";
connectAttr "makeNurbSphere9.os" "reverseSurface9.is";
connectAttr "file9.oc" "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapDataDomeShader.oc"
		;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapDataDomeShader.oc" "LightMapDomeShaderSG8.ss"
		;
connectAttr "|toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapData|toLightDome|toLightDomeShape.iog" "LightMapDomeShaderSG8.dsm"
		 -na;
connectAttr "LightMapDomeShaderSG8.msg" "materialInfo11.sg";
connectAttr "makeNurbSphere10.os" "reverseSurface10.is";
connectAttr "file10.oc" "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapDataDomeShader.oc"
		;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapDataDomeShader.oc" "LightMapDomeShaderSG9.ss"
		;
connectAttr "|toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapData|toLightDome|toLightDomeShape.iog" "LightMapDomeShaderSG9.dsm"
		 -na;
connectAttr "LightMapDomeShaderSG9.msg" "materialInfo12.sg";
connectAttr "makeNurbSphere11.os" "reverseSurface11.is";
connectAttr "file11.oc" "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapDataDomeShader.oc"
		;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapDataDomeShader.oc" "LightMapDomeShaderSG10.ss"
		;
connectAttr "|toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapData|toLightDome|toLightDomeShape.iog" "LightMapDomeShaderSG10.dsm"
		 -na;
connectAttr "LightMapDomeShaderSG10.msg" "materialInfo13.sg";
connectAttr "makeNurbSphere12.os" "reverseSurface12.is";
connectAttr "file12.oc" "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapDataDomeShader.oc"
		;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapDataDomeShader.oc" "LightMapDomeShaderSG11.ss"
		;
connectAttr "|toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapData|toLightDome|toLightDomeShape.iog" "LightMapDomeShaderSG11.dsm"
		 -na;
connectAttr "LightMapDomeShaderSG11.msg" "materialInfo14.sg";
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "LightMapDomeShaderSG.pa" ":renderPartition.st" -na;
connectAttr "LightMapDomeShaderSG1.pa" ":renderPartition.st" -na;
connectAttr "LightMapDomeShaderSG2.pa" ":renderPartition.st" -na;
connectAttr "LightMapDomeShaderSG3.pa" ":renderPartition.st" -na;
connectAttr "LightMapDomeShaderSG4.pa" ":renderPartition.st" -na;
connectAttr "LightMapDomeShaderSG5.pa" ":renderPartition.st" -na;
connectAttr "LightMapDomeShaderSG6.pa" ":renderPartition.st" -na;
connectAttr "LightMapDomeShaderSG7.pa" ":renderPartition.st" -na;
connectAttr "LightMapDomeShaderSG8.pa" ":renderPartition.st" -na;
connectAttr "LightMapDomeShaderSG9.pa" ":renderPartition.st" -na;
connectAttr "LightMapDomeShaderSG10.pa" ":renderPartition.st" -na;
connectAttr "LightMapDomeShaderSG11.pa" ":renderPartition.st" -na;
connectAttr "lambert2.msg" ":defaultShaderList1.s" -na;
connectAttr "toLightDome_probe_07_00_latlongmap_16_1_0_6_LightMapDataDomeShader.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "toLightDome_probe_08_00_latlongmap_16_1_0_6_LightMapDataDomeShader.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "toLightDome_probe_09_00_latlongmap_16_1_0_6_LightMapDataDomeShader.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "toLightDome_probe_10_00_latlongmap_16_1_0_6_LightMapDataDomeShader.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "toLightDome_probe_11_00_latlongmap_16_1_0_6_LightMapDataDomeShader.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "toLightDome_probe_12_00_latlongmap_16_1_0_6_LightMapDataDomeShader.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "toLightDome_probe_13_00_latlongmap_16_1_0_6_LightMapDataDomeShader.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "toLightDome_probe_14_00_latlongmap_16_1_0_6_LightMapDataDomeShader.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "toLightDome_probe_15_00_latlongmap_16_1_0_6_LightMapDataDomeShader.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "toLightDome_probe_16_00_latlongmap_16_1_0_6_LightMapDataDomeShader.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "toLightDome_probe_17_00_latlongmap_16_1_0_6_LightMapDataDomeShader.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "toLightDome_probe_17_50_latlongmap_16_1_0_6_LightMapDataDomeShader.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "lightLinker1.msg" ":lightList1.ln" -na;
connectAttr "isLightShape1.ltd" ":lightList1.l" -na;
connectAttr "isLightShape2.ltd" ":lightList1.l" -na;
connectAttr "isLightShape3.ltd" ":lightList1.l" -na;
connectAttr "isLightShape4.ltd" ":lightList1.l" -na;
connectAttr "isLightShape5.ltd" ":lightList1.l" -na;
connectAttr "isLightShape6.ltd" ":lightList1.l" -na;
connectAttr "isLightShape7.ltd" ":lightList1.l" -na;
connectAttr "isLightShape8.ltd" ":lightList1.l" -na;
connectAttr "isLightShape9.ltd" ":lightList1.l" -na;
connectAttr "isLightShape10.ltd" ":lightList1.l" -na;
connectAttr "isLightShape11.ltd" ":lightList1.l" -na;
connectAttr "isLightShape12.ltd" ":lightList1.l" -na;
connectAttr "isLightShape13.ltd" ":lightList1.l" -na;
connectAttr "isLightShape14.ltd" ":lightList1.l" -na;
connectAttr "isLightShape15.ltd" ":lightList1.l" -na;
connectAttr "isLightShape16.ltd" ":lightList1.l" -na;
connectAttr "isLightShape17.ltd" ":lightList1.l" -na;
connectAttr "isLightShape18.ltd" ":lightList1.l" -na;
connectAttr "isLightShape19.ltd" ":lightList1.l" -na;
connectAttr "isLightShape20.ltd" ":lightList1.l" -na;
connectAttr "isLightShape21.ltd" ":lightList1.l" -na;
connectAttr "isLightShape22.ltd" ":lightList1.l" -na;
connectAttr "isLightShape23.ltd" ":lightList1.l" -na;
connectAttr "isLightShape24.ltd" ":lightList1.l" -na;
connectAttr "isLightShape25.ltd" ":lightList1.l" -na;
connectAttr "isLightShape26.ltd" ":lightList1.l" -na;
connectAttr "isLightShape27.ltd" ":lightList1.l" -na;
connectAttr "isLightShape28.ltd" ":lightList1.l" -na;
connectAttr "isLightShape29.ltd" ":lightList1.l" -na;
connectAttr "isLightShape30.ltd" ":lightList1.l" -na;
connectAttr "isLightShape31.ltd" ":lightList1.l" -na;
connectAttr "isLightShape32.ltd" ":lightList1.l" -na;
connectAttr "isLightShape33.ltd" ":lightList1.l" -na;
connectAttr "isLightShape34.ltd" ":lightList1.l" -na;
connectAttr "isLightShape35.ltd" ":lightList1.l" -na;
connectAttr "isLightShape36.ltd" ":lightList1.l" -na;
connectAttr "isLightShape37.ltd" ":lightList1.l" -na;
connectAttr "isLightShape38.ltd" ":lightList1.l" -na;
connectAttr "isLightShape39.ltd" ":lightList1.l" -na;
connectAttr "isLightShape40.ltd" ":lightList1.l" -na;
connectAttr "isLightShape41.ltd" ":lightList1.l" -na;
connectAttr "isLightShape42.ltd" ":lightList1.l" -na;
connectAttr "isLightShape43.ltd" ":lightList1.l" -na;
connectAttr "isLightShape44.ltd" ":lightList1.l" -na;
connectAttr "isLightShape45.ltd" ":lightList1.l" -na;
connectAttr "isLightShape46.ltd" ":lightList1.l" -na;
connectAttr "isLightShape47.ltd" ":lightList1.l" -na;
connectAttr "isLightShape48.ltd" ":lightList1.l" -na;
connectAttr "isLightShape49.ltd" ":lightList1.l" -na;
connectAttr "isLightShape50.ltd" ":lightList1.l" -na;
connectAttr "isLightShape51.ltd" ":lightList1.l" -na;
connectAttr "isLightShape52.ltd" ":lightList1.l" -na;
connectAttr "isLightShape53.ltd" ":lightList1.l" -na;
connectAttr "isLightShape54.ltd" ":lightList1.l" -na;
connectAttr "isLightShape55.ltd" ":lightList1.l" -na;
connectAttr "isLightShape56.ltd" ":lightList1.l" -na;
connectAttr "isLightShape57.ltd" ":lightList1.l" -na;
connectAttr "isLightShape58.ltd" ":lightList1.l" -na;
connectAttr "isLightShape59.ltd" ":lightList1.l" -na;
connectAttr "isLightShape60.ltd" ":lightList1.l" -na;
connectAttr "isLightShape61.ltd" ":lightList1.l" -na;
connectAttr "isLightShape62.ltd" ":lightList1.l" -na;
connectAttr "isLightShape63.ltd" ":lightList1.l" -na;
connectAttr "isLightShape64.ltd" ":lightList1.l" -na;
connectAttr "isLightShape65.ltd" ":lightList1.l" -na;
connectAttr "isLightShape66.ltd" ":lightList1.l" -na;
connectAttr "isLightShape67.ltd" ":lightList1.l" -na;
connectAttr "isLightShape68.ltd" ":lightList1.l" -na;
connectAttr "isLightShape69.ltd" ":lightList1.l" -na;
connectAttr "isLightShape70.ltd" ":lightList1.l" -na;
connectAttr "isLightShape71.ltd" ":lightList1.l" -na;
connectAttr "isLightShape72.ltd" ":lightList1.l" -na;
connectAttr "isLightShape73.ltd" ":lightList1.l" -na;
connectAttr "isLightShape74.ltd" ":lightList1.l" -na;
connectAttr "isLightShape75.ltd" ":lightList1.l" -na;
connectAttr "isLightShape76.ltd" ":lightList1.l" -na;
connectAttr "isLightShape77.ltd" ":lightList1.l" -na;
connectAttr "isLightShape78.ltd" ":lightList1.l" -na;
connectAttr "isLightShape79.ltd" ":lightList1.l" -na;
connectAttr "isLightShape80.ltd" ":lightList1.l" -na;
connectAttr "isLightShape81.ltd" ":lightList1.l" -na;
connectAttr "isLightShape82.ltd" ":lightList1.l" -na;
connectAttr "isLightShape83.ltd" ":lightList1.l" -na;
connectAttr "isLightShape84.ltd" ":lightList1.l" -na;
connectAttr "isLightShape85.ltd" ":lightList1.l" -na;
connectAttr "isLightShape86.ltd" ":lightList1.l" -na;
connectAttr "isLightShape87.ltd" ":lightList1.l" -na;
connectAttr "isLightShape88.ltd" ":lightList1.l" -na;
connectAttr "isLightShape89.ltd" ":lightList1.l" -na;
connectAttr "isLightShape90.ltd" ":lightList1.l" -na;
connectAttr "isLightShape91.ltd" ":lightList1.l" -na;
connectAttr "isLightShape92.ltd" ":lightList1.l" -na;
connectAttr "isLightShape93.ltd" ":lightList1.l" -na;
connectAttr "isLightShape94.ltd" ":lightList1.l" -na;
connectAttr "isLightShape95.ltd" ":lightList1.l" -na;
connectAttr "isLightShape96.ltd" ":lightList1.l" -na;
connectAttr "isLightShape97.ltd" ":lightList1.l" -na;
connectAttr "isLightShape98.ltd" ":lightList1.l" -na;
connectAttr "isLightShape99.ltd" ":lightList1.l" -na;
connectAttr "isLightShape100.ltd" ":lightList1.l" -na;
connectAttr "isLightShape101.ltd" ":lightList1.l" -na;
connectAttr "isLightShape102.ltd" ":lightList1.l" -na;
connectAttr "isLightShape103.ltd" ":lightList1.l" -na;
connectAttr "isLightShape104.ltd" ":lightList1.l" -na;
connectAttr "isLightShape105.ltd" ":lightList1.l" -na;
connectAttr "isLightShape106.ltd" ":lightList1.l" -na;
connectAttr "isLightShape107.ltd" ":lightList1.l" -na;
connectAttr "isLightShape108.ltd" ":lightList1.l" -na;
connectAttr "isLightShape109.ltd" ":lightList1.l" -na;
connectAttr "isLightShape110.ltd" ":lightList1.l" -na;
connectAttr "isLightShape111.ltd" ":lightList1.l" -na;
connectAttr "isLightShape112.ltd" ":lightList1.l" -na;
connectAttr "isLightShape113.ltd" ":lightList1.l" -na;
connectAttr "isLightShape114.ltd" ":lightList1.l" -na;
connectAttr "isLightShape115.ltd" ":lightList1.l" -na;
connectAttr "isLightShape116.ltd" ":lightList1.l" -na;
connectAttr "isLightShape117.ltd" ":lightList1.l" -na;
connectAttr "isLightShape118.ltd" ":lightList1.l" -na;
connectAttr "isLightShape119.ltd" ":lightList1.l" -na;
connectAttr "isLightShape120.ltd" ":lightList1.l" -na;
connectAttr "isLightShape121.ltd" ":lightList1.l" -na;
connectAttr "isLightShape122.ltd" ":lightList1.l" -na;
connectAttr "isLightShape123.ltd" ":lightList1.l" -na;
connectAttr "isLightShape124.ltd" ":lightList1.l" -na;
connectAttr "isLightShape125.ltd" ":lightList1.l" -na;
connectAttr "isLightShape126.ltd" ":lightList1.l" -na;
connectAttr "isLightShape127.ltd" ":lightList1.l" -na;
connectAttr "isLightShape128.ltd" ":lightList1.l" -na;
connectAttr "isLightShape129.ltd" ":lightList1.l" -na;
connectAttr "isLightShape130.ltd" ":lightList1.l" -na;
connectAttr "isLightShape131.ltd" ":lightList1.l" -na;
connectAttr "isLightShape132.ltd" ":lightList1.l" -na;
connectAttr "isLightShape133.ltd" ":lightList1.l" -na;
connectAttr "isLightShape134.ltd" ":lightList1.l" -na;
connectAttr "isLightShape135.ltd" ":lightList1.l" -na;
connectAttr "isLightShape136.ltd" ":lightList1.l" -na;
connectAttr "isLightShape137.ltd" ":lightList1.l" -na;
connectAttr "isLightShape138.ltd" ":lightList1.l" -na;
connectAttr "isLightShape139.ltd" ":lightList1.l" -na;
connectAttr "isLightShape140.ltd" ":lightList1.l" -na;
connectAttr "isLightShape141.ltd" ":lightList1.l" -na;
connectAttr "isLightShape142.ltd" ":lightList1.l" -na;
connectAttr "isLightShape143.ltd" ":lightList1.l" -na;
connectAttr "isLightShape144.ltd" ":lightList1.l" -na;
connectAttr "isLightShape145.ltd" ":lightList1.l" -na;
connectAttr "isLightShape146.ltd" ":lightList1.l" -na;
connectAttr "isLightShape147.ltd" ":lightList1.l" -na;
connectAttr "isLightShape148.ltd" ":lightList1.l" -na;
connectAttr "isLightShape149.ltd" ":lightList1.l" -na;
connectAttr "isLightShape150.ltd" ":lightList1.l" -na;
connectAttr "isLightShape151.ltd" ":lightList1.l" -na;
connectAttr "isLightShape152.ltd" ":lightList1.l" -na;
connectAttr "isLightShape153.ltd" ":lightList1.l" -na;
connectAttr "isLightShape154.ltd" ":lightList1.l" -na;
connectAttr "isLightShape155.ltd" ":lightList1.l" -na;
connectAttr "isLightShape156.ltd" ":lightList1.l" -na;
connectAttr "isLightShape157.ltd" ":lightList1.l" -na;
connectAttr "isLightShape158.ltd" ":lightList1.l" -na;
connectAttr "isLightShape159.ltd" ":lightList1.l" -na;
connectAttr "isLightShape160.ltd" ":lightList1.l" -na;
connectAttr "isLightShape161.ltd" ":lightList1.l" -na;
connectAttr "isLightShape162.ltd" ":lightList1.l" -na;
connectAttr "isLightShape163.ltd" ":lightList1.l" -na;
connectAttr "isLightShape164.ltd" ":lightList1.l" -na;
connectAttr "isLightShape165.ltd" ":lightList1.l" -na;
connectAttr "isLightShape166.ltd" ":lightList1.l" -na;
connectAttr "isLightShape167.ltd" ":lightList1.l" -na;
connectAttr "isLightShape168.ltd" ":lightList1.l" -na;
connectAttr "isLightShape169.ltd" ":lightList1.l" -na;
connectAttr "isLightShape170.ltd" ":lightList1.l" -na;
connectAttr "isLightShape171.ltd" ":lightList1.l" -na;
connectAttr "isLightShape172.ltd" ":lightList1.l" -na;
connectAttr "isLightShape173.ltd" ":lightList1.l" -na;
connectAttr "isLightShape174.ltd" ":lightList1.l" -na;
connectAttr "isLightShape175.ltd" ":lightList1.l" -na;
connectAttr "isLightShape176.ltd" ":lightList1.l" -na;
connectAttr "isLightShape177.ltd" ":lightList1.l" -na;
connectAttr "isLightShape178.ltd" ":lightList1.l" -na;
connectAttr "isLightShape179.ltd" ":lightList1.l" -na;
connectAttr "isLightShape180.ltd" ":lightList1.l" -na;
connectAttr "isLightShape181.ltd" ":lightList1.l" -na;
connectAttr "isLightShape182.ltd" ":lightList1.l" -na;
connectAttr "isLightShape183.ltd" ":lightList1.l" -na;
connectAttr "isLightShape184.ltd" ":lightList1.l" -na;
connectAttr "isLightShape185.ltd" ":lightList1.l" -na;
connectAttr "isLightShape186.ltd" ":lightList1.l" -na;
connectAttr "isLightShape187.ltd" ":lightList1.l" -na;
connectAttr "isLightShape188.ltd" ":lightList1.l" -na;
connectAttr "isLightShape189.ltd" ":lightList1.l" -na;
connectAttr "isLightShape190.ltd" ":lightList1.l" -na;
connectAttr "isLightShape191.ltd" ":lightList1.l" -na;
connectAttr "isLightShape192.ltd" ":lightList1.l" -na;
connectAttr "isLightShape193.ltd" ":lightList1.l" -na;
connectAttr "isLightShape194.ltd" ":lightList1.l" -na;
connectAttr "checker1.msg" ":defaultTextureList1.tx" -na;
connectAttr "file1.msg" ":defaultTextureList1.tx" -na;
connectAttr "file2.msg" ":defaultTextureList1.tx" -na;
connectAttr "file3.msg" ":defaultTextureList1.tx" -na;
connectAttr "file4.msg" ":defaultTextureList1.tx" -na;
connectAttr "file5.msg" ":defaultTextureList1.tx" -na;
connectAttr "file6.msg" ":defaultTextureList1.tx" -na;
connectAttr "file7.msg" ":defaultTextureList1.tx" -na;
connectAttr "file8.msg" ":defaultTextureList1.tx" -na;
connectAttr "file9.msg" ":defaultTextureList1.tx" -na;
connectAttr "file10.msg" ":defaultTextureList1.tx" -na;
connectAttr "file11.msg" ":defaultTextureList1.tx" -na;
connectAttr "file12.msg" ":defaultTextureList1.tx" -na;
connectAttr "nurbsSphereShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "isLight1.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight2.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight3.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight4.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight5.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight6.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight7.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight8.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight9.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight10.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight11.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight12.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight13.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight14.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight15.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight16.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight17.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight18.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight19.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight20.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight21.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight22.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight23.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight24.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight25.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight26.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight27.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight28.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight29.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight30.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight31.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight32.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight33.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight34.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight35.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight36.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight37.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight38.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight39.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight40.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight41.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight42.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight43.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight44.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight45.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight46.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight47.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight48.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight49.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight50.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight51.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight52.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight53.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight54.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight55.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight56.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight57.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight58.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight59.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight60.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight61.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight62.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight63.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight64.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight65.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight66.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight67.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight68.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight69.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight70.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight71.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight72.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight73.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight74.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight75.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight76.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight77.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight78.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight79.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight80.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight81.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight82.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight83.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight84.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight85.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight86.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight87.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight88.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight89.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight90.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight91.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight92.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight93.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight94.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight95.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight96.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight97.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight98.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight99.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight100.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight101.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight102.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight103.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight104.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight105.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight106.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight107.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight108.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight109.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight110.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight111.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight112.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight113.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight114.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight115.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight116.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight117.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight118.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight119.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight120.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight121.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight122.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight123.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight124.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight125.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight126.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight127.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight128.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight129.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight130.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight131.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight132.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight133.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight134.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight135.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight136.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight137.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight138.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight139.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight140.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight141.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight142.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight143.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight144.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight145.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight146.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight147.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight148.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight149.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight150.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight151.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight152.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight153.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight154.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight155.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight156.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight157.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight158.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight159.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight160.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight161.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight162.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight163.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight164.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight165.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight166.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight167.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight168.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight169.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight170.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight171.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight172.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight173.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight174.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight175.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight176.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight177.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight178.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight179.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight180.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight181.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight182.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight183.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight184.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight185.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight186.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight187.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight188.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight189.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight190.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight191.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight192.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight193.iog" ":defaultLightSet.dsm" -na;
connectAttr "isLight194.iog" ":defaultLightSet.dsm" -na;
// End of toLightDome_sunSkyLightProbes-16samples.ma
