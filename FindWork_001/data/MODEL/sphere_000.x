xof 0302txt 0064
template Header {
 <3D82AB43-62DA-11cf-AB39-0020AF71E433>
 WORD major;
 WORD minor;
 DWORD flags;
}

template Vector {
 <3D82AB5E-62DA-11cf-AB39-0020AF71E433>
 FLOAT x;
 FLOAT y;
 FLOAT z;
}

template Coords2d {
 <F6F23F44-7686-11cf-8F52-0040333594A3>
 FLOAT u;
 FLOAT v;
}

template Matrix4x4 {
 <F6F23F45-7686-11cf-8F52-0040333594A3>
 array FLOAT matrix[16];
}

template ColorRGBA {
 <35FF44E0-6C7C-11cf-8F52-0040333594A3>
 FLOAT red;
 FLOAT green;
 FLOAT blue;
 FLOAT alpha;
}

template ColorRGB {
 <D3E16E81-7835-11cf-8F52-0040333594A3>
 FLOAT red;
 FLOAT green;
 FLOAT blue;
}

template IndexedColor {
 <1630B820-7842-11cf-8F52-0040333594A3>
 DWORD index;
 ColorRGBA indexColor;
}

template Boolean {
 <4885AE61-78E8-11cf-8F52-0040333594A3>
 WORD truefalse;
}

template Boolean2d {
 <4885AE63-78E8-11cf-8F52-0040333594A3>
 Boolean u;
 Boolean v;
}

template MaterialWrap {
 <4885AE60-78E8-11cf-8F52-0040333594A3>
 Boolean u;
 Boolean v;
}

template TextureFilename {
 <A42790E1-7810-11cf-8F52-0040333594A3>
 STRING filename;
}

template Material {
 <3D82AB4D-62DA-11cf-AB39-0020AF71E433>
 ColorRGBA faceColor;
 FLOAT power;
 ColorRGB specularColor;
 ColorRGB emissiveColor;
 [...]
}

template MeshFace {
 <3D82AB5F-62DA-11cf-AB39-0020AF71E433>
 DWORD nFaceVertexIndices;
 array DWORD faceVertexIndices[nFaceVertexIndices];
}

template MeshFaceWraps {
 <4885AE62-78E8-11cf-8F52-0040333594A3>
 DWORD nFaceWrapValues;
 Boolean2d faceWrapValues;
}

template MeshTextureCoords {
 <F6F23F40-7686-11cf-8F52-0040333594A3>
 DWORD nTextureCoords;
 array Coords2d textureCoords[nTextureCoords];
}

template MeshMaterialList {
 <F6F23F42-7686-11cf-8F52-0040333594A3>
 DWORD nMaterials;
 DWORD nFaceIndexes;
 array DWORD faceIndexes[nFaceIndexes];
 [Material]
}

template MeshNormals {
 <F6F23F43-7686-11cf-8F52-0040333594A3>
 DWORD nNormals;
 array Vector normals[nNormals];
 DWORD nFaceNormals;
 array MeshFace faceNormals[nFaceNormals];
}

template MeshVertexColors {
 <1630B821-7842-11cf-8F52-0040333594A3>
 DWORD nVertexColors;
 array IndexedColor vertexColors[nVertexColors];
}

template Mesh {
 <3D82AB44-62DA-11cf-AB39-0020AF71E433>
 DWORD nVertices;
 array Vector vertices[nVertices];
 DWORD nFaces;
 array MeshFace faces[nFaces];
 [...]
}

Header{
1;
0;
1;
}

