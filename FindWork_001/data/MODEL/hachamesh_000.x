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
 121;
 -251.39999;0.00000;251.39999;,
 -201.12000;0.00000;251.39999;,
 -201.12000;0.00000;201.12000;,
 -251.39999;0.00000;201.12000;,
 -150.84000;0.00000;251.39999;,
 -150.84000;0.00000;201.12000;,
 -100.56000;0.00000;251.39999;,
 -100.56000;0.00000;201.12000;,
 -50.28000;0.00000;251.39999;,
 -50.28000;0.00000;201.12000;,
 0.00000;0.00000;251.39999;,
 0.00000;0.00000;201.12000;,
 50.28000;0.00000;251.39999;,
 50.28000;0.00000;201.12000;,
 100.56000;0.00000;251.39999;,
 100.56000;0.00000;201.12000;,
 150.84000;0.00000;251.39999;,
 150.84000;0.00000;201.12000;,
 201.12000;0.00000;251.39999;,
 201.12000;0.00000;201.12000;,
 251.39999;0.00000;251.39999;,
 251.39999;0.00000;201.12000;,
 -201.12000;0.00000;150.84000;,
 -251.39999;0.00000;150.84000;,
 -150.84000;0.00000;150.84000;,
 -100.56000;0.00000;150.84000;,
 -50.28000;-29.70709;150.84000;,
 0.00000;0.00000;150.84000;,
 50.28000;59.36600;150.84000;,
 100.56000;0.00000;150.84000;,
 150.84000;0.00000;150.84000;,
 201.12000;0.00000;150.84000;,
 251.39999;0.00000;150.84000;,
 -201.12000;0.00000;100.56000;,
 -251.39999;0.00000;100.56000;,
 -150.84000;-30.49248;100.56000;,
 -100.56000;41.64745;100.56000;,
 -50.28000;0.00000;100.56000;,
 0.00000;0.00000;100.56000;,
 49.73803;71.32202;98.68369;,
 100.56000;73.87283;100.56000;,
 150.84000;59.36600;100.56000;,
 201.12000;0.00000;100.56000;,
 251.39999;0.00000;100.56000;,
 -201.12000;0.00000;50.28000;,
 -251.39999;0.00000;50.28000;,
 -150.84000;0.00000;50.28000;,
 -100.56000;0.00000;50.28000;,
 -50.28000;0.00000;50.28000;,
 0.00000;0.00000;50.28000;,
 50.28000;65.39176;50.28000;,
 100.56000;59.36600;50.28000;,
 150.84000;0.00000;50.28000;,
 201.12000;0.00000;50.28000;,
 251.39999;0.00000;50.28000;,
 -201.12000;0.00000;0.00000;,
 -251.39999;0.00000;0.00000;,
 -150.84000;0.00000;0.00000;,
 -100.56000;0.00000;0.00000;,
 -50.28000;0.00000;0.00000;,
 0.00000;0.00000;0.00000;,
 50.28000;0.00000;0.00000;,
 100.56000;0.00000;0.00000;,
 150.84000;0.00000;0.00000;,
 201.12000;0.00000;0.00000;,
 251.39999;0.00000;0.00000;,
 -201.12000;0.00000;-50.28000;,
 -251.39999;0.00000;-50.28000;,
 -150.84000;0.00000;-50.28000;,
 -100.56000;0.00000;-50.28000;,
 -50.28000;0.00000;-50.28000;,
 0.00000;0.00000;-50.28000;,
 50.28000;0.00000;-50.28000;,
 100.56000;0.00000;-50.28000;,
 150.84000;0.00000;-50.28000;,
 201.12000;0.00000;-50.28000;,
 251.39999;0.00000;-50.28000;,
 -201.12000;0.00000;-100.56000;,
 -251.39999;0.00000;-100.56000;,
 -150.84000;0.00000;-100.56000;,
 -100.56000;40.61234;-100.56000;,
 -50.28000;0.00000;-100.56000;,
 0.00000;0.00000;-100.56000;,
 50.28000;0.00000;-100.56000;,
 100.56000;-32.59771;-100.56000;,
 150.84000;-32.59771;-100.56000;,
 201.12000;0.00000;-100.56000;,
 251.39999;0.00000;-100.56000;,
 -201.12000;0.00000;-150.84000;,
 -251.39999;0.00000;-150.84000;,
 -150.84000;54.30964;-150.84000;,
 -100.56000;0.00000;-150.84000;,
 -50.28000;0.00000;-150.84000;,
 0.00000;0.00000;-150.84000;,
 50.28000;0.00000;-150.84000;,
 100.56000;-32.59771;-150.84000;,
 150.84000;-32.59771;-150.84000;,
 201.12000;0.00000;-150.84000;,
 251.39999;0.00000;-150.84000;,
 -201.12000;17.43600;-201.12000;,
 -251.39999;0.00000;-201.12000;,
 -150.84000;0.00000;-201.12000;,
 -100.56000;0.00000;-201.12000;,
 -50.28000;70.94108;-201.12000;,
 0.00000;0.00000;-201.12000;,
 50.28000;0.00000;-201.12000;,
 100.56000;0.00000;-201.12000;,
 150.84000;0.00000;-201.12000;,
 201.12000;0.00000;-201.12000;,
 251.39999;0.00000;-201.12000;,
 -201.12000;0.00000;-251.39999;,
 -251.39999;0.00000;-251.39999;,
 -150.84000;0.00000;-251.39999;,
 -100.56000;0.00000;-251.39999;,
 -50.28000;0.00000;-251.39999;,
 0.00000;0.00000;-251.39999;,
 50.28000;0.00000;-251.39999;,
 100.56000;0.00000;-251.39999;,
 150.84000;0.00000;-251.39999;,
 201.12000;0.00000;-251.39999;,
 251.39999;0.00000;-251.39999;;
 
 100;
 4;0,1,2,3;,
 4;1,4,5,2;,
 4;4,6,7,5;,
 4;6,8,9,7;,
 4;8,10,11,9;,
 4;10,12,13,11;,
 4;12,14,15,13;,
 4;14,16,17,15;,
 4;16,18,19,17;,
 4;18,20,21,19;,
 4;3,2,22,23;,
 4;2,5,24,22;,
 4;5,7,25,24;,
 4;7,9,26,25;,
 4;9,11,27,26;,
 4;11,13,28,27;,
 4;13,15,29,28;,
 4;15,17,30,29;,
 4;17,19,31,30;,
 4;19,21,32,31;,
 4;23,22,33,34;,
 4;22,24,35,33;,
 4;24,25,36,35;,
 4;25,26,37,36;,
 4;26,27,38,37;,
 4;27,28,39,38;,
 4;28,29,40,39;,
 4;29,30,41,40;,
 4;30,31,42,41;,
 4;31,32,43,42;,
 4;34,33,44,45;,
 4;33,35,46,44;,
 4;35,36,47,46;,
 4;36,37,48,47;,
 4;37,38,49,48;,
 4;38,39,50,49;,
 4;39,40,51,50;,
 4;40,41,52,51;,
 4;41,42,53,52;,
 4;42,43,54,53;,
 4;45,44,55,56;,
 4;44,46,57,55;,
 4;46,47,58,57;,
 4;47,48,59,58;,
 4;48,49,60,59;,
 4;49,50,61,60;,
 4;50,51,62,61;,
 4;51,52,63,62;,
 4;52,53,64,63;,
 4;53,54,65,64;,
 4;56,55,66,67;,
 4;55,57,68,66;,
 4;57,58,69,68;,
 4;58,59,70,69;,
 4;59,60,71,70;,
 4;60,61,72,71;,
 4;61,62,73,72;,
 4;62,63,74,73;,
 4;63,64,75,74;,
 4;64,65,76,75;,
 4;67,66,77,78;,
 4;66,68,79,77;,
 4;68,69,80,79;,
 4;69,70,81,80;,
 4;70,71,82,81;,
 4;71,72,83,82;,
 4;72,73,84,83;,
 4;73,74,85,84;,
 4;74,75,86,85;,
 4;75,76,87,86;,
 4;78,77,88,89;,
 4;77,79,90,88;,
 4;79,80,91,90;,
 4;80,81,92,91;,
 4;81,82,93,92;,
 4;82,83,94,93;,
 4;83,84,95,94;,
 4;84,85,96,95;,
 4;85,86,97,96;,
 4;86,87,98,97;,
 4;89,88,99,100;,
 4;88,90,101,99;,
 4;90,91,102,101;,
 4;91,92,103,102;,
 4;92,93,104,103;,
 4;93,94,105,104;,
 4;94,95,106,105;,
 4;95,96,107,106;,
 4;96,97,108,107;,
 4;97,98,109,108;,
 4;100,99,110,111;,
 4;99,101,112,110;,
 4;101,102,113,112;,
 4;102,103,114,113;,
 4;103,104,115,114;,
 4;104,105,116,115;,
 4;105,106,117,116;,
 4;106,107,118,117;,
 4;107,108,119,118;,
 4;108,109,120,119;;
 
 MeshMaterialList {
  1;
  100;
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
}