Mesh {
 238;
 0.00000;10.00000;0.00000;,
 0.96548;9.74928;-2.00484;,
 0.00000;9.74928;-2.22521;,
 0.00000;10.00000;0.00000;,
 1.73974;9.74928;-1.38740;,
 0.00000;10.00000;0.00000;,
 2.16942;9.74928;-0.49516;,
 0.00000;10.00000;0.00000;,
 2.16942;9.74928;0.49516;,
 0.00000;10.00000;0.00000;,
 1.73974;9.74928;1.38740;,
 0.00000;10.00000;0.00000;,
 0.96548;9.74928;2.00484;,
 0.00000;10.00000;0.00000;,
 -0.00000;9.74928;2.22521;,
 0.00000;10.00000;0.00000;,
 -0.96548;9.74928;2.00484;,
 0.00000;10.00000;0.00000;,
 -1.73974;9.74928;1.38740;,
 0.00000;10.00000;0.00000;,
 -2.16942;9.74928;0.49515;,
 0.00000;10.00000;0.00000;,
 -2.16942;9.74928;-0.49516;,
 0.00000;10.00000;0.00000;,
 -1.73974;9.74928;-1.38740;,
 0.00000;10.00000;0.00000;,
 -0.96548;9.74928;-2.00485;,
 0.00000;10.00000;0.00000;,
 0.00000;9.74928;-2.22521;,
 1.88255;9.00969;-3.90916;,
 0.00000;9.00969;-4.33884;,
 3.39224;9.00969;-2.70522;,
 4.23005;9.00969;-0.96548;,
 4.23005;9.00969;0.96548;,
 3.39224;9.00969;2.70522;,
 1.88255;9.00969;3.90916;,
 -0.00000;9.00969;4.33884;,
 -1.88255;9.00969;3.90916;,
 -3.39224;9.00969;2.70522;,
 -4.23005;9.00969;0.96548;,
 -4.23005;9.00969;-0.96548;,
 -3.39224;9.00969;-2.70522;,
 -1.88255;9.00969;-3.90916;,
 0.00000;9.00969;-4.33884;,
 2.70522;7.81831;-5.61745;,
 0.00000;7.81831;-6.23490;,
 4.87464;7.81831;-3.88740;,
 6.07858;7.81831;-1.38740;,
 6.07858;7.81831;1.38740;,
 4.87464;7.81831;3.88740;,
 2.70522;7.81831;5.61745;,
 -0.00000;7.81831;6.23490;,
 -2.70522;7.81831;5.61745;,
 -4.87464;7.81831;3.88739;,
 -6.07858;7.81831;1.38739;,
 -6.07858;7.81831;-1.38740;,
 -4.87464;7.81831;-3.88740;,
 -2.70522;7.81831;-5.61745;,
 0.00000;7.81831;-6.23490;,
 3.39224;6.23490;-7.04406;,
 0.00000;6.23490;-7.81832;,
 6.11261;6.23490;-4.87464;,
 7.62229;6.23490;-1.73974;,
 7.62229;6.23490;1.73974;,
 6.11260;6.23490;4.87464;,
 3.39224;6.23490;7.04406;,
 -0.00000;6.23490;7.81832;,
 -3.39224;6.23490;7.04406;,
 -6.11261;6.23490;4.87464;,
 -7.62229;6.23490;1.73974;,
 -7.62229;6.23490;-1.73974;,
 -6.11260;6.23490;-4.87464;,
 -3.39223;6.23490;-7.04406;,
 0.00000;6.23490;-7.81832;,
 3.90916;4.33884;-8.11745;,
 0.00000;4.33884;-9.00969;,
 7.04406;4.33884;-5.61745;,
 8.78380;4.33884;-2.00484;,
 8.78380;4.33884;2.00485;,
 7.04406;4.33884;5.61745;,
 3.90916;4.33884;8.11745;,
 -0.00000;4.33884;9.00969;,
 -3.90916;4.33884;8.11745;,
 -7.04406;4.33884;5.61745;,
 -8.78380;4.33884;2.00484;,
 -8.78380;4.33884;-2.00485;,
 -7.04405;4.33884;-5.61745;,
 -3.90915;4.33884;-8.11745;,
 0.00000;4.33884;-9.00969;,
 4.23005;2.22521;-8.78380;,
 0.00000;2.22521;-9.74928;,
 7.62229;2.22521;-6.07858;,
 9.50484;2.22521;-2.16942;,
 9.50484;2.22521;2.16942;,
 7.62229;2.22521;6.07858;,
 4.23005;2.22521;8.78380;,
 -0.00000;2.22521;9.74928;,
 -4.23005;2.22521;8.78380;,
 -7.62229;2.22521;6.07857;,
 -9.50485;2.22521;2.16941;,
 -9.50484;2.22521;-2.16942;,
 -7.62229;2.22521;-6.07858;,
 -4.23005;2.22521;-8.78380;,
 0.00000;2.22521;-9.74928;,
 4.33884;-0.00000;-9.00969;,
 0.00000;-0.00000;-10.00000;,
 7.81832;-0.00000;-6.23490;,
 9.74928;-0.00000;-2.22521;,
 9.74928;-0.00000;2.22521;,
 7.81831;-0.00000;6.23490;,
 4.33884;-0.00000;9.00969;,
 -0.00000;-0.00000;10.00000;,
 -4.33884;-0.00000;9.00969;,
 -7.81832;-0.00000;6.23490;,
 -9.74928;-0.00000;2.22521;,
 -9.74928;-0.00000;-2.22521;,
 -7.81831;-0.00000;-6.23490;,
 -4.33883;-0.00000;-9.00969;,
 0.00000;-0.00000;-10.00000;,
 4.23005;-2.22521;-8.78380;,
 0.00000;-2.22521;-9.74928;,
 7.62229;-2.22521;-6.07858;,
 9.50484;-2.22521;-2.16942;,
 9.50484;-2.22521;2.16942;,
 7.62229;-2.22521;6.07858;,
 4.23005;-2.22521;8.78380;,
 -0.00000;-2.22521;9.74928;,
 -4.23005;-2.22521;8.78380;,
 -7.62229;-2.22521;6.07857;,
 -9.50485;-2.22521;2.16941;,
 -9.50484;-2.22521;-2.16942;,
 -7.62229;-2.22521;-6.07858;,
 -4.23005;-2.22521;-8.78380;,
 0.00000;-2.22521;-9.74928;,
 3.90916;-4.33884;-8.11745;,
 0.00000;-4.33884;-9.00969;,
 7.04406;-4.33884;-5.61745;,
 8.78380;-4.33884;-2.00484;,
 8.78380;-4.33884;2.00485;,
 7.04406;-4.33884;5.61745;,
 3.90916;-4.33884;8.11745;,
 -0.00000;-4.33884;9.00969;,
 -3.90916;-4.33884;8.11745;,
 -7.04406;-4.33884;5.61745;,
 -8.78380;-4.33884;2.00484;,
 -8.78380;-4.33884;-2.00485;,
 -7.04405;-4.33884;-5.61745;,
 -3.90915;-4.33884;-8.11745;,
 0.00000;-4.33884;-9.00969;,
 3.39224;-6.23490;-7.04406;,
 0.00000;-6.23490;-7.81831;,
 6.11260;-6.23490;-4.87464;,
 7.62229;-6.23490;-1.73974;,
 7.62229;-6.23490;1.73974;,
 6.11260;-6.23490;4.87464;,
 3.39224;-6.23490;7.04406;,
 -0.00000;-6.23490;7.81831;,
 -3.39224;-6.23490;7.04406;,
 -6.11260;-6.23490;4.87464;,
 -7.62229;-6.23490;1.73974;,
 -7.62229;-6.23490;-1.73974;,
 -6.11260;-6.23490;-4.87464;,
 -3.39223;-6.23490;-7.04406;,
 0.00000;-6.23490;-7.81831;,
 2.70522;-7.81832;-5.61745;,
 0.00000;-7.81832;-6.23490;,
 4.87464;-7.81832;-3.88739;,
 6.07857;-7.81832;-1.38739;,
 6.07857;-7.81832;1.38740;,
 4.87464;-7.81832;3.88739;,
 2.70522;-7.81832;5.61745;,
 -0.00000;-7.81832;6.23490;,
 -2.70522;-7.81832;5.61745;,
 -4.87464;-7.81832;3.88739;,
 -6.07857;-7.81832;1.38739;,
 -6.07857;-7.81832;-1.38740;,
 -4.87463;-7.81832;-3.88740;,
 -2.70521;-7.81832;-5.61745;,
 0.00000;-7.81832;-6.23490;,
 1.88255;-9.00969;-3.90915;,
 0.00000;-9.00969;-4.33883;,
 3.39224;-9.00969;-2.70522;,
 4.23005;-9.00969;-0.96548;,
 4.23005;-9.00969;0.96548;,
 3.39224;-9.00969;2.70522;,
 1.88255;-9.00969;3.90915;,
 -0.00000;-9.00969;4.33883;,
 -1.88255;-9.00969;3.90915;,
 -3.39224;-9.00969;2.70522;,
 -4.23005;-9.00969;0.96548;,
 -4.23005;-9.00969;-0.96548;,
 -3.39224;-9.00969;-2.70522;,
 -1.88255;-9.00969;-3.90916;,
 0.00000;-9.00969;-4.33883;,
 0.96548;-9.74928;-2.00484;,
 0.00000;-9.74928;-2.22520;,
 1.73974;-9.74928;-1.38739;,
 2.16941;-9.74928;-0.49515;,
 2.16941;-9.74928;0.49515;,
 1.73973;-9.74928;1.38739;,
 0.96548;-9.74928;2.00484;,
 -0.00000;-9.74928;2.22520;,
 -0.96548;-9.74928;2.00484;,
 -1.73974;-9.74928;1.38739;,
 -2.16941;-9.74928;0.49515;,
 -2.16941;-9.74928;-0.49516;,
 -1.73973;-9.74928;-1.38739;,
 -0.96548;-9.74928;-2.00484;,
 0.00000;-9.74928;-2.22520;,
 0.00000;-9.74928;-2.22520;,
 0.96548;-9.74928;-2.00484;,
 0.00000;-10.00000;-0.00000;,
 1.73974;-9.74928;-1.38739;,
 0.00000;-10.00000;-0.00000;,
 2.16941;-9.74928;-0.49515;,
 0.00000;-10.00000;-0.00000;,
 2.16941;-9.74928;0.49515;,
 0.00000;-10.00000;-0.00000;,
 1.73973;-9.74928;1.38739;,
 0.00000;-10.00000;-0.00000;,
 0.96548;-9.74928;2.00484;,
 0.00000;-10.00000;-0.00000;,
 -0.00000;-9.74928;2.22520;,
 0.00000;-10.00000;-0.00000;,
 -0.96548;-9.74928;2.00484;,
 0.00000;-10.00000;-0.00000;,
 -1.73974;-9.74928;1.38739;,
 0.00000;-10.00000;-0.00000;,
 -2.16941;-9.74928;0.49515;,
 0.00000;-10.00000;-0.00000;,
 -2.16941;-9.74928;-0.49516;,
 0.00000;-10.00000;-0.00000;,
 -1.73973;-9.74928;-1.38739;,
 0.00000;-10.00000;-0.00000;,
 -0.96548;-9.74928;-2.00484;,
 0.00000;-10.00000;-0.00000;,
 0.00000;-9.74928;-2.22520;,
 0.00000;-10.00000;-0.00000;;
 
 196;
 3;0,1,2;,
 3;3,4,1;,
 3;5,6,4;,
 3;7,8,6;,
 3;9,10,8;,
 3;11,12,10;,
 3;13,14,12;,
 3;15,16,14;,
 3;17,18,16;,
 3;19,20,18;,
 3;21,22,20;,
 3;23,24,22;,
 3;25,26,24;,
 3;27,28,26;,
 4;2,1,29,30;,
 4;1,4,31,29;,
 4;4,6,32,31;,
 4;6,8,33,32;,
 4;8,10,34,33;,
 4;10,12,35,34;,
 4;12,14,36,35;,
 4;14,16,37,36;,
 4;16,18,38,37;,
 4;18,20,39,38;,
 4;20,22,40,39;,
 4;22,24,41,40;,
 4;24,26,42,41;,
 4;26,28,43,42;,
 4;30,29,44,45;,
 4;29,31,46,44;,
 4;31,32,47,46;,
 4;32,33,48,47;,
 4;33,34,49,48;,
 4;34,35,50,49;,
 4;35,36,51,50;,
 4;36,37,52,51;,
 4;37,38,53,52;,
 4;38,39,54,53;,
 4;39,40,55,54;,
 4;40,41,56,55;,
 4;41,42,57,56;,
 4;42,43,58,57;,
 4;45,44,59,60;,
 4;44,46,61,59;,
 4;46,47,62,61;,
 4;47,48,63,62;,
 4;48,49,64,63;,
 4;49,50,65,64;,
 4;50,51,66,65;,
 4;51,52,67,66;,
 4;52,53,68,67;,
 4;53,54,69,68;,
 4;54,55,70,69;,
 4;55,56,71,70;,
 4;56,57,72,71;,
 4;57,58,73,72;,
 4;60,59,74,75;,
 4;59,61,76,74;,
 4;61,62,77,76;,
 4;62,63,78,77;,
 4;63,64,79,78;,
 4;64,65,80,79;,
 4;65,66,81,80;,
 4;66,67,82,81;,
 4;67,68,83,82;,
 4;68,69,84,83;,
 4;69,70,85,84;,
 4;70,71,86,85;,
 4;71,72,87,86;,
 4;72,73,88,87;,
 4;75,74,89,90;,
 4;74,76,91,89;,
 4;76,77,92,91;,
 4;77,78,93,92;,
 4;78,79,94,93;,
 4;79,80,95,94;,
 4;80,81,96,95;,
 4;81,82,97,96;,
 4;82,83,98,97;,
 4;83,84,99,98;,
 4;84,85,100,99;,
 4;85,86,101,100;,
 4;86,87,102,101;,
 4;87,88,103,102;,
 4;90,89,104,105;,
 4;89,91,106,104;,
 4;91,92,107,106;,
 4;92,93,108,107;,
 4;93,94,109,108;,
 4;94,95,110,109;,
 4;95,96,111,110;,
 4;96,97,112,111;,
 4;97,98,113,112;,
 4;98,99,114,113;,
 4;99,100,115,114;,
 4;100,101,116,115;,
 4;101,102,117,116;,
 4;102,103,118,117;,
 4;105,104,119,120;,
 4;104,106,121,119;,
 4;106,107,122,121;,
 4;107,108,123,122;,
 4;108,109,124,123;,
 4;109,110,125,124;,
 4;110,111,126,125;,
 4;111,112,127,126;,
 4;112,113,128,127;,
 4;113,114,129,128;,
 4;114,115,130,129;,
 4;115,116,131,130;,
 4;116,117,132,131;,
 4;117,118,133,132;,
 4;120,119,134,135;,
 4;119,121,136,134;,
 4;121,122,137,136;,
 4;122,123,138,137;,
 4;123,124,139,138;,
 4;124,125,140,139;,
 4;125,126,141,140;,
 4;126,127,142,141;,
 4;127,128,143,142;,
 4;128,129,144,143;,
 4;129,130,145,144;,
 4;130,131,146,145;,
 4;131,132,147,146;,
 4;132,133,148,147;,
 4;135,134,149,150;,
 4;134,136,151,149;,
 4;136,137,152,151;,
 4;137,138,153,152;,
 4;138,139,154,153;,
 4;139,140,155,154;,
 4;140,141,156,155;,
 4;141,142,157,156;,
 4;142,143,158,157;,
 4;143,144,159,158;,
 4;144,145,160,159;,
 4;145,146,161,160;,
 4;146,147,162,161;,
 4;147,148,163,162;,
 4;150,149,164,165;,
 4;149,151,166,164;,
 4;151,152,167,166;,
 4;152,153,168,167;,
 4;153,154,169,168;,
 4;154,155,170,169;,
 4;155,156,171,170;,
 4;156,157,172,171;,
 4;157,158,173,172;,
 4;158,159,174,173;,
 4;159,160,175,174;,
 4;160,161,176,175;,
 4;161,162,177,176;,
 4;162,163,178,177;,
 4;165,164,179,180;,
 4;164,166,181,179;,
 4;166,167,182,181;,
 4;167,168,183,182;,
 4;168,169,184,183;,
 4;169,170,185,184;,
 4;170,171,186,185;,
 4;171,172,187,186;,
 4;172,173,188,187;,
 4;173,174,189,188;,
 4;174,175,190,189;,
 4;175,176,191,190;,
 4;176,177,192,191;,
 4;177,178,193,192;,
 4;180,179,194,195;,
 4;179,181,196,194;,
 4;181,182,197,196;,
 4;182,183,198,197;,
 4;183,184,199,198;,
 4;184,185,200,199;,
 4;185,186,201,200;,
 4;186,187,202,201;,
 4;187,188,203,202;,
 4;188,189,204,203;,
 4;189,190,205,204;,
 4;190,191,206,205;,
 4;191,192,207,206;,
 4;192,193,208,207;,
 3;209,210,211;,
 3;210,212,213;,
 3;212,214,215;,
 3;214,216,217;,
 3;216,218,219;,
 3;218,220,221;,
 3;220,222,223;,
 3;222,224,225;,
 3;224,226,227;,
 3;226,228,229;,
 3;228,230,231;,
 3;230,232,233;,
 3;232,234,235;,
 3;234,236,237;;
 
 MeshMaterialList {
  1;
  196;
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0;;
  Material {
   1.000000;1.000000;1.000000;1.000000;;
   0.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
 }
 MeshNormals {
  184;
  0.000000;1.000000;-0.000000;,
  0.000000;0.974959;-0.222383;,
  0.096488;0.974959;-0.200360;,
  0.173866;0.974959;-0.138654;,
  0.216808;0.974959;-0.049485;,
  0.216808;0.974959;0.049485;,
  0.173866;0.974959;0.138654;,
  0.096488;0.974959;0.200360;,
  -0.000000;0.974959;0.222383;,
  -0.096488;0.974959;0.200360;,
  -0.173866;0.974959;0.138654;,
  -0.216808;0.974959;0.049485;,
  -0.216808;0.974959;-0.049485;,
  -0.173866;0.974959;-0.138654;,
  -0.096488;0.974959;-0.200360;,
  0.000000;0.901078;-0.433656;,
  0.188156;0.901078;-0.390711;,
  0.339046;0.901078;-0.270380;,
  0.422783;0.901078;-0.096498;,
  0.422783;0.901078;0.096498;,
  0.339046;0.901078;0.270380;,
  0.188156;0.901078;0.390711;,
  -0.000000;0.901078;0.433656;,
  -0.188156;0.901078;0.390711;,
  -0.339046;0.901078;0.270380;,
  -0.422783;0.901078;0.096497;,
  -0.422783;0.901078;-0.096498;,
  -0.339046;0.901078;-0.270380;,
  -0.188156;0.901078;-0.390711;,
  0.000000;0.782026;-0.623246;,
  0.270416;0.782026;-0.561525;,
  0.487273;0.782026;-0.388587;,
  0.607620;0.782026;-0.138685;,
  0.607620;0.782026;0.138685;,
  0.487273;0.782026;0.388588;,
  0.270416;0.782026;0.561525;,
  -0.000000;0.782026;0.623246;,
  -0.270416;0.782026;0.561525;,
  -0.487273;0.782026;0.388587;,
  -0.607620;0.782026;0.138685;,
  -0.607620;0.782026;-0.138686;,
  -0.487273;0.782026;-0.388588;,
  -0.270416;0.782026;-0.561525;,
  0.000000;0.623731;-0.781639;,
  0.339141;0.623731;-0.704233;,
  0.611110;0.623731;-0.487344;,
  0.762042;0.623731;-0.173931;,
  0.762042;0.623731;0.173931;,
  0.611110;0.623731;0.487344;,
  0.339140;0.623731;0.704233;,
  -0.000000;0.623731;0.781639;,
  -0.339141;0.623731;0.704233;,
  -0.611110;0.623731;0.487344;,
  -0.762042;0.623731;0.173931;,
  -0.762042;0.623731;-0.173932;,
  -0.611110;0.623731;-0.487345;,
  -0.339140;0.623731;-0.704233;,
  0.000000;0.434104;-0.900863;,
  0.390870;0.434104;-0.811649;,
  0.704323;0.434104;-0.561679;,
  0.878276;0.434104;-0.200461;,
  0.878276;0.434104;0.200461;,
  0.704323;0.434104;0.561679;,
  0.390869;0.434104;0.811649;,
  -0.000000;0.434104;0.900863;,
  -0.390870;0.434104;0.811649;,
  -0.704323;0.434104;0.561678;,
  -0.878276;0.434104;0.200460;,
  -0.878276;0.434104;-0.200461;,
  -0.704322;0.434104;-0.561679;,
  -0.390869;0.434104;-0.811649;,
  0.000000;0.222653;-0.974898;,
  0.422992;0.222653;-0.878353;,
  0.762206;0.222653;-0.607839;,
  0.950455;0.222653;-0.216935;,
  0.950455;0.222653;0.216935;,
  0.762206;0.222653;0.607839;,
  0.422992;0.222653;0.878353;,
  -0.000000;0.222653;0.974898;,
  -0.422992;0.222653;0.878353;,
  -0.762206;0.222653;0.607839;,
  -0.950455;0.222653;0.216935;,
  -0.950455;0.222653;-0.216936;,
  -0.762205;0.222653;-0.607839;,
  -0.422992;0.222653;-0.878353;,
  0.000000;0.000000;-1.000000;,
  0.433884;-0.000000;-0.900969;,
  0.781832;-0.000000;-0.623490;,
  0.974928;-0.000000;-0.222521;,
  0.974928;-0.000000;0.222521;,
  0.781831;0.000000;0.623490;,
  0.433884;0.000000;0.900969;,
  -0.000000;-0.000000;1.000000;,
  -0.433884;0.000000;0.900969;,
  -0.781832;-0.000000;0.623490;,
  -0.974928;-0.000000;0.222521;,
  -0.974928;-0.000000;-0.222521;,
  -0.781831;-0.000000;-0.623490;,
  -0.433883;-0.000000;-0.900969;,
  0.000000;-0.222653;-0.974898;,
  0.422992;-0.222653;-0.878353;,
  0.762206;-0.222653;-0.607839;,
  0.950455;-0.222653;-0.216935;,
  0.950455;-0.222653;0.216935;,
  0.762206;-0.222653;0.607839;,
  0.422992;-0.222653;0.878353;,
  -0.000000;-0.222653;0.974898;,
  -0.422992;-0.222653;0.878353;,
  -0.762206;-0.222653;0.607839;,
  -0.950455;-0.222653;0.216935;,
  -0.950455;-0.222653;-0.216936;,
  -0.762205;-0.222653;-0.607839;,
  -0.422992;-0.222653;-0.878353;,
  0.000000;-0.434105;-0.900863;,
  0.390870;-0.434105;-0.811649;,
  0.704323;-0.434104;-0.561679;,
  0.878276;-0.434105;-0.200461;,
  0.878276;-0.434105;0.200461;,
  0.704323;-0.434104;0.561679;,
  0.390869;-0.434104;0.811649;,
  -0.000000;-0.434104;0.900862;,
  -0.390870;-0.434105;0.811649;,
  -0.704323;-0.434105;0.561678;,
  -0.878276;-0.434105;0.200460;,
  -0.878276;-0.434105;-0.200461;,
  -0.704322;-0.434105;-0.561679;,
  -0.390869;-0.434105;-0.811649;,
  0.000000;-0.623731;-0.781639;,
  0.339140;-0.623731;-0.704232;,
  0.611110;-0.623731;-0.487344;,
  0.762042;-0.623731;-0.173931;,
  0.762042;-0.623731;0.173931;,
  0.611110;-0.623731;0.487344;,
  0.339140;-0.623731;0.704232;,
  -0.000000;-0.623731;0.781639;,
  -0.339140;-0.623731;0.704232;,
  -0.611110;-0.623731;0.487344;,
  -0.762042;-0.623731;0.173931;,
  -0.762041;-0.623731;-0.173931;,
  -0.611109;-0.623731;-0.487344;,
  -0.339140;-0.623731;-0.704233;,
  0.000000;-0.782026;-0.623245;,
  0.270416;-0.782026;-0.561525;,
  0.487273;-0.782026;-0.388587;,
  0.607619;-0.782026;-0.138685;,
  0.607619;-0.782026;0.138685;,
  0.487273;-0.782026;0.388587;,
  0.270416;-0.782026;0.561525;,
  -0.000000;-0.782026;0.623245;,
  -0.270416;-0.782026;0.561525;,
  -0.487273;-0.782026;0.388587;,
  -0.607620;-0.782026;0.138685;,
  -0.607619;-0.782026;-0.138686;,
  -0.487273;-0.782026;-0.388588;,
  -0.270416;-0.782026;-0.561525;,
  0.000000;-0.901079;-0.433656;,
  0.188156;-0.901079;-0.390710;,
  0.339046;-0.901079;-0.270380;,
  0.422783;-0.901079;-0.096497;,
  0.422783;-0.901079;0.096498;,
  0.339046;-0.901079;0.270380;,
  0.188156;-0.901079;0.390710;,
  -0.000000;-0.901079;0.433656;,
  -0.188156;-0.901079;0.390710;,
  -0.339046;-0.901079;0.270380;,
  -0.422783;-0.901079;0.096497;,
  -0.422783;-0.901079;-0.096498;,
  -0.339046;-0.901079;-0.270380;,
  -0.188156;-0.901079;-0.390710;,
  0.000000;-0.974959;-0.222383;,
  0.096488;-0.974959;-0.200360;,
  0.173866;-0.974959;-0.138654;,
  0.216807;-0.974959;-0.049485;,
  0.216807;-0.974959;0.049485;,
  0.173866;-0.974959;0.138654;,
  0.096488;-0.974959;0.200360;,
  -0.000000;-0.974959;0.222383;,
  -0.096488;-0.974959;0.200360;,
  -0.173866;-0.974959;0.138653;,
  -0.216807;-0.974959;0.049485;,
  -0.216807;-0.974959;-0.049485;,
  -0.173866;-0.974959;-0.138654;,
  -0.096488;-0.974959;-0.200360;,
  0.000000;-1.000000;-0.000000;;
  196;
  3;0,2,1;,
  3;0,3,2;,
  3;0,4,3;,
  3;0,5,4;,
  3;0,6,5;,
  3;0,7,6;,
  3;0,8,7;,
  3;0,9,8;,
  3;0,10,9;,
  3;0,11,10;,
  3;0,12,11;,
  3;0,13,12;,
  3;0,14,13;,
  3;0,1,14;,
  4;1,2,16,15;,
  4;2,3,17,16;,
  4;3,4,18,17;,
  4;4,5,19,18;,
  4;5,6,20,19;,
  4;6,7,21,20;,
  4;7,8,22,21;,
  4;8,9,23,22;,
  4;9,10,24,23;,
  4;10,11,25,24;,
  4;11,12,26,25;,
  4;12,13,27,26;,
  4;13,14,28,27;,
  4;14,1,15,28;,
  4;15,16,30,29;,
  4;16,17,31,30;,
  4;17,18,32,31;,
  4;18,19,33,32;,
  4;19,20,34,33;,
  4;20,21,35,34;,
  4;21,22,36,35;,
  4;22,23,37,36;,
  4;23,24,38,37;,
  4;24,25,39,38;,
  4;25,26,40,39;,
  4;26,27,41,40;,
  4;27,28,42,41;,
  4;28,15,29,42;,
  4;29,30,44,43;,
  4;30,31,45,44;,
  4;31,32,46,45;,
  4;32,33,47,46;,
  4;33,34,48,47;,
  4;34,35,49,48;,
  4;35,36,50,49;,
  4;36,37,51,50;,
  4;37,38,52,51;,
  4;38,39,53,52;,
  4;39,40,54,53;,
  4;40,41,55,54;,
  4;41,42,56,55;,
  4;42,29,43,56;,
  4;43,44,58,57;,
  4;44,45,59,58;,
  4;45,46,60,59;,
  4;46,47,61,60;,
  4;47,48,62,61;,
  4;48,49,63,62;,
  4;49,50,64,63;,
  4;50,51,65,64;,
  4;51,52,66,65;,
  4;52,53,67,66;,
  4;53,54,68,67;,
  4;54,55,69,68;,
  4;55,56,70,69;,
  4;56,43,57,70;,
  4;57,58,72,71;,
  4;58,59,73,72;,
  4;59,60,74,73;,
  4;60,61,75,74;,
  4;61,62,76,75;,
  4;62,63,77,76;,
  4;63,64,78,77;,
  4;64,65,79,78;,
  4;65,66,80,79;,
  4;66,67,81,80;,
  4;67,68,82,81;,
  4;68,69,83,82;,
  4;69,70,84,83;,
  4;70,57,71,84;,
  4;71,72,86,85;,
  4;72,73,87,86;,
  4;73,74,88,87;,
  4;74,75,89,88;,
  4;75,76,90,89;,
  4;76,77,91,90;,
  4;77,78,92,91;,
  4;78,79,93,92;,
  4;79,80,94,93;,
  4;80,81,95,94;,
  4;81,82,96,95;,
  4;82,83,97,96;,
  4;83,84,98,97;,
  4;84,71,85,98;,
  4;85,86,100,99;,
  4;86,87,101,100;,
  4;87,88,102,101;,
  4;88,89,103,102;,
  4;89,90,104,103;,
  4;90,91,105,104;,
  4;91,92,106,105;,
  4;92,93,107,106;,
  4;93,94,108,107;,
  4;94,95,109,108;,
  4;95,96,110,109;,
  4;96,97,111,110;,
  4;97,98,112,111;,
  4;98,85,99,112;,
  4;99,100,114,113;,
  4;100,101,115,114;,
  4;101,102,116,115;,
  4;102,103,117,116;,
  4;103,104,118,117;,
  4;104,105,119,118;,
  4;105,106,120,119;,
  4;106,107,121,120;,
  4;107,108,122,121;,
  4;108,109,123,122;,
  4;109,110,124,123;,
  4;110,111,125,124;,
  4;111,112,126,125;,
  4;112,99,113,126;,
  4;113,114,128,127;,
  4;114,115,129,128;,
  4;115,116,130,129;,
  4;116,117,131,130;,
  4;117,118,132,131;,
  4;118,119,133,132;,
  4;119,120,134,133;,
  4;120,121,135,134;,
  4;121,122,136,135;,
  4;122,123,137,136;,
  4;123,124,138,137;,
  4;124,125,139,138;,
  4;125,126,140,139;,
  4;126,113,127,140;,
  4;127,128,142,141;,
  4;128,129,143,142;,
  4;129,130,144,143;,
  4;130,131,145,144;,
  4;131,132,146,145;,
  4;132,133,147,146;,
  4;133,134,148,147;,
  4;134,135,149,148;,
  4;135,136,150,149;,
  4;136,137,151,150;,
  4;137,138,152,151;,
  4;138,139,153,152;,
  4;139,140,154,153;,
  4;140,127,141,154;,
  4;141,142,156,155;,
  4;142,143,157,156;,
  4;143,144,158,157;,
  4;144,145,159,158;,
  4;145,146,160,159;,
  4;146,147,161,160;,
  4;147,148,162,161;,
  4;148,149,163,162;,
  4;149,150,164,163;,
  4;150,151,165,164;,
  4;151,152,166,165;,
  4;152,153,167,166;,
  4;153,154,168,167;,
  4;154,141,155,168;,
  4;155,156,170,169;,
  4;156,157,171,170;,
  4;157,158,172,171;,
  4;158,159,173,172;,
  4;159,160,174,173;,
  4;160,161,175,174;,
  4;161,162,176,175;,
  4;162,163,177,176;,
  4;163,164,178,177;,
  4;164,165,179,178;,
  4;165,166,180,179;,
  4;166,167,181,180;,
  4;167,168,182,181;,
  4;168,155,169,182;,
  3;169,170,183;,
  3;170,171,183;,
  3;171,172,183;,
  3;172,173,183;,
  3;173,174,183;,
  3;174,175,183;,
  3;175,176,183;,
  3;176,177,183;,
  3;177,178,183;,
  3;178,179,183;,
  3;179,180,183;,
  3;180,181,183;,
  3;181,182,183;,
  3;182,169,183;;
 }
 MeshTextureCoords {
  238;
  0.035714;0.000000;,
  0.071429;0.071429;,
  0.000000;0.071429;,
  0.107143;0.000000;,
  0.142857;0.071429;,
  0.178571;0.000000;,
  0.214286;0.071429;,
  0.250000;0.000000;,
  0.285714;0.071429;,
  0.321429;0.000000;,
  0.357143;0.071429;,
  0.392857;0.000000;,
  0.428571;0.071429;,
  0.464286;0.000000;,
  0.500000;0.071429;,
  0.535714;0.000000;,
  0.571429;0.071429;,
  0.607143;0.000000;,
  0.642857;0.071429;,
  0.678571;0.000000;,
  0.714286;0.071429;,
  0.750000;0.000000;,
  0.785714;0.071429;,
  0.821429;0.000000;,
  0.857143;0.071429;,
  0.892857;0.000000;,
  0.928572;0.071429;,
  0.964286;0.000000;,
  1.000000;0.071429;,
  0.071429;0.142857;,
  0.000000;0.142857;,
  0.142857;0.142857;,
  0.214286;0.142857;,
  0.285714;0.142857;,
  0.357143;0.142857;,
  0.428571;0.142857;,
  0.500000;0.142857;,
  0.571429;0.142857;,
  0.642857;0.142857;,
  0.714286;0.142857;,
  0.785714;0.142857;,
  0.857143;0.142857;,
  0.928572;0.142857;,
  1.000000;0.142857;,
  0.071429;0.214286;,
  0.000000;0.214286;,
  0.142857;0.214286;,
  0.214286;0.214286;,
  0.285714;0.214286;,
  0.357143;0.214286;,
  0.428571;0.214286;,
  0.500000;0.214286;,
  0.571429;0.214286;,
  0.642857;0.214286;,
  0.714286;0.214286;,
  0.785714;0.214286;,
  0.857143;0.214286;,
  0.928572;0.214286;,
  1.000000;0.214286;,
  0.071429;0.285714;,
  0.000000;0.285714;,
  0.142857;0.285714;,
  0.214286;0.285714;,
  0.285714;0.285714;,
  0.357143;0.285714;,
  0.428571;0.285714;,
  0.500000;0.285714;,
  0.571429;0.285714;,
  0.642857;0.285714;,
  0.714286;0.285714;,
  0.785714;0.285714;,
  0.857143;0.285714;,
  0.928572;0.285714;,
  1.000000;0.285714;,
  0.071429;0.357143;,
  0.000000;0.357143;,
  0.142857;0.357143;,
  0.214286;0.357143;,
  0.285714;0.357143;,
  0.357143;0.357143;,
  0.428571;0.357143;,
  0.500000;0.357143;,
  0.571429;0.357143;,
  0.642857;0.357143;,
  0.714286;0.357143;,
  0.785714;0.357143;,
  0.857143;0.357143;,
  0.928572;0.357143;,
  1.000000;0.357143;,
  0.071429;0.428571;,
  0.000000;0.428571;,
  0.142857;0.428571;,
  0.214286;0.428571;,
  0.285714;0.428571;,
  0.357143;0.428571;,
  0.428571;0.428571;,
  0.500000;0.428571;,
  0.571429;0.428571;,
  0.642857;0.428571;,
  0.714286;0.428571;,
  0.785714;0.428571;,
  0.857143;0.428571;,
  0.928572;0.428571;,
  1.000000;0.428571;,
  0.071429;0.500000;,
  0.000000;0.500000;,
  0.142857;0.500000;,
  0.214286;0.500000;,
  0.285714;0.500000;,
  0.357143;0.500000;,
  0.428571;0.500000;,
  0.500000;0.500000;,
  0.571429;0.500000;,
  0.642857;0.500000;,
  0.714286;0.500000;,
  0.785714;0.500000;,
  0.857143;0.500000;,
  0.928572;0.500000;,
  1.000000;0.500000;,
  0.071429;0.571429;,
  0.000000;0.571429;,
  0.142857;0.571429;,
  0.214286;0.571429;,
  0.285714;0.571429;,
  0.357143;0.571429;,
  0.428571;0.571429;,
  0.500000;0.571429;,
  0.571429;0.571429;,
  0.642857;0.571429;,
  0.714286;0.571429;,
  0.785714;0.571429;,
  0.857143;0.571429;,
  0.928572;0.571429;,
  1.000000;0.571429;,
  0.071429;0.642857;,
  0.000000;0.642857;,
  0.142857;0.642857;,
  0.214286;0.642857;,
  0.285714;0.642857;,
  0.357143;0.642857;,
  0.428571;0.642857;,
  0.500000;0.642857;,
  0.571429;0.642857;,
  0.642857;0.642857;,
  0.714286;0.642857;,
  0.785714;0.642857;,
  0.857143;0.642857;,
  0.928572;0.642857;,
  1.000000;0.642857;,
  0.071429;0.714286;,
  0.000000;0.714286;,
  0.142857;0.714286;,
  0.214286;0.714286;,
  0.285714;0.714286;,
  0.357143;0.714286;,
  0.428571;0.714286;,
  0.500000;0.714286;,
  0.571429;0.714286;,
  0.642857;0.714286;,
  0.714286;0.714286;,
  0.785714;0.714286;,
  0.857143;0.714286;,
  0.928572;0.714286;,
  1.000000;0.714286;,
  0.071429;0.785714;,
  0.000000;0.785714;,
  0.142857;0.785714;,
  0.214286;0.785714;,
  0.285714;0.785714;,
  0.357143;0.785714;,
  0.428571;0.785714;,
  0.500000;0.785714;,
  0.571429;0.785714;,
  0.642857;0.785714;,
  0.714286;0.785714;,
  0.785714;0.785714;,
  0.857143;0.785714;,
  0.928572;0.785714;,
  1.000000;0.785714;,
  0.071429;0.857143;,
  0.000000;0.857143;,
  0.142857;0.857143;,
  0.214286;0.857143;,
  0.285714;0.857143;,
  0.357143;0.857143;,
  0.428571;0.857143;,
  0.500000;0.857143;,
  0.571429;0.857143;,
  0.642857;0.857143;,
  0.714286;0.857143;,
  0.785714;0.857143;,
  0.857143;0.857143;,
  0.928572;0.857143;,
  1.000000;0.857143;,
  0.071429;0.928572;,
  0.000000;0.928572;,
  0.142857;0.928572;,
  0.214286;0.928572;,
  0.285714;0.928572;,
  0.357143;0.928572;,
  0.428571;0.928572;,
  0.500000;0.928572;,
  0.571429;0.928572;,
  0.642857;0.928572;,
  0.714286;0.928572;,
  0.785714;0.928572;,
  0.857143;0.928572;,
  0.928572;0.928572;,
  1.000000;0.928572;,
  0.000000;0.928571;,
  0.071429;0.928571;,
  0.035714;1.000000;,
  0.142857;0.928571;,
  0.107143;1.000000;,
  0.214286;0.928571;,
  0.178571;1.000000;,
  0.285714;0.928571;,
  0.250000;1.000000;,
  0.357143;0.928571;,
  0.321429;1.000000;,
  0.428571;0.928571;,
  0.392857;1.000000;,
  0.500000;0.928571;,
  0.464286;1.000000;,
  0.571429;0.928571;,
  0.535714;1.000000;,
  0.642857;0.928571;,
  0.607143;1.000000;,
  0.714286;0.928571;,
  0.678571;1.000000;,
  0.785714;0.928571;,
  0.750000;1.000000;,
  0.857143;0.928571;,
  0.821429;1.000000;,
  0.928572;0.928571;,
  0.892857;1.000000;,
  1.000000;0.928571;,
  0.964286;1.000000;;
 }
}