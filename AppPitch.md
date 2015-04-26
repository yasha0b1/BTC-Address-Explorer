Visual BTC Address Explorer
========================================================
author: Jacob Govshteyn
date: Sun Apr 26 12:29:29 2015



Bitcoin is a Beautiful Technology 
========================================================

[1EhXj3KkhvzFPqbkHib7Bx8Zdn1GaviQnF](https://blockchain.info/address/1EhXj3KkhvzFPqbkHib7Bx8Zdn1GaviQnF) 

 
![alt text](http://i.imgur.com/ZqHu7Yg.png)



BTC Transactions are Inherently Ugly
========================================================

<font size="4">
>Input:
>Previous tx: f5d8ee39a430901c91a5917b9f2dc19d6d1a0e9cea205b009ca73dd04470b9a6
>Index: 0
>scriptSig: 304502206e21798a42fae0e854281abd38bacd1aeed3ee3738d9e1446618c4571d10
>90db022100e2ac980643b0b82c0e88ffdfec6b64e3e6ba35e7ba5fdd7d5d6cc8d25c6b241501

![alt text](http://upload.wikimedia.org/wikipedia/commons/7/7f/Bitcoin_Transaction_Inputs_and_Outputs.png)

>Output:
>Value: 5000000000
>scriptPubKey: OP_DUP OP_HASH160 404371705fa9bd789a2fcd52d2c580b65d35549d
>OP_EQUALVERIFY OP_CHECKSIG
</font> 

<font size="2">https://commons.wikimedia.org/wiki/File:Bitcoin_Transaction_Inputs_and_Outputs.png</font>

Visualize Transactions with iGraph
====================================



![plot of chunk unnamed-chunk-1](AppPitch-figure/unnamed-chunk-1-1.png) 


3D Rendered iGraph
====================================

<small>(Give it a twirl)</small>



<script src="CanvasMatrix.js" type="text/javascript"></script>
<canvas id="unnamed_chunk_2textureCanvas" style="display: none;" width="256" height="256">
Your browser does not support the HTML5 canvas element.</canvas>
<!-- ****** quads object 7 ****** -->
<script id="unnamed_chunk_2vshader7" type="x-shader/x-vertex">
attribute vec3 aPos;
attribute vec4 aCol;
uniform mat4 mvMatrix;
uniform mat4 prMatrix;
varying vec4 vCol;
varying vec4 vPosition;
attribute vec3 aNorm;
uniform mat4 normMatrix;
varying vec3 vNormal;
void main(void) {
vPosition = mvMatrix * vec4(aPos, 1.);
gl_Position = prMatrix * vPosition;
vCol = aCol;
vNormal = normalize((normMatrix * vec4(aNorm, 1.)).xyz);
}
</script>
<script id="unnamed_chunk_2fshader7" type="x-shader/x-fragment"> 
#ifdef GL_ES
precision highp float;
#endif
varying vec4 vCol; // carries alpha
varying vec4 vPosition;
varying vec3 vNormal;
void main(void) {
vec3 eye = normalize(-vPosition.xyz);
const vec3 emission = vec3(0., 0., 0.);
const vec3 ambient1 = vec3(0., 0., 0.);
const vec3 specular1 = vec3(1., 1., 1.);// light*material
const float shininess1 = 50.;
vec4 colDiff1 = vec4(vCol.rgb * vec3(1., 1., 1.), vCol.a);
const vec3 lightDir1 = vec3(0., 0., 1.);
vec3 halfVec1 = normalize(lightDir1 + eye);
vec4 lighteffect = vec4(emission, 0.);
vec3 n = normalize(vNormal);
n = -faceforward(n, n, eye);
vec3 col1 = ambient1;
float nDotL1 = dot(n, lightDir1);
col1 = col1 + max(nDotL1, 0.) * colDiff1.rgb;
col1 = col1 + pow(max(dot(halfVec1, n), 0.), shininess1) * specular1;
lighteffect = lighteffect + vec4(col1, colDiff1.a);
gl_FragColor = lighteffect;
}
</script> 
<!-- ****** quads object 8 ****** -->
<script id="unnamed_chunk_2vshader8" type="x-shader/x-vertex">
attribute vec3 aPos;
attribute vec4 aCol;
uniform mat4 mvMatrix;
uniform mat4 prMatrix;
varying vec4 vCol;
varying vec4 vPosition;
attribute vec3 aNorm;
uniform mat4 normMatrix;
varying vec3 vNormal;
void main(void) {
vPosition = mvMatrix * vec4(aPos, 1.);
gl_Position = prMatrix * vPosition;
vCol = aCol;
vNormal = normalize((normMatrix * vec4(aNorm, 1.)).xyz);
}
</script>
<script id="unnamed_chunk_2fshader8" type="x-shader/x-fragment"> 
#ifdef GL_ES
precision highp float;
#endif
varying vec4 vCol; // carries alpha
varying vec4 vPosition;
varying vec3 vNormal;
void main(void) {
vec3 eye = normalize(-vPosition.xyz);
const vec3 emission = vec3(0., 0., 0.);
const vec3 ambient1 = vec3(0., 0., 0.);
const vec3 specular1 = vec3(1., 1., 1.);// light*material
const float shininess1 = 50.;
vec4 colDiff1 = vec4(vCol.rgb * vec3(1., 1., 1.), vCol.a);
const vec3 lightDir1 = vec3(0., 0., 1.);
vec3 halfVec1 = normalize(lightDir1 + eye);
vec4 lighteffect = vec4(emission, 0.);
vec3 n = normalize(vNormal);
n = -faceforward(n, n, eye);
vec3 col1 = ambient1;
float nDotL1 = dot(n, lightDir1);
col1 = col1 + max(nDotL1, 0.) * colDiff1.rgb;
col1 = col1 + pow(max(dot(halfVec1, n), 0.), shininess1) * specular1;
lighteffect = lighteffect + vec4(col1, colDiff1.a);
gl_FragColor = lighteffect;
}
</script> 
<!-- ****** quads object 9 ****** -->
<script id="unnamed_chunk_2vshader9" type="x-shader/x-vertex">
attribute vec3 aPos;
attribute vec4 aCol;
uniform mat4 mvMatrix;
uniform mat4 prMatrix;
varying vec4 vCol;
varying vec4 vPosition;
attribute vec3 aNorm;
uniform mat4 normMatrix;
varying vec3 vNormal;
void main(void) {
vPosition = mvMatrix * vec4(aPos, 1.);
gl_Position = prMatrix * vPosition;
vCol = aCol;
vNormal = normalize((normMatrix * vec4(aNorm, 1.)).xyz);
}
</script>
<script id="unnamed_chunk_2fshader9" type="x-shader/x-fragment"> 
#ifdef GL_ES
precision highp float;
#endif
varying vec4 vCol; // carries alpha
varying vec4 vPosition;
varying vec3 vNormal;
void main(void) {
vec3 eye = normalize(-vPosition.xyz);
const vec3 emission = vec3(0., 0., 0.);
const vec3 ambient1 = vec3(0., 0., 0.);
const vec3 specular1 = vec3(1., 1., 1.);// light*material
const float shininess1 = 50.;
vec4 colDiff1 = vec4(vCol.rgb * vec3(1., 1., 1.), vCol.a);
const vec3 lightDir1 = vec3(0., 0., 1.);
vec3 halfVec1 = normalize(lightDir1 + eye);
vec4 lighteffect = vec4(emission, 0.);
vec3 n = normalize(vNormal);
n = -faceforward(n, n, eye);
vec3 col1 = ambient1;
float nDotL1 = dot(n, lightDir1);
col1 = col1 + max(nDotL1, 0.) * colDiff1.rgb;
col1 = col1 + pow(max(dot(halfVec1, n), 0.), shininess1) * specular1;
lighteffect = lighteffect + vec4(col1, colDiff1.a);
gl_FragColor = lighteffect;
}
</script> 
<!-- ****** quads object 10 ****** -->
<script id="unnamed_chunk_2vshader10" type="x-shader/x-vertex">
attribute vec3 aPos;
attribute vec4 aCol;
uniform mat4 mvMatrix;
uniform mat4 prMatrix;
varying vec4 vCol;
varying vec4 vPosition;
attribute vec3 aNorm;
uniform mat4 normMatrix;
varying vec3 vNormal;
void main(void) {
vPosition = mvMatrix * vec4(aPos, 1.);
gl_Position = prMatrix * vPosition;
vCol = aCol;
vNormal = normalize((normMatrix * vec4(aNorm, 1.)).xyz);
}
</script>
<script id="unnamed_chunk_2fshader10" type="x-shader/x-fragment"> 
#ifdef GL_ES
precision highp float;
#endif
varying vec4 vCol; // carries alpha
varying vec4 vPosition;
varying vec3 vNormal;
void main(void) {
vec3 eye = normalize(-vPosition.xyz);
const vec3 emission = vec3(0., 0., 0.);
const vec3 ambient1 = vec3(0., 0., 0.);
const vec3 specular1 = vec3(1., 1., 1.);// light*material
const float shininess1 = 50.;
vec4 colDiff1 = vec4(vCol.rgb * vec3(1., 1., 1.), vCol.a);
const vec3 lightDir1 = vec3(0., 0., 1.);
vec3 halfVec1 = normalize(lightDir1 + eye);
vec4 lighteffect = vec4(emission, 0.);
vec3 n = normalize(vNormal);
n = -faceforward(n, n, eye);
vec3 col1 = ambient1;
float nDotL1 = dot(n, lightDir1);
col1 = col1 + max(nDotL1, 0.) * colDiff1.rgb;
col1 = col1 + pow(max(dot(halfVec1, n), 0.), shininess1) * specular1;
lighteffect = lighteffect + vec4(col1, colDiff1.a);
gl_FragColor = lighteffect;
}
</script> 
<!-- ****** quads object 11 ****** -->
<script id="unnamed_chunk_2vshader11" type="x-shader/x-vertex">
attribute vec3 aPos;
attribute vec4 aCol;
uniform mat4 mvMatrix;
uniform mat4 prMatrix;
varying vec4 vCol;
varying vec4 vPosition;
attribute vec3 aNorm;
uniform mat4 normMatrix;
varying vec3 vNormal;
void main(void) {
vPosition = mvMatrix * vec4(aPos, 1.);
gl_Position = prMatrix * vPosition;
vCol = aCol;
vNormal = normalize((normMatrix * vec4(aNorm, 1.)).xyz);
}
</script>
<script id="unnamed_chunk_2fshader11" type="x-shader/x-fragment"> 
#ifdef GL_ES
precision highp float;
#endif
varying vec4 vCol; // carries alpha
varying vec4 vPosition;
varying vec3 vNormal;
void main(void) {
vec3 eye = normalize(-vPosition.xyz);
const vec3 emission = vec3(0., 0., 0.);
const vec3 ambient1 = vec3(0., 0., 0.);
const vec3 specular1 = vec3(1., 1., 1.);// light*material
const float shininess1 = 50.;
vec4 colDiff1 = vec4(vCol.rgb * vec3(1., 1., 1.), vCol.a);
const vec3 lightDir1 = vec3(0., 0., 1.);
vec3 halfVec1 = normalize(lightDir1 + eye);
vec4 lighteffect = vec4(emission, 0.);
vec3 n = normalize(vNormal);
n = -faceforward(n, n, eye);
vec3 col1 = ambient1;
float nDotL1 = dot(n, lightDir1);
col1 = col1 + max(nDotL1, 0.) * colDiff1.rgb;
col1 = col1 + pow(max(dot(halfVec1, n), 0.), shininess1) * specular1;
lighteffect = lighteffect + vec4(col1, colDiff1.a);
gl_FragColor = lighteffect;
}
</script> 
<!-- ****** quads object 12 ****** -->
<script id="unnamed_chunk_2vshader12" type="x-shader/x-vertex">
attribute vec3 aPos;
attribute vec4 aCol;
uniform mat4 mvMatrix;
uniform mat4 prMatrix;
varying vec4 vCol;
varying vec4 vPosition;
attribute vec3 aNorm;
uniform mat4 normMatrix;
varying vec3 vNormal;
void main(void) {
vPosition = mvMatrix * vec4(aPos, 1.);
gl_Position = prMatrix * vPosition;
vCol = aCol;
vNormal = normalize((normMatrix * vec4(aNorm, 1.)).xyz);
}
</script>
<script id="unnamed_chunk_2fshader12" type="x-shader/x-fragment"> 
#ifdef GL_ES
precision highp float;
#endif
varying vec4 vCol; // carries alpha
varying vec4 vPosition;
varying vec3 vNormal;
void main(void) {
vec3 eye = normalize(-vPosition.xyz);
const vec3 emission = vec3(0., 0., 0.);
const vec3 ambient1 = vec3(0., 0., 0.);
const vec3 specular1 = vec3(1., 1., 1.);// light*material
const float shininess1 = 50.;
vec4 colDiff1 = vec4(vCol.rgb * vec3(1., 1., 1.), vCol.a);
const vec3 lightDir1 = vec3(0., 0., 1.);
vec3 halfVec1 = normalize(lightDir1 + eye);
vec4 lighteffect = vec4(emission, 0.);
vec3 n = normalize(vNormal);
n = -faceforward(n, n, eye);
vec3 col1 = ambient1;
float nDotL1 = dot(n, lightDir1);
col1 = col1 + max(nDotL1, 0.) * colDiff1.rgb;
col1 = col1 + pow(max(dot(halfVec1, n), 0.), shininess1) * specular1;
lighteffect = lighteffect + vec4(col1, colDiff1.a);
gl_FragColor = lighteffect;
}
</script> 
<!-- ****** quads object 13 ****** -->
<script id="unnamed_chunk_2vshader13" type="x-shader/x-vertex">
attribute vec3 aPos;
attribute vec4 aCol;
uniform mat4 mvMatrix;
uniform mat4 prMatrix;
varying vec4 vCol;
varying vec4 vPosition;
attribute vec3 aNorm;
uniform mat4 normMatrix;
varying vec3 vNormal;
void main(void) {
vPosition = mvMatrix * vec4(aPos, 1.);
gl_Position = prMatrix * vPosition;
vCol = aCol;
vNormal = normalize((normMatrix * vec4(aNorm, 1.)).xyz);
}
</script>
<script id="unnamed_chunk_2fshader13" type="x-shader/x-fragment"> 
#ifdef GL_ES
precision highp float;
#endif
varying vec4 vCol; // carries alpha
varying vec4 vPosition;
varying vec3 vNormal;
void main(void) {
vec3 eye = normalize(-vPosition.xyz);
const vec3 emission = vec3(0., 0., 0.);
const vec3 ambient1 = vec3(0., 0., 0.);
const vec3 specular1 = vec3(1., 1., 1.);// light*material
const float shininess1 = 50.;
vec4 colDiff1 = vec4(vCol.rgb * vec3(1., 1., 1.), vCol.a);
const vec3 lightDir1 = vec3(0., 0., 1.);
vec3 halfVec1 = normalize(lightDir1 + eye);
vec4 lighteffect = vec4(emission, 0.);
vec3 n = normalize(vNormal);
n = -faceforward(n, n, eye);
vec3 col1 = ambient1;
float nDotL1 = dot(n, lightDir1);
col1 = col1 + max(nDotL1, 0.) * colDiff1.rgb;
col1 = col1 + pow(max(dot(halfVec1, n), 0.), shininess1) * specular1;
lighteffect = lighteffect + vec4(col1, colDiff1.a);
gl_FragColor = lighteffect;
}
</script> 
<!-- ****** quads object 14 ****** -->
<script id="unnamed_chunk_2vshader14" type="x-shader/x-vertex">
attribute vec3 aPos;
attribute vec4 aCol;
uniform mat4 mvMatrix;
uniform mat4 prMatrix;
varying vec4 vCol;
varying vec4 vPosition;
attribute vec3 aNorm;
uniform mat4 normMatrix;
varying vec3 vNormal;
void main(void) {
vPosition = mvMatrix * vec4(aPos, 1.);
gl_Position = prMatrix * vPosition;
vCol = aCol;
vNormal = normalize((normMatrix * vec4(aNorm, 1.)).xyz);
}
</script>
<script id="unnamed_chunk_2fshader14" type="x-shader/x-fragment"> 
#ifdef GL_ES
precision highp float;
#endif
varying vec4 vCol; // carries alpha
varying vec4 vPosition;
varying vec3 vNormal;
void main(void) {
vec3 eye = normalize(-vPosition.xyz);
const vec3 emission = vec3(0., 0., 0.);
const vec3 ambient1 = vec3(0., 0., 0.);
const vec3 specular1 = vec3(1., 1., 1.);// light*material
const float shininess1 = 50.;
vec4 colDiff1 = vec4(vCol.rgb * vec3(1., 1., 1.), vCol.a);
const vec3 lightDir1 = vec3(0., 0., 1.);
vec3 halfVec1 = normalize(lightDir1 + eye);
vec4 lighteffect = vec4(emission, 0.);
vec3 n = normalize(vNormal);
n = -faceforward(n, n, eye);
vec3 col1 = ambient1;
float nDotL1 = dot(n, lightDir1);
col1 = col1 + max(nDotL1, 0.) * colDiff1.rgb;
col1 = col1 + pow(max(dot(halfVec1, n), 0.), shininess1) * specular1;
lighteffect = lighteffect + vec4(col1, colDiff1.a);
gl_FragColor = lighteffect;
}
</script> 
<!-- ****** quads object 15 ****** -->
<script id="unnamed_chunk_2vshader15" type="x-shader/x-vertex">
attribute vec3 aPos;
attribute vec4 aCol;
uniform mat4 mvMatrix;
uniform mat4 prMatrix;
varying vec4 vCol;
varying vec4 vPosition;
attribute vec3 aNorm;
uniform mat4 normMatrix;
varying vec3 vNormal;
void main(void) {
vPosition = mvMatrix * vec4(aPos, 1.);
gl_Position = prMatrix * vPosition;
vCol = aCol;
vNormal = normalize((normMatrix * vec4(aNorm, 1.)).xyz);
}
</script>
<script id="unnamed_chunk_2fshader15" type="x-shader/x-fragment"> 
#ifdef GL_ES
precision highp float;
#endif
varying vec4 vCol; // carries alpha
varying vec4 vPosition;
varying vec3 vNormal;
void main(void) {
vec3 eye = normalize(-vPosition.xyz);
const vec3 emission = vec3(0., 0., 0.);
const vec3 ambient1 = vec3(0., 0., 0.);
const vec3 specular1 = vec3(1., 1., 1.);// light*material
const float shininess1 = 50.;
vec4 colDiff1 = vec4(vCol.rgb * vec3(1., 1., 1.), vCol.a);
const vec3 lightDir1 = vec3(0., 0., 1.);
vec3 halfVec1 = normalize(lightDir1 + eye);
vec4 lighteffect = vec4(emission, 0.);
vec3 n = normalize(vNormal);
n = -faceforward(n, n, eye);
vec3 col1 = ambient1;
float nDotL1 = dot(n, lightDir1);
col1 = col1 + max(nDotL1, 0.) * colDiff1.rgb;
col1 = col1 + pow(max(dot(halfVec1, n), 0.), shininess1) * specular1;
lighteffect = lighteffect + vec4(col1, colDiff1.a);
gl_FragColor = lighteffect;
}
</script> 
<!-- ****** quads object 16 ****** -->
<script id="unnamed_chunk_2vshader16" type="x-shader/x-vertex">
attribute vec3 aPos;
attribute vec4 aCol;
uniform mat4 mvMatrix;
uniform mat4 prMatrix;
varying vec4 vCol;
varying vec4 vPosition;
attribute vec3 aNorm;
uniform mat4 normMatrix;
varying vec3 vNormal;
void main(void) {
vPosition = mvMatrix * vec4(aPos, 1.);
gl_Position = prMatrix * vPosition;
vCol = aCol;
vNormal = normalize((normMatrix * vec4(aNorm, 1.)).xyz);
}
</script>
<script id="unnamed_chunk_2fshader16" type="x-shader/x-fragment"> 
#ifdef GL_ES
precision highp float;
#endif
varying vec4 vCol; // carries alpha
varying vec4 vPosition;
varying vec3 vNormal;
void main(void) {
vec3 eye = normalize(-vPosition.xyz);
const vec3 emission = vec3(0., 0., 0.);
const vec3 ambient1 = vec3(0., 0., 0.);
const vec3 specular1 = vec3(1., 1., 1.);// light*material
const float shininess1 = 50.;
vec4 colDiff1 = vec4(vCol.rgb * vec3(1., 1., 1.), vCol.a);
const vec3 lightDir1 = vec3(0., 0., 1.);
vec3 halfVec1 = normalize(lightDir1 + eye);
vec4 lighteffect = vec4(emission, 0.);
vec3 n = normalize(vNormal);
n = -faceforward(n, n, eye);
vec3 col1 = ambient1;
float nDotL1 = dot(n, lightDir1);
col1 = col1 + max(nDotL1, 0.) * colDiff1.rgb;
col1 = col1 + pow(max(dot(halfVec1, n), 0.), shininess1) * specular1;
lighteffect = lighteffect + vec4(col1, colDiff1.a);
gl_FragColor = lighteffect;
}
</script> 
<!-- ****** quads object 17 ****** -->
<script id="unnamed_chunk_2vshader17" type="x-shader/x-vertex">
attribute vec3 aPos;
attribute vec4 aCol;
uniform mat4 mvMatrix;
uniform mat4 prMatrix;
varying vec4 vCol;
varying vec4 vPosition;
attribute vec3 aNorm;
uniform mat4 normMatrix;
varying vec3 vNormal;
void main(void) {
vPosition = mvMatrix * vec4(aPos, 1.);
gl_Position = prMatrix * vPosition;
vCol = aCol;
vNormal = normalize((normMatrix * vec4(aNorm, 1.)).xyz);
}
</script>
<script id="unnamed_chunk_2fshader17" type="x-shader/x-fragment"> 
#ifdef GL_ES
precision highp float;
#endif
varying vec4 vCol; // carries alpha
varying vec4 vPosition;
varying vec3 vNormal;
void main(void) {
vec3 eye = normalize(-vPosition.xyz);
const vec3 emission = vec3(0., 0., 0.);
const vec3 ambient1 = vec3(0., 0., 0.);
const vec3 specular1 = vec3(1., 1., 1.);// light*material
const float shininess1 = 50.;
vec4 colDiff1 = vec4(vCol.rgb * vec3(1., 1., 1.), vCol.a);
const vec3 lightDir1 = vec3(0., 0., 1.);
vec3 halfVec1 = normalize(lightDir1 + eye);
vec4 lighteffect = vec4(emission, 0.);
vec3 n = normalize(vNormal);
n = -faceforward(n, n, eye);
vec3 col1 = ambient1;
float nDotL1 = dot(n, lightDir1);
col1 = col1 + max(nDotL1, 0.) * colDiff1.rgb;
col1 = col1 + pow(max(dot(halfVec1, n), 0.), shininess1) * specular1;
lighteffect = lighteffect + vec4(col1, colDiff1.a);
gl_FragColor = lighteffect;
}
</script> 
<!-- ****** quads object 18 ****** -->
<script id="unnamed_chunk_2vshader18" type="x-shader/x-vertex">
attribute vec3 aPos;
attribute vec4 aCol;
uniform mat4 mvMatrix;
uniform mat4 prMatrix;
varying vec4 vCol;
varying vec4 vPosition;
attribute vec3 aNorm;
uniform mat4 normMatrix;
varying vec3 vNormal;
void main(void) {
vPosition = mvMatrix * vec4(aPos, 1.);
gl_Position = prMatrix * vPosition;
vCol = aCol;
vNormal = normalize((normMatrix * vec4(aNorm, 1.)).xyz);
}
</script>
<script id="unnamed_chunk_2fshader18" type="x-shader/x-fragment"> 
#ifdef GL_ES
precision highp float;
#endif
varying vec4 vCol; // carries alpha
varying vec4 vPosition;
varying vec3 vNormal;
void main(void) {
vec3 eye = normalize(-vPosition.xyz);
const vec3 emission = vec3(0., 0., 0.);
const vec3 ambient1 = vec3(0., 0., 0.);
const vec3 specular1 = vec3(1., 1., 1.);// light*material
const float shininess1 = 50.;
vec4 colDiff1 = vec4(vCol.rgb * vec3(1., 1., 1.), vCol.a);
const vec3 lightDir1 = vec3(0., 0., 1.);
vec3 halfVec1 = normalize(lightDir1 + eye);
vec4 lighteffect = vec4(emission, 0.);
vec3 n = normalize(vNormal);
n = -faceforward(n, n, eye);
vec3 col1 = ambient1;
float nDotL1 = dot(n, lightDir1);
col1 = col1 + max(nDotL1, 0.) * colDiff1.rgb;
col1 = col1 + pow(max(dot(halfVec1, n), 0.), shininess1) * specular1;
lighteffect = lighteffect + vec4(col1, colDiff1.a);
gl_FragColor = lighteffect;
}
</script> 
<!-- ****** quads object 19 ****** -->
<script id="unnamed_chunk_2vshader19" type="x-shader/x-vertex">
attribute vec3 aPos;
attribute vec4 aCol;
uniform mat4 mvMatrix;
uniform mat4 prMatrix;
varying vec4 vCol;
varying vec4 vPosition;
attribute vec3 aNorm;
uniform mat4 normMatrix;
varying vec3 vNormal;
void main(void) {
vPosition = mvMatrix * vec4(aPos, 1.);
gl_Position = prMatrix * vPosition;
vCol = aCol;
vNormal = normalize((normMatrix * vec4(aNorm, 1.)).xyz);
}
</script>
<script id="unnamed_chunk_2fshader19" type="x-shader/x-fragment"> 
#ifdef GL_ES
precision highp float;
#endif
varying vec4 vCol; // carries alpha
varying vec4 vPosition;
varying vec3 vNormal;
void main(void) {
vec3 eye = normalize(-vPosition.xyz);
const vec3 emission = vec3(0., 0., 0.);
const vec3 ambient1 = vec3(0., 0., 0.);
const vec3 specular1 = vec3(1., 1., 1.);// light*material
const float shininess1 = 50.;
vec4 colDiff1 = vec4(vCol.rgb * vec3(1., 1., 1.), vCol.a);
const vec3 lightDir1 = vec3(0., 0., 1.);
vec3 halfVec1 = normalize(lightDir1 + eye);
vec4 lighteffect = vec4(emission, 0.);
vec3 n = normalize(vNormal);
n = -faceforward(n, n, eye);
vec3 col1 = ambient1;
float nDotL1 = dot(n, lightDir1);
col1 = col1 + max(nDotL1, 0.) * colDiff1.rgb;
col1 = col1 + pow(max(dot(halfVec1, n), 0.), shininess1) * specular1;
lighteffect = lighteffect + vec4(col1, colDiff1.a);
gl_FragColor = lighteffect;
}
</script> 
<!-- ****** quads object 20 ****** -->
<script id="unnamed_chunk_2vshader20" type="x-shader/x-vertex">
attribute vec3 aPos;
attribute vec4 aCol;
uniform mat4 mvMatrix;
uniform mat4 prMatrix;
varying vec4 vCol;
varying vec4 vPosition;
attribute vec3 aNorm;
uniform mat4 normMatrix;
varying vec3 vNormal;
void main(void) {
vPosition = mvMatrix * vec4(aPos, 1.);
gl_Position = prMatrix * vPosition;
vCol = aCol;
vNormal = normalize((normMatrix * vec4(aNorm, 1.)).xyz);
}
</script>
<script id="unnamed_chunk_2fshader20" type="x-shader/x-fragment"> 
#ifdef GL_ES
precision highp float;
#endif
varying vec4 vCol; // carries alpha
varying vec4 vPosition;
varying vec3 vNormal;
void main(void) {
vec3 eye = normalize(-vPosition.xyz);
const vec3 emission = vec3(0., 0., 0.);
const vec3 ambient1 = vec3(0., 0., 0.);
const vec3 specular1 = vec3(1., 1., 1.);// light*material
const float shininess1 = 50.;
vec4 colDiff1 = vec4(vCol.rgb * vec3(1., 1., 1.), vCol.a);
const vec3 lightDir1 = vec3(0., 0., 1.);
vec3 halfVec1 = normalize(lightDir1 + eye);
vec4 lighteffect = vec4(emission, 0.);
vec3 n = normalize(vNormal);
n = -faceforward(n, n, eye);
vec3 col1 = ambient1;
float nDotL1 = dot(n, lightDir1);
col1 = col1 + max(nDotL1, 0.) * colDiff1.rgb;
col1 = col1 + pow(max(dot(halfVec1, n), 0.), shininess1) * specular1;
lighteffect = lighteffect + vec4(col1, colDiff1.a);
gl_FragColor = lighteffect;
}
</script> 
<!-- ****** quads object 21 ****** -->
<script id="unnamed_chunk_2vshader21" type="x-shader/x-vertex">
attribute vec3 aPos;
attribute vec4 aCol;
uniform mat4 mvMatrix;
uniform mat4 prMatrix;
varying vec4 vCol;
varying vec4 vPosition;
attribute vec3 aNorm;
uniform mat4 normMatrix;
varying vec3 vNormal;
void main(void) {
vPosition = mvMatrix * vec4(aPos, 1.);
gl_Position = prMatrix * vPosition;
vCol = aCol;
vNormal = normalize((normMatrix * vec4(aNorm, 1.)).xyz);
}
</script>
<script id="unnamed_chunk_2fshader21" type="x-shader/x-fragment"> 
#ifdef GL_ES
precision highp float;
#endif
varying vec4 vCol; // carries alpha
varying vec4 vPosition;
varying vec3 vNormal;
void main(void) {
vec3 eye = normalize(-vPosition.xyz);
const vec3 emission = vec3(0., 0., 0.);
const vec3 ambient1 = vec3(0., 0., 0.);
const vec3 specular1 = vec3(1., 1., 1.);// light*material
const float shininess1 = 50.;
vec4 colDiff1 = vec4(vCol.rgb * vec3(1., 1., 1.), vCol.a);
const vec3 lightDir1 = vec3(0., 0., 1.);
vec3 halfVec1 = normalize(lightDir1 + eye);
vec4 lighteffect = vec4(emission, 0.);
vec3 n = normalize(vNormal);
n = -faceforward(n, n, eye);
vec3 col1 = ambient1;
float nDotL1 = dot(n, lightDir1);
col1 = col1 + max(nDotL1, 0.) * colDiff1.rgb;
col1 = col1 + pow(max(dot(halfVec1, n), 0.), shininess1) * specular1;
lighteffect = lighteffect + vec4(col1, colDiff1.a);
gl_FragColor = lighteffect;
}
</script> 
<!-- ****** quads object 22 ****** -->
<script id="unnamed_chunk_2vshader22" type="x-shader/x-vertex">
attribute vec3 aPos;
attribute vec4 aCol;
uniform mat4 mvMatrix;
uniform mat4 prMatrix;
varying vec4 vCol;
varying vec4 vPosition;
attribute vec3 aNorm;
uniform mat4 normMatrix;
varying vec3 vNormal;
void main(void) {
vPosition = mvMatrix * vec4(aPos, 1.);
gl_Position = prMatrix * vPosition;
vCol = aCol;
vNormal = normalize((normMatrix * vec4(aNorm, 1.)).xyz);
}
</script>
<script id="unnamed_chunk_2fshader22" type="x-shader/x-fragment"> 
#ifdef GL_ES
precision highp float;
#endif
varying vec4 vCol; // carries alpha
varying vec4 vPosition;
varying vec3 vNormal;
void main(void) {
vec3 eye = normalize(-vPosition.xyz);
const vec3 emission = vec3(0., 0., 0.);
const vec3 ambient1 = vec3(0., 0., 0.);
const vec3 specular1 = vec3(1., 1., 1.);// light*material
const float shininess1 = 50.;
vec4 colDiff1 = vec4(vCol.rgb * vec3(1., 1., 1.), vCol.a);
const vec3 lightDir1 = vec3(0., 0., 1.);
vec3 halfVec1 = normalize(lightDir1 + eye);
vec4 lighteffect = vec4(emission, 0.);
vec3 n = normalize(vNormal);
n = -faceforward(n, n, eye);
vec3 col1 = ambient1;
float nDotL1 = dot(n, lightDir1);
col1 = col1 + max(nDotL1, 0.) * colDiff1.rgb;
col1 = col1 + pow(max(dot(halfVec1, n), 0.), shininess1) * specular1;
lighteffect = lighteffect + vec4(col1, colDiff1.a);
gl_FragColor = lighteffect;
}
</script> 
<!-- ****** quads object 23 ****** -->
<script id="unnamed_chunk_2vshader23" type="x-shader/x-vertex">
attribute vec3 aPos;
attribute vec4 aCol;
uniform mat4 mvMatrix;
uniform mat4 prMatrix;
varying vec4 vCol;
varying vec4 vPosition;
attribute vec3 aNorm;
uniform mat4 normMatrix;
varying vec3 vNormal;
void main(void) {
vPosition = mvMatrix * vec4(aPos, 1.);
gl_Position = prMatrix * vPosition;
vCol = aCol;
vNormal = normalize((normMatrix * vec4(aNorm, 1.)).xyz);
}
</script>
<script id="unnamed_chunk_2fshader23" type="x-shader/x-fragment"> 
#ifdef GL_ES
precision highp float;
#endif
varying vec4 vCol; // carries alpha
varying vec4 vPosition;
varying vec3 vNormal;
void main(void) {
vec3 eye = normalize(-vPosition.xyz);
const vec3 emission = vec3(0., 0., 0.);
const vec3 ambient1 = vec3(0., 0., 0.);
const vec3 specular1 = vec3(1., 1., 1.);// light*material
const float shininess1 = 50.;
vec4 colDiff1 = vec4(vCol.rgb * vec3(1., 1., 1.), vCol.a);
const vec3 lightDir1 = vec3(0., 0., 1.);
vec3 halfVec1 = normalize(lightDir1 + eye);
vec4 lighteffect = vec4(emission, 0.);
vec3 n = normalize(vNormal);
n = -faceforward(n, n, eye);
vec3 col1 = ambient1;
float nDotL1 = dot(n, lightDir1);
col1 = col1 + max(nDotL1, 0.) * colDiff1.rgb;
col1 = col1 + pow(max(dot(halfVec1, n), 0.), shininess1) * specular1;
lighteffect = lighteffect + vec4(col1, colDiff1.a);
gl_FragColor = lighteffect;
}
</script> 
<!-- ****** quads object 24 ****** -->
<script id="unnamed_chunk_2vshader24" type="x-shader/x-vertex">
attribute vec3 aPos;
attribute vec4 aCol;
uniform mat4 mvMatrix;
uniform mat4 prMatrix;
varying vec4 vCol;
varying vec4 vPosition;
attribute vec3 aNorm;
uniform mat4 normMatrix;
varying vec3 vNormal;
void main(void) {
vPosition = mvMatrix * vec4(aPos, 1.);
gl_Position = prMatrix * vPosition;
vCol = aCol;
vNormal = normalize((normMatrix * vec4(aNorm, 1.)).xyz);
}
</script>
<script id="unnamed_chunk_2fshader24" type="x-shader/x-fragment"> 
#ifdef GL_ES
precision highp float;
#endif
varying vec4 vCol; // carries alpha
varying vec4 vPosition;
varying vec3 vNormal;
void main(void) {
vec3 eye = normalize(-vPosition.xyz);
const vec3 emission = vec3(0., 0., 0.);
const vec3 ambient1 = vec3(0., 0., 0.);
const vec3 specular1 = vec3(1., 1., 1.);// light*material
const float shininess1 = 50.;
vec4 colDiff1 = vec4(vCol.rgb * vec3(1., 1., 1.), vCol.a);
const vec3 lightDir1 = vec3(0., 0., 1.);
vec3 halfVec1 = normalize(lightDir1 + eye);
vec4 lighteffect = vec4(emission, 0.);
vec3 n = normalize(vNormal);
n = -faceforward(n, n, eye);
vec3 col1 = ambient1;
float nDotL1 = dot(n, lightDir1);
col1 = col1 + max(nDotL1, 0.) * colDiff1.rgb;
col1 = col1 + pow(max(dot(halfVec1, n), 0.), shininess1) * specular1;
lighteffect = lighteffect + vec4(col1, colDiff1.a);
gl_FragColor = lighteffect;
}
</script> 
<!-- ****** quads object 25 ****** -->
<script id="unnamed_chunk_2vshader25" type="x-shader/x-vertex">
attribute vec3 aPos;
attribute vec4 aCol;
uniform mat4 mvMatrix;
uniform mat4 prMatrix;
varying vec4 vCol;
varying vec4 vPosition;
attribute vec3 aNorm;
uniform mat4 normMatrix;
varying vec3 vNormal;
void main(void) {
vPosition = mvMatrix * vec4(aPos, 1.);
gl_Position = prMatrix * vPosition;
vCol = aCol;
vNormal = normalize((normMatrix * vec4(aNorm, 1.)).xyz);
}
</script>
<script id="unnamed_chunk_2fshader25" type="x-shader/x-fragment"> 
#ifdef GL_ES
precision highp float;
#endif
varying vec4 vCol; // carries alpha
varying vec4 vPosition;
varying vec3 vNormal;
void main(void) {
vec3 eye = normalize(-vPosition.xyz);
const vec3 emission = vec3(0., 0., 0.);
const vec3 ambient1 = vec3(0., 0., 0.);
const vec3 specular1 = vec3(1., 1., 1.);// light*material
const float shininess1 = 50.;
vec4 colDiff1 = vec4(vCol.rgb * vec3(1., 1., 1.), vCol.a);
const vec3 lightDir1 = vec3(0., 0., 1.);
vec3 halfVec1 = normalize(lightDir1 + eye);
vec4 lighteffect = vec4(emission, 0.);
vec3 n = normalize(vNormal);
n = -faceforward(n, n, eye);
vec3 col1 = ambient1;
float nDotL1 = dot(n, lightDir1);
col1 = col1 + max(nDotL1, 0.) * colDiff1.rgb;
col1 = col1 + pow(max(dot(halfVec1, n), 0.), shininess1) * specular1;
lighteffect = lighteffect + vec4(col1, colDiff1.a);
gl_FragColor = lighteffect;
}
</script> 
<!-- ****** quads object 26 ****** -->
<script id="unnamed_chunk_2vshader26" type="x-shader/x-vertex">
attribute vec3 aPos;
attribute vec4 aCol;
uniform mat4 mvMatrix;
uniform mat4 prMatrix;
varying vec4 vCol;
varying vec4 vPosition;
attribute vec3 aNorm;
uniform mat4 normMatrix;
varying vec3 vNormal;
void main(void) {
vPosition = mvMatrix * vec4(aPos, 1.);
gl_Position = prMatrix * vPosition;
vCol = aCol;
vNormal = normalize((normMatrix * vec4(aNorm, 1.)).xyz);
}
</script>
<script id="unnamed_chunk_2fshader26" type="x-shader/x-fragment"> 
#ifdef GL_ES
precision highp float;
#endif
varying vec4 vCol; // carries alpha
varying vec4 vPosition;
varying vec3 vNormal;
void main(void) {
vec3 eye = normalize(-vPosition.xyz);
const vec3 emission = vec3(0., 0., 0.);
const vec3 ambient1 = vec3(0., 0., 0.);
const vec3 specular1 = vec3(1., 1., 1.);// light*material
const float shininess1 = 50.;
vec4 colDiff1 = vec4(vCol.rgb * vec3(1., 1., 1.), vCol.a);
const vec3 lightDir1 = vec3(0., 0., 1.);
vec3 halfVec1 = normalize(lightDir1 + eye);
vec4 lighteffect = vec4(emission, 0.);
vec3 n = normalize(vNormal);
n = -faceforward(n, n, eye);
vec3 col1 = ambient1;
float nDotL1 = dot(n, lightDir1);
col1 = col1 + max(nDotL1, 0.) * colDiff1.rgb;
col1 = col1 + pow(max(dot(halfVec1, n), 0.), shininess1) * specular1;
lighteffect = lighteffect + vec4(col1, colDiff1.a);
gl_FragColor = lighteffect;
}
</script> 
<!-- ****** quads object 27 ****** -->
<script id="unnamed_chunk_2vshader27" type="x-shader/x-vertex">
attribute vec3 aPos;
attribute vec4 aCol;
uniform mat4 mvMatrix;
uniform mat4 prMatrix;
varying vec4 vCol;
varying vec4 vPosition;
attribute vec3 aNorm;
uniform mat4 normMatrix;
varying vec3 vNormal;
void main(void) {
vPosition = mvMatrix * vec4(aPos, 1.);
gl_Position = prMatrix * vPosition;
vCol = aCol;
vNormal = normalize((normMatrix * vec4(aNorm, 1.)).xyz);
}
</script>
<script id="unnamed_chunk_2fshader27" type="x-shader/x-fragment"> 
#ifdef GL_ES
precision highp float;
#endif
varying vec4 vCol; // carries alpha
varying vec4 vPosition;
varying vec3 vNormal;
void main(void) {
vec3 eye = normalize(-vPosition.xyz);
const vec3 emission = vec3(0., 0., 0.);
const vec3 ambient1 = vec3(0., 0., 0.);
const vec3 specular1 = vec3(1., 1., 1.);// light*material
const float shininess1 = 50.;
vec4 colDiff1 = vec4(vCol.rgb * vec3(1., 1., 1.), vCol.a);
const vec3 lightDir1 = vec3(0., 0., 1.);
vec3 halfVec1 = normalize(lightDir1 + eye);
vec4 lighteffect = vec4(emission, 0.);
vec3 n = normalize(vNormal);
n = -faceforward(n, n, eye);
vec3 col1 = ambient1;
float nDotL1 = dot(n, lightDir1);
col1 = col1 + max(nDotL1, 0.) * colDiff1.rgb;
col1 = col1 + pow(max(dot(halfVec1, n), 0.), shininess1) * specular1;
lighteffect = lighteffect + vec4(col1, colDiff1.a);
gl_FragColor = lighteffect;
}
</script> 
<!-- ****** quads object 28 ****** -->
<script id="unnamed_chunk_2vshader28" type="x-shader/x-vertex">
attribute vec3 aPos;
attribute vec4 aCol;
uniform mat4 mvMatrix;
uniform mat4 prMatrix;
varying vec4 vCol;
varying vec4 vPosition;
attribute vec3 aNorm;
uniform mat4 normMatrix;
varying vec3 vNormal;
void main(void) {
vPosition = mvMatrix * vec4(aPos, 1.);
gl_Position = prMatrix * vPosition;
vCol = aCol;
vNormal = normalize((normMatrix * vec4(aNorm, 1.)).xyz);
}
</script>
<script id="unnamed_chunk_2fshader28" type="x-shader/x-fragment"> 
#ifdef GL_ES
precision highp float;
#endif
varying vec4 vCol; // carries alpha
varying vec4 vPosition;
varying vec3 vNormal;
void main(void) {
vec3 eye = normalize(-vPosition.xyz);
const vec3 emission = vec3(0., 0., 0.);
const vec3 ambient1 = vec3(0., 0., 0.);
const vec3 specular1 = vec3(1., 1., 1.);// light*material
const float shininess1 = 50.;
vec4 colDiff1 = vec4(vCol.rgb * vec3(1., 1., 1.), vCol.a);
const vec3 lightDir1 = vec3(0., 0., 1.);
vec3 halfVec1 = normalize(lightDir1 + eye);
vec4 lighteffect = vec4(emission, 0.);
vec3 n = normalize(vNormal);
n = -faceforward(n, n, eye);
vec3 col1 = ambient1;
float nDotL1 = dot(n, lightDir1);
col1 = col1 + max(nDotL1, 0.) * colDiff1.rgb;
col1 = col1 + pow(max(dot(halfVec1, n), 0.), shininess1) * specular1;
lighteffect = lighteffect + vec4(col1, colDiff1.a);
gl_FragColor = lighteffect;
}
</script> 
<!-- ****** quads object 29 ****** -->
<script id="unnamed_chunk_2vshader29" type="x-shader/x-vertex">
attribute vec3 aPos;
attribute vec4 aCol;
uniform mat4 mvMatrix;
uniform mat4 prMatrix;
varying vec4 vCol;
varying vec4 vPosition;
attribute vec3 aNorm;
uniform mat4 normMatrix;
varying vec3 vNormal;
void main(void) {
vPosition = mvMatrix * vec4(aPos, 1.);
gl_Position = prMatrix * vPosition;
vCol = aCol;
vNormal = normalize((normMatrix * vec4(aNorm, 1.)).xyz);
}
</script>
<script id="unnamed_chunk_2fshader29" type="x-shader/x-fragment"> 
#ifdef GL_ES
precision highp float;
#endif
varying vec4 vCol; // carries alpha
varying vec4 vPosition;
varying vec3 vNormal;
void main(void) {
vec3 eye = normalize(-vPosition.xyz);
const vec3 emission = vec3(0., 0., 0.);
const vec3 ambient1 = vec3(0., 0., 0.);
const vec3 specular1 = vec3(1., 1., 1.);// light*material
const float shininess1 = 50.;
vec4 colDiff1 = vec4(vCol.rgb * vec3(1., 1., 1.), vCol.a);
const vec3 lightDir1 = vec3(0., 0., 1.);
vec3 halfVec1 = normalize(lightDir1 + eye);
vec4 lighteffect = vec4(emission, 0.);
vec3 n = normalize(vNormal);
n = -faceforward(n, n, eye);
vec3 col1 = ambient1;
float nDotL1 = dot(n, lightDir1);
col1 = col1 + max(nDotL1, 0.) * colDiff1.rgb;
col1 = col1 + pow(max(dot(halfVec1, n), 0.), shininess1) * specular1;
lighteffect = lighteffect + vec4(col1, colDiff1.a);
gl_FragColor = lighteffect;
}
</script> 
<!-- ****** quads object 30 ****** -->
<script id="unnamed_chunk_2vshader30" type="x-shader/x-vertex">
attribute vec3 aPos;
attribute vec4 aCol;
uniform mat4 mvMatrix;
uniform mat4 prMatrix;
varying vec4 vCol;
varying vec4 vPosition;
attribute vec3 aNorm;
uniform mat4 normMatrix;
varying vec3 vNormal;
void main(void) {
vPosition = mvMatrix * vec4(aPos, 1.);
gl_Position = prMatrix * vPosition;
vCol = aCol;
vNormal = normalize((normMatrix * vec4(aNorm, 1.)).xyz);
}
</script>
<script id="unnamed_chunk_2fshader30" type="x-shader/x-fragment"> 
#ifdef GL_ES
precision highp float;
#endif
varying vec4 vCol; // carries alpha
varying vec4 vPosition;
varying vec3 vNormal;
void main(void) {
vec3 eye = normalize(-vPosition.xyz);
const vec3 emission = vec3(0., 0., 0.);
const vec3 ambient1 = vec3(0., 0., 0.);
const vec3 specular1 = vec3(1., 1., 1.);// light*material
const float shininess1 = 50.;
vec4 colDiff1 = vec4(vCol.rgb * vec3(1., 1., 1.), vCol.a);
const vec3 lightDir1 = vec3(0., 0., 1.);
vec3 halfVec1 = normalize(lightDir1 + eye);
vec4 lighteffect = vec4(emission, 0.);
vec3 n = normalize(vNormal);
n = -faceforward(n, n, eye);
vec3 col1 = ambient1;
float nDotL1 = dot(n, lightDir1);
col1 = col1 + max(nDotL1, 0.) * colDiff1.rgb;
col1 = col1 + pow(max(dot(halfVec1, n), 0.), shininess1) * specular1;
lighteffect = lighteffect + vec4(col1, colDiff1.a);
gl_FragColor = lighteffect;
}
</script> 
<!-- ****** quads object 31 ****** -->
<script id="unnamed_chunk_2vshader31" type="x-shader/x-vertex">
attribute vec3 aPos;
attribute vec4 aCol;
uniform mat4 mvMatrix;
uniform mat4 prMatrix;
varying vec4 vCol;
varying vec4 vPosition;
attribute vec3 aNorm;
uniform mat4 normMatrix;
varying vec3 vNormal;
void main(void) {
vPosition = mvMatrix * vec4(aPos, 1.);
gl_Position = prMatrix * vPosition;
vCol = aCol;
vNormal = normalize((normMatrix * vec4(aNorm, 1.)).xyz);
}
</script>
<script id="unnamed_chunk_2fshader31" type="x-shader/x-fragment"> 
#ifdef GL_ES
precision highp float;
#endif
varying vec4 vCol; // carries alpha
varying vec4 vPosition;
varying vec3 vNormal;
void main(void) {
vec3 eye = normalize(-vPosition.xyz);
const vec3 emission = vec3(0., 0., 0.);
const vec3 ambient1 = vec3(0., 0., 0.);
const vec3 specular1 = vec3(1., 1., 1.);// light*material
const float shininess1 = 50.;
vec4 colDiff1 = vec4(vCol.rgb * vec3(1., 1., 1.), vCol.a);
const vec3 lightDir1 = vec3(0., 0., 1.);
vec3 halfVec1 = normalize(lightDir1 + eye);
vec4 lighteffect = vec4(emission, 0.);
vec3 n = normalize(vNormal);
n = -faceforward(n, n, eye);
vec3 col1 = ambient1;
float nDotL1 = dot(n, lightDir1);
col1 = col1 + max(nDotL1, 0.) * colDiff1.rgb;
col1 = col1 + pow(max(dot(halfVec1, n), 0.), shininess1) * specular1;
lighteffect = lighteffect + vec4(col1, colDiff1.a);
gl_FragColor = lighteffect;
}
</script> 
<!-- ****** quads object 32 ****** -->
<script id="unnamed_chunk_2vshader32" type="x-shader/x-vertex">
attribute vec3 aPos;
attribute vec4 aCol;
uniform mat4 mvMatrix;
uniform mat4 prMatrix;
varying vec4 vCol;
varying vec4 vPosition;
attribute vec3 aNorm;
uniform mat4 normMatrix;
varying vec3 vNormal;
void main(void) {
vPosition = mvMatrix * vec4(aPos, 1.);
gl_Position = prMatrix * vPosition;
vCol = aCol;
vNormal = normalize((normMatrix * vec4(aNorm, 1.)).xyz);
}
</script>
<script id="unnamed_chunk_2fshader32" type="x-shader/x-fragment"> 
#ifdef GL_ES
precision highp float;
#endif
varying vec4 vCol; // carries alpha
varying vec4 vPosition;
varying vec3 vNormal;
void main(void) {
vec3 eye = normalize(-vPosition.xyz);
const vec3 emission = vec3(0., 0., 0.);
const vec3 ambient1 = vec3(0., 0., 0.);
const vec3 specular1 = vec3(1., 1., 1.);// light*material
const float shininess1 = 50.;
vec4 colDiff1 = vec4(vCol.rgb * vec3(1., 1., 1.), vCol.a);
const vec3 lightDir1 = vec3(0., 0., 1.);
vec3 halfVec1 = normalize(lightDir1 + eye);
vec4 lighteffect = vec4(emission, 0.);
vec3 n = normalize(vNormal);
n = -faceforward(n, n, eye);
vec3 col1 = ambient1;
float nDotL1 = dot(n, lightDir1);
col1 = col1 + max(nDotL1, 0.) * colDiff1.rgb;
col1 = col1 + pow(max(dot(halfVec1, n), 0.), shininess1) * specular1;
lighteffect = lighteffect + vec4(col1, colDiff1.a);
gl_FragColor = lighteffect;
}
</script> 
<!-- ****** quads object 33 ****** -->
<script id="unnamed_chunk_2vshader33" type="x-shader/x-vertex">
attribute vec3 aPos;
attribute vec4 aCol;
uniform mat4 mvMatrix;
uniform mat4 prMatrix;
varying vec4 vCol;
varying vec4 vPosition;
attribute vec3 aNorm;
uniform mat4 normMatrix;
varying vec3 vNormal;
void main(void) {
vPosition = mvMatrix * vec4(aPos, 1.);
gl_Position = prMatrix * vPosition;
vCol = aCol;
vNormal = normalize((normMatrix * vec4(aNorm, 1.)).xyz);
}
</script>
<script id="unnamed_chunk_2fshader33" type="x-shader/x-fragment"> 
#ifdef GL_ES
precision highp float;
#endif
varying vec4 vCol; // carries alpha
varying vec4 vPosition;
varying vec3 vNormal;
void main(void) {
vec3 eye = normalize(-vPosition.xyz);
const vec3 emission = vec3(0., 0., 0.);
const vec3 ambient1 = vec3(0., 0., 0.);
const vec3 specular1 = vec3(1., 1., 1.);// light*material
const float shininess1 = 50.;
vec4 colDiff1 = vec4(vCol.rgb * vec3(1., 1., 1.), vCol.a);
const vec3 lightDir1 = vec3(0., 0., 1.);
vec3 halfVec1 = normalize(lightDir1 + eye);
vec4 lighteffect = vec4(emission, 0.);
vec3 n = normalize(vNormal);
n = -faceforward(n, n, eye);
vec3 col1 = ambient1;
float nDotL1 = dot(n, lightDir1);
col1 = col1 + max(nDotL1, 0.) * colDiff1.rgb;
col1 = col1 + pow(max(dot(halfVec1, n), 0.), shininess1) * specular1;
lighteffect = lighteffect + vec4(col1, colDiff1.a);
gl_FragColor = lighteffect;
}
</script> 
<!-- ****** quads object 34 ****** -->
<script id="unnamed_chunk_2vshader34" type="x-shader/x-vertex">
attribute vec3 aPos;
attribute vec4 aCol;
uniform mat4 mvMatrix;
uniform mat4 prMatrix;
varying vec4 vCol;
varying vec4 vPosition;
attribute vec3 aNorm;
uniform mat4 normMatrix;
varying vec3 vNormal;
void main(void) {
vPosition = mvMatrix * vec4(aPos, 1.);
gl_Position = prMatrix * vPosition;
vCol = aCol;
vNormal = normalize((normMatrix * vec4(aNorm, 1.)).xyz);
}
</script>
<script id="unnamed_chunk_2fshader34" type="x-shader/x-fragment"> 
#ifdef GL_ES
precision highp float;
#endif
varying vec4 vCol; // carries alpha
varying vec4 vPosition;
varying vec3 vNormal;
void main(void) {
vec3 eye = normalize(-vPosition.xyz);
const vec3 emission = vec3(0., 0., 0.);
const vec3 ambient1 = vec3(0., 0., 0.);
const vec3 specular1 = vec3(1., 1., 1.);// light*material
const float shininess1 = 50.;
vec4 colDiff1 = vec4(vCol.rgb * vec3(1., 1., 1.), vCol.a);
const vec3 lightDir1 = vec3(0., 0., 1.);
vec3 halfVec1 = normalize(lightDir1 + eye);
vec4 lighteffect = vec4(emission, 0.);
vec3 n = normalize(vNormal);
n = -faceforward(n, n, eye);
vec3 col1 = ambient1;
float nDotL1 = dot(n, lightDir1);
col1 = col1 + max(nDotL1, 0.) * colDiff1.rgb;
col1 = col1 + pow(max(dot(halfVec1, n), 0.), shininess1) * specular1;
lighteffect = lighteffect + vec4(col1, colDiff1.a);
gl_FragColor = lighteffect;
}
</script> 
<!-- ****** quads object 35 ****** -->
<script id="unnamed_chunk_2vshader35" type="x-shader/x-vertex">
attribute vec3 aPos;
attribute vec4 aCol;
uniform mat4 mvMatrix;
uniform mat4 prMatrix;
varying vec4 vCol;
varying vec4 vPosition;
attribute vec3 aNorm;
uniform mat4 normMatrix;
varying vec3 vNormal;
void main(void) {
vPosition = mvMatrix * vec4(aPos, 1.);
gl_Position = prMatrix * vPosition;
vCol = aCol;
vNormal = normalize((normMatrix * vec4(aNorm, 1.)).xyz);
}
</script>
<script id="unnamed_chunk_2fshader35" type="x-shader/x-fragment"> 
#ifdef GL_ES
precision highp float;
#endif
varying vec4 vCol; // carries alpha
varying vec4 vPosition;
varying vec3 vNormal;
void main(void) {
vec3 eye = normalize(-vPosition.xyz);
const vec3 emission = vec3(0., 0., 0.);
const vec3 ambient1 = vec3(0., 0., 0.);
const vec3 specular1 = vec3(1., 1., 1.);// light*material
const float shininess1 = 50.;
vec4 colDiff1 = vec4(vCol.rgb * vec3(1., 1., 1.), vCol.a);
const vec3 lightDir1 = vec3(0., 0., 1.);
vec3 halfVec1 = normalize(lightDir1 + eye);
vec4 lighteffect = vec4(emission, 0.);
vec3 n = normalize(vNormal);
n = -faceforward(n, n, eye);
vec3 col1 = ambient1;
float nDotL1 = dot(n, lightDir1);
col1 = col1 + max(nDotL1, 0.) * colDiff1.rgb;
col1 = col1 + pow(max(dot(halfVec1, n), 0.), shininess1) * specular1;
lighteffect = lighteffect + vec4(col1, colDiff1.a);
gl_FragColor = lighteffect;
}
</script> 
<!-- ****** quads object 36 ****** -->
<script id="unnamed_chunk_2vshader36" type="x-shader/x-vertex">
attribute vec3 aPos;
attribute vec4 aCol;
uniform mat4 mvMatrix;
uniform mat4 prMatrix;
varying vec4 vCol;
varying vec4 vPosition;
attribute vec3 aNorm;
uniform mat4 normMatrix;
varying vec3 vNormal;
void main(void) {
vPosition = mvMatrix * vec4(aPos, 1.);
gl_Position = prMatrix * vPosition;
vCol = aCol;
vNormal = normalize((normMatrix * vec4(aNorm, 1.)).xyz);
}
</script>
<script id="unnamed_chunk_2fshader36" type="x-shader/x-fragment"> 
#ifdef GL_ES
precision highp float;
#endif
varying vec4 vCol; // carries alpha
varying vec4 vPosition;
varying vec3 vNormal;
void main(void) {
vec3 eye = normalize(-vPosition.xyz);
const vec3 emission = vec3(0., 0., 0.);
const vec3 ambient1 = vec3(0., 0., 0.);
const vec3 specular1 = vec3(1., 1., 1.);// light*material
const float shininess1 = 50.;
vec4 colDiff1 = vec4(vCol.rgb * vec3(1., 1., 1.), vCol.a);
const vec3 lightDir1 = vec3(0., 0., 1.);
vec3 halfVec1 = normalize(lightDir1 + eye);
vec4 lighteffect = vec4(emission, 0.);
vec3 n = normalize(vNormal);
n = -faceforward(n, n, eye);
vec3 col1 = ambient1;
float nDotL1 = dot(n, lightDir1);
col1 = col1 + max(nDotL1, 0.) * colDiff1.rgb;
col1 = col1 + pow(max(dot(halfVec1, n), 0.), shininess1) * specular1;
lighteffect = lighteffect + vec4(col1, colDiff1.a);
gl_FragColor = lighteffect;
}
</script> 
<!-- ****** quads object 37 ****** -->
<script id="unnamed_chunk_2vshader37" type="x-shader/x-vertex">
attribute vec3 aPos;
attribute vec4 aCol;
uniform mat4 mvMatrix;
uniform mat4 prMatrix;
varying vec4 vCol;
varying vec4 vPosition;
attribute vec3 aNorm;
uniform mat4 normMatrix;
varying vec3 vNormal;
void main(void) {
vPosition = mvMatrix * vec4(aPos, 1.);
gl_Position = prMatrix * vPosition;
vCol = aCol;
vNormal = normalize((normMatrix * vec4(aNorm, 1.)).xyz);
}
</script>
<script id="unnamed_chunk_2fshader37" type="x-shader/x-fragment"> 
#ifdef GL_ES
precision highp float;
#endif
varying vec4 vCol; // carries alpha
varying vec4 vPosition;
varying vec3 vNormal;
void main(void) {
vec3 eye = normalize(-vPosition.xyz);
const vec3 emission = vec3(0., 0., 0.);
const vec3 ambient1 = vec3(0., 0., 0.);
const vec3 specular1 = vec3(1., 1., 1.);// light*material
const float shininess1 = 50.;
vec4 colDiff1 = vec4(vCol.rgb * vec3(1., 1., 1.), vCol.a);
const vec3 lightDir1 = vec3(0., 0., 1.);
vec3 halfVec1 = normalize(lightDir1 + eye);
vec4 lighteffect = vec4(emission, 0.);
vec3 n = normalize(vNormal);
n = -faceforward(n, n, eye);
vec3 col1 = ambient1;
float nDotL1 = dot(n, lightDir1);
col1 = col1 + max(nDotL1, 0.) * colDiff1.rgb;
col1 = col1 + pow(max(dot(halfVec1, n), 0.), shininess1) * specular1;
lighteffect = lighteffect + vec4(col1, colDiff1.a);
gl_FragColor = lighteffect;
}
</script> 
<!-- ****** quads object 38 ****** -->
<script id="unnamed_chunk_2vshader38" type="x-shader/x-vertex">
attribute vec3 aPos;
attribute vec4 aCol;
uniform mat4 mvMatrix;
uniform mat4 prMatrix;
varying vec4 vCol;
varying vec4 vPosition;
attribute vec3 aNorm;
uniform mat4 normMatrix;
varying vec3 vNormal;
void main(void) {
vPosition = mvMatrix * vec4(aPos, 1.);
gl_Position = prMatrix * vPosition;
vCol = aCol;
vNormal = normalize((normMatrix * vec4(aNorm, 1.)).xyz);
}
</script>
<script id="unnamed_chunk_2fshader38" type="x-shader/x-fragment"> 
#ifdef GL_ES
precision highp float;
#endif
varying vec4 vCol; // carries alpha
varying vec4 vPosition;
varying vec3 vNormal;
void main(void) {
vec3 eye = normalize(-vPosition.xyz);
const vec3 emission = vec3(0., 0., 0.);
const vec3 ambient1 = vec3(0., 0., 0.);
const vec3 specular1 = vec3(1., 1., 1.);// light*material
const float shininess1 = 50.;
vec4 colDiff1 = vec4(vCol.rgb * vec3(1., 1., 1.), vCol.a);
const vec3 lightDir1 = vec3(0., 0., 1.);
vec3 halfVec1 = normalize(lightDir1 + eye);
vec4 lighteffect = vec4(emission, 0.);
vec3 n = normalize(vNormal);
n = -faceforward(n, n, eye);
vec3 col1 = ambient1;
float nDotL1 = dot(n, lightDir1);
col1 = col1 + max(nDotL1, 0.) * colDiff1.rgb;
col1 = col1 + pow(max(dot(halfVec1, n), 0.), shininess1) * specular1;
lighteffect = lighteffect + vec4(col1, colDiff1.a);
gl_FragColor = lighteffect;
}
</script> 
<!-- ****** quads object 39 ****** -->
<script id="unnamed_chunk_2vshader39" type="x-shader/x-vertex">
attribute vec3 aPos;
attribute vec4 aCol;
uniform mat4 mvMatrix;
uniform mat4 prMatrix;
varying vec4 vCol;
varying vec4 vPosition;
attribute vec3 aNorm;
uniform mat4 normMatrix;
varying vec3 vNormal;
void main(void) {
vPosition = mvMatrix * vec4(aPos, 1.);
gl_Position = prMatrix * vPosition;
vCol = aCol;
vNormal = normalize((normMatrix * vec4(aNorm, 1.)).xyz);
}
</script>
<script id="unnamed_chunk_2fshader39" type="x-shader/x-fragment"> 
#ifdef GL_ES
precision highp float;
#endif
varying vec4 vCol; // carries alpha
varying vec4 vPosition;
varying vec3 vNormal;
void main(void) {
vec3 eye = normalize(-vPosition.xyz);
const vec3 emission = vec3(0., 0., 0.);
const vec3 ambient1 = vec3(0., 0., 0.);
const vec3 specular1 = vec3(1., 1., 1.);// light*material
const float shininess1 = 50.;
vec4 colDiff1 = vec4(vCol.rgb * vec3(1., 1., 1.), vCol.a);
const vec3 lightDir1 = vec3(0., 0., 1.);
vec3 halfVec1 = normalize(lightDir1 + eye);
vec4 lighteffect = vec4(emission, 0.);
vec3 n = normalize(vNormal);
n = -faceforward(n, n, eye);
vec3 col1 = ambient1;
float nDotL1 = dot(n, lightDir1);
col1 = col1 + max(nDotL1, 0.) * colDiff1.rgb;
col1 = col1 + pow(max(dot(halfVec1, n), 0.), shininess1) * specular1;
lighteffect = lighteffect + vec4(col1, colDiff1.a);
gl_FragColor = lighteffect;
}
</script> 
<!-- ****** quads object 40 ****** -->
<script id="unnamed_chunk_2vshader40" type="x-shader/x-vertex">
attribute vec3 aPos;
attribute vec4 aCol;
uniform mat4 mvMatrix;
uniform mat4 prMatrix;
varying vec4 vCol;
varying vec4 vPosition;
attribute vec3 aNorm;
uniform mat4 normMatrix;
varying vec3 vNormal;
void main(void) {
vPosition = mvMatrix * vec4(aPos, 1.);
gl_Position = prMatrix * vPosition;
vCol = aCol;
vNormal = normalize((normMatrix * vec4(aNorm, 1.)).xyz);
}
</script>
<script id="unnamed_chunk_2fshader40" type="x-shader/x-fragment"> 
#ifdef GL_ES
precision highp float;
#endif
varying vec4 vCol; // carries alpha
varying vec4 vPosition;
varying vec3 vNormal;
void main(void) {
vec3 eye = normalize(-vPosition.xyz);
const vec3 emission = vec3(0., 0., 0.);
const vec3 ambient1 = vec3(0., 0., 0.);
const vec3 specular1 = vec3(1., 1., 1.);// light*material
const float shininess1 = 50.;
vec4 colDiff1 = vec4(vCol.rgb * vec3(1., 1., 1.), vCol.a);
const vec3 lightDir1 = vec3(0., 0., 1.);
vec3 halfVec1 = normalize(lightDir1 + eye);
vec4 lighteffect = vec4(emission, 0.);
vec3 n = normalize(vNormal);
n = -faceforward(n, n, eye);
vec3 col1 = ambient1;
float nDotL1 = dot(n, lightDir1);
col1 = col1 + max(nDotL1, 0.) * colDiff1.rgb;
col1 = col1 + pow(max(dot(halfVec1, n), 0.), shininess1) * specular1;
lighteffect = lighteffect + vec4(col1, colDiff1.a);
gl_FragColor = lighteffect;
}
</script> 
<!-- ****** quads object 41 ****** -->
<script id="unnamed_chunk_2vshader41" type="x-shader/x-vertex">
attribute vec3 aPos;
attribute vec4 aCol;
uniform mat4 mvMatrix;
uniform mat4 prMatrix;
varying vec4 vCol;
varying vec4 vPosition;
attribute vec3 aNorm;
uniform mat4 normMatrix;
varying vec3 vNormal;
void main(void) {
vPosition = mvMatrix * vec4(aPos, 1.);
gl_Position = prMatrix * vPosition;
vCol = aCol;
vNormal = normalize((normMatrix * vec4(aNorm, 1.)).xyz);
}
</script>
<script id="unnamed_chunk_2fshader41" type="x-shader/x-fragment"> 
#ifdef GL_ES
precision highp float;
#endif
varying vec4 vCol; // carries alpha
varying vec4 vPosition;
varying vec3 vNormal;
void main(void) {
vec3 eye = normalize(-vPosition.xyz);
const vec3 emission = vec3(0., 0., 0.);
const vec3 ambient1 = vec3(0., 0., 0.);
const vec3 specular1 = vec3(1., 1., 1.);// light*material
const float shininess1 = 50.;
vec4 colDiff1 = vec4(vCol.rgb * vec3(1., 1., 1.), vCol.a);
const vec3 lightDir1 = vec3(0., 0., 1.);
vec3 halfVec1 = normalize(lightDir1 + eye);
vec4 lighteffect = vec4(emission, 0.);
vec3 n = normalize(vNormal);
n = -faceforward(n, n, eye);
vec3 col1 = ambient1;
float nDotL1 = dot(n, lightDir1);
col1 = col1 + max(nDotL1, 0.) * colDiff1.rgb;
col1 = col1 + pow(max(dot(halfVec1, n), 0.), shininess1) * specular1;
lighteffect = lighteffect + vec4(col1, colDiff1.a);
gl_FragColor = lighteffect;
}
</script> 
<!-- ****** quads object 42 ****** -->
<script id="unnamed_chunk_2vshader42" type="x-shader/x-vertex">
attribute vec3 aPos;
attribute vec4 aCol;
uniform mat4 mvMatrix;
uniform mat4 prMatrix;
varying vec4 vCol;
varying vec4 vPosition;
attribute vec3 aNorm;
uniform mat4 normMatrix;
varying vec3 vNormal;
void main(void) {
vPosition = mvMatrix * vec4(aPos, 1.);
gl_Position = prMatrix * vPosition;
vCol = aCol;
vNormal = normalize((normMatrix * vec4(aNorm, 1.)).xyz);
}
</script>
<script id="unnamed_chunk_2fshader42" type="x-shader/x-fragment"> 
#ifdef GL_ES
precision highp float;
#endif
varying vec4 vCol; // carries alpha
varying vec4 vPosition;
varying vec3 vNormal;
void main(void) {
vec3 eye = normalize(-vPosition.xyz);
const vec3 emission = vec3(0., 0., 0.);
const vec3 ambient1 = vec3(0., 0., 0.);
const vec3 specular1 = vec3(1., 1., 1.);// light*material
const float shininess1 = 50.;
vec4 colDiff1 = vec4(vCol.rgb * vec3(1., 1., 1.), vCol.a);
const vec3 lightDir1 = vec3(0., 0., 1.);
vec3 halfVec1 = normalize(lightDir1 + eye);
vec4 lighteffect = vec4(emission, 0.);
vec3 n = normalize(vNormal);
n = -faceforward(n, n, eye);
vec3 col1 = ambient1;
float nDotL1 = dot(n, lightDir1);
col1 = col1 + max(nDotL1, 0.) * colDiff1.rgb;
col1 = col1 + pow(max(dot(halfVec1, n), 0.), shininess1) * specular1;
lighteffect = lighteffect + vec4(col1, colDiff1.a);
gl_FragColor = lighteffect;
}
</script> 
<!-- ****** quads object 43 ****** -->
<script id="unnamed_chunk_2vshader43" type="x-shader/x-vertex">
attribute vec3 aPos;
attribute vec4 aCol;
uniform mat4 mvMatrix;
uniform mat4 prMatrix;
varying vec4 vCol;
varying vec4 vPosition;
attribute vec3 aNorm;
uniform mat4 normMatrix;
varying vec3 vNormal;
void main(void) {
vPosition = mvMatrix * vec4(aPos, 1.);
gl_Position = prMatrix * vPosition;
vCol = aCol;
vNormal = normalize((normMatrix * vec4(aNorm, 1.)).xyz);
}
</script>
<script id="unnamed_chunk_2fshader43" type="x-shader/x-fragment"> 
#ifdef GL_ES
precision highp float;
#endif
varying vec4 vCol; // carries alpha
varying vec4 vPosition;
varying vec3 vNormal;
void main(void) {
vec3 eye = normalize(-vPosition.xyz);
const vec3 emission = vec3(0., 0., 0.);
const vec3 ambient1 = vec3(0., 0., 0.);
const vec3 specular1 = vec3(1., 1., 1.);// light*material
const float shininess1 = 50.;
vec4 colDiff1 = vec4(vCol.rgb * vec3(1., 1., 1.), vCol.a);
const vec3 lightDir1 = vec3(0., 0., 1.);
vec3 halfVec1 = normalize(lightDir1 + eye);
vec4 lighteffect = vec4(emission, 0.);
vec3 n = normalize(vNormal);
n = -faceforward(n, n, eye);
vec3 col1 = ambient1;
float nDotL1 = dot(n, lightDir1);
col1 = col1 + max(nDotL1, 0.) * colDiff1.rgb;
col1 = col1 + pow(max(dot(halfVec1, n), 0.), shininess1) * specular1;
lighteffect = lighteffect + vec4(col1, colDiff1.a);
gl_FragColor = lighteffect;
}
</script> 
<!-- ****** quads object 44 ****** -->
<script id="unnamed_chunk_2vshader44" type="x-shader/x-vertex">
attribute vec3 aPos;
attribute vec4 aCol;
uniform mat4 mvMatrix;
uniform mat4 prMatrix;
varying vec4 vCol;
varying vec4 vPosition;
attribute vec3 aNorm;
uniform mat4 normMatrix;
varying vec3 vNormal;
void main(void) {
vPosition = mvMatrix * vec4(aPos, 1.);
gl_Position = prMatrix * vPosition;
vCol = aCol;
vNormal = normalize((normMatrix * vec4(aNorm, 1.)).xyz);
}
</script>
<script id="unnamed_chunk_2fshader44" type="x-shader/x-fragment"> 
#ifdef GL_ES
precision highp float;
#endif
varying vec4 vCol; // carries alpha
varying vec4 vPosition;
varying vec3 vNormal;
void main(void) {
vec3 eye = normalize(-vPosition.xyz);
const vec3 emission = vec3(0., 0., 0.);
const vec3 ambient1 = vec3(0., 0., 0.);
const vec3 specular1 = vec3(1., 1., 1.);// light*material
const float shininess1 = 50.;
vec4 colDiff1 = vec4(vCol.rgb * vec3(1., 1., 1.), vCol.a);
const vec3 lightDir1 = vec3(0., 0., 1.);
vec3 halfVec1 = normalize(lightDir1 + eye);
vec4 lighteffect = vec4(emission, 0.);
vec3 n = normalize(vNormal);
n = -faceforward(n, n, eye);
vec3 col1 = ambient1;
float nDotL1 = dot(n, lightDir1);
col1 = col1 + max(nDotL1, 0.) * colDiff1.rgb;
col1 = col1 + pow(max(dot(halfVec1, n), 0.), shininess1) * specular1;
lighteffect = lighteffect + vec4(col1, colDiff1.a);
gl_FragColor = lighteffect;
}
</script> 
<!-- ****** quads object 45 ****** -->
<script id="unnamed_chunk_2vshader45" type="x-shader/x-vertex">
attribute vec3 aPos;
attribute vec4 aCol;
uniform mat4 mvMatrix;
uniform mat4 prMatrix;
varying vec4 vCol;
varying vec4 vPosition;
attribute vec3 aNorm;
uniform mat4 normMatrix;
varying vec3 vNormal;
void main(void) {
vPosition = mvMatrix * vec4(aPos, 1.);
gl_Position = prMatrix * vPosition;
vCol = aCol;
vNormal = normalize((normMatrix * vec4(aNorm, 1.)).xyz);
}
</script>
<script id="unnamed_chunk_2fshader45" type="x-shader/x-fragment"> 
#ifdef GL_ES
precision highp float;
#endif
varying vec4 vCol; // carries alpha
varying vec4 vPosition;
varying vec3 vNormal;
void main(void) {
vec3 eye = normalize(-vPosition.xyz);
const vec3 emission = vec3(0., 0., 0.);
const vec3 ambient1 = vec3(0., 0., 0.);
const vec3 specular1 = vec3(1., 1., 1.);// light*material
const float shininess1 = 50.;
vec4 colDiff1 = vec4(vCol.rgb * vec3(1., 1., 1.), vCol.a);
const vec3 lightDir1 = vec3(0., 0., 1.);
vec3 halfVec1 = normalize(lightDir1 + eye);
vec4 lighteffect = vec4(emission, 0.);
vec3 n = normalize(vNormal);
n = -faceforward(n, n, eye);
vec3 col1 = ambient1;
float nDotL1 = dot(n, lightDir1);
col1 = col1 + max(nDotL1, 0.) * colDiff1.rgb;
col1 = col1 + pow(max(dot(halfVec1, n), 0.), shininess1) * specular1;
lighteffect = lighteffect + vec4(col1, colDiff1.a);
gl_FragColor = lighteffect;
}
</script> 
<!-- ****** quads object 46 ****** -->
<script id="unnamed_chunk_2vshader46" type="x-shader/x-vertex">
attribute vec3 aPos;
attribute vec4 aCol;
uniform mat4 mvMatrix;
uniform mat4 prMatrix;
varying vec4 vCol;
varying vec4 vPosition;
attribute vec3 aNorm;
uniform mat4 normMatrix;
varying vec3 vNormal;
void main(void) {
vPosition = mvMatrix * vec4(aPos, 1.);
gl_Position = prMatrix * vPosition;
vCol = aCol;
vNormal = normalize((normMatrix * vec4(aNorm, 1.)).xyz);
}
</script>
<script id="unnamed_chunk_2fshader46" type="x-shader/x-fragment"> 
#ifdef GL_ES
precision highp float;
#endif
varying vec4 vCol; // carries alpha
varying vec4 vPosition;
varying vec3 vNormal;
void main(void) {
vec3 eye = normalize(-vPosition.xyz);
const vec3 emission = vec3(0., 0., 0.);
const vec3 ambient1 = vec3(0., 0., 0.);
const vec3 specular1 = vec3(1., 1., 1.);// light*material
const float shininess1 = 50.;
vec4 colDiff1 = vec4(vCol.rgb * vec3(1., 1., 1.), vCol.a);
const vec3 lightDir1 = vec3(0., 0., 1.);
vec3 halfVec1 = normalize(lightDir1 + eye);
vec4 lighteffect = vec4(emission, 0.);
vec3 n = normalize(vNormal);
n = -faceforward(n, n, eye);
vec3 col1 = ambient1;
float nDotL1 = dot(n, lightDir1);
col1 = col1 + max(nDotL1, 0.) * colDiff1.rgb;
col1 = col1 + pow(max(dot(halfVec1, n), 0.), shininess1) * specular1;
lighteffect = lighteffect + vec4(col1, colDiff1.a);
gl_FragColor = lighteffect;
}
</script> 
<!-- ****** quads object 47 ****** -->
<script id="unnamed_chunk_2vshader47" type="x-shader/x-vertex">
attribute vec3 aPos;
attribute vec4 aCol;
uniform mat4 mvMatrix;
uniform mat4 prMatrix;
varying vec4 vCol;
varying vec4 vPosition;
attribute vec3 aNorm;
uniform mat4 normMatrix;
varying vec3 vNormal;
void main(void) {
vPosition = mvMatrix * vec4(aPos, 1.);
gl_Position = prMatrix * vPosition;
vCol = aCol;
vNormal = normalize((normMatrix * vec4(aNorm, 1.)).xyz);
}
</script>
<script id="unnamed_chunk_2fshader47" type="x-shader/x-fragment"> 
#ifdef GL_ES
precision highp float;
#endif
varying vec4 vCol; // carries alpha
varying vec4 vPosition;
varying vec3 vNormal;
void main(void) {
vec3 eye = normalize(-vPosition.xyz);
const vec3 emission = vec3(0., 0., 0.);
const vec3 ambient1 = vec3(0., 0., 0.);
const vec3 specular1 = vec3(1., 1., 1.);// light*material
const float shininess1 = 50.;
vec4 colDiff1 = vec4(vCol.rgb * vec3(1., 1., 1.), vCol.a);
const vec3 lightDir1 = vec3(0., 0., 1.);
vec3 halfVec1 = normalize(lightDir1 + eye);
vec4 lighteffect = vec4(emission, 0.);
vec3 n = normalize(vNormal);
n = -faceforward(n, n, eye);
vec3 col1 = ambient1;
float nDotL1 = dot(n, lightDir1);
col1 = col1 + max(nDotL1, 0.) * colDiff1.rgb;
col1 = col1 + pow(max(dot(halfVec1, n), 0.), shininess1) * specular1;
lighteffect = lighteffect + vec4(col1, colDiff1.a);
gl_FragColor = lighteffect;
}
</script> 
<!-- ****** quads object 48 ****** -->
<script id="unnamed_chunk_2vshader48" type="x-shader/x-vertex">
attribute vec3 aPos;
attribute vec4 aCol;
uniform mat4 mvMatrix;
uniform mat4 prMatrix;
varying vec4 vCol;
varying vec4 vPosition;
attribute vec3 aNorm;
uniform mat4 normMatrix;
varying vec3 vNormal;
void main(void) {
vPosition = mvMatrix * vec4(aPos, 1.);
gl_Position = prMatrix * vPosition;
vCol = aCol;
vNormal = normalize((normMatrix * vec4(aNorm, 1.)).xyz);
}
</script>
<script id="unnamed_chunk_2fshader48" type="x-shader/x-fragment"> 
#ifdef GL_ES
precision highp float;
#endif
varying vec4 vCol; // carries alpha
varying vec4 vPosition;
varying vec3 vNormal;
void main(void) {
vec3 eye = normalize(-vPosition.xyz);
const vec3 emission = vec3(0., 0., 0.);
const vec3 ambient1 = vec3(0., 0., 0.);
const vec3 specular1 = vec3(1., 1., 1.);// light*material
const float shininess1 = 50.;
vec4 colDiff1 = vec4(vCol.rgb * vec3(1., 1., 1.), vCol.a);
const vec3 lightDir1 = vec3(0., 0., 1.);
vec3 halfVec1 = normalize(lightDir1 + eye);
vec4 lighteffect = vec4(emission, 0.);
vec3 n = normalize(vNormal);
n = -faceforward(n, n, eye);
vec3 col1 = ambient1;
float nDotL1 = dot(n, lightDir1);
col1 = col1 + max(nDotL1, 0.) * colDiff1.rgb;
col1 = col1 + pow(max(dot(halfVec1, n), 0.), shininess1) * specular1;
lighteffect = lighteffect + vec4(col1, colDiff1.a);
gl_FragColor = lighteffect;
}
</script> 
<!-- ****** quads object 49 ****** -->
<script id="unnamed_chunk_2vshader49" type="x-shader/x-vertex">
attribute vec3 aPos;
attribute vec4 aCol;
uniform mat4 mvMatrix;
uniform mat4 prMatrix;
varying vec4 vCol;
varying vec4 vPosition;
attribute vec3 aNorm;
uniform mat4 normMatrix;
varying vec3 vNormal;
void main(void) {
vPosition = mvMatrix * vec4(aPos, 1.);
gl_Position = prMatrix * vPosition;
vCol = aCol;
vNormal = normalize((normMatrix * vec4(aNorm, 1.)).xyz);
}
</script>
<script id="unnamed_chunk_2fshader49" type="x-shader/x-fragment"> 
#ifdef GL_ES
precision highp float;
#endif
varying vec4 vCol; // carries alpha
varying vec4 vPosition;
varying vec3 vNormal;
void main(void) {
vec3 eye = normalize(-vPosition.xyz);
const vec3 emission = vec3(0., 0., 0.);
const vec3 ambient1 = vec3(0., 0., 0.);
const vec3 specular1 = vec3(1., 1., 1.);// light*material
const float shininess1 = 50.;
vec4 colDiff1 = vec4(vCol.rgb * vec3(1., 1., 1.), vCol.a);
const vec3 lightDir1 = vec3(0., 0., 1.);
vec3 halfVec1 = normalize(lightDir1 + eye);
vec4 lighteffect = vec4(emission, 0.);
vec3 n = normalize(vNormal);
n = -faceforward(n, n, eye);
vec3 col1 = ambient1;
float nDotL1 = dot(n, lightDir1);
col1 = col1 + max(nDotL1, 0.) * colDiff1.rgb;
col1 = col1 + pow(max(dot(halfVec1, n), 0.), shininess1) * specular1;
lighteffect = lighteffect + vec4(col1, colDiff1.a);
gl_FragColor = lighteffect;
}
</script> 
<!-- ****** quads object 50 ****** -->
<script id="unnamed_chunk_2vshader50" type="x-shader/x-vertex">
attribute vec3 aPos;
attribute vec4 aCol;
uniform mat4 mvMatrix;
uniform mat4 prMatrix;
varying vec4 vCol;
varying vec4 vPosition;
attribute vec3 aNorm;
uniform mat4 normMatrix;
varying vec3 vNormal;
void main(void) {
vPosition = mvMatrix * vec4(aPos, 1.);
gl_Position = prMatrix * vPosition;
vCol = aCol;
vNormal = normalize((normMatrix * vec4(aNorm, 1.)).xyz);
}
</script>
<script id="unnamed_chunk_2fshader50" type="x-shader/x-fragment"> 
#ifdef GL_ES
precision highp float;
#endif
varying vec4 vCol; // carries alpha
varying vec4 vPosition;
varying vec3 vNormal;
void main(void) {
vec3 eye = normalize(-vPosition.xyz);
const vec3 emission = vec3(0., 0., 0.);
const vec3 ambient1 = vec3(0., 0., 0.);
const vec3 specular1 = vec3(1., 1., 1.);// light*material
const float shininess1 = 50.;
vec4 colDiff1 = vec4(vCol.rgb * vec3(1., 1., 1.), vCol.a);
const vec3 lightDir1 = vec3(0., 0., 1.);
vec3 halfVec1 = normalize(lightDir1 + eye);
vec4 lighteffect = vec4(emission, 0.);
vec3 n = normalize(vNormal);
n = -faceforward(n, n, eye);
vec3 col1 = ambient1;
float nDotL1 = dot(n, lightDir1);
col1 = col1 + max(nDotL1, 0.) * colDiff1.rgb;
col1 = col1 + pow(max(dot(halfVec1, n), 0.), shininess1) * specular1;
lighteffect = lighteffect + vec4(col1, colDiff1.a);
gl_FragColor = lighteffect;
}
</script> 
<!-- ****** quads object 51 ****** -->
<script id="unnamed_chunk_2vshader51" type="x-shader/x-vertex">
attribute vec3 aPos;
attribute vec4 aCol;
uniform mat4 mvMatrix;
uniform mat4 prMatrix;
varying vec4 vCol;
varying vec4 vPosition;
attribute vec3 aNorm;
uniform mat4 normMatrix;
varying vec3 vNormal;
void main(void) {
vPosition = mvMatrix * vec4(aPos, 1.);
gl_Position = prMatrix * vPosition;
vCol = aCol;
vNormal = normalize((normMatrix * vec4(aNorm, 1.)).xyz);
}
</script>
<script id="unnamed_chunk_2fshader51" type="x-shader/x-fragment"> 
#ifdef GL_ES
precision highp float;
#endif
varying vec4 vCol; // carries alpha
varying vec4 vPosition;
varying vec3 vNormal;
void main(void) {
vec3 eye = normalize(-vPosition.xyz);
const vec3 emission = vec3(0., 0., 0.);
const vec3 ambient1 = vec3(0., 0., 0.);
const vec3 specular1 = vec3(1., 1., 1.);// light*material
const float shininess1 = 50.;
vec4 colDiff1 = vec4(vCol.rgb * vec3(1., 1., 1.), vCol.a);
const vec3 lightDir1 = vec3(0., 0., 1.);
vec3 halfVec1 = normalize(lightDir1 + eye);
vec4 lighteffect = vec4(emission, 0.);
vec3 n = normalize(vNormal);
n = -faceforward(n, n, eye);
vec3 col1 = ambient1;
float nDotL1 = dot(n, lightDir1);
col1 = col1 + max(nDotL1, 0.) * colDiff1.rgb;
col1 = col1 + pow(max(dot(halfVec1, n), 0.), shininess1) * specular1;
lighteffect = lighteffect + vec4(col1, colDiff1.a);
gl_FragColor = lighteffect;
}
</script> 
<!-- ****** quads object 52 ****** -->
<script id="unnamed_chunk_2vshader52" type="x-shader/x-vertex">
attribute vec3 aPos;
attribute vec4 aCol;
uniform mat4 mvMatrix;
uniform mat4 prMatrix;
varying vec4 vCol;
varying vec4 vPosition;
attribute vec3 aNorm;
uniform mat4 normMatrix;
varying vec3 vNormal;
void main(void) {
vPosition = mvMatrix * vec4(aPos, 1.);
gl_Position = prMatrix * vPosition;
vCol = aCol;
vNormal = normalize((normMatrix * vec4(aNorm, 1.)).xyz);
}
</script>
<script id="unnamed_chunk_2fshader52" type="x-shader/x-fragment"> 
#ifdef GL_ES
precision highp float;
#endif
varying vec4 vCol; // carries alpha
varying vec4 vPosition;
varying vec3 vNormal;
void main(void) {
vec3 eye = normalize(-vPosition.xyz);
const vec3 emission = vec3(0., 0., 0.);
const vec3 ambient1 = vec3(0., 0., 0.);
const vec3 specular1 = vec3(1., 1., 1.);// light*material
const float shininess1 = 50.;
vec4 colDiff1 = vec4(vCol.rgb * vec3(1., 1., 1.), vCol.a);
const vec3 lightDir1 = vec3(0., 0., 1.);
vec3 halfVec1 = normalize(lightDir1 + eye);
vec4 lighteffect = vec4(emission, 0.);
vec3 n = normalize(vNormal);
n = -faceforward(n, n, eye);
vec3 col1 = ambient1;
float nDotL1 = dot(n, lightDir1);
col1 = col1 + max(nDotL1, 0.) * colDiff1.rgb;
col1 = col1 + pow(max(dot(halfVec1, n), 0.), shininess1) * specular1;
lighteffect = lighteffect + vec4(col1, colDiff1.a);
gl_FragColor = lighteffect;
}
</script> 
<!-- ****** quads object 53 ****** -->
<script id="unnamed_chunk_2vshader53" type="x-shader/x-vertex">
attribute vec3 aPos;
attribute vec4 aCol;
uniform mat4 mvMatrix;
uniform mat4 prMatrix;
varying vec4 vCol;
varying vec4 vPosition;
attribute vec3 aNorm;
uniform mat4 normMatrix;
varying vec3 vNormal;
void main(void) {
vPosition = mvMatrix * vec4(aPos, 1.);
gl_Position = prMatrix * vPosition;
vCol = aCol;
vNormal = normalize((normMatrix * vec4(aNorm, 1.)).xyz);
}
</script>
<script id="unnamed_chunk_2fshader53" type="x-shader/x-fragment"> 
#ifdef GL_ES
precision highp float;
#endif
varying vec4 vCol; // carries alpha
varying vec4 vPosition;
varying vec3 vNormal;
void main(void) {
vec3 eye = normalize(-vPosition.xyz);
const vec3 emission = vec3(0., 0., 0.);
const vec3 ambient1 = vec3(0., 0., 0.);
const vec3 specular1 = vec3(1., 1., 1.);// light*material
const float shininess1 = 50.;
vec4 colDiff1 = vec4(vCol.rgb * vec3(1., 1., 1.), vCol.a);
const vec3 lightDir1 = vec3(0., 0., 1.);
vec3 halfVec1 = normalize(lightDir1 + eye);
vec4 lighteffect = vec4(emission, 0.);
vec3 n = normalize(vNormal);
n = -faceforward(n, n, eye);
vec3 col1 = ambient1;
float nDotL1 = dot(n, lightDir1);
col1 = col1 + max(nDotL1, 0.) * colDiff1.rgb;
col1 = col1 + pow(max(dot(halfVec1, n), 0.), shininess1) * specular1;
lighteffect = lighteffect + vec4(col1, colDiff1.a);
gl_FragColor = lighteffect;
}
</script> 
<!-- ****** quads object 54 ****** -->
<script id="unnamed_chunk_2vshader54" type="x-shader/x-vertex">
attribute vec3 aPos;
attribute vec4 aCol;
uniform mat4 mvMatrix;
uniform mat4 prMatrix;
varying vec4 vCol;
varying vec4 vPosition;
attribute vec3 aNorm;
uniform mat4 normMatrix;
varying vec3 vNormal;
void main(void) {
vPosition = mvMatrix * vec4(aPos, 1.);
gl_Position = prMatrix * vPosition;
vCol = aCol;
vNormal = normalize((normMatrix * vec4(aNorm, 1.)).xyz);
}
</script>
<script id="unnamed_chunk_2fshader54" type="x-shader/x-fragment"> 
#ifdef GL_ES
precision highp float;
#endif
varying vec4 vCol; // carries alpha
varying vec4 vPosition;
varying vec3 vNormal;
void main(void) {
vec3 eye = normalize(-vPosition.xyz);
const vec3 emission = vec3(0., 0., 0.);
const vec3 ambient1 = vec3(0., 0., 0.);
const vec3 specular1 = vec3(1., 1., 1.);// light*material
const float shininess1 = 50.;
vec4 colDiff1 = vec4(vCol.rgb * vec3(1., 1., 1.), vCol.a);
const vec3 lightDir1 = vec3(0., 0., 1.);
vec3 halfVec1 = normalize(lightDir1 + eye);
vec4 lighteffect = vec4(emission, 0.);
vec3 n = normalize(vNormal);
n = -faceforward(n, n, eye);
vec3 col1 = ambient1;
float nDotL1 = dot(n, lightDir1);
col1 = col1 + max(nDotL1, 0.) * colDiff1.rgb;
col1 = col1 + pow(max(dot(halfVec1, n), 0.), shininess1) * specular1;
lighteffect = lighteffect + vec4(col1, colDiff1.a);
gl_FragColor = lighteffect;
}
</script> 
<!-- ****** quads object 55 ****** -->
<script id="unnamed_chunk_2vshader55" type="x-shader/x-vertex">
attribute vec3 aPos;
attribute vec4 aCol;
uniform mat4 mvMatrix;
uniform mat4 prMatrix;
varying vec4 vCol;
varying vec4 vPosition;
attribute vec3 aNorm;
uniform mat4 normMatrix;
varying vec3 vNormal;
void main(void) {
vPosition = mvMatrix * vec4(aPos, 1.);
gl_Position = prMatrix * vPosition;
vCol = aCol;
vNormal = normalize((normMatrix * vec4(aNorm, 1.)).xyz);
}
</script>
<script id="unnamed_chunk_2fshader55" type="x-shader/x-fragment"> 
#ifdef GL_ES
precision highp float;
#endif
varying vec4 vCol; // carries alpha
varying vec4 vPosition;
varying vec3 vNormal;
void main(void) {
vec3 eye = normalize(-vPosition.xyz);
const vec3 emission = vec3(0., 0., 0.);
const vec3 ambient1 = vec3(0., 0., 0.);
const vec3 specular1 = vec3(1., 1., 1.);// light*material
const float shininess1 = 50.;
vec4 colDiff1 = vec4(vCol.rgb * vec3(1., 1., 1.), vCol.a);
const vec3 lightDir1 = vec3(0., 0., 1.);
vec3 halfVec1 = normalize(lightDir1 + eye);
vec4 lighteffect = vec4(emission, 0.);
vec3 n = normalize(vNormal);
n = -faceforward(n, n, eye);
vec3 col1 = ambient1;
float nDotL1 = dot(n, lightDir1);
col1 = col1 + max(nDotL1, 0.) * colDiff1.rgb;
col1 = col1 + pow(max(dot(halfVec1, n), 0.), shininess1) * specular1;
lighteffect = lighteffect + vec4(col1, colDiff1.a);
gl_FragColor = lighteffect;
}
</script> 
<!-- ****** spheres object 56 ****** -->
<script id="unnamed_chunk_2vshader56" type="x-shader/x-vertex">
attribute vec3 aPos;
attribute vec4 aCol;
uniform mat4 mvMatrix;
uniform mat4 prMatrix;
varying vec4 vCol;
varying vec4 vPosition;
attribute vec3 aNorm;
uniform mat4 normMatrix;
varying vec3 vNormal;
void main(void) {
vPosition = mvMatrix * vec4(aPos, 1.);
gl_Position = prMatrix * vPosition;
vCol = aCol;
vNormal = normalize((normMatrix * vec4(aNorm, 1.)).xyz);
}
</script>
<script id="unnamed_chunk_2fshader56" type="x-shader/x-fragment"> 
#ifdef GL_ES
precision highp float;
#endif
varying vec4 vCol; // carries alpha
varying vec4 vPosition;
varying vec3 vNormal;
void main(void) {
vec3 eye = normalize(-vPosition.xyz);
const vec3 emission = vec3(0., 0., 0.);
const vec3 ambient1 = vec3(0., 0., 0.);
const vec3 specular1 = vec3(1., 1., 1.);// light*material
const float shininess1 = 50.;
vec4 colDiff1 = vec4(vCol.rgb * vec3(1., 1., 1.), vCol.a);
const vec3 lightDir1 = vec3(0., 0., 1.);
vec3 halfVec1 = normalize(lightDir1 + eye);
vec4 lighteffect = vec4(emission, 0.);
vec3 n = normalize(vNormal);
n = -faceforward(n, n, eye);
vec3 col1 = ambient1;
float nDotL1 = dot(n, lightDir1);
col1 = col1 + max(nDotL1, 0.) * colDiff1.rgb;
col1 = col1 + pow(max(dot(halfVec1, n), 0.), shininess1) * specular1;
lighteffect = lighteffect + vec4(col1, colDiff1.a);
gl_FragColor = lighteffect;
}
</script> 
<!-- ****** text object 57 ****** -->
<script id="unnamed_chunk_2vshader57" type="x-shader/x-vertex">
attribute vec3 aPos;
attribute vec4 aCol;
uniform mat4 mvMatrix;
uniform mat4 prMatrix;
varying vec4 vCol;
varying vec4 vPosition;
attribute vec2 aTexcoord;
varying vec2 vTexcoord;
uniform vec2 textScale;
attribute vec2 aOfs;
void main(void) {
vCol = aCol;
vTexcoord = aTexcoord;
vec4 pos = prMatrix * mvMatrix * vec4(aPos, 1.);
pos = pos/pos.w;
gl_Position = pos + vec4(aOfs*textScale, 0.,0.);
}
</script>
<script id="unnamed_chunk_2fshader57" type="x-shader/x-fragment"> 
#ifdef GL_ES
precision highp float;
#endif
varying vec4 vCol; // carries alpha
varying vec4 vPosition;
varying vec2 vTexcoord;
uniform sampler2D uSampler;
void main(void) {
vec4 colDiff = vCol;
vec4 lighteffect = colDiff;
vec4 textureColor = lighteffect*texture2D(uSampler, vTexcoord);
if (textureColor.a < 0.1)
discard;
else
gl_FragColor = textureColor;
}
</script> 
<!-- ****** text object 58 ****** -->
<script id="unnamed_chunk_2vshader58" type="x-shader/x-vertex">
attribute vec3 aPos;
attribute vec4 aCol;
uniform mat4 mvMatrix;
uniform mat4 prMatrix;
varying vec4 vCol;
varying vec4 vPosition;
attribute vec2 aTexcoord;
varying vec2 vTexcoord;
uniform vec2 textScale;
attribute vec2 aOfs;
void main(void) {
vCol = aCol;
vTexcoord = aTexcoord;
vec4 pos = prMatrix * mvMatrix * vec4(aPos, 1.);
pos = pos/pos.w;
gl_Position = pos + vec4(aOfs*textScale, 0.,0.);
}
</script>
<script id="unnamed_chunk_2fshader58" type="x-shader/x-fragment"> 
#ifdef GL_ES
precision highp float;
#endif
varying vec4 vCol; // carries alpha
varying vec4 vPosition;
varying vec2 vTexcoord;
uniform sampler2D uSampler;
void main(void) {
vec4 colDiff = vCol;
vec4 lighteffect = colDiff;
vec4 textureColor = lighteffect*texture2D(uSampler, vTexcoord);
if (textureColor.a < 0.1)
discard;
else
gl_FragColor = textureColor;
}
</script> 
<!-- ****** text object 59 ****** -->
<script id="unnamed_chunk_2vshader59" type="x-shader/x-vertex">
attribute vec3 aPos;
attribute vec4 aCol;
uniform mat4 mvMatrix;
uniform mat4 prMatrix;
varying vec4 vCol;
varying vec4 vPosition;
attribute vec2 aTexcoord;
varying vec2 vTexcoord;
uniform vec2 textScale;
attribute vec2 aOfs;
void main(void) {
vCol = aCol;
vTexcoord = aTexcoord;
vec4 pos = prMatrix * mvMatrix * vec4(aPos, 1.);
pos = pos/pos.w;
gl_Position = pos + vec4(aOfs*textScale, 0.,0.);
}
</script>
<script id="unnamed_chunk_2fshader59" type="x-shader/x-fragment"> 
#ifdef GL_ES
precision highp float;
#endif
varying vec4 vCol; // carries alpha
varying vec4 vPosition;
varying vec2 vTexcoord;
uniform sampler2D uSampler;
void main(void) {
vec4 colDiff = vCol;
vec4 lighteffect = colDiff;
vec4 textureColor = lighteffect*texture2D(uSampler, vTexcoord);
if (textureColor.a < 0.1)
discard;
else
gl_FragColor = textureColor;
}
</script> 
<script type="text/javascript">
function getShader ( gl, id ){
var shaderScript = document.getElementById ( id );
var str = "";
var k = shaderScript.firstChild;
while ( k ){
if ( k.nodeType == 3 ) str += k.textContent;
k = k.nextSibling;
}
var shader;
if ( shaderScript.type == "x-shader/x-fragment" )
shader = gl.createShader ( gl.FRAGMENT_SHADER );
else if ( shaderScript.type == "x-shader/x-vertex" )
shader = gl.createShader(gl.VERTEX_SHADER);
else return null;
gl.shaderSource(shader, str);
gl.compileShader(shader);
if (gl.getShaderParameter(shader, gl.COMPILE_STATUS) == 0)
alert(gl.getShaderInfoLog(shader));
return shader;
}
var min = Math.min;
var max = Math.max;
var sqrt = Math.sqrt;
var sin = Math.sin;
var acos = Math.acos;
var tan = Math.tan;
var SQRT2 = Math.SQRT2;
var PI = Math.PI;
var log = Math.log;
var exp = Math.exp;
function unnamed_chunk_2webGLStart() {
var debug = function(msg) {
document.getElementById("unnamed_chunk_2debug").innerHTML = msg;
}
debug("");
var canvas = document.getElementById("unnamed_chunk_2canvas");
if (!window.WebGLRenderingContext){
debug(" Your browser does not support WebGL. See <a href=\"http://get.webgl.org\">http://get.webgl.org</a>");
return;
}
var gl;
try {
// Try to grab the standard context. If it fails, fallback to experimental.
gl = canvas.getContext("webgl") 
|| canvas.getContext("experimental-webgl");
}
catch(e) {}
if ( !gl ) {
debug(" Your browser appears to support WebGL, but did not create a WebGL context.  See <a href=\"http://get.webgl.org\">http://get.webgl.org</a>");
return;
}
var width = 505;  var height = 505;
canvas.width = width;   canvas.height = height;
var prMatrix = new CanvasMatrix4();
var mvMatrix = new CanvasMatrix4();
var normMatrix = new CanvasMatrix4();
var saveMat = new Object();
var distance;
var posLoc = 0;
var colLoc = 1;
var zoom = new Object();
var fov = new Object();
var userMatrix = new Object();
var activeSubscene = 1;
zoom[1] = 1;
fov[1] = 30;
userMatrix[1] = new CanvasMatrix4();
userMatrix[1].load([
1, 0, 0, 0,
0, 0.3420201, -0.9396926, 0,
0, 0.9396926, 0.3420201, 0,
0, 0, 0, 1
]);
function getPowerOfTwo(value) {
var pow = 1;
while(pow<value) {
pow *= 2;
}
return pow;
}
function handleLoadedTexture(texture, textureCanvas) {
gl.pixelStorei(gl.UNPACK_FLIP_Y_WEBGL, true);
gl.bindTexture(gl.TEXTURE_2D, texture);
gl.texImage2D(gl.TEXTURE_2D, 0, gl.RGBA, gl.RGBA, gl.UNSIGNED_BYTE, textureCanvas);
gl.texParameteri(gl.TEXTURE_2D, gl.TEXTURE_MAG_FILTER, gl.LINEAR);
gl.texParameteri(gl.TEXTURE_2D, gl.TEXTURE_MIN_FILTER, gl.LINEAR_MIPMAP_NEAREST);
gl.generateMipmap(gl.TEXTURE_2D);
gl.bindTexture(gl.TEXTURE_2D, null);
}
function loadImageToTexture(filename, texture) {   
var canvas = document.getElementById("unnamed_chunk_2textureCanvas");
var ctx = canvas.getContext("2d");
var image = new Image();
image.onload = function() {
var w = image.width;
var h = image.height;
var canvasX = getPowerOfTwo(w);
var canvasY = getPowerOfTwo(h);
canvas.width = canvasX;
canvas.height = canvasY;
ctx.imageSmoothingEnabled = true;
ctx.drawImage(image, 0, 0, canvasX, canvasY);
handleLoadedTexture(texture, canvas);
drawScene();
}
image.src = filename;
}  	   
function drawTextToCanvas(text, cex) {
var canvasX, canvasY;
var textX, textY;
var textHeight = 20 * cex;
var textColour = "white";
var fontFamily = "Arial";
var backgroundColour = "rgba(0,0,0,0)";
var canvas = document.getElementById("unnamed_chunk_2textureCanvas");
var ctx = canvas.getContext("2d");
ctx.font = textHeight+"px "+fontFamily;
canvasX = 1;
var widths = [];
for (var i = 0; i < text.length; i++)  {
widths[i] = ctx.measureText(text[i]).width;
canvasX = (widths[i] > canvasX) ? widths[i] : canvasX;
}	  
canvasX = getPowerOfTwo(canvasX);
var offset = 2*textHeight; // offset to first baseline
var skip = 2*textHeight;   // skip between baselines	  
canvasY = getPowerOfTwo(offset + text.length*skip);
canvas.width = canvasX;
canvas.height = canvasY;
ctx.fillStyle = backgroundColour;
ctx.fillRect(0, 0, ctx.canvas.width, ctx.canvas.height);
ctx.fillStyle = textColour;
ctx.textAlign = "left";
ctx.textBaseline = "alphabetic";
ctx.font = textHeight+"px "+fontFamily;
for(var i = 0; i < text.length; i++) {
textY = i*skip + offset;
ctx.fillText(text[i], 0,  textY);
}
return {canvasX:canvasX, canvasY:canvasY,
widths:widths, textHeight:textHeight,
offset:offset, skip:skip};
}
// ****** sphere object ******
var v=new Float32Array([
-1, 0, 0,
1, 0, 0,
0, -1, 0,
0, 1, 0,
0, 0, -1,
0, 0, 1,
-0.7071068, 0, -0.7071068,
-0.7071068, -0.7071068, 0,
0, -0.7071068, -0.7071068,
-0.7071068, 0, 0.7071068,
0, -0.7071068, 0.7071068,
-0.7071068, 0.7071068, 0,
0, 0.7071068, -0.7071068,
0, 0.7071068, 0.7071068,
0.7071068, -0.7071068, 0,
0.7071068, 0, -0.7071068,
0.7071068, 0, 0.7071068,
0.7071068, 0.7071068, 0,
-0.9349975, 0, -0.3546542,
-0.9349975, -0.3546542, 0,
-0.77044, -0.4507894, -0.4507894,
0, -0.3546542, -0.9349975,
-0.3546542, 0, -0.9349975,
-0.4507894, -0.4507894, -0.77044,
-0.3546542, -0.9349975, 0,
0, -0.9349975, -0.3546542,
-0.4507894, -0.77044, -0.4507894,
-0.9349975, 0, 0.3546542,
-0.77044, -0.4507894, 0.4507894,
0, -0.9349975, 0.3546542,
-0.4507894, -0.77044, 0.4507894,
-0.3546542, 0, 0.9349975,
0, -0.3546542, 0.9349975,
-0.4507894, -0.4507894, 0.77044,
-0.9349975, 0.3546542, 0,
-0.77044, 0.4507894, -0.4507894,
0, 0.9349975, -0.3546542,
-0.3546542, 0.9349975, 0,
-0.4507894, 0.77044, -0.4507894,
0, 0.3546542, -0.9349975,
-0.4507894, 0.4507894, -0.77044,
-0.77044, 0.4507894, 0.4507894,
0, 0.3546542, 0.9349975,
-0.4507894, 0.4507894, 0.77044,
0, 0.9349975, 0.3546542,
-0.4507894, 0.77044, 0.4507894,
0.9349975, -0.3546542, 0,
0.9349975, 0, -0.3546542,
0.77044, -0.4507894, -0.4507894,
0.3546542, -0.9349975, 0,
0.4507894, -0.77044, -0.4507894,
0.3546542, 0, -0.9349975,
0.4507894, -0.4507894, -0.77044,
0.9349975, 0, 0.3546542,
0.77044, -0.4507894, 0.4507894,
0.3546542, 0, 0.9349975,
0.4507894, -0.4507894, 0.77044,
0.4507894, -0.77044, 0.4507894,
0.9349975, 0.3546542, 0,
0.77044, 0.4507894, -0.4507894,
0.4507894, 0.4507894, -0.77044,
0.3546542, 0.9349975, 0,
0.4507894, 0.77044, -0.4507894,
0.77044, 0.4507894, 0.4507894,
0.4507894, 0.77044, 0.4507894,
0.4507894, 0.4507894, 0.77044
]);
var f=new Uint16Array([
0, 18, 19,
6, 20, 18,
7, 19, 20,
19, 18, 20,
4, 21, 22,
8, 23, 21,
6, 22, 23,
22, 21, 23,
2, 24, 25,
7, 26, 24,
8, 25, 26,
25, 24, 26,
7, 20, 26,
6, 23, 20,
8, 26, 23,
26, 20, 23,
0, 19, 27,
7, 28, 19,
9, 27, 28,
27, 19, 28,
2, 29, 24,
10, 30, 29,
7, 24, 30,
24, 29, 30,
5, 31, 32,
9, 33, 31,
10, 32, 33,
32, 31, 33,
9, 28, 33,
7, 30, 28,
10, 33, 30,
33, 28, 30,
0, 34, 18,
11, 35, 34,
6, 18, 35,
18, 34, 35,
3, 36, 37,
12, 38, 36,
11, 37, 38,
37, 36, 38,
4, 22, 39,
6, 40, 22,
12, 39, 40,
39, 22, 40,
6, 35, 40,
11, 38, 35,
12, 40, 38,
40, 35, 38,
0, 27, 34,
9, 41, 27,
11, 34, 41,
34, 27, 41,
5, 42, 31,
13, 43, 42,
9, 31, 43,
31, 42, 43,
3, 37, 44,
11, 45, 37,
13, 44, 45,
44, 37, 45,
11, 41, 45,
9, 43, 41,
13, 45, 43,
45, 41, 43,
1, 46, 47,
14, 48, 46,
15, 47, 48,
47, 46, 48,
2, 25, 49,
8, 50, 25,
14, 49, 50,
49, 25, 50,
4, 51, 21,
15, 52, 51,
8, 21, 52,
21, 51, 52,
15, 48, 52,
14, 50, 48,
8, 52, 50,
52, 48, 50,
1, 53, 46,
16, 54, 53,
14, 46, 54,
46, 53, 54,
5, 32, 55,
10, 56, 32,
16, 55, 56,
55, 32, 56,
2, 49, 29,
14, 57, 49,
10, 29, 57,
29, 49, 57,
14, 54, 57,
16, 56, 54,
10, 57, 56,
57, 54, 56,
1, 47, 58,
15, 59, 47,
17, 58, 59,
58, 47, 59,
4, 39, 51,
12, 60, 39,
15, 51, 60,
51, 39, 60,
3, 61, 36,
17, 62, 61,
12, 36, 62,
36, 61, 62,
17, 59, 62,
15, 60, 59,
12, 62, 60,
62, 59, 60,
1, 58, 53,
17, 63, 58,
16, 53, 63,
53, 58, 63,
3, 44, 61,
13, 64, 44,
17, 61, 64,
61, 44, 64,
5, 55, 42,
16, 65, 55,
13, 42, 65,
42, 55, 65,
16, 63, 65,
17, 64, 63,
13, 65, 64,
65, 63, 64
]);
var sphereBuf = gl.createBuffer();
gl.bindBuffer(gl.ARRAY_BUFFER, sphereBuf);
gl.bufferData(gl.ARRAY_BUFFER, v, gl.STATIC_DRAW);
var sphereIbuf = gl.createBuffer();
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, sphereIbuf);
gl.bufferData(gl.ELEMENT_ARRAY_BUFFER, f, gl.STATIC_DRAW);
// ****** quads object 7 ******
var prog7  = gl.createProgram();
gl.attachShader(prog7, getShader( gl, "unnamed_chunk_2vshader7" ));
gl.attachShader(prog7, getShader( gl, "unnamed_chunk_2fshader7" ));
//  Force aPos to location 0, aCol to location 1 
gl.bindAttribLocation(prog7, 0, "aPos");
gl.bindAttribLocation(prog7, 1, "aCol");
gl.linkProgram(prog7);
var v=new Float32Array([
0.05506905, -0.01144173, 0.09156785, -0.4835756, 0.8444881, -0.2302054,
0.04765112, -0.01568943, 0.09156785, -0.4835756, 0.8444881, -0.2302054,
0.04667327, -0.01398178, 0.09988629, -0.4835756, 0.8444881, -0.2302054,
0.05409121, -0.009734081, 0.09988629, -0.4835756, 0.8444881, -0.2302054,
0.3769702, -0.5735908, 0.2448084, -0.4835725, 0.8444909, -0.2302017,
0.3695523, -0.5778384, 0.2448084, -0.4835725, 0.8444909, -0.2302017,
0.3685744, -0.5761308, 0.2531269, -0.4835725, 0.8444909, -0.2302017,
0.3759924, -0.5718831, 0.2531269, -0.4835725, 0.8444909, -0.2302017,
0.05506905, -0.01144173, 0.09156785, -0.1143942, 0.1997713, 0.973142,
0.04765112, -0.01568943, 0.09156785, -0.1143942, 0.1997713, 0.973142,
0.3695523, -0.5778384, 0.2448084, -0.1143942, 0.1997713, 0.973142,
0.3769702, -0.5735908, 0.2448084, -0.1143942, 0.1997713, 0.973142,
0.04765112, -0.01568943, 0.09156785, 0.8677952, 0.4969221, 3.068865e-08,
0.04667327, -0.01398178, 0.09988629, 0.8677952, 0.4969221, 3.068865e-08,
0.3685744, -0.5761308, 0.2531269, 0.8677952, 0.4969221, 3.068865e-08,
0.3695523, -0.5778384, 0.2448084, 0.8677952, 0.4969221, 3.068865e-08,
0.04667327, -0.01398178, 0.09988629, 0.1143942, -0.1997713, -0.973142,
0.05409121, -0.009734081, 0.09988629, 0.1143942, -0.1997713, -0.973142,
0.3759924, -0.5718831, 0.2531269, 0.1143942, -0.1997713, -0.973142,
0.3685744, -0.5761308, 0.2531269, 0.1143942, -0.1997713, -0.973142,
0.05409121, -0.009734081, 0.09988629, -0.8677952, -0.4969221, 2.04591e-08,
0.05506905, -0.01144173, 0.09156785, -0.8677952, -0.4969221, 2.04591e-08,
0.3769702, -0.5735908, 0.2448084, -0.8677952, -0.4969221, 2.04591e-08,
0.3759924, -0.5718831, 0.2531269, -0.8677952, -0.4969221, 2.04591e-08,
0.0516078, -0.01248889, 0.09499722, -0.4835762, 0.8444876, -0.2302056,
0.05030611, -0.01323428, 0.09499722, -0.4835762, 0.8444876, -0.2302056,
0.05013452, -0.01293462, 0.09645693, -0.4835762, 0.8444876, -0.2302056,
0.05143621, -0.01218924, 0.09645693, -0.4835762, 0.8444876, -0.2302056,
0.0516078, -0.01248889, 0.09499722, -0.6427478, -0.7618016, 0.08083078,
0.05143621, -0.01218924, 0.09645693, -0.6427478, -0.7618016, 0.08083078,
0.04990401, -0.01102278, 0.09526666, -0.6427478, -0.7618016, 0.08083078,
0.04990401, -0.01102278, 0.09526666, -0.6427478, -0.7618016, 0.08083078,
0.0516078, -0.01248889, 0.09499722, -0.06268361, 0.1094668, -0.992012,
0.05030611, -0.01323428, 0.09499722, -0.06268361, 0.1094668, -0.992012,
0.04990401, -0.01102278, 0.09526666, -0.06268361, 0.1094668, -0.992012,
0.04990401, -0.01102278, 0.09526666, -0.06268361, 0.1094668, -0.992012,
0.05030611, -0.01323428, 0.09499722, -0.9823368, -0.1687631, -0.08083026,
0.05013452, -0.01293462, 0.09645693, -0.9823368, -0.1687631, -0.08083026,
0.04990401, -0.01102278, 0.09526666, -0.9823368, -0.1687631, -0.08083026,
0.04990401, -0.01102278, 0.09526666, -0.9823368, -0.1687631, -0.08083026,
0.05013452, -0.01293462, 0.09645693, -0.2769057, 0.483571, 0.8303508,
0.05143621, -0.01218924, 0.09645693, -0.2769057, 0.483571, 0.8303508,
0.04990401, -0.01102278, 0.09526666, -0.2769057, 0.483571, 0.8303508,
0.04990401, -0.01102278, 0.09526666, -0.2769057, 0.483571, 0.8303508
]);
var normLoc7 = gl.getAttribLocation(prog7, "aNorm");
var f=new Uint16Array([
0, 1, 2, 0, 2, 3,
4, 5, 6, 4, 6, 7,
8, 9, 10, 8, 10, 11,
12, 13, 14, 12, 14, 15,
16, 17, 18, 16, 18, 19,
20, 21, 22, 20, 22, 23,
24, 25, 26, 24, 26, 27,
28, 29, 30, 28, 30, 31,
32, 33, 34, 32, 34, 35,
36, 37, 38, 36, 38, 39,
40, 41, 42, 40, 42, 43
]);
var buf7 = gl.createBuffer();
gl.bindBuffer(gl.ARRAY_BUFFER, buf7);
gl.bufferData(gl.ARRAY_BUFFER, v, gl.STATIC_DRAW);
var ibuf7 = gl.createBuffer();
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, ibuf7);
gl.bufferData(gl.ELEMENT_ARRAY_BUFFER, f, gl.STATIC_DRAW);
var mvMatLoc7 = gl.getUniformLocation(prog7,"mvMatrix");
var prMatLoc7 = gl.getUniformLocation(prog7,"prMatrix");
var normMatLoc7 = gl.getUniformLocation(prog7,"normMatrix");
// ****** quads object 8 ******
var prog8  = gl.createProgram();
gl.attachShader(prog8, getShader( gl, "unnamed_chunk_2vshader8" ));
gl.attachShader(prog8, getShader( gl, "unnamed_chunk_2fshader8" ));
//  Force aPos to location 0, aCol to location 1 
gl.bindAttribLocation(prog8, 0, "aPos");
gl.bindAttribLocation(prog8, 1, "aCol");
gl.linkProgram(prog8);
var v=new Float32Array([
0.4414288, -0.9151486, 0.4070031, 0.1868457, -0.8874615, 0.4213081,
0.4471543, -0.9139431, 0.4070031, 0.1868457, -0.8874615, 0.4213081,
0.4466465, -0.9115309, 0.4123095, 0.1868457, -0.8874615, 0.4213081,
0.440921, -0.9127364, 0.4123095, 0.1868457, -0.8874615, 0.4213081,
0.3701635, -0.5766696, 0.2463144, 0.1868456, -0.8874612, 0.421309,
0.375889, -0.5754641, 0.2463144, 0.1868456, -0.8874612, 0.421309,
0.3753811, -0.5730519, 0.2516208, 0.1868456, -0.8874612, 0.421309,
0.3696556, -0.5742574, 0.2516208, 0.1868456, -0.8874612, 0.421309,
0.4414288, -0.9151486, 0.4070031, -0.08679954, 0.412272, 0.9069166,
0.4471543, -0.9139431, 0.4070031, -0.08679954, 0.412272, 0.9069166,
0.375889, -0.5754641, 0.2463144, -0.08679954, 0.412272, 0.9069166,
0.3701635, -0.5766696, 0.2463144, -0.08679954, 0.412272, 0.9069166,
0.4471543, -0.9139431, 0.4070031, -0.9785461, -0.2060276, 2.621389e-06,
0.4466465, -0.9115309, 0.4123095, -0.9785461, -0.2060276, 2.621389e-06,
0.3753811, -0.5730519, 0.2516208, -0.9785461, -0.2060276, 2.621389e-06,
0.375889, -0.5754641, 0.2463144, -0.9785461, -0.2060276, 2.621389e-06,
0.4466465, -0.9115309, 0.4123095, 0.08679954, -0.412272, -0.9069166,
0.440921, -0.9127364, 0.4123095, 0.08679954, -0.412272, -0.9069166,
0.3696556, -0.5742574, 0.2516208, 0.08679954, -0.412272, -0.9069166,
0.3753811, -0.5730519, 0.2516208, 0.08679954, -0.412272, -0.9069166,
0.440921, -0.9127364, 0.4123095, 0.9785461, 0.2060275, -2.588784e-06,
0.4414288, -0.9151486, 0.4070031, 0.9785461, 0.2060275, -2.588784e-06,
0.3701635, -0.5766696, 0.2463144, 0.9785461, 0.2060275, -2.588784e-06,
0.3696556, -0.5742574, 0.2516208, 0.9785461, 0.2060275, -2.588784e-06,
0.4433689, -0.9138035, 0.4089761, 0.186855, -0.8874621, 0.4213028,
0.4448367, -0.9134944, 0.4089761, 0.186855, -0.8874621, 0.4213028,
0.4447065, -0.912876, 0.4103365, 0.186855, -0.8874621, 0.4213028,
0.4432386, -0.9131851, 0.4103365, 0.186855, -0.8874621, 0.4213028,
0.4433689, -0.9138035, 0.4089761, 0.8506293, 0.5045262, -0.1479291,
0.4432386, -0.9131851, 0.4103365, 0.8506293, 0.5045262, -0.1479291,
0.4444114, -0.9151146, 0.4104989, 0.8506293, 0.5045262, -0.1479291,
0.4444114, -0.9151146, 0.4104989, 0.8506293, 0.5045262, -0.1479291,
0.4433689, -0.9138035, 0.4089761, 0.1468861, -0.6976309, -0.7012386,
0.4448367, -0.9134944, 0.4089761, 0.1468861, -0.6976309, -0.7012386,
0.4444114, -0.9151146, 0.4104989, 0.1468861, -0.6976309, -0.7012386,
0.4444114, -0.9151146, 0.4104989, 0.1468861, -0.6976309, -0.7012386,
0.4448367, -0.9134944, 0.4089761, 0.9818488, -0.1186969, 0.1479321,
0.4447065, -0.912876, 0.4103365, 0.9818488, -0.1186969, 0.1479321,
0.4444114, -0.9151146, 0.4104989, 0.9818488, -0.1186969, 0.1479321,
0.4444114, -0.9151146, 0.4104989, 0.9818488, -0.1186969, 0.1479321,
0.4447065, -0.912876, 0.4103365, -0.01566694, 0.07440964, 0.9971047,
0.4432386, -0.9131851, 0.4103365, -0.01566694, 0.07440964, 0.9971047,
0.4444114, -0.9151146, 0.4104989, -0.01566694, 0.07440964, 0.9971047,
0.4444114, -0.9151146, 0.4104989, -0.01566694, 0.07440964, 0.9971047
]);
var normLoc8 = gl.getAttribLocation(prog8, "aNorm");
var f=new Uint16Array([
0, 1, 2, 0, 2, 3,
4, 5, 6, 4, 6, 7,
8, 9, 10, 8, 10, 11,
12, 13, 14, 12, 14, 15,
16, 17, 18, 16, 18, 19,
20, 21, 22, 20, 22, 23,
24, 25, 26, 24, 26, 27,
28, 29, 30, 28, 30, 31,
32, 33, 34, 32, 34, 35,
36, 37, 38, 36, 38, 39,
40, 41, 42, 40, 42, 43
]);
var buf8 = gl.createBuffer();
gl.bindBuffer(gl.ARRAY_BUFFER, buf8);
gl.bufferData(gl.ARRAY_BUFFER, v, gl.STATIC_DRAW);
var ibuf8 = gl.createBuffer();
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, ibuf8);
gl.bufferData(gl.ELEMENT_ARRAY_BUFFER, f, gl.STATIC_DRAW);
var mvMatLoc8 = gl.getUniformLocation(prog8,"mvMatrix");
var prMatLoc8 = gl.getUniformLocation(prog8,"prMatrix");
var normMatLoc8 = gl.getUniformLocation(prog8,"normMatrix");
// ****** quads object 9 ******
var prog9  = gl.createProgram();
gl.attachShader(prog9, getShader( gl, "unnamed_chunk_2vshader9" ));
gl.attachShader(prog9, getShader( gl, "unnamed_chunk_2fshader9" ));
//  Force aPos to location 0, aCol to location 1 
gl.bindAttribLocation(prog9, 0, "aPos");
gl.bindAttribLocation(prog9, 1, "aCol");
gl.linkProgram(prog9);
var v=new Float32Array([
-0.6127673, 0.8323246, 0.1709289, -0.6569989, 0.742291, -0.1317444,
-0.6171485, 0.8284468, 0.1709289, -0.6569989, 0.742291, -0.1317444,
-0.6176594, 0.829024, 0.1767288, -0.6569989, 0.742291, -0.1317444,
-0.6132782, 0.8329018, 0.1767288, -0.6569989, 0.742291, -0.1317444,
-0.3558683, 0.5420725, 0.2224445, -0.6569932, 0.7422959, -0.1317447,
-0.3602495, 0.5381948, 0.2224445, -0.6569932, 0.7422959, -0.1317447,
-0.3607604, 0.538772, 0.2282443, -0.6569932, 0.7422959, -0.1317447,
-0.3563792, 0.5426497, 0.2282443, -0.6569932, 0.7422959, -0.1317447,
-0.6127673, 0.8323246, 0.1709289, -0.0873183, 0.09865402, 0.9912835,
-0.6171485, 0.8284468, 0.1709289, -0.0873183, 0.09865402, 0.9912835,
-0.3602495, 0.5381948, 0.2224445, -0.0873183, 0.09865402, 0.9912835,
-0.3558683, 0.5420725, 0.2224445, -0.0873183, 0.09865402, 0.9912835,
-0.6171485, 0.8284468, 0.1709289, 0.7488205, 0.6627728, -1.551992e-06,
-0.6176594, 0.829024, 0.1767288, 0.7488205, 0.6627728, -1.551992e-06,
-0.3607604, 0.538772, 0.2282443, 0.7488205, 0.6627728, -1.551992e-06,
-0.3602495, 0.5381948, 0.2224445, 0.7488205, 0.6627728, -1.551992e-06,
-0.6176594, 0.829024, 0.1767288, 0.08731827, -0.09865399, -0.9912835,
-0.6132782, 0.8329018, 0.1767288, 0.08731827, -0.09865399, -0.9912835,
-0.3563792, 0.5426497, 0.2282443, 0.08731827, -0.09865399, -0.9912835,
-0.3607604, 0.538772, 0.2282443, 0.08731827, -0.09865399, -0.9912835,
-0.6132782, 0.8329018, 0.1767288, -0.7488206, -0.6627728, 1.539271e-06,
-0.6127673, 0.8323246, 0.1709289, -0.7488206, -0.6627728, 1.539271e-06,
-0.3558683, 0.5420725, 0.2224445, -0.7488206, -0.6627728, 1.539271e-06,
-0.3563792, 0.5426497, 0.2282443, -0.7488206, -0.6627728, 1.539271e-06,
-0.6145862, 0.8310974, 0.1730854, -0.6569874, 0.7423064, -0.1317154,
-0.6157095, 0.8301033, 0.1730854, -0.6569874, 0.7423064, -0.1317154,
-0.6158404, 0.8302512, 0.1745723, -0.6569874, 0.7423064, -0.1317154,
-0.6147172, 0.8312454, 0.1745723, -0.6569874, 0.7423064, -0.1317154,
-0.6145862, 0.8310974, 0.1730854, -0.4704621, -0.8812077, 0.04624151,
-0.6147172, 0.8312454, 0.1745723, -0.4704621, -0.8812077, 0.04624151,
-0.6165273, 0.8321589, 0.1735654, -0.4704621, -0.8812077, 0.04624151,
-0.6165273, 0.8321589, 0.1735654, -0.4704621, -0.8812077, 0.04624151,
-0.6145862, 0.8310974, 0.1730854, -0.1489259, 0.168266, -0.9744269,
-0.6157095, 0.8301033, 0.1730854, -0.1489259, 0.168266, -0.9744269,
-0.6165273, 0.8321589, 0.1735654, -0.1489259, 0.168266, -0.9744269,
-0.6165273, 0.8321589, 0.1735654, -0.1489259, 0.168266, -0.9744269,
-0.6157095, 0.8301033, 0.1730854, -0.9318326, -0.3599283, -0.04625522,
-0.6158404, 0.8302512, 0.1745723, -0.9318326, -0.3599283, -0.04625522,
-0.6165273, 0.8321589, 0.1735654, -0.9318326, -0.3599283, -0.04625522,
-0.6165273, 0.8321589, 0.1735654, -0.9318326, -0.3599283, -0.04625522,
-0.6158404, 0.8302512, 0.1745723, -0.3124333, 0.3530071, 0.8819135,
-0.6147172, 0.8312454, 0.1745723, -0.3124333, 0.3530071, 0.8819135,
-0.6165273, 0.8321589, 0.1735654, -0.3124333, 0.3530071, 0.8819135,
-0.6165273, 0.8321589, 0.1735654, -0.3124333, 0.3530071, 0.8819135
]);
var normLoc9 = gl.getAttribLocation(prog9, "aNorm");
var f=new Uint16Array([
0, 1, 2, 0, 2, 3,
4, 5, 6, 4, 6, 7,
8, 9, 10, 8, 10, 11,
12, 13, 14, 12, 14, 15,
16, 17, 18, 16, 18, 19,
20, 21, 22, 20, 22, 23,
24, 25, 26, 24, 26, 27,
28, 29, 30, 28, 30, 31,
32, 33, 34, 32, 34, 35,
36, 37, 38, 36, 38, 39,
40, 41, 42, 40, 42, 43
]);
var buf9 = gl.createBuffer();
gl.bindBuffer(gl.ARRAY_BUFFER, buf9);
gl.bufferData(gl.ARRAY_BUFFER, v, gl.STATIC_DRAW);
var ibuf9 = gl.createBuffer();
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, ibuf9);
gl.bufferData(gl.ELEMENT_ARRAY_BUFFER, f, gl.STATIC_DRAW);
var mvMatLoc9 = gl.getUniformLocation(prog9,"mvMatrix");
var prMatLoc9 = gl.getUniformLocation(prog9,"prMatrix");
var normMatLoc9 = gl.getUniformLocation(prog9,"normMatrix");
// ****** quads object 10 ******
var prog10  = gl.createProgram();
gl.attachShader(prog10, getShader( gl, "unnamed_chunk_2vshader10" ));
gl.attachShader(prog10, getShader( gl, "unnamed_chunk_2fshader10" ));
//  Force aPos to location 0, aCol to location 1 
gl.bindAttribLocation(prog10, 0, "aPos");
gl.bindAttribLocation(prog10, 1, "aCol");
gl.linkProgram(prog10);
var v=new Float32Array([
0.01774325, 0.02926534, 0.09042773, 0.5862169, -0.7848206, -0.201014,
0.02512233, 0.0347771, 0.09042773, 0.5862169, -0.7848206, -0.201014,
0.02623027, 0.0332938, 0.09945008, 0.5862169, -0.7848206, -0.201014,
0.01885119, 0.02778204, 0.09945008, 0.5862169, -0.7848206, -0.201014,
-0.3625578, 0.538408, 0.2208332, 0.5862179, -0.7848189, -0.2010171,
-0.3551788, 0.5439198, 0.2208332, 0.5862179, -0.7848189, -0.2010171,
-0.3540708, 0.5424365, 0.2298556, 0.5862179, -0.7848189, -0.2010171,
-0.3614499, 0.5369247, 0.2298556, 0.5862179, -0.7848189, -0.2010171,
0.01774325, 0.02926534, 0.09042773, 0.1202933, -0.1610473, 0.9795883,
0.02512233, 0.0347771, 0.09042773, 0.1202933, -0.1610473, 0.9795883,
-0.3551788, 0.5439198, 0.2208332, 0.1202933, -0.1610473, 0.9795883,
-0.3625578, 0.538408, 0.2208332, 0.1202933, -0.1610473, 0.9795883,
0.02512233, 0.0347771, 0.09042773, -0.8011737, -0.5984319, 9.741705e-08,
0.02623027, 0.0332938, 0.09945008, -0.8011737, -0.5984319, 9.741705e-08,
-0.3540708, 0.5424365, 0.2298556, -0.8011737, -0.5984319, 9.741705e-08,
-0.3551788, 0.5439198, 0.2208332, -0.8011737, -0.5984319, 9.741705e-08,
0.02623027, 0.0332938, 0.09945008, -0.1202933, 0.1610473, -0.9795883,
0.01885119, 0.02778204, 0.09945008, -0.1202933, 0.1610473, -0.9795883,
-0.3614499, 0.5369247, 0.2298556, -0.1202933, 0.1610473, -0.9795883,
-0.3540708, 0.5424365, 0.2298556, -0.1202933, 0.1610473, -0.9795883,
0.01885119, 0.02778204, 0.09945008, 0.8011737, 0.5984319, 1.948341e-08,
0.01774325, 0.02926534, 0.09042773, 0.8011737, 0.5984319, 1.948341e-08,
-0.3625578, 0.538408, 0.2208332, 0.8011737, 0.5984319, 1.948341e-08,
-0.3614499, 0.5369247, 0.2298556, 0.8011737, 0.5984319, 1.948341e-08,
0.02129566, 0.03095153, 0.09420422, 0.586217, -0.7848199, -0.2010159,
0.02249742, 0.03184918, 0.09420422, 0.586217, -0.7848199, -0.2010159,
0.02267786, 0.03160761, 0.0956736, 0.586217, -0.7848199, -0.2010159,
0.0214761, 0.03070996, 0.0956736, 0.586217, -0.7848199, -0.2010159,
0.02129566, 0.03095153, 0.09420422, 0.5443275, 0.8358982, 0.07058047,
0.0214761, 0.03070996, 0.0956736, 0.5443275, 0.8358982, 0.07058047,
0.02315919, 0.02970993, 0.09453688, 0.5443275, 0.8358982, 0.07058047,
0.02315919, 0.02970993, 0.09453688, 0.5443275, 0.8358982, 0.07058047,
0.02129566, 0.03095153, 0.09420422, 0.09319986, -0.1247748, -0.9877981,
0.02249742, 0.03184918, 0.09420422, 0.09319986, -0.1247748, -0.9877981,
0.02315919, 0.02970993, 0.09453688, 0.09319986, -0.1247748, -0.9877981,
0.02315919, 0.02970993, 0.09453688, 0.09319986, -0.1247748, -0.9877981,
0.02249742, 0.03184918, 0.09420422, 0.9559968, 0.2847604, -0.07058033,
0.02267786, 0.03160761, 0.0956736, 0.9559968, 0.2847604, -0.07058033,
0.02315919, 0.02970993, 0.09453688, 0.9559968, 0.2847604, -0.07058033,
0.02315919, 0.02970993, 0.09453688, 0.9559968, 0.2847604, -0.07058033,
0.02267786, 0.03160761, 0.0956736, 0.3184681, -0.4263628, 0.8466363,
0.0214761, 0.03070996, 0.0956736, 0.3184681, -0.4263628, 0.8466363,
0.02315919, 0.02970993, 0.09453688, 0.3184681, -0.4263628, 0.8466363,
0.02315919, 0.02970993, 0.09453688, 0.3184681, -0.4263628, 0.8466363
]);
var normLoc10 = gl.getAttribLocation(prog10, "aNorm");
var f=new Uint16Array([
0, 1, 2, 0, 2, 3,
4, 5, 6, 4, 6, 7,
8, 9, 10, 8, 10, 11,
12, 13, 14, 12, 14, 15,
16, 17, 18, 16, 18, 19,
20, 21, 22, 20, 22, 23,
24, 25, 26, 24, 26, 27,
28, 29, 30, 28, 30, 31,
32, 33, 34, 32, 34, 35,
36, 37, 38, 36, 38, 39,
40, 41, 42, 40, 42, 43
]);
var buf10 = gl.createBuffer();
gl.bindBuffer(gl.ARRAY_BUFFER, buf10);
gl.bufferData(gl.ARRAY_BUFFER, v, gl.STATIC_DRAW);
var ibuf10 = gl.createBuffer();
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, ibuf10);
gl.bufferData(gl.ELEMENT_ARRAY_BUFFER, f, gl.STATIC_DRAW);
var mvMatLoc10 = gl.getUniformLocation(prog10,"mvMatrix");
var prMatLoc10 = gl.getUniformLocation(prog10,"prMatrix");
var normMatLoc10 = gl.getUniformLocation(prog10,"normMatrix");
// ****** quads object 11 ******
var prog11  = gl.createProgram();
gl.attachShader(prog11, getShader( gl, "unnamed_chunk_2vshader11" ));
gl.attachShader(prog11, getShader( gl, "unnamed_chunk_2fshader11" ));
//  Force aPos to location 0, aCol to location 1 
gl.bindAttribLocation(prog11, 0, "aPos");
gl.bindAttribLocation(prog11, 1, "aCol");
gl.linkProgram(prog11);
var v=new Float32Array([
0.03014122, 0.02684136, 0.1102021, 0.09836029, -0.5148601, -0.8516127,
0.03877232, 0.02849027, 0.1102021, 0.09836029, -0.5148601, -0.8516127,
0.04017655, 0.02113992, 0.1148081, 0.09836029, -0.5148601, -0.8516127,
0.03154545, 0.01949101, 0.1148081, 0.09836029, -0.5148601, -0.8516127,
-0.02903985, 0.3366204, 0.6225971, 0.09835923, -0.5148563, -0.8516152,
-0.02040875, 0.3382693, 0.6225971, 0.09835923, -0.5148563, -0.8516152,
-0.01900452, 0.3309189, 0.627203, 0.09835923, -0.5148563, -0.8516152,
-0.02763561, 0.32927, 0.627203, 0.09835923, -0.5148563, -0.8516152,
0.03014122, 0.02684136, 0.1102021, 0.1598043, -0.8364848, 0.5241714,
0.03877232, 0.02849027, 0.1102021, 0.1598043, -0.8364848, 0.5241714,
-0.02040875, 0.3382693, 0.6225971, 0.1598043, -0.8364848, 0.5241714,
-0.02903985, 0.3366204, 0.6225971, 0.1598043, -0.8364848, 0.5241714,
0.03877232, 0.02849027, 0.1102021, -0.9822361, -0.187649, -1.541329e-07,
0.04017655, 0.02113992, 0.1148081, -0.9822361, -0.187649, -1.541329e-07,
-0.01900452, 0.3309189, 0.627203, -0.9822361, -0.187649, -1.541329e-07,
-0.02040875, 0.3382693, 0.6225971, -0.9822361, -0.187649, -1.541329e-07,
0.04017655, 0.02113992, 0.1148081, -0.1598046, 0.8364848, -0.5241715,
0.03154545, 0.01949101, 0.1148081, -0.1598046, 0.8364848, -0.5241715,
-0.02763561, 0.32927, 0.627203, -0.1598046, 0.8364848, -0.5241715,
-0.01900452, 0.3309189, 0.627203, -0.1598046, 0.8364848, -0.5241715,
0.03154545, 0.01949101, 0.1148081, 0.9822361, 0.1876491, 7.15617e-08,
0.03014122, 0.02684136, 0.1102021, 0.9822361, 0.1876491, 7.15617e-08,
-0.02903985, 0.3366204, 0.6225971, 0.9822361, 0.1876491, 7.15617e-08,
-0.02763561, 0.32927, 0.627203, 0.9822361, 0.1876491, 7.15617e-08,
0.03430235, 0.02447727, 0.1121119, 0.09836046, -0.5148616, -0.8516119,
0.03577571, 0.02475874, 0.1121119, 0.09836046, -0.5148616, -0.8516119,
0.03601542, 0.02350402, 0.1128982, 0.09836046, -0.5148616, -0.8516119,
0.03454206, 0.02322254, 0.1128982, 0.09836046, -0.5148616, -0.8516119,
0.03430235, 0.02447727, 0.1121119, 0.8851596, 0.3564816, 0.2990207,
0.03454206, 0.02322254, 0.1128982, 0.8851596, 0.3564816, 0.2990207,
0.03535561, 0.02296092, 0.1108018, 0.8851596, 0.3564816, 0.2990207,
0.03535561, 0.02296092, 0.1108018, 0.8851596, 0.3564816, 0.2990207,
0.03430235, 0.02447727, 0.1121119, -0.1150926, 0.6024451, -0.7898187,
0.03577571, 0.02475874, 0.1121119, -0.1150926, 0.6024451, -0.7898187,
0.03535561, 0.02296092, 0.1108018, -0.1150926, 0.6024451, -0.7898187,
0.03535561, 0.02296092, 0.1108018, -0.1150926, 0.6024451, -0.7898187,
0.03577571, 0.02475874, 0.1121119, 0.9542328, -0.005078574, -0.299022,
0.03601542, 0.02350402, 0.1128982, 0.9542328, -0.005078574, -0.299022,
0.03535561, 0.02296092, 0.1108018, 0.9542328, -0.005078574, -0.299022,
0.03535561, 0.02296092, 0.1108018, 0.9542328, -0.005078574, -0.299022,
0.03601542, 0.02350402, 0.1128982, 0.184167, -0.9640045, 0.1917759,
0.03454206, 0.02322254, 0.1128982, 0.184167, -0.9640045, 0.1917759,
0.03535561, 0.02296092, 0.1108018, 0.184167, -0.9640045, 0.1917759,
0.03535561, 0.02296092, 0.1108018, 0.184167, -0.9640045, 0.1917759
]);
var normLoc11 = gl.getAttribLocation(prog11, "aNorm");
var f=new Uint16Array([
0, 1, 2, 0, 2, 3,
4, 5, 6, 4, 6, 7,
8, 9, 10, 8, 10, 11,
12, 13, 14, 12, 14, 15,
16, 17, 18, 16, 18, 19,
20, 21, 22, 20, 22, 23,
24, 25, 26, 24, 26, 27,
28, 29, 30, 28, 30, 31,
32, 33, 34, 32, 34, 35,
36, 37, 38, 36, 38, 39,
40, 41, 42, 40, 42, 43
]);
var buf11 = gl.createBuffer();
gl.bindBuffer(gl.ARRAY_BUFFER, buf11);
gl.bufferData(gl.ARRAY_BUFFER, v, gl.STATIC_DRAW);
var ibuf11 = gl.createBuffer();
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, ibuf11);
gl.bufferData(gl.ELEMENT_ARRAY_BUFFER, f, gl.STATIC_DRAW);
var mvMatLoc11 = gl.getUniformLocation(prog11,"mvMatrix");
var prMatLoc11 = gl.getUniformLocation(prog11,"prMatrix");
var normMatLoc11 = gl.getUniformLocation(prog11,"normMatrix");
// ****** quads object 12 ******
var prog12  = gl.createProgram();
gl.attachShader(prog12, getShader( gl, "unnamed_chunk_2vshader12" ));
gl.attachShader(prog12, getShader( gl, "unnamed_chunk_2fshader12" ));
//  Force aPos to location 0, aCol to location 1 
gl.bindAttribLocation(prog12, 0, "aPos");
gl.bindAttribLocation(prog12, 1, "aCol");
gl.linkProgram(prog12);
var v=new Float32Array([
0.01057805, 0.3962761, 0.9730397, 0.08817711, 0.1730006, 0.9809667,
0.006226329, 0.3984941, 0.9730397, 0.08817711, 0.1730006, 0.9809667,
0.004050506, 0.3942252, 0.9739881, 0.08817711, 0.1730006, 0.9809667,
0.008402224, 0.3920072, 0.9739881, 0.08817711, 0.1730006, 0.9809667,
-0.02075841, 0.3347951, 0.6244258, 0.08817709, 0.1730006, 0.9809666,
-0.02511013, 0.3370131, 0.6244258, 0.08817709, 0.1730006, 0.9809666,
-0.02728595, 0.3327442, 0.6253743, 0.08817709, 0.1730006, 0.9809666,
-0.02293423, 0.3305262, 0.6253743, 0.08817709, 0.1730006, 0.9809666,
0.01057805, 0.3962761, 0.9730397, -0.4454654, -0.8739884, 0.1941776,
0.006226329, 0.3984941, 0.9730397, -0.4454654, -0.8739884, 0.1941776,
-0.02511013, 0.3370131, 0.6244258, -0.4454654, -0.8739884, 0.1941776,
-0.02075841, 0.3347951, 0.6244258, -0.4454654, -0.8739884, 0.1941776,
0.006226329, 0.3984941, 0.9730397, 0.890946, -0.4541094, 5.868388e-08,
0.004050506, 0.3942252, 0.9739881, 0.890946, -0.4541094, 5.868388e-08,
-0.02728595, 0.3327442, 0.6253743, 0.890946, -0.4541094, 5.868388e-08,
-0.02511013, 0.3370131, 0.6244258, 0.890946, -0.4541094, 5.868388e-08,
0.004050506, 0.3942252, 0.9739881, 0.4454654, 0.8739884, -0.1941776,
0.008402224, 0.3920072, 0.9739881, 0.4454654, 0.8739884, -0.1941776,
-0.02293423, 0.3305262, 0.6253743, 0.4454654, 0.8739884, -0.1941776,
-0.02728595, 0.3327442, 0.6253743, 0.4454654, 0.8739884, -0.1941776,
0.008402224, 0.3920072, 0.9739881, -0.890946, 0.4541094, -5.868388e-08,
0.01057805, 0.3962761, 0.9730397, -0.890946, 0.4541094, -5.868388e-08,
-0.02075841, 0.3347951, 0.6244258, -0.890946, 0.4541094, -5.868388e-08,
-0.02293423, 0.3305262, 0.6253743, -0.890946, 0.4541094, -5.868388e-08,
0.008316585, 0.3955656, 0.9733683, 0.08816695, 0.1729809, 0.980971,
0.006980166, 0.3962467, 0.9733683, 0.08816695, 0.1729809, 0.980971,
0.006311968, 0.3949358, 0.9736595, 0.08816695, 0.1729809, 0.980971,
0.007648387, 0.3942546, 0.9736595, 0.08816695, 0.1729809, 0.980971,
0.008316585, 0.3955656, 0.9733683, -0.8651754, 0.3644597, -0.3444428,
0.007648387, 0.3942546, 0.9736595, -0.8651754, 0.3644597, -0.3444428,
0.007490632, 0.3955967, 0.9754758, -0.8651754, 0.3644597, -0.3444428,
0.007490632, 0.3955967, 0.9754758, -0.8651754, 0.3644597, -0.3444428,
0.008316585, 0.3955656, 0.9733683, 0.4480636, 0.8790872, 0.1626183,
0.006980166, 0.3962467, 0.9733683, 0.4480636, 0.8790872, 0.1626183,
0.007490632, 0.3955967, 0.9754758, 0.4480636, 0.8790872, 0.1626183,
0.007490632, 0.3955967, 0.9754758, 0.4480636, 0.8790872, 0.1626183,
0.006980166, 0.3962467, 0.9733683, -0.8032628, 0.485935, 0.3444358,
0.006311968, 0.3949358, 0.9736595, -0.8032628, 0.485935, 0.3444358,
0.007490632, 0.3955967, 0.9754758, -0.8032628, 0.485935, 0.3444358,
0.007490632, 0.3955967, 0.9754758, -0.8032628, 0.485935, 0.3444358,
0.006311968, 0.3949358, 0.9736595, -0.3861414, -0.7575978, 0.5262513,
0.007648387, 0.3942546, 0.9736595, -0.3861414, -0.7575978, 0.5262513,
0.007490632, 0.3955967, 0.9754758, -0.3861414, -0.7575978, 0.5262513,
0.007490632, 0.3955967, 0.9754758, -0.3861414, -0.7575978, 0.5262513
]);
var normLoc12 = gl.getAttribLocation(prog12, "aNorm");
var f=new Uint16Array([
0, 1, 2, 0, 2, 3,
4, 5, 6, 4, 6, 7,
8, 9, 10, 8, 10, 11,
12, 13, 14, 12, 14, 15,
16, 17, 18, 16, 18, 19,
20, 21, 22, 20, 22, 23,
24, 25, 26, 24, 26, 27,
28, 29, 30, 28, 30, 31,
32, 33, 34, 32, 34, 35,
36, 37, 38, 36, 38, 39,
40, 41, 42, 40, 42, 43
]);
var buf12 = gl.createBuffer();
gl.bindBuffer(gl.ARRAY_BUFFER, buf12);
gl.bufferData(gl.ARRAY_BUFFER, v, gl.STATIC_DRAW);
var ibuf12 = gl.createBuffer();
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, ibuf12);
gl.bufferData(gl.ELEMENT_ARRAY_BUFFER, f, gl.STATIC_DRAW);
var mvMatLoc12 = gl.getUniformLocation(prog12,"mvMatrix");
var prMatLoc12 = gl.getUniformLocation(prog12,"prMatrix");
var normMatLoc12 = gl.getUniformLocation(prog12,"normMatrix");
// ****** quads object 13 ******
var prog13  = gl.createProgram();
gl.attachShader(prog13, getShader( gl, "unnamed_chunk_2vshader13" ));
gl.attachShader(prog13, getShader( gl, "unnamed_chunk_2fshader13" ));
//  Force aPos to location 0, aCol to location 1 
gl.bindAttribLocation(prog13, 0, "aPos");
gl.bindAttribLocation(prog13, 1, "aCol");
gl.linkProgram(prog13);
var v=new Float32Array([
0.9745882, 0.2258339, 0.4887073, 0.9702066, 0.05580825, 0.2357638,
0.9742807, 0.2311787, 0.4887073, 0.9702066, 0.05580825, 0.2357638,
0.9730206, 0.2311062, 0.49391, 0.9702066, 0.05580825, 0.2357638,
0.9733281, 0.2257614, 0.49391, 0.9702066, 0.05580825, 0.2357638,
0.5954353, 0.2040234, 0.3965739, 0.9702091, 0.0558084, 0.2357533,
0.5951278, 0.2093681, 0.3965739, 0.9702091, 0.0558084, 0.2357533,
0.5938678, 0.2092956, 0.4017766, 0.9702091, 0.0558084, 0.2357533,
0.5941752, 0.2039509, 0.4017766, 0.9702091, 0.0558084, 0.2357533,
0.9745882, 0.2258339, 0.4887073, -0.2353694, -0.01353892, 0.9718117,
0.9742807, 0.2311787, 0.4887073, -0.2353694, -0.01353892, 0.9718117,
0.5951278, 0.2093681, 0.3965739, -0.2353694, -0.01353892, 0.9718117,
0.5954353, 0.2040234, 0.3965739, -0.2353694, -0.01353892, 0.9718117,
0.9742807, 0.2311787, 0.4887073, 0.05742918, -0.9983495, 1.345878e-06,
0.9730206, 0.2311062, 0.49391, 0.05742918, -0.9983495, 1.345878e-06,
0.5938678, 0.2092956, 0.4017766, 0.05742918, -0.9983495, 1.345878e-06,
0.5951278, 0.2093681, 0.3965739, 0.05742918, -0.9983495, 1.345878e-06,
0.9730206, 0.2311062, 0.49391, 0.2353694, 0.01353889, -0.9718117,
0.9733281, 0.2257614, 0.49391, 0.2353694, 0.01353889, -0.9718117,
0.5941752, 0.2039509, 0.4017766, 0.2353694, 0.01353889, -0.9718117,
0.5938678, 0.2092956, 0.4017766, 0.2353694, 0.01353889, -0.9718117,
0.9733281, 0.2257614, 0.49391, -0.05742983, 0.9983495, 1.357181e-06,
0.9745882, 0.2258339, 0.4887073, -0.05742983, 0.9983495, 1.357181e-06,
0.5954353, 0.2040234, 0.3965739, -0.05742983, 0.9983495, 1.357181e-06,
0.5941752, 0.2039509, 0.4017766, -0.05742983, 0.9983495, 1.357181e-06,
0.974024, 0.2277315, 0.4905798, 0.9702018, 0.05580034, 0.2357856,
0.9739379, 0.229229, 0.4905798, 0.9702018, 0.05580034, 0.2357856,
0.9735848, 0.2292087, 0.4920375, 0.9702018, 0.05580034, 0.2357856,
0.973671, 0.2277111, 0.4920375, 0.9702018, 0.05580034, 0.2357856,
0.974024, 0.2277315, 0.4905798, -0.3944438, 0.9151841, -0.08277725,
0.973671, 0.2277111, 0.4920375, -0.3944438, 0.9151841, -0.08277725,
0.9757448, 0.2285817, 0.4917801, -0.3944438, 0.9151841, -0.08277725,
0.9757448, 0.2285817, 0.4917801, -0.3944438, 0.9151841, -0.08277725,
0.974024, 0.2277315, 0.4905798, 0.5610552, 0.03226861, -0.8271492,
0.9739379, 0.229229, 0.4905798, 0.5610552, 0.03226861, -0.8271492,
0.9757448, 0.2285817, 0.4917801, 0.5610552, 0.03226861, -0.8271492,
0.9757448, 0.2285817, 0.4917801, 0.5610552, 0.03226861, -0.8271492,
0.9739379, 0.229229, 0.4905798, 0.2868888, 0.9543798, 0.08278921,
0.9735848, 0.2292087, 0.4920375, 0.2868888, 0.9543798, 0.08278921,
0.9757448, 0.2285817, 0.4917801, 0.2868888, 0.9543798, 0.08278921,
0.9757448, 0.2285817, 0.4917801, 0.2868888, 0.9543798, 0.08278921,
0.9735848, 0.2292087, 0.4920375, 0.1202812, 0.006922658, 0.9927158,
0.973671, 0.2277111, 0.4920375, 0.1202812, 0.006922658, 0.9927158,
0.9757448, 0.2285817, 0.4917801, 0.1202812, 0.006922658, 0.9927158,
0.9757448, 0.2285817, 0.4917801, 0.1202812, 0.006922658, 0.9927158
]);
var normLoc13 = gl.getAttribLocation(prog13, "aNorm");
var f=new Uint16Array([
0, 1, 2, 0, 2, 3,
4, 5, 6, 4, 6, 7,
8, 9, 10, 8, 10, 11,
12, 13, 14, 12, 14, 15,
16, 17, 18, 16, 18, 19,
20, 21, 22, 20, 22, 23,
24, 25, 26, 24, 26, 27,
28, 29, 30, 28, 30, 31,
32, 33, 34, 32, 34, 35,
36, 37, 38, 36, 38, 39,
40, 41, 42, 40, 42, 43
]);
var buf13 = gl.createBuffer();
gl.bindBuffer(gl.ARRAY_BUFFER, buf13);
gl.bufferData(gl.ARRAY_BUFFER, v, gl.STATIC_DRAW);
var ibuf13 = gl.createBuffer();
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, ibuf13);
gl.bufferData(gl.ELEMENT_ARRAY_BUFFER, f, gl.STATIC_DRAW);
var mvMatLoc13 = gl.getUniformLocation(prog13,"mvMatrix");
var prMatLoc13 = gl.getUniformLocation(prog13,"prMatrix");
var normMatLoc13 = gl.getUniformLocation(prog13,"normMatrix");
// ****** quads object 14 ******
var prog14  = gl.createProgram();
gl.attachShader(prog14, getShader( gl, "unnamed_chunk_2vshader14" ));
gl.attachShader(prog14, getShader( gl, "unnamed_chunk_2fshader14" ));
//  Force aPos to location 0, aCol to location 1 
gl.bindAttribLocation(prog14, 0, "aPos");
gl.bindAttribLocation(prog14, 1, "aCol");
gl.linkProgram(prog14);
var v=new Float32Array([
0.06080366, 0.02265732, 0.09833241, -0.8351104, -0.2948036, -0.4644151,
0.06359889, 0.01473908, 0.09833241, -0.8351104, -0.2948036, -0.4644151,
0.05992154, 0.01344093, 0.1057691, -0.8351104, -0.2948036, -0.4644151,
0.05712631, 0.02135917, 0.1057691, -0.8351104, -0.2948036, -0.4644151,
0.5950926, 0.2112677, 0.3954569, -0.8351104, -0.2948025, -0.4644159,
0.5978878, 0.2033494, 0.3954569, -0.8351104, -0.2948025, -0.4644159,
0.5942104, 0.2020513, 0.4028936, -0.8351104, -0.2948025, -0.4644159,
0.5914152, 0.2099695, 0.4028936, -0.8351104, -0.2948025, -0.4644159,
0.06080366, 0.02265732, 0.09833241, -0.4379292, -0.1545941, 0.8856178,
0.06359889, 0.01473908, 0.09833241, -0.4379292, -0.1545941, 0.8856178,
0.5978878, 0.2033494, 0.3954569, -0.4379292, -0.1545941, 0.8856178,
0.5950926, 0.2112677, 0.3954569, -0.4379292, -0.1545941, 0.8856178,
0.06359889, 0.01473908, 0.09833241, -0.3328795, 0.9429694, -2.16694e-08,
0.05992154, 0.01344093, 0.1057691, -0.3328795, 0.9429694, -2.16694e-08,
0.5942104, 0.2020513, 0.4028936, -0.3328795, 0.9429694, -2.16694e-08,
0.5978878, 0.2033494, 0.3954569, -0.3328795, 0.9429694, -2.16694e-08,
0.05992154, 0.01344093, 0.1057691, 0.4379292, 0.1545941, -0.8856178,
0.05712631, 0.02135917, 0.1057691, 0.4379292, 0.1545941, -0.8856178,
0.5914152, 0.2099695, 0.4028936, 0.4379292, 0.1545941, -0.8856178,
0.5942104, 0.2020513, 0.4028936, 0.4379292, 0.1545941, -0.8856178,
0.05712631, 0.02135917, 0.1057691, 0.3328794, -0.9429694, 0,
0.06080366, 0.02265732, 0.09833241, 0.3328794, -0.9429694, 0,
0.5950926, 0.2112677, 0.3954569, 0.3328794, -0.9429694, 0,
0.5914152, 0.2099695, 0.4028936, 0.3328794, -0.9429694, 0,
0.06044138, 0.0188723, 0.1013865, -0.8351104, -0.2948041, -0.4644149,
0.0609407, 0.01745784, 0.1013865, -0.8351104, -0.2948041, -0.4644149,
0.06028381, 0.01722595, 0.1027149, -0.8351104, -0.2948041, -0.4644149,
0.05978449, 0.01864041, 0.1027149, -0.8351104, -0.2948041, -0.4644149,
0.06044138, 0.0188723, 0.1013865, 0.6049112, -0.7794175, 0.1630669,
0.05978449, 0.01864041, 0.1027149, 0.6049112, -0.7794175, 0.1630669,
0.05869237, 0.01745952, 0.1011219, 0.6049112, -0.7794175, 0.1630669,
0.05869237, 0.01745952, 0.1011219, 0.6049112, -0.7794175, 0.1630669,
0.06044138, 0.0188723, 0.1013865, 0.1168213, 0.04123935, -0.9922963,
0.0609407, 0.01745784, 0.1013865, 0.1168213, 0.04123935, -0.9922963,
0.05869237, 0.01745952, 0.1011219, 0.1168213, 0.04123935, -0.9922963,
0.05869237, 0.01745952, 0.1011219, 0.1168213, 0.04123935, -0.9922963,
0.0609407, 0.01745784, 0.1013865, 0.01845872, -0.9864422, -0.1630674,
0.06028381, 0.01722595, 0.1027149, 0.01845872, -0.9864422, -0.1630674,
0.05869237, 0.01745952, 0.1011219, 0.01845872, -0.9864422, -0.1630674,
0.05869237, 0.01745952, 0.1011219, 0.01845872, -0.9864422, -0.1630674,
0.06028381, 0.01722595, 0.1027149, -0.7032725, -0.2482634, 0.6661629,
0.05978449, 0.01864041, 0.1027149, -0.7032725, -0.2482634, 0.6661629,
0.05869237, 0.01745952, 0.1011219, -0.7032725, -0.2482634, 0.6661629,
0.05869237, 0.01745952, 0.1011219, -0.7032725, -0.2482634, 0.6661629
]);
var normLoc14 = gl.getAttribLocation(prog14, "aNorm");
var f=new Uint16Array([
0, 1, 2, 0, 2, 3,
4, 5, 6, 4, 6, 7,
8, 9, 10, 8, 10, 11,
12, 13, 14, 12, 14, 15,
16, 17, 18, 16, 18, 19,
20, 21, 22, 20, 22, 23,
24, 25, 26, 24, 26, 27,
28, 29, 30, 28, 30, 31,
32, 33, 34, 32, 34, 35,
36, 37, 38, 36, 38, 39,
40, 41, 42, 40, 42, 43
]);
var buf14 = gl.createBuffer();
gl.bindBuffer(gl.ARRAY_BUFFER, buf14);
gl.bufferData(gl.ARRAY_BUFFER, v, gl.STATIC_DRAW);
var ibuf14 = gl.createBuffer();
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, ibuf14);
gl.bufferData(gl.ELEMENT_ARRAY_BUFFER, f, gl.STATIC_DRAW);
var mvMatLoc14 = gl.getUniformLocation(prog14,"mvMatrix");
var prMatLoc14 = gl.getUniformLocation(prog14,"prMatrix");
var normMatLoc14 = gl.getUniformLocation(prog14,"normMatrix");
// ****** quads object 15 ******
var prog15  = gl.createProgram();
gl.attachShader(prog15, getShader( gl, "unnamed_chunk_2vshader15" ));
gl.attachShader(prog15, getShader( gl, "unnamed_chunk_2fshader15" ));
//  Force aPos to location 0, aCol to location 1 
gl.bindAttribLocation(prog15, 0, "aPos");
gl.bindAttribLocation(prog15, 1, "aCol");
gl.linkProgram(prog15);
var v=new Float32Array([
0.04172887, 0.03745344, 0.09058864, -0.2868287, -0.938008, -0.1946032,
0.04987378, 0.03496285, 0.09058864, -0.2868287, -0.938008, -0.1946032,
0.04938911, 0.03337782, 0.098943, -0.2868287, -0.938008, -0.1946032,
0.0412442, 0.03586841, 0.098943, -0.2868287, -0.938008, -0.1946032,
0.2244092, 0.6348678, 0.214531, -0.2868275, -0.9380086, -0.1946019,
0.2325541, 0.6323773, 0.214531, -0.2868275, -0.9380086, -0.1946019,
0.2320694, 0.6307923, 0.2228854, -0.2868275, -0.9380086, -0.1946019,
0.2239245, 0.6332828, 0.2228854, -0.2868275, -0.9380086, -0.1946019,
0.04172887, 0.03745344, 0.09058864, -0.05690579, -0.1860974, 0.980882,
0.04987378, 0.03496285, 0.09058864, -0.05690579, -0.1860974, 0.980882,
0.2325541, 0.6323773, 0.214531, -0.05690579, -0.1860974, 0.980882,
0.2244092, 0.6348678, 0.214531, -0.05690579, -0.1860974, 0.980882,
0.04987378, 0.03496285, 0.09058864, -0.9562902, 0.2924192, -2.199723e-07,
0.04938911, 0.03337782, 0.098943, -0.9562902, 0.2924192, -2.199723e-07,
0.2320694, 0.6307923, 0.2228854, -0.9562902, 0.2924192, -2.199723e-07,
0.2325541, 0.6323773, 0.214531, -0.9562902, 0.2924192, -2.199723e-07,
0.04938911, 0.03337782, 0.098943, 0.05690581, 0.1860974, -0.980882,
0.0412442, 0.03586841, 0.098943, 0.05690581, 0.1860974, -0.980882,
0.2239245, 0.6332828, 0.2228854, 0.05690581, 0.1860974, -0.980882,
0.2320694, 0.6307923, 0.2228854, 0.05690581, 0.1860974, -0.980882,
0.0412442, 0.03586841, 0.098943, 0.9562902, -0.2924192, -1.931465e-07,
0.04172887, 0.03745344, 0.09058864, 0.9562902, -0.2924192, -1.931465e-07,
0.2244092, 0.6348678, 0.214531, 0.9562902, -0.2924192, -1.931465e-07,
0.2239245, 0.6332828, 0.2228854, 0.9562902, -0.2924192, -1.931465e-07,
0.04488445, 0.03577452, 0.09403016, -0.2868271, -0.9380082, -0.1946043,
0.04631889, 0.03533589, 0.09403016, -0.2868271, -0.9380082, -0.1946043,
0.04623353, 0.03505674, 0.09550148, -0.2868271, -0.9380082, -0.1946043,
0.04479909, 0.03549537, 0.09550148, -0.2868271, -0.9380082, -0.1946043,
0.04488445, 0.03577452, 0.09403016, 0.9961148, 0.05555574, 0.06832897,
0.04479909, 0.03549537, 0.09550148, 0.9961148, 0.05555574, 0.06832897,
0.04498533, 0.03353962, 0.09437661, 0.9961148, 0.05555574, 0.06832897,
0.04498533, 0.03353962, 0.09437661, 0.9961148, 0.05555574, 0.06832897,
0.04488445, 0.03577452, 0.09403016, -0.04742912, -0.1551071, -0.9867585,
0.04631889, 0.03533589, 0.09403016, -0.04742912, -0.1551071, -0.9867585,
0.04498533, 0.03353962, 0.09437661, -0.04742912, -0.1551071, -0.9867585,
0.04498533, 0.03353962, 0.09437661, -0.04742912, -0.1551071, -0.9867585,
0.04631889, 0.03533589, 0.09403016, 0.79469, -0.6031575, -0.06832882,
0.04623353, 0.03505674, 0.09550148, 0.79469, -0.6031575, -0.06832882,
0.04498533, 0.03353962, 0.09437661, 0.79469, -0.6031575, -0.06832882,
0.04498533, 0.03353962, 0.09437661, 0.79469, -0.6031575, -0.06832882,
0.04623353, 0.03505674, 0.09550148, -0.1539949, -0.503607, 0.8500974,
0.04479909, 0.03549537, 0.09550148, -0.1539949, -0.503607, 0.8500974,
0.04498533, 0.03353962, 0.09437661, -0.1539949, -0.503607, 0.8500974,
0.04498533, 0.03353962, 0.09437661, -0.1539949, -0.503607, 0.8500974
]);
var normLoc15 = gl.getAttribLocation(prog15, "aNorm");
var f=new Uint16Array([
0, 1, 2, 0, 2, 3,
4, 5, 6, 4, 6, 7,
8, 9, 10, 8, 10, 11,
12, 13, 14, 12, 14, 15,
16, 17, 18, 16, 18, 19,
20, 21, 22, 20, 22, 23,
24, 25, 26, 24, 26, 27,
28, 29, 30, 28, 30, 31,
32, 33, 34, 32, 34, 35,
36, 37, 38, 36, 38, 39,
40, 41, 42, 40, 42, 43
]);
var buf15 = gl.createBuffer();
gl.bindBuffer(gl.ARRAY_BUFFER, buf15);
gl.bufferData(gl.ARRAY_BUFFER, v, gl.STATIC_DRAW);
var ibuf15 = gl.createBuffer();
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, ibuf15);
gl.bufferData(gl.ELEMENT_ARRAY_BUFFER, f, gl.STATIC_DRAW);
var mvMatLoc15 = gl.getUniformLocation(prog15,"mvMatrix");
var prMatLoc15 = gl.getUniformLocation(prog15,"prMatrix");
var normMatLoc15 = gl.getUniformLocation(prog15,"normMatrix");
// ****** quads object 16 ******
var prog16  = gl.createProgram();
gl.attachShader(prog16, getShader( gl, "unnamed_chunk_2vshader16" ));
gl.attachShader(prog16, getShader( gl, "unnamed_chunk_2fshader16" ));
//  Force aPos to location 0, aCol to location 1 
gl.bindAttribLocation(prog16, 0, "aPos");
gl.bindAttribLocation(prog16, 1, "aCol");
gl.linkProgram(prog16);
var v=new Float32Array([
0.4051636, 0.9744095, 0.1753144, 0.4504547, 0.8866814, -0.1043394,
0.3997738, 0.9771476, 0.1753144, 0.4504547, 0.8866814, -0.1043394,
0.4000595, 0.9777099, 0.1813268, 0.4504547, 0.8866814, -0.1043394,
0.4054492, 0.9749718, 0.1813268, 0.4504547, 0.8866814, -0.1043394,
0.2307914, 0.6311798, 0.215702, 0.4504639, 0.8866776, -0.1043307,
0.2254016, 0.633918, 0.215702, 0.4504639, 0.8866776, -0.1043307,
0.2256873, 0.6344803, 0.2217144, 0.4504639, 0.8866776, -0.1043307,
0.2310771, 0.6317421, 0.2217144, 0.4504639, 0.8866776, -0.1043307,
0.4051636, 0.9744095, 0.1753144, 0.04725604, 0.09301943, 0.9945422,
0.3997738, 0.9771476, 0.1753144, 0.04725604, 0.09301943, 0.9945422,
0.2254016, 0.633918, 0.215702, 0.04725604, 0.09301943, 0.9945422,
0.2307914, 0.6311798, 0.215702, 0.04725604, 0.09301943, 0.9945422,
0.3997738, 0.9771476, 0.1753144, 0.8915441, -0.452934, 2.593056e-06,
0.4000595, 0.9777099, 0.1813268, 0.8915441, -0.452934, 2.593056e-06,
0.2256873, 0.6344803, 0.2217144, 0.8915441, -0.452934, 2.593056e-06,
0.2254016, 0.633918, 0.215702, 0.8915441, -0.452934, 2.593056e-06,
0.4000595, 0.9777099, 0.1813268, -0.04725685, -0.09301901, -0.9945423,
0.4054492, 0.9749718, 0.1813268, -0.04725685, -0.09301901, -0.9945423,
0.2310771, 0.6317421, 0.2217144, -0.04725685, -0.09301901, -0.9945423,
0.2256873, 0.6344803, 0.2217144, -0.04725685, -0.09301901, -0.9945423,
0.4054492, 0.9749718, 0.1813268, -0.8915437, 0.4529344, 1.843745e-06,
0.4051636, 0.9744095, 0.1753144, -0.8915437, 0.4529344, 1.843745e-06,
0.2307914, 0.6311798, 0.215702, -0.8915437, 0.4529344, 1.843745e-06,
0.2310771, 0.6317421, 0.2217144, -0.8915437, 0.4529344, 1.843745e-06,
0.4032447, 0.9756503, 0.1775747, 0.4504463, 0.8866853, -0.1043425,
0.4019074, 0.9763296, 0.1775747, 0.4504463, 0.8866853, -0.1043425,
0.4019783, 0.9764692, 0.1790665, 0.4504463, 0.8866853, -0.1043425,
0.4033156, 0.9757898, 0.1790665, 0.4504463, 0.8866853, -0.1043425,
0.4032447, 0.9756503, 0.1775747, -0.9929458, 0.112764, 0.03664337,
0.4033156, 0.9757898, 0.1790665, -0.9929458, 0.112764, 0.03664337,
0.4035124, 0.977833, 0.178112, -0.9929458, 0.112764, 0.03664337,
0.4035124, 0.977833, 0.178112, -0.9929458, 0.112764, 0.03664337,
0.4032447, 0.9756503, 0.1775747, 0.1139189, 0.2242447, -0.9678516,
0.4019074, 0.9763296, 0.1775747, 0.1139189, 0.2242447, -0.9678516,
0.4035124, 0.977833, 0.178112, 0.1139189, 0.2242447, -0.9678516,
0.4035124, 0.977833, 0.178112, 0.1139189, 0.2242447, -0.9678516,
0.4019074, 0.9763296, 0.1775747, -0.6766064, 0.7354332, -0.03663127,
0.4019783, 0.9764692, 0.1790665, -0.6766064, 0.7354332, -0.03663127,
0.4035124, 0.977833, 0.178112, -0.6766064, 0.7354332, -0.03663127,
0.4035124, 0.977833, 0.178112, -0.6766064, 0.7354332, -0.03663127,
0.4019783, 0.9764692, 0.1790665, 0.2024101, 0.3984361, 0.894583,
0.4033156, 0.9757898, 0.1790665, 0.2024101, 0.3984361, 0.894583,
0.4035124, 0.977833, 0.178112, 0.2024101, 0.3984361, 0.894583,
0.4035124, 0.977833, 0.178112, 0.2024101, 0.3984361, 0.894583
]);
var normLoc16 = gl.getAttribLocation(prog16, "aNorm");
var f=new Uint16Array([
0, 1, 2, 0, 2, 3,
4, 5, 6, 4, 6, 7,
8, 9, 10, 8, 10, 11,
12, 13, 14, 12, 14, 15,
16, 17, 18, 16, 18, 19,
20, 21, 22, 20, 22, 23,
24, 25, 26, 24, 26, 27,
28, 29, 30, 28, 30, 31,
32, 33, 34, 32, 34, 35,
36, 37, 38, 36, 38, 39,
40, 41, 42, 40, 42, 43
]);
var buf16 = gl.createBuffer();
gl.bindBuffer(gl.ARRAY_BUFFER, buf16);
gl.bufferData(gl.ARRAY_BUFFER, v, gl.STATIC_DRAW);
var ibuf16 = gl.createBuffer();
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, ibuf16);
gl.bufferData(gl.ELEMENT_ARRAY_BUFFER, f, gl.STATIC_DRAW);
var mvMatLoc16 = gl.getUniformLocation(prog16,"mvMatrix");
var prMatLoc16 = gl.getUniformLocation(prog16,"prMatrix");
var normMatLoc16 = gl.getUniformLocation(prog16,"normMatrix");
// ****** quads object 17 ******
var prog17  = gl.createProgram();
gl.attachShader(prog17, getShader( gl, "unnamed_chunk_2vshader17" ));
gl.attachShader(prog17, getShader( gl, "unnamed_chunk_2fshader17" ));
//  Force aPos to location 0, aCol to location 1 
gl.bindAttribLocation(prog17, 0, "aPos");
gl.bindAttribLocation(prog17, 1, "aCol");
gl.linkProgram(prog17);
var v=new Float32Array([
0.03249404, 0.02642651, 0.06785239, 0.04901801, -0.7226834, 0.6894389,
0.04088039, 0.02699534, 0.06785239, 0.04901801, -0.7226834, 0.6894389,
0.04048822, 0.03277722, 0.07394095, 0.04901801, -0.7226834, 0.6894389,
0.03210187, 0.03220839, 0.07394095, 0.04901801, -0.7226834, 0.6894389,
0.002286516, 0.4717837, -0.3570181, 0.04901873, -0.7226824, 0.6894399,
0.01067287, 0.4723526, -0.3570181, 0.04901873, -0.7226824, 0.6894399,
0.0102807, 0.4781345, -0.3509295, 0.04901873, -0.7226824, 0.6894399,
0.001894345, 0.4775656, -0.3509295, 0.04901873, -0.7226824, 0.6894399,
0.03249404, 0.02642651, 0.06785239, -0.04665593, 0.6878587, 0.7243437,
0.04088039, 0.02699534, 0.06785239, -0.04665593, 0.6878587, 0.7243437,
0.01067287, 0.4723526, -0.3570181, -0.04665593, 0.6878587, 0.7243437,
0.002286516, 0.4717837, -0.3570181, -0.04665593, 0.6878587, 0.7243437,
0.04088039, 0.02699534, 0.06785239, -0.9977077, -0.06767195, 2.078841e-07,
0.04048822, 0.03277722, 0.07394095, -0.9977077, -0.06767195, 2.078841e-07,
0.0102807, 0.4781345, -0.3509295, -0.9977077, -0.06767195, 2.078841e-07,
0.01067287, 0.4723526, -0.3570181, -0.9977077, -0.06767195, 2.078841e-07,
0.04048822, 0.03277722, 0.07394095, 0.04665576, -0.6878586, -0.7243437,
0.03210187, 0.03220839, 0.07394095, 0.04665576, -0.6878586, -0.7243437,
0.001894345, 0.4775656, -0.3509295, 0.04665576, -0.6878586, -0.7243437,
0.0102807, 0.4781345, -0.3509295, 0.04665576, -0.6878586, -0.7243437,
0.03210187, 0.03220839, 0.07394095, 0.9977077, 0.06767225, 9.832357e-08,
0.03249404, 0.02642651, 0.06785239, 0.9977077, 0.06767225, 9.832357e-08,
0.002286516, 0.4717837, -0.3570181, 0.9977077, 0.06767225, 9.832357e-08,
0.001894345, 0.4775656, -0.3509295, 0.9977077, 0.06767225, 9.832357e-08,
0.03577784, 0.02903521, 0.07035341, 0.04901797, -0.7226816, 0.6894407,
0.03727441, 0.02913672, 0.07035341, 0.04901797, -0.7226816, 0.6894407,
0.03720442, 0.03016851, 0.07143992, 0.04901797, -0.7226816, 0.6894407,
0.03570786, 0.030067, 0.07143992, 0.04901797, -0.7226816, 0.6894407,
0.03577784, 0.02903521, 0.07035341, 0.9169719, 0.317113, -0.2420783,
0.03570786, 0.030067, 0.07143992, 0.9169719, 0.317113, -0.2420783,
0.03658917, 0.0281565, 0.07227555, 0.9169719, 0.317113, -0.2420783,
0.03658917, 0.0281565, 0.07227555, 0.9169719, 0.317113, -0.2420783,
0.03577784, 0.02903521, 0.07035341, 0.06089678, -0.8978133, -0.4361453,
0.03727441, 0.02913672, 0.07035341, 0.06089678, -0.8978133, -0.4361453,
0.03658917, 0.0281565, 0.07227555, 0.06089678, -0.8978133, -0.4361453,
0.03658917, 0.0281565, 0.07227555, 0.06089678, -0.8978133, -0.4361453,
0.03727441, 0.02913672, 0.07035341, 0.9513941, -0.1903872, 0.2420785,
0.03720442, 0.03016851, 0.07143992, 0.9513941, -0.1903872, 0.2420785,
0.03658917, 0.0281565, 0.07227555, 0.9513941, -0.1903872, 0.2420785,
0.03658917, 0.0281565, 0.07227555, 0.9513941, -0.1903872, 0.2420785,
0.03720442, 0.03016851, 0.07143992, -0.02647417, 0.3903139, 0.9203012,
0.03570786, 0.030067, 0.07143992, -0.02647417, 0.3903139, 0.9203012,
0.03658917, 0.0281565, 0.07227555, -0.02647417, 0.3903139, 0.9203012,
0.03658917, 0.0281565, 0.07227555, -0.02647417, 0.3903139, 0.9203012
]);
var normLoc17 = gl.getAttribLocation(prog17, "aNorm");
var f=new Uint16Array([
0, 1, 2, 0, 2, 3,
4, 5, 6, 4, 6, 7,
8, 9, 10, 8, 10, 11,
12, 13, 14, 12, 14, 15,
16, 17, 18, 16, 18, 19,
20, 21, 22, 20, 22, 23,
24, 25, 26, 24, 26, 27,
28, 29, 30, 28, 30, 31,
32, 33, 34, 32, 34, 35,
36, 37, 38, 36, 38, 39,
40, 41, 42, 40, 42, 43
]);
var buf17 = gl.createBuffer();
gl.bindBuffer(gl.ARRAY_BUFFER, buf17);
gl.bufferData(gl.ARRAY_BUFFER, v, gl.STATIC_DRAW);
var ibuf17 = gl.createBuffer();
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, ibuf17);
gl.bufferData(gl.ELEMENT_ARRAY_BUFFER, f, gl.STATIC_DRAW);
var mvMatLoc17 = gl.getUniformLocation(prog17,"mvMatrix");
var prMatLoc17 = gl.getUniformLocation(prog17,"prMatrix");
var normMatLoc17 = gl.getUniformLocation(prog17,"normMatrix");
// ****** quads object 18 ******
var prog18  = gl.createProgram();
gl.attachShader(prog18, getShader( gl, "unnamed_chunk_2vshader18" ));
gl.attachShader(prog18, getShader( gl, "unnamed_chunk_2fshader18" ));
//  Force aPos to location 0, aCol to location 1 
gl.bindAttribLocation(prog18, 0, "aPos");
gl.bindAttribLocation(prog18, 1, "aCol");
gl.linkProgram(prog18);
var v=new Float32Array([
0.1131033, 0.6738102, -0.6392936, 0.289881, 0.5548483, -0.7798157,
0.1084999, 0.6762153, -0.6392936, 0.289881, 0.5548483, -0.7798157,
0.1103754, 0.6798051, -0.6360422, 0.289881, 0.5548483, -0.7798157,
0.1149788, 0.6774001, -0.6360422, 0.289881, 0.5548483, -0.7798157,
0.007647553, 0.4719616, -0.3555995, 0.2898783, 0.5548431, -0.7798203,
0.00304416, 0.4743667, -0.3555995, 0.2898783, 0.5548431, -0.7798203,
0.004919661, 0.4779565, -0.3523481, 0.2898783, 0.5548431, -0.7798203,
0.009523054, 0.4755515, -0.3523481, 0.2898783, 0.5548431, -0.7798203,
0.1131033, 0.6738102, -0.6392936, 0.3611052, 0.6911753, 0.6260031,
0.1084999, 0.6762153, -0.6392936, 0.3611052, 0.6911753, 0.6260031,
0.00304416, 0.4743667, -0.3555995, 0.3611052, 0.6911753, 0.6260031,
0.007647553, 0.4719616, -0.3555995, 0.3611052, 0.6911753, 0.6260031,
0.1084999, 0.6762153, -0.6392936, 0.8863258, -0.4630623, -1.001202e-06,
0.1103754, 0.6798051, -0.6360422, 0.8863258, -0.4630623, -1.001202e-06,
0.004919661, 0.4779565, -0.3523481, 0.8863258, -0.4630623, -1.001202e-06,
0.00304416, 0.4743667, -0.3555995, 0.8863258, -0.4630623, -1.001202e-06,
0.1103754, 0.6798051, -0.6360422, -0.3611052, -0.6911752, -0.626003,
0.1149788, 0.6774001, -0.6360422, -0.3611052, -0.6911752, -0.626003,
0.009523054, 0.4755515, -0.3523481, -0.3611052, -0.6911752, -0.626003,
0.004919661, 0.4779565, -0.3523481, -0.3611052, -0.6911752, -0.626003,
0.1149788, 0.6774001, -0.6360422, -0.8863258, 0.4630623, 1.032008e-06,
0.1131033, 0.6738102, -0.6392936, -0.8863258, 0.4630623, 1.032008e-06,
0.007647553, 0.4719616, -0.3555995, -0.8863258, 0.4630623, 1.032008e-06,
0.009523054, 0.4755515, -0.3523481, -0.8863258, 0.4630623, 1.032008e-06,
0.1121333, 0.675942, -0.6381373, 0.2898617, 0.5548273, -0.7798377,
0.1108038, 0.6766366, -0.6381373, 0.2898617, 0.5548273, -0.7798377,
0.1113455, 0.6776733, -0.6371984, 0.2898617, 0.5548273, -0.7798377,
0.112675, 0.6769788, -0.6371984, 0.2898617, 0.5548273, -0.7798377,
0.1121333, 0.675942, -0.6381373, -0.9316726, 0.238767, 0.2738184,
0.112675, 0.6769788, -0.6371984, -0.9316726, 0.238767, 0.2738184,
0.1123191, 0.6779174, -0.6392275, -0.9316726, 0.238767, 0.2738184,
0.1123191, 0.6779174, -0.6392275, -0.9316726, 0.238767, 0.2738184,
0.1121333, 0.675942, -0.6381373, -0.2363295, -0.4523607, -0.8599524,
0.1108038, 0.6766366, -0.6381373, -0.2363295, -0.4523607, -0.8599524,
0.1123191, 0.6779174, -0.6392275, -0.2363295, -0.4523607, -0.8599524,
0.1123191, 0.6779174, -0.6392275, -0.2363295, -0.4523607, -0.8599524,
0.1108038, 0.6766366, -0.6381373, -0.7281163, 0.628388, -0.2738161,
0.1113455, 0.6776733, -0.6371984, -0.7281163, 0.628388, -0.2738161,
0.1123191, 0.6779174, -0.6392275, -0.7281163, 0.628388, -0.2738161,
0.1123191, 0.6779174, -0.6392275, -0.7281163, 0.628388, -0.2738161,
0.1113455, 0.6776733, -0.6371984, 0.4398857, 0.8419897, 0.3123361,
0.112675, 0.6769788, -0.6371984, 0.4398857, 0.8419897, 0.3123361,
0.1123191, 0.6779174, -0.6392275, 0.4398857, 0.8419897, 0.3123361,
0.1123191, 0.6779174, -0.6392275, 0.4398857, 0.8419897, 0.3123361
]);
var normLoc18 = gl.getAttribLocation(prog18, "aNorm");
var f=new Uint16Array([
0, 1, 2, 0, 2, 3,
4, 5, 6, 4, 6, 7,
8, 9, 10, 8, 10, 11,
12, 13, 14, 12, 14, 15,
16, 17, 18, 16, 18, 19,
20, 21, 22, 20, 22, 23,
24, 25, 26, 24, 26, 27,
28, 29, 30, 28, 30, 31,
32, 33, 34, 32, 34, 35,
36, 37, 38, 36, 38, 39,
40, 41, 42, 40, 42, 43
]);
var buf18 = gl.createBuffer();
gl.bindBuffer(gl.ARRAY_BUFFER, buf18);
gl.bufferData(gl.ARRAY_BUFFER, v, gl.STATIC_DRAW);
var ibuf18 = gl.createBuffer();
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, ibuf18);
gl.bufferData(gl.ELEMENT_ARRAY_BUFFER, f, gl.STATIC_DRAW);
var mvMatLoc18 = gl.getUniformLocation(prog18,"mvMatrix");
var prMatLoc18 = gl.getUniformLocation(prog18,"prMatrix");
var normMatLoc18 = gl.getUniformLocation(prog18,"normMatrix");
// ****** quads object 19 ******
var prog19  = gl.createProgram();
gl.attachShader(prog19, getShader( gl, "unnamed_chunk_2vshader19" ));
gl.attachShader(prog19, getShader( gl, "unnamed_chunk_2fshader19" ));
//  Force aPos to location 0, aCol to location 1 
gl.bindAttribLocation(prog19, 0, "aPos");
gl.bindAttribLocation(prog19, 1, "aCol");
gl.linkProgram(prog19);
var v=new Float32Array([
0.04940538, -0.01430747, 0.0955099, -0.2609459, 0.8919339, -0.3692709,
0.04120126, -0.01670768, 0.0955099, -0.2609459, 0.8919339, -0.3692709,
0.04031493, -0.01367814, 0.1034538, -0.2609459, 0.8919339, -0.3692709,
0.04851905, -0.01127792, 0.1034538, -0.2609459, 0.8919339, -0.3692709,
0.2208558, -0.6003389, 0.3381335, -0.2609462, 0.8919323, -0.3692748,
0.2126517, -0.6027392, 0.3381335, -0.2609462, 0.8919323, -0.3692748,
0.2117654, -0.5997096, 0.3460774, -0.2609462, 0.8919323, -0.3692748,
0.2199695, -0.5973094, 0.3460774, -0.2609462, 0.8919323, -0.3692748,
0.04940538, -0.01430747, 0.0955099, -0.1036882, 0.3544144, 0.9293219,
0.04120126, -0.01670768, 0.0955099, -0.1036882, 0.3544144, 0.9293219,
0.2126517, -0.6027392, 0.3381335, -0.1036882, 0.3544144, 0.9293219,
0.2208558, -0.6003389, 0.3381335, -0.1036882, 0.3544144, 0.9293219,
0.04120126, -0.01670768, 0.0955099, 0.9597688, 0.2807918, -6.218387e-08,
0.04031493, -0.01367814, 0.1034538, 0.9597688, 0.2807918, -6.218387e-08,
0.2117654, -0.5997096, 0.3460774, 0.9597688, 0.2807918, -6.218387e-08,
0.2126517, -0.6027392, 0.3381335, 0.9597688, 0.2807918, -6.218387e-08,
0.04031493, -0.01367814, 0.1034538, 0.1036881, -0.3544145, -0.9293218,
0.04851905, -0.01127792, 0.1034538, 0.1036881, -0.3544145, -0.9293218,
0.2199695, -0.5973094, 0.3460774, 0.1036881, -0.3544145, -0.9293218,
0.2117654, -0.5997096, 0.3460774, 0.1036881, -0.3544145, -0.9293218,
0.04851905, -0.01127792, 0.1034538, -0.9597688, -0.2807918, 2.072796e-08,
0.04940538, -0.01430747, 0.0955099, -0.9597688, -0.2807918, 2.072796e-08,
0.2208558, -0.6003389, 0.3381335, -0.9597688, -0.2807918, 2.072796e-08,
0.2199695, -0.5973094, 0.3460774, -0.9597688, -0.2807918, 2.072796e-08,
0.04565775, -0.01404802, 0.09878484, -0.260946, 0.8919342, -0.3692706,
0.04421809, -0.01446921, 0.09878484, -0.260946, 0.8919342, -0.3692706,
0.04406256, -0.01393759, 0.1001788, -0.260946, 0.8919342, -0.3692706,
0.04550222, -0.0135164, 0.1001788, -0.260946, 0.8919342, -0.3692706,
0.04565775, -0.01404802, 0.09878484, -0.8070355, -0.576092, 0.1296602,
0.04550222, -0.0135164, 0.1001788, -0.8070355, -0.576092, 0.1296602,
0.04433826, -0.01220893, 0.09874329, -0.8070355, -0.576092, 0.1296602,
0.04433826, -0.01220893, 0.09874329, -0.8070355, -0.576092, 0.1296602,
0.04565775, -0.01404802, 0.09878484, 0.00546228, -0.0186705, -0.9998108,
0.04421809, -0.01446921, 0.09878484, 0.00546228, -0.0186705, -0.9998108,
0.04433826, -0.01220893, 0.09874329, 0.00546228, -0.0186705, -0.9998108,
0.04433826, -0.01220893, 0.09874329, 0.00546228, -0.0186705, -0.9998108,
0.04421809, -0.01446921, 0.09878484, -0.9902837, 0.05026616, -0.129659,
0.04406256, -0.01393759, 0.1001788, -0.9902837, 0.05026616, -0.129659,
0.04433826, -0.01220893, 0.09874329, -0.9902837, 0.05026616, -0.129659,
0.04433826, -0.01220893, 0.09874329, -0.9902837, 0.05026616, -0.129659,
0.04406256, -0.01393759, 0.1001788, -0.1887106, 0.6450277, 0.7404915,
0.04550222, -0.0135164, 0.1001788, -0.1887106, 0.6450277, 0.7404915,
0.04433826, -0.01220893, 0.09874329, -0.1887106, 0.6450277, 0.7404915,
0.04433826, -0.01220893, 0.09874329, -0.1887106, 0.6450277, 0.7404915
]);
var normLoc19 = gl.getAttribLocation(prog19, "aNorm");
var f=new Uint16Array([
0, 1, 2, 0, 2, 3,
4, 5, 6, 4, 6, 7,
8, 9, 10, 8, 10, 11,
12, 13, 14, 12, 14, 15,
16, 17, 18, 16, 18, 19,
20, 21, 22, 20, 22, 23,
24, 25, 26, 24, 26, 27,
28, 29, 30, 28, 30, 31,
32, 33, 34, 32, 34, 35,
36, 37, 38, 36, 38, 39,
40, 41, 42, 40, 42, 43
]);
var buf19 = gl.createBuffer();
gl.bindBuffer(gl.ARRAY_BUFFER, buf19);
gl.bufferData(gl.ARRAY_BUFFER, v, gl.STATIC_DRAW);
var ibuf19 = gl.createBuffer();
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, ibuf19);
gl.bufferData(gl.ELEMENT_ARRAY_BUFFER, f, gl.STATIC_DRAW);
var mvMatLoc19 = gl.getUniformLocation(prog19,"mvMatrix");
var prMatLoc19 = gl.getUniformLocation(prog19,"prMatrix");
var normMatLoc19 = gl.getUniformLocation(prog19,"normMatrix");
// ****** quads object 20 ******
var prog20  = gl.createProgram();
gl.attachShader(prog20, getShader( gl, "unnamed_chunk_2vshader20" ));
gl.attachShader(prog20, getShader( gl, "unnamed_chunk_2fshader20" ));
//  Force aPos to location 0, aCol to location 1 
gl.bindAttribLocation(prog20, 0, "aPos");
gl.bindAttribLocation(prog20, 1, "aCol");
gl.linkProgram(prog20);
var v=new Float32Array([
0.4319296, -0.9175977, 0.4130527, 0.5577561, -0.8081703, 0.1891265,
0.4367452, -0.9142742, 0.4130527, 0.5577561, -0.8081703, 0.1891265,
0.4361166, -0.9133635, 0.4187982, 0.5577561, -0.8081703, 0.1891265,
0.4313011, -0.9166869, 0.4187982, 0.5577561, -0.8081703, 0.1891265,
0.2142171, -0.6021413, 0.3392327, 0.5577596, -0.8081702, 0.1891171,
0.2190326, -0.5988179, 0.3392327, 0.5577596, -0.8081702, 0.1891171,
0.2184041, -0.5979072, 0.3449782, 0.5577596, -0.8081702, 0.1891171,
0.2135886, -0.6012306, 0.3449782, 0.5577596, -0.8081702, 0.1891171,
0.4319296, -0.9175977, 0.4130527, -0.1074215, 0.1556502, 0.9819539,
0.4367452, -0.9142742, 0.4130527, -0.1074215, 0.1556502, 0.9819539,
0.2190326, -0.5988179, 0.3392327, -0.1074215, 0.1556502, 0.9819539,
0.2142171, -0.6021413, 0.3392327, -0.1074215, 0.1556502, 0.9819539,
0.4367452, -0.9142742, 0.4130527, -0.8230224, -0.5680088, 4.198906e-06,
0.4361166, -0.9133635, 0.4187982, -0.8230224, -0.5680088, 4.198906e-06,
0.2184041, -0.5979072, 0.3449782, -0.8230224, -0.5680088, 4.198906e-06,
0.2190326, -0.5988179, 0.3392327, -0.8230224, -0.5680088, 4.198906e-06,
0.4361166, -0.9133635, 0.4187982, 0.107422, -0.15565, -0.981954,
0.4313011, -0.9166869, 0.4187982, 0.107422, -0.15565, -0.981954,
0.2135886, -0.6012306, 0.3449782, 0.107422, -0.15565, -0.981954,
0.2184041, -0.5979072, 0.3449782, 0.107422, -0.15565, -0.981954,
0.4313011, -0.9166869, 0.4187982, 0.8230229, 0.5680081, -8.289498e-06,
0.4319296, -0.9175977, 0.4130527, 0.8230229, 0.5680081, -8.289498e-06,
0.2142171, -0.6021413, 0.3392327, 0.8230229, 0.5680081, -8.289498e-06,
0.2135886, -0.6012306, 0.3449782, 0.8230229, 0.5680081, -8.289498e-06,
0.4334864, -0.9160233, 0.415189, 0.557775, -0.8081591, 0.1891188,
0.434721, -0.9151713, 0.415189, 0.557775, -0.8081591, 0.1891188,
0.4345598, -0.9149378, 0.4166619, 0.557775, -0.8081591, 0.1891188,
0.4333253, -0.9157898, 0.4166619, 0.557775, -0.8081591, 0.1891188,
0.4334864, -0.9160233, 0.415189, 0.5747783, 0.815611, -0.06639832,
0.4333253, -0.9157898, 0.4166619, 0.5747783, 0.815611, -0.06639832,
0.4351386, -0.9170969, 0.4163037, 0.5747783, 0.815611, -0.06639832,
0.4351386, -0.9170969, 0.4163037, 0.5747783, 0.815611, -0.06639832,
0.4334864, -0.9160233, 0.415189, 0.2964353, -0.4295047, -0.8530252,
0.434721, -0.9151713, 0.415189, 0.2964353, -0.4295047, -0.8530252,
0.4351386, -0.9170969, 0.4163037, 0.2964353, -0.4295047, -0.8530252,
0.4351386, -0.9170969, 0.4163037, 0.2964353, -0.4295047, -0.8530252,
0.434721, -0.9151713, 0.415189, 0.9664624, 0.2480729, 0.06641024,
0.4345598, -0.9149378, 0.4166619, 0.9664624, 0.2480729, 0.06641024,
0.4351386, -0.9170969, 0.4163037, 0.9664624, 0.2480729, 0.06641024,
0.4351386, -0.9170969, 0.4163037, 0.9664624, 0.2480729, 0.06641024,
0.4345598, -0.9149378, 0.4166619, 0.0952616, -0.1380244, 0.9858369,
0.4333253, -0.9157898, 0.4166619, 0.0952616, -0.1380244, 0.9858369,
0.4351386, -0.9170969, 0.4163037, 0.0952616, -0.1380244, 0.9858369,
0.4351386, -0.9170969, 0.4163037, 0.0952616, -0.1380244, 0.9858369
]);
var normLoc20 = gl.getAttribLocation(prog20, "aNorm");
var f=new Uint16Array([
0, 1, 2, 0, 2, 3,
4, 5, 6, 4, 6, 7,
8, 9, 10, 8, 10, 11,
12, 13, 14, 12, 14, 15,
16, 17, 18, 16, 18, 19,
20, 21, 22, 20, 22, 23,
24, 25, 26, 24, 26, 27,
28, 29, 30, 28, 30, 31,
32, 33, 34, 32, 34, 35,
36, 37, 38, 36, 38, 39,
40, 41, 42, 40, 42, 43
]);
var buf20 = gl.createBuffer();
gl.bindBuffer(gl.ARRAY_BUFFER, buf20);
gl.bufferData(gl.ARRAY_BUFFER, v, gl.STATIC_DRAW);
var ibuf20 = gl.createBuffer();
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, ibuf20);
gl.bufferData(gl.ELEMENT_ARRAY_BUFFER, f, gl.STATIC_DRAW);
var mvMatLoc20 = gl.getUniformLocation(prog20,"mvMatrix");
var prMatLoc20 = gl.getUniformLocation(prog20,"prMatrix");
var normMatLoc20 = gl.getUniformLocation(prog20,"normMatrix");
// ****** quads object 21 ******
var prog21  = gl.createProgram();
gl.attachShader(prog21, getShader( gl, "unnamed_chunk_2vshader21" ));
gl.attachShader(prog21, getShader( gl, "unnamed_chunk_2fshader21" ));
//  Force aPos to location 0, aCol to location 1 
gl.bindAttribLocation(prog21, 0, "aPos");
gl.bindAttribLocation(prog21, 1, "aCol");
gl.linkProgram(prog21);
var v=new Float32Array([
0.03845047, 0.02480147, 0.06611327, -0.2096446, -0.6068614, 0.7666606,
0.04639538, 0.02205685, 0.06611327, -0.2096446, -0.6068614, 0.7666606,
0.04849957, 0.02814789, 0.07151012, -0.2096446, -0.6068614, 0.7666606,
0.04055467, 0.03089252, 0.07151012, -0.2096446, -0.6068614, 0.7666606,
0.1660088, 0.3940465, -0.4003613, -0.2096461, -0.6068617, 0.7666599,
0.1739537, 0.3913018, -0.4003613, -0.2096461, -0.6068617, 0.7666599,
0.1760579, 0.3973929, -0.3949644, -0.2096461, -0.6068617, 0.7666599,
0.168113, 0.4001375, -0.3949644, -0.2096461, -0.6068617, 0.7666599,
0.03845047, 0.02480147, 0.06611327, 0.2503318, 0.7246393, 0.6420529,
0.04639538, 0.02205685, 0.06611327, 0.2503318, 0.7246393, 0.6420529,
0.1739537, 0.3913018, -0.4003613, 0.2503318, 0.7246393, 0.6420529,
0.1660088, 0.3940465, -0.4003613, 0.2503318, 0.7246393, 0.6420529,
0.04639538, 0.02205685, 0.06611327, -0.9451894, 0.3265227, 1.365736e-07,
0.04849957, 0.02814789, 0.07151012, -0.9451894, 0.3265227, 1.365736e-07,
0.1760579, 0.3973929, -0.3949644, -0.9451894, 0.3265227, 1.365736e-07,
0.1739537, 0.3913018, -0.4003613, -0.9451894, 0.3265227, 1.365736e-07,
0.04849957, 0.02814789, 0.07151012, -0.2503318, -0.7246392, -0.6420529,
0.04055467, 0.03089252, 0.07151012, -0.2503318, -0.7246392, -0.6420529,
0.168113, 0.4001375, -0.3949644, -0.2503318, -0.7246392, -0.6420529,
0.1760579, 0.3973929, -0.3949644, -0.2503318, -0.7246392, -0.6420529,
0.04055467, 0.03089252, 0.07151012, 0.9451894, -0.3265226, -1.479547e-07,
0.03845047, 0.02480147, 0.06611327, 0.9451894, -0.3265226, -1.479547e-07,
0.1660088, 0.3940465, -0.4003613, 0.9451894, -0.3265226, -1.479547e-07,
0.168113, 0.4001375, -0.3949644, 0.9451894, -0.3265226, -1.479547e-07,
0.04257838, 0.02617609, 0.06833015, -0.2096448, -0.606864, 0.7666584,
0.04399617, 0.02568631, 0.06833015, -0.2096448, -0.606864, 0.7666584,
0.04437166, 0.02677327, 0.06929324, -0.2096448, -0.606864, 0.7666584,
0.04295388, 0.02726305, 0.06929324, -0.2096448, -0.606864, 0.7666584,
0.04257838, 0.02617609, 0.06833015, 0.9586197, -0.09264861, -0.269192,
0.04295388, 0.02726305, 0.06929324, 0.9586197, -0.09264861, -0.269192,
0.04305573, 0.02526096, 0.07034501, 0.9586197, -0.09264861, -0.269192,
0.04305573, 0.02526096, 0.07034501, 0.9586197, -0.09264861, -0.269192,
0.04257838, 0.02617609, 0.06833015, -0.3080032, -0.8915846, -0.3319803,
0.04399617, 0.02568631, 0.06833015, -0.3080032, -0.8915846, -0.3319803,
0.04305573, 0.02526096, 0.07034501, -0.3080032, -0.8915846, -0.3319803,
0.04305573, 0.02526096, 0.07034501, -0.3080032, -0.8915846, -0.3319803,
0.04399617, 0.02568631, 0.06833015, 0.8113962, -0.5188175, 0.2691924,
0.04437166, 0.02677327, 0.06929324, 0.8113962, -0.5188175, 0.2691924,
0.04305573, 0.02526096, 0.07034501, 0.8113962, -0.5188175, 0.2691924,
0.04305573, 0.02526096, 0.07034501, 0.8113962, -0.5188175, 0.2691924,
0.04437166, 0.02677327, 0.06929324, 0.1607813, 0.465416, 0.8703662,
0.04295388, 0.02726305, 0.06929324, 0.1607813, 0.465416, 0.8703662,
0.04305573, 0.02526096, 0.07034501, 0.1607813, 0.465416, 0.8703662,
0.04305573, 0.02526096, 0.07034501, 0.1607813, 0.465416, 0.8703662
]);
var normLoc21 = gl.getAttribLocation(prog21, "aNorm");
var f=new Uint16Array([
0, 1, 2, 0, 2, 3,
4, 5, 6, 4, 6, 7,
8, 9, 10, 8, 10, 11,
12, 13, 14, 12, 14, 15,
16, 17, 18, 16, 18, 19,
20, 21, 22, 20, 22, 23,
24, 25, 26, 24, 26, 27,
28, 29, 30, 28, 30, 31,
32, 33, 34, 32, 34, 35,
36, 37, 38, 36, 38, 39,
40, 41, 42, 40, 42, 43
]);
var buf21 = gl.createBuffer();
gl.bindBuffer(gl.ARRAY_BUFFER, buf21);
gl.bufferData(gl.ARRAY_BUFFER, v, gl.STATIC_DRAW);
var ibuf21 = gl.createBuffer();
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, ibuf21);
gl.bufferData(gl.ELEMENT_ARRAY_BUFFER, f, gl.STATIC_DRAW);
var mvMatLoc21 = gl.getUniformLocation(prog21,"mvMatrix");
var prMatLoc21 = gl.getUniformLocation(prog21,"prMatrix");
var normMatLoc21 = gl.getUniformLocation(prog21,"normMatrix");
// ****** quads object 22 ******
var prog22  = gl.createProgram();
gl.attachShader(prog22, getShader( gl, "unnamed_chunk_2vshader22" ));
gl.attachShader(prog22, getShader( gl, "unnamed_chunk_2fshader22" ));
//  Force aPos to location 0, aCol to location 1 
gl.bindAttribLocation(prog22, 0, "aPos");
gl.bindAttribLocation(prog22, 1, "aCol");
gl.linkProgram(prog22);
var v=new Float32Array([
0.1259072, 0.6704736, -0.6429764, -0.1292952, 0.7437656, -0.6558167,
0.1207901, 0.6695841, -0.6429764, -0.1292952, 0.7437656, -0.6558167,
0.1202068, 0.67294, -0.6390555, -0.1292952, 0.7437656, -0.6558167,
0.1253238, 0.6738295, -0.6390555, -0.1292952, 0.7437656, -0.6558167,
0.1738836, 0.3944865, -0.3996233, -0.1292948, 0.7437631, -0.6558195,
0.1687665, 0.393597, -0.3996233, -0.1292948, 0.7437631, -0.6558195,
0.1681832, 0.3969528, -0.3957024, -0.1292948, 0.7437631, -0.6558195,
0.1733002, 0.3978424, -0.3957024, -0.1292948, 0.7437631, -0.6558195,
0.1259072, 0.6704736, -0.6429764, -0.112322, 0.646128, 0.7549188,
0.1207901, 0.6695841, -0.6429764, -0.112322, 0.646128, 0.7549188,
0.1687665, 0.393597, -0.3996233, -0.112322, 0.646128, 0.7549188,
0.1738836, 0.3944865, -0.3996233, -0.112322, 0.646128, 0.7549188,
0.1207901, 0.6695841, -0.6429764, 0.9852247, 0.1712668, -3.624282e-07,
0.1202068, 0.67294, -0.6390555, 0.9852247, 0.1712668, -3.624282e-07,
0.1681832, 0.3969528, -0.3957024, 0.9852247, 0.1712668, -3.624282e-07,
0.1687665, 0.393597, -0.3996233, 0.9852247, 0.1712668, -3.624282e-07,
0.1202068, 0.67294, -0.6390555, 0.112322, -0.646128, -0.7549188,
0.1253238, 0.6738295, -0.6390555, 0.112322, -0.646128, -0.7549188,
0.1733002, 0.3978424, -0.3957024, 0.112322, -0.646128, -0.7549188,
0.1681832, 0.3969528, -0.3957024, 0.112322, -0.646128, -0.7549188,
0.1253238, 0.6738295, -0.6390555, -0.9852247, -0.1712668, 3.624282e-07,
0.1259072, 0.6704736, -0.6429764, -0.9852247, -0.1712668, 3.624282e-07,
0.1738836, 0.3944865, -0.3996233, -0.9852247, -0.1712668, 3.624282e-07,
0.1733002, 0.3978424, -0.3957024, -0.9852247, -0.1712668, 3.624282e-07,
0.1238801, 0.6713507, -0.6415821, -0.1292912, 0.7437692, -0.6558135,
0.1224023, 0.6710938, -0.6415821, -0.1292912, 0.7437692, -0.6558135,
0.1222338, 0.6720629, -0.6404498, -0.1292912, 0.7437692, -0.6558135,
0.1237117, 0.6723198, -0.6404498, -0.1292912, 0.7437692, -0.6558135,
0.1238801, 0.6713507, -0.6415821, -0.8770972, -0.4215172, 0.2302687,
0.1237117, 0.6723198, -0.6404498, -0.8770972, -0.4215172, 0.2302687,
0.1227984, 0.6731943, -0.6423275, -0.8770972, -0.4215172, 0.2302687,
0.1227984, 0.6731943, -0.6423275, -0.8770972, -0.4215172, 0.2302687,
0.1238801, 0.6713507, -0.6415821, 0.05976722, -0.343821, -0.9371313,
0.1224023, 0.6710938, -0.6415821, 0.05976722, -0.343821, -0.9371313,
0.1227984, 0.6731943, -0.6423275, 0.05976722, -0.343821, -0.9371313,
0.1227984, 0.6731943, -0.6423275, 0.05976722, -0.343821, -0.9371313,
0.1224023, 0.6710938, -0.6415821, -0.9678914, 0.1007938, -0.2302755,
0.1222338, 0.6720629, -0.6404498, -0.9678914, 0.1007938, -0.2302755,
0.1227984, 0.6731943, -0.6423275, -0.9678914, 0.1007938, -0.2302755,
0.1227984, 0.6731943, -0.6423275, -0.9678914, 0.1007938, -0.2302755,
0.1222338, 0.6720629, -0.6404498, -0.1505617, 0.8661317, 0.4765995,
0.1237117, 0.6723198, -0.6404498, -0.1505617, 0.8661317, 0.4765995,
0.1227984, 0.6731943, -0.6423275, -0.1505617, 0.8661317, 0.4765995,
0.1227984, 0.6731943, -0.6423275, -0.1505617, 0.8661317, 0.4765995
]);
var normLoc22 = gl.getAttribLocation(prog22, "aNorm");
var f=new Uint16Array([
0, 1, 2, 0, 2, 3,
4, 5, 6, 4, 6, 7,
8, 9, 10, 8, 10, 11,
12, 13, 14, 12, 14, 15,
16, 17, 18, 16, 18, 19,
20, 21, 22, 20, 22, 23,
24, 25, 26, 24, 26, 27,
28, 29, 30, 28, 30, 31,
32, 33, 34, 32, 34, 35,
36, 37, 38, 36, 38, 39,
40, 41, 42, 40, 42, 43
]);
var buf22 = gl.createBuffer();
gl.bindBuffer(gl.ARRAY_BUFFER, buf22);
gl.bufferData(gl.ARRAY_BUFFER, v, gl.STATIC_DRAW);
var ibuf22 = gl.createBuffer();
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, ibuf22);
gl.bufferData(gl.ELEMENT_ARRAY_BUFFER, f, gl.STATIC_DRAW);
var mvMatLoc22 = gl.getUniformLocation(prog22,"mvMatrix");
var prMatLoc22 = gl.getUniformLocation(prog22,"prMatrix");
var normMatLoc22 = gl.getUniformLocation(prog22,"normMatrix");
// ****** quads object 23 ******
var prog23  = gl.createProgram();
gl.attachShader(prog23, getShader( gl, "unnamed_chunk_2vshader23" ));
gl.attachShader(prog23, getShader( gl, "unnamed_chunk_2fshader23" ));
//  Force aPos to location 0, aCol to location 1 
gl.bindAttribLocation(prog23, 0, "aPos");
gl.bindAttribLocation(prog23, 1, "aCol");
gl.linkProgram(prog23);
var v=new Float32Array([
0.3090731, -0.1227397, 0.4548554, 0.5697303, -0.2687534, 0.776646,
0.3128319, -0.1147714, 0.4548554, 0.5697303, -0.2687534, 0.776646,
0.3066433, -0.111852, 0.4604054, 0.5697303, -0.2687534, 0.776646,
0.3028845, -0.1198204, 0.4604054, 0.5697303, -0.2687534, 0.776646,
0.03902949, 0.004645576, 0.08673651, 0.5697301, -0.2687538, 0.776646,
0.04278835, 0.01261396, 0.08673651, 0.5697301, -0.2687538, 0.776646,
0.03659974, 0.01553326, 0.09228654, 0.5697301, -0.2687538, 0.776646,
0.03284088, 0.007564877, 0.09228654, 0.5697301, -0.2687538, 0.776646,
0.3090731, -0.1227397, 0.4548554, -0.7024174, 0.3313446, 0.6299371,
0.3128319, -0.1147714, 0.4548554, -0.7024174, 0.3313446, 0.6299371,
0.04278835, 0.01261396, 0.08673651, -0.7024174, 0.3313446, 0.6299371,
0.03902949, 0.004645576, 0.08673651, -0.7024174, 0.3313446, 0.6299371,
0.3128319, -0.1147714, 0.4548554, -0.4266363, -0.9044232, 4.460335e-07,
0.3066433, -0.111852, 0.4604054, -0.4266363, -0.9044232, 4.460335e-07,
0.03659974, 0.01553326, 0.09228654, -0.4266363, -0.9044232, 4.460335e-07,
0.04278835, 0.01261396, 0.08673651, -0.4266363, -0.9044232, 4.460335e-07,
0.3066433, -0.111852, 0.4604054, 0.7024163, -0.3313467, -0.629937,
0.3028845, -0.1198204, 0.4604054, 0.7024163, -0.3313467, -0.629937,
0.03284088, 0.007564877, 0.09228654, 0.7024163, -0.3313467, -0.629937,
0.03659974, 0.01553326, 0.09228654, 0.7024163, -0.3313467, -0.629937,
0.3028845, -0.1198204, 0.4604054, 0.4266353, 0.9044238, 4.59971e-07,
0.3090731, -0.1227397, 0.4548554, 0.4266353, 0.9044238, 4.59971e-07,
0.03902949, 0.004645576, 0.08673651, 0.4266353, 0.9044238, 4.59971e-07,
0.03284088, 0.007564877, 0.09228654, 0.4266353, 0.9044238, 4.59971e-07,
0.3080651, -0.1182227, 0.457158, 0.5697315, -0.2687517, 0.7766457,
0.308705, -0.1168661, 0.457158, 0.5697315, -0.2687517, 0.7766457,
0.3076514, -0.1163691, 0.4581029, 0.5697315, -0.2687517, 0.7766457,
0.3070114, -0.1177257, 0.4581029, 0.5697315, -0.2687517, 0.7766457,
0.3080651, -0.1182227, 0.457158, 0.1994247, 0.9412056, -0.2726936,
0.3070114, -0.1177257, 0.4581029, 0.1994247, 0.9412056, -0.2726936,
0.3089977, -0.1178334, 0.4591837, 0.1994247, 0.9412056, -0.2726936,
0.3089977, -0.1178334, 0.4591837, 0.1994247, 0.9412056, -0.2726936,
0.3080651, -0.1182227, 0.457158, 0.8577428, -0.4046113, -0.317123,
0.308705, -0.1168661, 0.457158, 0.8577428, -0.4046113, -0.317123,
0.3089977, -0.1178334, 0.4591837, 0.8577428, -0.4046113, -0.317123,
0.3089977, -0.1178334, 0.4591837, 0.8577428, -0.4046113, -0.317123,
0.308705, -0.1168661, 0.457158, 0.5995184, 0.7524708, 0.2727,
0.3076514, -0.1163691, 0.4581029, 0.5995184, 0.7524708, 0.2727,
0.3089977, -0.1178334, 0.4591837, 0.5995184, 0.7524708, 0.2727,
0.3089977, -0.1178334, 0.4591837, 0.5995184, 0.7524708, 0.2727,
0.3076514, -0.1163691, 0.4581029, -0.4576513, 0.2158804, 0.8625259,
0.3070114, -0.1177257, 0.4581029, -0.4576513, 0.2158804, 0.8625259,
0.3089977, -0.1178334, 0.4591837, -0.4576513, 0.2158804, 0.8625259,
0.3089977, -0.1178334, 0.4591837, -0.4576513, 0.2158804, 0.8625259
]);
var normLoc23 = gl.getAttribLocation(prog23, "aNorm");
var f=new Uint16Array([
0, 1, 2, 0, 2, 3,
4, 5, 6, 4, 6, 7,
8, 9, 10, 8, 10, 11,
12, 13, 14, 12, 14, 15,
16, 17, 18, 16, 18, 19,
20, 21, 22, 20, 22, 23,
24, 25, 26, 24, 26, 27,
28, 29, 30, 28, 30, 31,
32, 33, 34, 32, 34, 35,
36, 37, 38, 36, 38, 39,
40, 41, 42, 40, 42, 43
]);
var buf23 = gl.createBuffer();
gl.bindBuffer(gl.ARRAY_BUFFER, buf23);
gl.bufferData(gl.ARRAY_BUFFER, v, gl.STATIC_DRAW);
var ibuf23 = gl.createBuffer();
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, ibuf23);
gl.bufferData(gl.ELEMENT_ARRAY_BUFFER, f, gl.STATIC_DRAW);
var mvMatLoc23 = gl.getUniformLocation(prog23,"mvMatrix");
var prMatLoc23 = gl.getUniformLocation(prog23,"prMatrix");
var normMatLoc23 = gl.getUniformLocation(prog23,"normMatrix");
// ****** quads object 24 ******
var prog24  = gl.createProgram();
gl.attachShader(prog24, getShader( gl, "unnamed_chunk_2vshader24" ));
gl.attachShader(prog24, getShader( gl, "unnamed_chunk_2fshader24" ));
//  Force aPos to location 0, aCol to location 1 
gl.bindAttribLocation(prog24, 0, "aPos");
gl.bindAttribLocation(prog24, 1, "aCol");
gl.linkProgram(prog24);
var v=new Float32Array([
0.2455407, -0.3327747, -0.2028154, 0.4290116, -0.6908149, -0.5819999,
0.2530465, -0.3281134, -0.2028154, 0.4290116, -0.6908149, -0.5819999,
0.2557594, -0.3324818, -0.1956306, 0.4290116, -0.6908149, -0.5819999,
0.2482536, -0.3371431, -0.1956306, 0.4290116, -0.6908149, -0.5819999,
0.03270526, 0.009942972, 0.08591908, 0.4290112, -0.6908142, -0.5820008,
0.04021109, 0.01460426, 0.08591908, 0.4290112, -0.6908142, -0.5820008,
0.04292397, 0.01023586, 0.09310397, 0.4290112, -0.6908142, -0.5820008,
0.03541813, 0.005574571, 0.09310397, 0.4290112, -0.6908142, -0.5820008,
0.2455407, -0.3327747, -0.2028154, 0.3070444, -0.4944174, 0.8131882,
0.2530465, -0.3281134, -0.2028154, 0.3070444, -0.4944174, 0.8131882,
0.04021109, 0.01460426, 0.08591908, 0.3070444, -0.4944174, 0.8131882,
0.03270526, 0.009942972, 0.08591908, 0.3070444, -0.4944174, 0.8131882,
0.2530465, -0.3281134, -0.2028154, -0.8495132, -0.5275671, 2.788659e-07,
0.2557594, -0.3324818, -0.1956306, -0.8495132, -0.5275671, 2.788659e-07,
0.04292397, 0.01023586, 0.09310397, -0.8495132, -0.5275671, 2.788659e-07,
0.04021109, 0.01460426, 0.08591908, -0.8495132, -0.5275671, 2.788659e-07,
0.2557594, -0.3324818, -0.1956306, -0.3070444, 0.4944174, -0.8131882,
0.2482536, -0.3371431, -0.1956306, -0.3070444, 0.4944174, -0.8131882,
0.03541813, 0.005574571, 0.09310397, -0.3070444, 0.4944174, -0.8131882,
0.04292397, 0.01023586, 0.09310397, -0.3070444, 0.4944174, -0.8131882,
0.2482536, -0.3371431, -0.1956306, 0.8495132, 0.5275671, -2.788659e-07,
0.2455407, -0.3327747, -0.2028154, 0.8495132, 0.5275671, -2.788659e-07,
0.03270526, 0.009942972, 0.08591908, 0.8495132, 0.5275671, -2.788659e-07,
0.03541813, 0.005574571, 0.09310397, 0.8495132, 0.5275671, -2.788659e-07,
0.2497827, -0.3326531, -0.1998329, 0.4290096, -0.6908133, -0.5820031,
0.2510569, -0.3318618, -0.1998329, 0.4290096, -0.6908133, -0.5820031,
0.2515175, -0.3326034, -0.1986131, 0.4290096, -0.6908133, -0.5820031,
0.2502432, -0.3333947, -0.1986131, 0.4290096, -0.6908133, -0.5820031,
0.2497827, -0.3326531, -0.1998329, 0.6447934, 0.7365332, 0.2043536,
0.2502432, -0.3333947, -0.1986131, 0.6447934, 0.7365332, 0.2043536,
0.2515081, -0.3340099, -0.200387, 0.6447934, 0.7365332, 0.2043536,
0.2515081, -0.3340099, -0.200387, 0.6447934, 0.7365332, 0.2043536,
0.2497827, -0.3326531, -0.1998329, -0.136859, 0.2203773, -0.9657658,
0.2510569, -0.3318618, -0.1998329, -0.136859, 0.2203773, -0.9657658,
0.2515081, -0.3340099, -0.200387, -0.136859, 0.2203773, -0.9657658,
0.2515081, -0.3340099, -0.200387, -0.136859, 0.2203773, -0.9657658,
0.2510569, -0.3318618, -0.1998329, 0.9460601, 0.2514173, -0.2043513,
0.2515175, -0.3326034, -0.1986131, 0.9460601, 0.2514173, -0.2043513,
0.2515081, -0.3340099, -0.200387, 0.9460601, 0.2514173, -0.2043513,
0.2515081, -0.3340099, -0.200387, 0.9460601, 0.2514173, -0.2043513,
0.2515175, -0.3326034, -0.1986131, 0.4381293, -0.7054983, 0.5570591,
0.2502432, -0.3333947, -0.1986131, 0.4381293, -0.7054983, 0.5570591,
0.2515081, -0.3340099, -0.200387, 0.4381293, -0.7054983, 0.5570591,
0.2515081, -0.3340099, -0.200387, 0.4381293, -0.7054983, 0.5570591
]);
var normLoc24 = gl.getAttribLocation(prog24, "aNorm");
var f=new Uint16Array([
0, 1, 2, 0, 2, 3,
4, 5, 6, 4, 6, 7,
8, 9, 10, 8, 10, 11,
12, 13, 14, 12, 14, 15,
16, 17, 18, 16, 18, 19,
20, 21, 22, 20, 22, 23,
24, 25, 26, 24, 26, 27,
28, 29, 30, 28, 30, 31,
32, 33, 34, 32, 34, 35,
36, 37, 38, 36, 38, 39,
40, 41, 42, 40, 42, 43
]);
var buf24 = gl.createBuffer();
gl.bindBuffer(gl.ARRAY_BUFFER, buf24);
gl.bufferData(gl.ARRAY_BUFFER, v, gl.STATIC_DRAW);
var ibuf24 = gl.createBuffer();
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, ibuf24);
gl.bufferData(gl.ELEMENT_ARRAY_BUFFER, f, gl.STATIC_DRAW);
var mvMatLoc24 = gl.getUniformLocation(prog24,"mvMatrix");
var prMatLoc24 = gl.getUniformLocation(prog24,"prMatrix");
var normMatLoc24 = gl.getUniformLocation(prog24,"normMatrix");
// ****** quads object 25 ******
var prog25  = gl.createProgram();
gl.attachShader(prog25, getShader( gl, "unnamed_chunk_2vshader25" ));
gl.attachShader(prog25, getShader( gl, "unnamed_chunk_2fshader25" ));
//  Force aPos to location 0, aCol to location 1 
gl.bindAttribLocation(prog25, 0, "aPos");
gl.bindAttribLocation(prog25, 1, "aCol");
gl.linkProgram(prog25);
var v=new Float32Array([
-0.4514172, 0.1209805, 0.1095444, -0.9760335, 0.2120691, 0.04883872,
-0.4533232, 0.1122086, 0.1095444, -0.9760335, 0.2120691, 0.04883872,
-0.4528947, 0.1121156, 0.1185102, -0.9760335, 0.2120691, 0.04883872,
-0.4509889, 0.1208874, 0.1185102, -0.9760335, 0.2120691, 0.04883872,
0.03855338, 0.01452189, 0.08502862, -0.9760339, 0.2120683, 0.048836,
0.03664747, 0.005750027, 0.08502862, -0.9760339, 0.2120683, 0.048836,
0.03707585, 0.005656949, 0.09399443, -0.9760339, 0.2120683, 0.048836,
0.03898176, 0.01442881, 0.09399443, -0.9760339, 0.2120683, 0.048836,
-0.4514172, 0.1209805, 0.1095444, 0.04772257, -0.01036899, 0.9988068,
-0.4533232, 0.1122086, 0.1095444, 0.04772257, -0.01036899, 0.9988068,
0.03664747, 0.005750027, 0.08502862, 0.04772257, -0.01036899, 0.9988068,
0.03855338, 0.01452189, 0.08502862, 0.04772257, -0.01036899, 0.9988068,
-0.4533232, 0.1122086, 0.1095444, 0.2123215, 0.9771999, -1.086656e-06,
-0.4528947, 0.1121156, 0.1185102, 0.2123215, 0.9771999, -1.086656e-06,
0.03707585, 0.005656949, 0.09399443, 0.2123215, 0.9771999, -1.086656e-06,
0.03664747, 0.005750027, 0.08502862, 0.2123215, 0.9771999, -1.086656e-06,
-0.4528947, 0.1121156, 0.1185102, -0.0477226, 0.01036883, -0.9988068,
-0.4509889, 0.1208874, 0.1185102, -0.0477226, 0.01036883, -0.9988068,
0.03898176, 0.01442881, 0.09399443, -0.0477226, 0.01036883, -0.9988068,
0.03707585, 0.005656949, 0.09399443, -0.0477226, 0.01036883, -0.9988068,
-0.4509889, 0.1208874, 0.1185102, -0.2123215, -0.9771999, 3.818634e-07,
-0.4514172, 0.1209805, 0.1095444, -0.2123215, -0.9771999, 3.818634e-07,
0.03855338, 0.01452189, 0.08502862, -0.2123215, -0.9771999, 3.818634e-07,
0.03898176, 0.01442881, 0.09399443, -0.2123215, -0.9771999, 3.818634e-07,
-0.4520325, 0.1172887, 0.1132782, -0.9760317, 0.2120781, 0.04883641,
-0.452351, 0.1158229, 0.1132782, -0.9760317, 0.2120781, 0.04883641,
-0.4522794, 0.1158074, 0.1147764, -0.9760317, 0.2120781, 0.04883641,
-0.451961, 0.1172732, 0.1147764, -0.9760317, 0.2120781, 0.04883641,
-0.4520325, 0.1172887, 0.1132782, 0.143905, -0.9894429, -0.01714494,
-0.451961, 0.1172732, 0.1147764, 0.143905, -0.9894429, -0.01714494,
-0.4541081, 0.1169722, 0.114125, 0.143905, -0.9894429, -0.01714494,
-0.4541081, 0.1169722, 0.114125, 0.143905, -0.9894429, -0.01714494,
-0.4520325, 0.1172887, 0.1132782, -0.3873931, 0.08417515, -0.9180638,
-0.452351, 0.1158229, 0.1132782, -0.3873931, 0.08417515, -0.9180638,
-0.4541081, 0.1169722, 0.114125, -0.3873931, 0.08417515, -0.9180638,
-0.4541081, 0.1169722, 0.114125, -0.3873931, 0.08417515, -0.9180638,
-0.452351, 0.1158229, 0.1132782, -0.5415122, -0.840518, 0.01715031,
-0.4522794, 0.1158074, 0.1147764, -0.5415122, -0.840518, 0.01715031,
-0.4541081, 0.1169722, 0.114125, -0.5415122, -0.840518, 0.01715031,
-0.4541081, 0.1169722, 0.114125, -0.5415122, -0.840518, 0.01715031,
-0.4522794, 0.1158074, 0.1147764, -0.2980211, 0.06475584, 0.9523602,
-0.451961, 0.1172732, 0.1147764, -0.2980211, 0.06475584, 0.9523602,
-0.4541081, 0.1169722, 0.114125, -0.2980211, 0.06475584, 0.9523602,
-0.4541081, 0.1169722, 0.114125, -0.2980211, 0.06475584, 0.9523602
]);
var normLoc25 = gl.getAttribLocation(prog25, "aNorm");
var f=new Uint16Array([
0, 1, 2, 0, 2, 3,
4, 5, 6, 4, 6, 7,
8, 9, 10, 8, 10, 11,
12, 13, 14, 12, 14, 15,
16, 17, 18, 16, 18, 19,
20, 21, 22, 20, 22, 23,
24, 25, 26, 24, 26, 27,
28, 29, 30, 28, 30, 31,
32, 33, 34, 32, 34, 35,
36, 37, 38, 36, 38, 39,
40, 41, 42, 40, 42, 43
]);
var buf25 = gl.createBuffer();
gl.bindBuffer(gl.ARRAY_BUFFER, buf25);
gl.bufferData(gl.ARRAY_BUFFER, v, gl.STATIC_DRAW);
var ibuf25 = gl.createBuffer();
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, ibuf25);
gl.bufferData(gl.ELEMENT_ARRAY_BUFFER, f, gl.STATIC_DRAW);
var mvMatLoc25 = gl.getUniformLocation(prog25,"mvMatrix");
var prMatLoc25 = gl.getUniformLocation(prog25,"prMatrix");
var normMatLoc25 = gl.getUniformLocation(prog25,"normMatrix");
// ****** quads object 26 ******
var prog26  = gl.createProgram();
gl.attachShader(prog26, getShader( gl, "unnamed_chunk_2vshader26" ));
gl.attachShader(prog26, getShader( gl, "unnamed_chunk_2fshader26" ));
//  Force aPos to location 0, aCol to location 1 
gl.bindAttribLocation(prog26, 0, "aPos");
gl.bindAttribLocation(prog26, 1, "aCol");
gl.linkProgram(prog26);
var v=new Float32Array([
-0.03217211, -0.4453272, -0.08114603, -0.1339215, -0.9312662, -0.3388336,
-0.02336503, -0.4465937, -0.08114603, -0.1339215, -0.9312662, -0.3388336,
-0.02379417, -0.4495778, -0.07277468, -0.1339215, -0.9312662, -0.3388336,
-0.03260125, -0.4483113, -0.07277468, -0.1339215, -0.9312662, -0.3388336,
0.03362564, 0.01221474, 0.08532584, -0.1339226, -0.9312668, -0.3388318,
0.04243273, 0.01094822, 0.08532584, -0.1339226, -0.9312668, -0.3388318,
0.04200359, 0.007964098, 0.09369721, -0.1339226, -0.9312668, -0.3388318,
0.03319651, 0.009230618, 0.09369721, -0.1339226, -0.9312668, -0.3388318,
-0.03217211, -0.4453272, -0.08114603, -0.04822983, -0.3353817, 0.940847,
-0.02336503, -0.4465937, -0.08114603, -0.04822983, -0.3353817, 0.940847,
0.04243273, 0.01094822, 0.08532584, -0.04822983, -0.3353817, 0.940847,
0.03362564, 0.01221474, 0.08532584, -0.04822983, -0.3353817, 0.940847,
-0.02336503, -0.4465937, -0.08114603, -0.9898174, 0.1423426, 3.32879e-07,
-0.02379417, -0.4495778, -0.07277468, -0.9898174, 0.1423426, 3.32879e-07,
0.04200359, 0.007964098, 0.09369721, -0.9898174, 0.1423426, 3.32879e-07,
0.04243273, 0.01094822, 0.08532584, -0.9898174, 0.1423426, 3.32879e-07,
-0.02379417, -0.4495778, -0.07277468, 0.04822982, 0.3353817, -0.940847,
-0.03260125, -0.4483113, -0.07277468, 0.04822982, 0.3353817, -0.940847,
0.03319651, 0.009230618, 0.09369721, 0.04822982, 0.3353817, -0.940847,
0.04200359, 0.007964098, 0.09369721, 0.04822982, 0.3353817, -0.940847,
-0.03260125, -0.4483113, -0.07277468, 0.9898174, -0.1423427, -1.364804e-07,
-0.03217211, -0.4453272, -0.08114603, 0.9898174, -0.1423427, -1.364804e-07,
0.03362564, 0.01221474, 0.08532584, 0.9898174, -0.1423427, -1.364804e-07,
0.03319651, 0.009230618, 0.09369721, 0.9898174, -0.1423427, -1.364804e-07,
-0.02868933, -0.4470942, -0.07766599, -0.1339168, -0.9312698, -0.3388256,
-0.0272046, -0.4473077, -0.07766599, -0.1339168, -0.9312698, -0.3388256,
-0.02727695, -0.4478108, -0.07625472, -0.1339168, -0.9312698, -0.3388256,
-0.02876167, -0.4475973, -0.07625472, -0.1339168, -0.9312698, -0.3388256,
-0.02868933, -0.4470942, -0.07766599, 0.9738181, 0.193712, 0.1189708,
-0.02876167, -0.4475973, -0.07625472, 0.9738181, 0.193712, 0.1189708,
-0.02825098, -0.449315, -0.07763802, 0.9738181, 0.193712, 0.1189708,
-0.02825098, -0.449315, -0.07763802, 0.9738181, 0.193712, 0.1189708,
-0.02868933, -0.4470942, -0.07766599, -0.001864301, -0.01296452, -0.9999142,
-0.0272046, -0.4473077, -0.07766599, -0.001864301, -0.01296452, -0.9999142,
-0.02825098, -0.449315, -0.07763802, -0.001864301, -0.01296452, -0.9999142,
-0.02825098, -0.449315, -0.07763802, -0.001864301, -0.01296452, -0.9999142,
-0.0272046, -0.4473077, -0.07766599, 0.8797713, -0.4602704, -0.1189691,
-0.02727695, -0.4478108, -0.07625472, 0.8797713, -0.4602704, -0.1189691,
-0.02825098, -0.449315, -0.07763802, 0.8797713, -0.4602704, -0.1189691,
-0.02825098, -0.449315, -0.07763802, 0.8797713, -0.4602704, -0.1189691,
-0.02727695, -0.4478108, -0.07625472, -0.09217852, -0.641018, 0.7619705,
-0.02876167, -0.4475973, -0.07625472, -0.09217852, -0.641018, 0.7619705,
-0.02825098, -0.449315, -0.07763802, -0.09217852, -0.641018, 0.7619705,
-0.02825098, -0.449315, -0.07763802, -0.09217852, -0.641018, 0.7619705
]);
var normLoc26 = gl.getAttribLocation(prog26, "aNorm");
var f=new Uint16Array([
0, 1, 2, 0, 2, 3,
4, 5, 6, 4, 6, 7,
8, 9, 10, 8, 10, 11,
12, 13, 14, 12, 14, 15,
16, 17, 18, 16, 18, 19,
20, 21, 22, 20, 22, 23,
24, 25, 26, 24, 26, 27,
28, 29, 30, 28, 30, 31,
32, 33, 34, 32, 34, 35,
36, 37, 38, 36, 38, 39,
40, 41, 42, 40, 42, 43
]);
var buf26 = gl.createBuffer();
gl.bindBuffer(gl.ARRAY_BUFFER, buf26);
gl.bufferData(gl.ARRAY_BUFFER, v, gl.STATIC_DRAW);
var ibuf26 = gl.createBuffer();
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, ibuf26);
gl.bufferData(gl.ELEMENT_ARRAY_BUFFER, f, gl.STATIC_DRAW);
var mvMatLoc26 = gl.getUniformLocation(prog26,"mvMatrix");
var prMatLoc26 = gl.getUniformLocation(prog26,"prMatrix");
var normMatLoc26 = gl.getUniformLocation(prog26,"normMatrix");
// ****** quads object 27 ******
var prog27  = gl.createProgram();
gl.attachShader(prog27, getShader( gl, "unnamed_chunk_2vshader27" ));
gl.attachShader(prog27, getShader( gl, "unnamed_chunk_2fshader27" ));
//  Force aPos to location 0, aCol to location 1 
gl.bindAttribLocation(prog27, 0, "aPos");
gl.bindAttribLocation(prog27, 1, "aCol");
gl.linkProgram(prog27);
var v=new Float32Array([
0.4790492, -0.227864, 0.06844833, 0.8833187, -0.4675231, -0.0342107,
0.4827005, -0.2209654, 0.06844833, 0.8833187, -0.4675231, -0.0342107,
0.4829365, -0.2210903, 0.07624907, 0.8833187, -0.4675231, -0.0342107,
0.4792852, -0.2279889, 0.07624907, 0.8833187, -0.4675231, -0.0342107,
0.03587097, 0.006702571, 0.08561116, 0.8833177, -0.467525, -0.03420781,
0.03952228, 0.01360117, 0.08561116, 0.8833177, -0.467525, -0.03420781,
0.03975826, 0.01347626, 0.09341189, 0.8833177, -0.467525, -0.03420781,
0.03610696, 0.006577667, 0.09341189, 0.8833177, -0.467525, -0.03420781,
0.4790492, -0.227864, 0.06844833, 0.03023423, -0.01600238, 0.9994147,
0.4827005, -0.2209654, 0.06844833, 0.03023423, -0.01600238, 0.9994147,
0.03952228, 0.01360117, 0.08561116, 0.03023423, -0.01600238, 0.9994147,
0.03587097, 0.006702571, 0.08561116, 0.03023423, -0.01600238, 0.9994147,
0.4827005, -0.2209654, 0.06844833, -0.4677987, -0.8838351, -3.706651e-07,
0.4829365, -0.2210903, 0.07624907, -0.4677987, -0.8838351, -3.706651e-07,
0.03975826, 0.01347626, 0.09341189, -0.4677987, -0.8838351, -3.706651e-07,
0.03952228, 0.01360117, 0.08561116, -0.4677987, -0.8838351, -3.706651e-07,
0.4829365, -0.2210903, 0.07624907, -0.03023417, 0.01600248, -0.9994147,
0.4792852, -0.2279889, 0.07624907, -0.03023417, 0.01600248, -0.9994147,
0.03610696, 0.006577667, 0.09341189, -0.03023417, 0.01600248, -0.9994147,
0.03975826, 0.01347626, 0.09341189, -0.03023417, 0.01600248, -0.9994147,
0.4792852, -0.2279889, 0.07624907, 0.4677987, 0.8838351, 2.157104e-06,
0.4790492, -0.227864, 0.06844833, 0.4677987, 0.8838351, 2.157104e-06,
0.03587097, 0.006702571, 0.08561116, 0.4677987, 0.8838351, 2.157104e-06,
0.03610696, 0.006577667, 0.09341189, 0.4677987, 0.8838351, 2.157104e-06,
0.4806193, -0.225128, 0.07159914, 0.8833166, -0.4675267, -0.03421319,
0.481321, -0.2238023, 0.07159914, 0.8833166, -0.4675267, -0.03421319,
0.4813664, -0.2238263, 0.07309826, 0.8833166, -0.4675267, -0.03421319,
0.4806647, -0.225152, 0.07309826, 0.8833166, -0.4675267, -0.03421319,
0.4806193, -0.225128, 0.07159914, 0.1278617, 0.9917192, 0.01201188,
0.4806647, -0.225152, 0.07309826, 0.1278617, 0.9917192, 0.01201188,
0.4827595, -0.2254122, 0.07228029, 0.1278617, 0.9917192, 0.01201188,
0.4827595, -0.2254122, 0.07228029, 0.1278617, 0.9917192, 0.01201188,
0.4806193, -0.225128, 0.07159914, 0.2818443, -0.1491761, -0.9477923,
0.481321, -0.2238023, 0.07159914, 0.2818443, -0.1491761, -0.9477923,
0.4827595, -0.2254122, 0.07228029, 0.2818443, -0.1491761, -0.9477923,
0.4827595, -0.2254122, 0.07228029, 0.2818443, -0.1491761, -0.9477923,
0.481321, -0.2238023, 0.07159914, 0.7481649, 0.663404, -0.01201408,
0.4813664, -0.2238263, 0.07309826, 0.7481649, 0.663404, -0.01201408,
0.4827595, -0.2254122, 0.07228029, 0.7481649, 0.663404, -0.01201408,
0.4827595, -0.2254122, 0.07228029, 0.7481649, 0.663404, -0.01201408,
0.4813664, -0.2238263, 0.07309826, 0.3384629, -0.1791435, 0.9237697,
0.4806647, -0.225152, 0.07309826, 0.3384629, -0.1791435, 0.9237697,
0.4827595, -0.2254122, 0.07228029, 0.3384629, -0.1791435, 0.9237697,
0.4827595, -0.2254122, 0.07228029, 0.3384629, -0.1791435, 0.9237697
]);
var normLoc27 = gl.getAttribLocation(prog27, "aNorm");
var f=new Uint16Array([
0, 1, 2, 0, 2, 3,
4, 5, 6, 4, 6, 7,
8, 9, 10, 8, 10, 11,
12, 13, 14, 12, 14, 15,
16, 17, 18, 16, 18, 19,
20, 21, 22, 20, 22, 23,
24, 25, 26, 24, 26, 27,
28, 29, 30, 28, 30, 31,
32, 33, 34, 32, 34, 35,
36, 37, 38, 36, 38, 39,
40, 41, 42, 40, 42, 43
]);
var buf27 = gl.createBuffer();
gl.bindBuffer(gl.ARRAY_BUFFER, buf27);
gl.bufferData(gl.ARRAY_BUFFER, v, gl.STATIC_DRAW);
var ibuf27 = gl.createBuffer();
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, ibuf27);
gl.bufferData(gl.ELEMENT_ARRAY_BUFFER, f, gl.STATIC_DRAW);
var mvMatLoc27 = gl.getUniformLocation(prog27,"mvMatrix");
var prMatLoc27 = gl.getUniformLocation(prog27,"prMatrix");
var normMatLoc27 = gl.getUniformLocation(prog27,"normMatrix");
// ****** quads object 28 ******
var prog28  = gl.createProgram();
gl.attachShader(prog28, getShader( gl, "unnamed_chunk_2vshader28" ));
gl.attachShader(prog28, getShader( gl, "unnamed_chunk_2fshader28" ));
//  Force aPos to location 0, aCol to location 1 
gl.bindAttribLocation(prog28, 0, "aPos");
gl.bindAttribLocation(prog28, 1, "aCol");
gl.linkProgram(prog28);
var v=new Float32Array([
-0.009236547, -0.2434292, 0.4858446, -0.08922784, -0.5301392, 0.8432027,
-0.0007154234, -0.2448634, 0.4858446, -0.08922784, -0.5301392, 0.8432027,
0.000493895, -0.2376784, 0.49049, -0.08922784, -0.5301392, 0.8432027,
-0.008027229, -0.2362442, 0.49049, -0.08922784, -0.5301392, 0.8432027,
0.0329494, 0.007213999, 0.08718885, -0.08922819, -0.5301394, 0.8432025,
0.04147052, 0.005779802, 0.08718885, -0.08922819, -0.5301394, 0.8432025,
0.04267984, 0.01296484, 0.0918342, -0.08922819, -0.5301394, 0.8432025,
0.03415871, 0.01439903, 0.0918342, -0.08922819, -0.5301394, 0.8432025,
-0.009236547, -0.2434292, 0.4858446, 0.1399512, 0.8315073, 0.5375957,
-0.0007154234, -0.2448634, 0.4858446, 0.1399512, 0.8315073, 0.5375957,
0.04147052, 0.005779802, 0.08718885, 0.1399512, 0.8315073, 0.5375957,
0.0329494, 0.007213999, 0.08718885, 0.1399512, 0.8315073, 0.5375957,
-0.0007154234, -0.2448634, 0.4858446, -0.9861297, 0.1659763, 8.548756e-08,
0.000493895, -0.2376784, 0.49049, -0.9861297, 0.1659763, 8.548756e-08,
0.04267984, 0.01296484, 0.0918342, -0.9861297, 0.1659763, 8.548756e-08,
0.04147052, 0.005779802, 0.08718885, -0.9861297, 0.1659763, 8.548756e-08,
0.000493895, -0.2376784, 0.49049, -0.1399512, -0.8315073, -0.5375957,
-0.008027229, -0.2362442, 0.49049, -0.1399512, -0.8315073, -0.5375957,
0.03415871, 0.01439903, 0.0918342, -0.1399512, -0.8315073, -0.5375957,
0.04267984, 0.01296484, 0.0918342, -0.1399512, -0.8315073, -0.5375957,
-0.008027229, -0.2362442, 0.49049, 0.9861297, -0.1659764, -9.261153e-08,
-0.009236547, -0.2434292, 0.4858446, 0.9861297, -0.1659764, -9.261153e-08,
0.0329494, 0.007213999, 0.08718885, 0.9861297, -0.1659764, -9.261153e-08,
0.03415871, 0.01439903, 0.0918342, 0.9861297, -0.1659764, -9.261153e-08,
-0.005215887, -0.2410529, 0.4877641, -0.0892296, -0.530139, 0.8432027,
-0.003736692, -0.2413019, 0.4877641, -0.0892296, -0.530139, 0.8432027,
-0.003526765, -0.2400547, 0.4885705, -0.0892296, -0.530139, 0.8432027,
-0.005005959, -0.2398057, 0.4885705, -0.0892296, -0.530139, 0.8432027,
-0.005215887, -0.2410529, 0.4877641, 0.9546717, 0.03073632, -0.2960697,
-0.005005959, -0.2398057, 0.4885705, 0.9546717, 0.03073632, -0.2960697,
-0.004549782, -0.2416141, 0.4898537, 0.9546717, 0.03073632, -0.2960697,
-0.004549782, -0.2416141, 0.4898537, 0.9546717, 0.03073632, -0.2960697,
-0.005215887, -0.2410529, 0.4877641, -0.1623735, -0.964708, -0.2072999,
-0.003736692, -0.2413019, 0.4877641, -0.1623735, -0.964708, -0.2072999,
-0.004549782, -0.2416141, 0.4898537, -0.1623735, -0.964708, -0.2072999,
-0.004549782, -0.2416141, 0.4898537, -0.1623735, -0.964708, -0.2072999,
-0.003736692, -0.2413019, 0.4877641, 0.8920109, -0.3415539, 0.2960697,
-0.003526765, -0.2400547, 0.4885705, 0.8920109, -0.3415539, 0.2960697,
-0.004549782, -0.2416141, 0.4898537, 0.8920109, -0.3415539, 0.2960697,
-0.004549782, -0.2416141, 0.4898537, 0.8920109, -0.3415539, 0.2960697,
-0.003526765, -0.2400547, 0.4885705, 0.09971197, 0.5924177, 0.7994366,
-0.005005959, -0.2398057, 0.4885705, 0.09971197, 0.5924177, 0.7994366,
-0.004549782, -0.2416141, 0.4898537, 0.09971197, 0.5924177, 0.7994366,
-0.004549782, -0.2416141, 0.4898537, 0.09971197, 0.5924177, 0.7994366
]);
var normLoc28 = gl.getAttribLocation(prog28, "aNorm");
var f=new Uint16Array([
0, 1, 2, 0, 2, 3,
4, 5, 6, 4, 6, 7,
8, 9, 10, 8, 10, 11,
12, 13, 14, 12, 14, 15,
16, 17, 18, 16, 18, 19,
20, 21, 22, 20, 22, 23,
24, 25, 26, 24, 26, 27,
28, 29, 30, 28, 30, 31,
32, 33, 34, 32, 34, 35,
36, 37, 38, 36, 38, 39,
40, 41, 42, 40, 42, 43
]);
var buf28 = gl.createBuffer();
gl.bindBuffer(gl.ARRAY_BUFFER, buf28);
gl.bufferData(gl.ARRAY_BUFFER, v, gl.STATIC_DRAW);
var ibuf28 = gl.createBuffer();
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, ibuf28);
gl.bufferData(gl.ELEMENT_ARRAY_BUFFER, f, gl.STATIC_DRAW);
var mvMatLoc28 = gl.getUniformLocation(prog28,"mvMatrix");
var prMatLoc28 = gl.getUniformLocation(prog28,"prMatrix");
var normMatLoc28 = gl.getUniformLocation(prog28,"normMatrix");
// ****** quads object 29 ******
var prog29  = gl.createProgram();
gl.attachShader(prog29, getShader( gl, "unnamed_chunk_2vshader29" ));
gl.attachShader(prog29, getShader( gl, "unnamed_chunk_2fshader29" ));
//  Force aPos to location 0, aCol to location 1 
gl.bindAttribLocation(prog29, 0, "aPos");
gl.bindAttribLocation(prog29, 1, "aCol");
gl.linkProgram(prog29);
var v=new Float32Array([
0.03631461, 0.005487033, 0.1165115, 0, -0, 1,
0.04551939, 0.005487033, 0.1165115, 0, -0, 1,
0.04551939, 0.0146918, 0.1165115, 0, -0, 1,
0.03631461, 0.0146918, 0.1165115, 0, -0, 1,
0.03631461, 0.005487033, 0.1277163, 0, -0, 1,
0.04551939, 0.005487033, 0.1277163, 0, -0, 1,
0.04551939, 0.0146918, 0.1277163, 0, -0, 1,
0.03631461, 0.0146918, 0.1277163, 0, -0, 1,
0.03631461, 0.005487033, 0.1165115, 0, -1, 0,
0.04551939, 0.005487033, 0.1165115, 0, -1, 0,
0.04551939, 0.005487033, 0.1277163, 0, -1, 0,
0.03631461, 0.005487033, 0.1277163, 0, -1, 0,
0.04551939, 0.005487033, 0.1165115, 1, 0, -0,
0.04551939, 0.0146918, 0.1165115, 1, 0, -0,
0.04551939, 0.0146918, 0.1277163, 1, 0, -0,
0.04551939, 0.005487033, 0.1277163, 1, 0, -0,
0.04551939, 0.0146918, 0.1165115, 0, 1, 0,
0.03631461, 0.0146918, 0.1165115, 0, 1, 0,
0.03631461, 0.0146918, 0.1277163, 0, 1, 0,
0.04551939, 0.0146918, 0.1277163, 0, 1, 0,
0.03631461, 0.005487033, 0.1165115, 1, 0, -0,
0.03631461, 0.0146918, 0.1165115, 1, 0, -0,
0.03631461, 0.0146918, 0.1369211, 1, 0, -0,
0.03631461, 0.005487033, 0.1369211, 1, 0, -0,
0.03931462, 0.005487033, 0.08951152, 0, 0, -1,
0.03010985, 0.005487033, 0.08951152, 0, 0, -1,
0.03010985, 0.0146918, 0.08951152, 0, 0, -1,
0.03931462, 0.0146918, 0.08951152, 0, 0, -1,
0.03931462, 0.005487033, 0.1277163, 0, 0, -1,
0.03010985, 0.005487033, 0.1277163, 0, 0, -1,
0.03010985, 0.0146918, 0.1277163, 0, 0, -1,
0.03931462, 0.0146918, 0.1277163, 0, 0, -1,
0.03931462, 0.005487033, 0.08951152, 0, 0.9999999, 0,
0.03010985, 0.005487033, 0.08951152, 0, 0.9999999, 0,
0.03010985, 0.005487033, 0.1277163, 0, 0.9999999, 0,
0.03931462, 0.005487033, 0.1277163, 0, 0.9999999, 0,
0.03010985, 0.005487033, 0.08951152, 1, 0, -0,
0.03010985, 0.0146918, 0.08951152, 1, 0, -0,
0.03010985, 0.0146918, 0.1277163, 1, 0, -0,
0.03010985, 0.005487033, 0.1277163, 1, 0, -0,
0.03010985, 0.0146918, 0.08951152, 0, -0.9999999, 0,
0.03931462, 0.0146918, 0.08951152, 0, -0.9999999, 0,
0.03931462, 0.0146918, 0.1277163, 0, -0.9999999, 0,
0.03010985, 0.0146918, 0.1277163, 0, -0.9999999, 0,
0.03931462, 0.005487033, 0.08951152, 1, 0, -0,
0.03931462, 0.0146918, 0.08951152, 1, 0, -0,
0.03931462, 0.0146918, 0.1369211, 1, 0, -0,
0.03931462, 0.005487033, 0.1369211, 1, 0, -0,
0.03631461, 0.005487033, 0.1277163, 0, -1, 0,
0.03931462, 0.005487033, 0.1277163, 0, -1, 0,
0.03931462, 0.005487033, 0.1369211, 0, -1, 0,
0.03631461, 0.005487033, 0.1369211, 0, -1, 0,
0.03631461, 0.005487033, 0.1369211, 0, 0, -1,
0.03631461, 0.0146918, 0.1369211, 0, 0, -1,
0.03931462, 0.0146918, 0.1369211, 0, 0, -1,
0.03931462, 0.005487033, 0.1369211, 0, 0, -1,
0.03631461, 0.0146918, 0.1277163, 0, -1, 0,
0.03931462, 0.0146918, 0.1277163, 0, -1, 0,
0.03931462, 0.0146918, 0.1369211, 0, -1, 0,
0.03631461, 0.0146918, 0.1369211, 0, -1, 0,
0.04551939, 0.005487033, 0.1277163, 0, 0, 1,
0.04551939, 0.0146918, 0.1277163, 0, 0, 1,
0.03010985, 0.0146918, 0.1277163, 0, 0, 1,
0.03010985, 0.005487033, 0.1277163, 0, 0, 1,
0.040167, 0.009339418, 0.1165115, 0, -0, 1,
0.041667, 0.009339418, 0.1165115, 0, -0, 1,
0.041667, 0.01083942, 0.1165115, 0, -0, 1,
0.040167, 0.01083942, 0.1165115, 0, -0, 1,
0.040167, 0.009339418, 0.1165115, 0, 0.936329, 0.3511238,
0.041667, 0.009339418, 0.1165115, 0, 0.936329, 0.3511238,
0.040917, 0.01008942, 0.1145115, 0, 0.936329, 0.3511238,
0.040917, 0.01008942, 0.1145115, 0, 0.936329, 0.3511238,
0.041667, 0.009339418, 0.1165115, -0.9363287, 0, 0.3511246,
0.041667, 0.01083942, 0.1165115, -0.9363287, 0, 0.3511246,
0.040917, 0.01008942, 0.1145115, -0.9363287, 0, 0.3511246,
0.040917, 0.01008942, 0.1145115, -0.9363287, 0, 0.3511246,
0.041667, 0.01083942, 0.1165115, 0, -0.936329, 0.3511238,
0.040167, 0.01083942, 0.1165115, 0, -0.936329, 0.3511238,
0.040917, 0.01008942, 0.1145115, 0, -0.936329, 0.3511238,
0.040917, 0.01008942, 0.1145115, 0, -0.936329, 0.3511238,
0.040167, 0.009339418, 0.1165115, -0.9363293, -0, -0.351123,
0.040167, 0.01083942, 0.1165115, -0.9363293, -0, -0.351123,
0.040917, 0.01008942, 0.1145115, -0.9363293, -0, -0.351123,
0.040917, 0.01008942, 0.1145115, -0.9363293, -0, -0.351123
]);
var normLoc29 = gl.getAttribLocation(prog29, "aNorm");
var f=new Uint16Array([
0, 1, 2, 0, 2, 3,
4, 5, 6, 4, 6, 7,
8, 9, 10, 8, 10, 11,
12, 13, 14, 12, 14, 15,
16, 17, 18, 16, 18, 19,
20, 21, 22, 20, 22, 23,
24, 25, 26, 24, 26, 27,
28, 29, 30, 28, 30, 31,
32, 33, 34, 32, 34, 35,
36, 37, 38, 36, 38, 39,
40, 41, 42, 40, 42, 43,
44, 45, 46, 44, 46, 47,
48, 49, 50, 48, 50, 51,
52, 53, 54, 52, 54, 55,
56, 57, 58, 56, 58, 59,
60, 61, 62, 60, 62, 63,
64, 65, 66, 64, 66, 67,
68, 69, 70, 68, 70, 71,
72, 73, 74, 72, 74, 75,
76, 77, 78, 76, 78, 79,
80, 81, 82, 80, 82, 83
]);
var buf29 = gl.createBuffer();
gl.bindBuffer(gl.ARRAY_BUFFER, buf29);
gl.bufferData(gl.ARRAY_BUFFER, v, gl.STATIC_DRAW);
var ibuf29 = gl.createBuffer();
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, ibuf29);
gl.bufferData(gl.ELEMENT_ARRAY_BUFFER, f, gl.STATIC_DRAW);
var mvMatLoc29 = gl.getUniformLocation(prog29,"mvMatrix");
var prMatLoc29 = gl.getUniformLocation(prog29,"prMatrix");
var normMatLoc29 = gl.getUniformLocation(prog29,"normMatrix");
// ****** quads object 30 ******
var prog30  = gl.createProgram();
gl.attachShader(prog30, getShader( gl, "unnamed_chunk_2vshader30" ));
gl.attachShader(prog30, getShader( gl, "unnamed_chunk_2fshader30" ));
//  Force aPos to location 0, aCol to location 1 
gl.bindAttribLocation(prog30, 0, "aPos");
gl.bindAttribLocation(prog30, 1, "aCol");
gl.linkProgram(prog30);
var v=new Float32Array([
0.02611293, -0.05990507, -0.3501476, -0.01880916, -0.1664122, -0.9858769,
0.03359808, -0.0607511, -0.3501476, -0.01880916, -0.1664122, -0.9858769,
0.032764, -0.06813053, -0.3488861, -0.01880916, -0.1664122, -0.9858769,
0.02527885, -0.0672845, -0.3488861, -0.01880916, -0.1664122, -0.9858769,
0.03448908, 0.01420215, 0.08888075, -0.01880947, -0.166415, -0.9858764,
0.04197423, 0.01335612, 0.08888075, -0.01880947, -0.166415, -0.9858764,
0.04114015, 0.005976687, 0.0901423, -0.01880947, -0.166415, -0.9858764,
0.033655, 0.006822715, 0.0901423, -0.01880947, -0.166415, -0.9858764,
0.02611293, -0.05990507, -0.3501476, -0.1107262, -0.9796388, 0.1674738,
0.03359808, -0.0607511, -0.3501476, -0.1107262, -0.9796388, 0.1674738,
0.04197423, 0.01335612, 0.08888075, -0.1107262, -0.9796388, 0.1674738,
0.03448908, 0.01420215, 0.08888075, -0.1107262, -0.9796388, 0.1674738,
0.03359808, -0.0607511, -0.3501476, -0.993673, 0.1123122, 1.084509e-08,
0.032764, -0.06813053, -0.3488861, -0.993673, 0.1123122, 1.084509e-08,
0.04114015, 0.005976687, 0.0901423, -0.993673, 0.1123122, 1.084509e-08,
0.04197423, 0.01335612, 0.08888075, -0.993673, 0.1123122, 1.084509e-08,
0.032764, -0.06813053, -0.3488861, 0.1107262, 0.9796389, -0.1674738,
0.02527885, -0.0672845, -0.3488861, 0.1107262, 0.9796389, -0.1674738,
0.033655, 0.006822715, 0.0901423, 0.1107262, 0.9796389, -0.1674738,
0.04114015, 0.005976687, 0.0901423, 0.1107262, 0.9796389, -0.1674738,
0.02527885, -0.0672845, -0.3488861, 0.993673, -0.1123125, 2.385921e-08,
0.02611293, -0.05990507, -0.3501476, 0.993673, -0.1123125, 2.385921e-08,
0.03448908, 0.01420215, 0.08888075, 0.993673, -0.1123125, 2.385921e-08,
0.033655, 0.006822715, 0.0901423, 0.993673, -0.1123125, 2.385921e-08,
0.02877625, -0.06319883, -0.3496425, -0.01880935, -0.16641, -0.9858772,
0.03026676, -0.06336731, -0.3496425, -0.01880935, -0.16641, -0.9858772,
0.03010068, -0.06483676, -0.3493913, -0.01880935, -0.16641, -0.9858772,
0.02861017, -0.0646683, -0.3493913, -0.01880935, -0.16641, -0.9858772,
0.02877625, -0.06319883, -0.3496425, 0.9370101, -0.04673078, 0.3461624,
0.02861017, -0.0646683, -0.3493913, 0.9370101, -0.04673078, 0.3461624,
0.02940085, -0.06435063, -0.3514886, 0.9370101, -0.04673078, 0.3461624,
0.02940085, -0.06435063, -0.3514886, 0.9370101, -0.04673078, 0.3461624,
0.02877625, -0.06319883, -0.3496425, 0.09707422, 0.8588344, -0.5029712,
0.03026676, -0.06336731, -0.3496425, 0.09707422, 0.8588344, -0.5029712,
0.02940085, -0.06435063, -0.3514886, 0.09707422, 0.8588344, -0.5029712,
0.02940085, -0.06435063, -0.3514886, 0.09707422, 0.8588344, -0.5029712,
0.03026676, -0.06336731, -0.3496425, 0.9238014, -0.1635912, -0.3461628,
0.03010068, -0.06483676, -0.3493913, 0.9238014, -0.1635912, -0.3461628,
0.02940085, -0.06435063, -0.3514886, 0.9238014, -0.1635912, -0.3461628,
0.02940085, -0.06435063, -0.3514886, 0.9238014, -0.1635912, -0.3461628,
0.03010068, -0.06483676, -0.3493913, -0.1102783, -0.9756966, -0.1893539,
0.02861017, -0.0646683, -0.3493913, -0.1102783, -0.9756966, -0.1893539,
0.02940085, -0.06435063, -0.3514886, -0.1102783, -0.9756966, -0.1893539,
0.02940085, -0.06435063, -0.3514886, -0.1102783, -0.9756966, -0.1893539
]);
var normLoc30 = gl.getAttribLocation(prog30, "aNorm");
var f=new Uint16Array([
0, 1, 2, 0, 2, 3,
4, 5, 6, 4, 6, 7,
8, 9, 10, 8, 10, 11,
12, 13, 14, 12, 14, 15,
16, 17, 18, 16, 18, 19,
20, 21, 22, 20, 22, 23,
24, 25, 26, 24, 26, 27,
28, 29, 30, 28, 30, 31,
32, 33, 34, 32, 34, 35,
36, 37, 38, 36, 38, 39,
40, 41, 42, 40, 42, 43
]);
var buf30 = gl.createBuffer();
gl.bindBuffer(gl.ARRAY_BUFFER, buf30);
gl.bufferData(gl.ARRAY_BUFFER, v, gl.STATIC_DRAW);
var ibuf30 = gl.createBuffer();
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, ibuf30);
gl.bufferData(gl.ELEMENT_ARRAY_BUFFER, f, gl.STATIC_DRAW);
var mvMatLoc30 = gl.getUniformLocation(prog30,"mvMatrix");
var prMatLoc30 = gl.getUniformLocation(prog30,"prMatrix");
var normMatLoc30 = gl.getUniformLocation(prog30,"normMatrix");
// ****** quads object 31 ******
var prog31  = gl.createProgram();
gl.attachShader(prog31, getShader( gl, "unnamed_chunk_2vshader31" ));
gl.attachShader(prog31, getShader( gl, "unnamed_chunk_2fshader31" ));
//  Force aPos to location 0, aCol to location 1 
gl.bindAttribLocation(prog31, 0, "aPos");
gl.bindAttribLocation(prog31, 1, "aCol");
gl.linkProgram(prog31);
var v=new Float32Array([
-0.3954797, -0.160972, -0.05379461, -0.8881347, -0.3598969, -0.2858164,
-0.3923324, -0.1687386, -0.05379461, -0.8881347, -0.3598969, -0.2858164,
-0.3945523, -0.1696382, -0.04576414, -0.8881347, -0.3598969, -0.2858164,
-0.3976995, -0.1618716, -0.04576414, -0.8881347, -0.3598969, -0.2858164,
0.0373509, 0.01442248, 0.08549629, -0.8881357, -0.3598962, -0.2858143,
0.04049813, 0.00665588, 0.08549629, -0.8881357, -0.3598962, -0.2858143,
0.03827833, 0.005756355, 0.09352676, -0.8881357, -0.3598962, -0.2858143,
0.03513109, 0.01352296, 0.09352676, -0.8881357, -0.3598962, -0.2858143,
-0.3954797, -0.160972, -0.05379461, -0.2648918, -0.1073415, 0.958285,
-0.3923324, -0.1687386, -0.05379461, -0.2648918, -0.1073415, 0.958285,
0.04049813, 0.00665588, 0.08549629, -0.2648918, -0.1073415, 0.958285,
0.0373509, 0.01442248, 0.08549629, -0.2648918, -0.1073415, 0.958285,
-0.3923324, -0.1687386, -0.05379461, -0.3755625, 0.926797, -9.763048e-07,
-0.3945523, -0.1696382, -0.04576414, -0.3755625, 0.926797, -9.763048e-07,
0.03827833, 0.005756355, 0.09352676, -0.3755625, 0.926797, -9.763048e-07,
0.04049813, 0.00665588, 0.08549629, -0.3755625, 0.926797, -9.763048e-07,
-0.3945523, -0.1696382, -0.04576414, 0.2648921, 0.1073408, -0.958285,
-0.3976995, -0.1618716, -0.04576414, 0.2648921, 0.1073408, -0.958285,
0.03513109, 0.01352296, 0.09352676, 0.2648921, 0.1073408, -0.958285,
0.03827833, 0.005756355, 0.09352676, 0.2648921, 0.1073408, -0.958285,
-0.3976995, -0.1618716, -0.04576414, 0.3755634, -0.9267968, -1.881348e-06,
-0.3954797, -0.160972, -0.05379461, 0.3755634, -0.9267968, -1.881348e-06,
0.0373509, 0.01442248, 0.08549629, 0.3755634, -0.9267968, -1.881348e-06,
0.03513109, 0.01352296, 0.09352676, 0.3755634, -0.9267968, -1.881348e-06,
-0.395099, -0.1645295, -0.05049809, -0.8881434, -0.359884, -0.2858054,
-0.3945356, -0.1659197, -0.05049809, -0.8881434, -0.359884, -0.2858054,
-0.394933, -0.1660807, -0.04906067, -0.8881434, -0.359884, -0.2858054,
-0.3954963, -0.1646905, -0.04906067, -0.8881434, -0.359884, -0.2858054,
-0.395099, -0.1645295, -0.05049809, 0.6634958, -0.7414185, 0.1003585,
-0.3954963, -0.1646905, -0.04906067, 0.6634958, -0.7414185, 0.1003585,
-0.3967922, -0.1660249, -0.05035101, 0.6634958, -0.7414185, 0.1003585,
-0.3967922, -0.1660249, -0.05035101, 0.6634958, -0.7414185, 0.1003585,
-0.395099, -0.1645295, -0.05049809, -0.06381982, -0.02586038, -0.9976264,
-0.3945356, -0.1659197, -0.05049809, -0.06381982, -0.02586038, -0.9976264,
-0.3967922, -0.1660249, -0.05035101, -0.06381982, -0.02586038, -0.9976264,
-0.3967922, -0.1660249, -0.05035101, -0.06381982, -0.02586038, -0.9976264,
-0.3945356, -0.1659197, -0.05049809, 0.03980626, -0.9941553, -0.1003528,
-0.394933, -0.1660807, -0.04906067, 0.03980626, -0.9941553, -0.1003528,
-0.3967922, -0.1660249, -0.05035101, 0.03980626, -0.9941553, -0.1003528,
-0.3967922, -0.1660249, -0.05035101, 0.03980626, -0.9941553, -0.1003528,
-0.394933, -0.1660807, -0.04906067, -0.5598699, -0.2268789, 0.7969137,
-0.3954963, -0.1646905, -0.04906067, -0.5598699, -0.2268789, 0.7969137,
-0.3967922, -0.1660249, -0.05035101, -0.5598699, -0.2268789, 0.7969137,
-0.3967922, -0.1660249, -0.05035101, -0.5598699, -0.2268789, 0.7969137
]);
var normLoc31 = gl.getAttribLocation(prog31, "aNorm");
var f=new Uint16Array([
0, 1, 2, 0, 2, 3,
4, 5, 6, 4, 6, 7,
8, 9, 10, 8, 10, 11,
12, 13, 14, 12, 14, 15,
16, 17, 18, 16, 18, 19,
20, 21, 22, 20, 22, 23,
24, 25, 26, 24, 26, 27,
28, 29, 30, 28, 30, 31,
32, 33, 34, 32, 34, 35,
36, 37, 38, 36, 38, 39,
40, 41, 42, 40, 42, 43
]);
var buf31 = gl.createBuffer();
gl.bindBuffer(gl.ARRAY_BUFFER, buf31);
gl.bufferData(gl.ARRAY_BUFFER, v, gl.STATIC_DRAW);
var ibuf31 = gl.createBuffer();
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, ibuf31);
gl.bufferData(gl.ELEMENT_ARRAY_BUFFER, f, gl.STATIC_DRAW);
var mvMatLoc31 = gl.getUniformLocation(prog31,"mvMatrix");
var prMatLoc31 = gl.getUniformLocation(prog31,"prMatrix");
var normMatLoc31 = gl.getUniformLocation(prog31,"normMatrix");
// ****** quads object 32 ******
var prog32  = gl.createProgram();
gl.attachShader(prog32, getShader( gl, "unnamed_chunk_2vshader32" ));
gl.attachShader(prog32, getShader( gl, "unnamed_chunk_2fshader32" ));
//  Force aPos to location 0, aCol to location 1 
gl.bindAttribLocation(prog32, 0, "aPos");
gl.bindAttribLocation(prog32, 1, "aCol");
gl.linkProgram(prog32);
var v=new Float32Array([
-0.2217992, -0.4145018, 0.1903313, -0.5029554, -0.8391482, 0.2070415,
-0.214252, -0.4190253, 0.1903313, -0.5029554, -0.8391482, 0.2070415,
-0.2133155, -0.4174627, 0.1989395, -0.5029554, -0.8391482, 0.2070415,
-0.2208626, -0.4129393, 0.1989395, -0.5029554, -0.8391482, 0.2070415,
0.03357277, 0.01156987, 0.08520739, -0.5029551, -0.8391483, 0.2070415,
0.04111991, 0.007046394, 0.08520739, -0.5029551, -0.8391483, 0.2070415,
0.04205646, 0.008608963, 0.09381566, -0.5029551, -0.8391483, 0.2070415,
0.03450932, 0.01313244, 0.09381566, -0.5029551, -0.8391483, 0.2070415,
-0.2217992, -0.4145018, 0.1903313, 0.1064389, 0.1775864, 0.9783322,
-0.214252, -0.4190253, 0.1903313, 0.1064389, 0.1775864, 0.9783322,
0.04111991, 0.007046394, 0.08520739, 0.1064389, 0.1775864, 0.9783322,
0.03357277, 0.01156987, 0.08520739, 0.1064389, 0.1775864, 0.9783322,
-0.214252, -0.4190253, 0.1903313, -0.8577335, 0.5140946, 7.426457e-07,
-0.2133155, -0.4174627, 0.1989395, -0.8577335, 0.5140946, 7.426457e-07,
0.04205646, 0.008608963, 0.09381566, -0.8577335, 0.5140946, 7.426457e-07,
0.04111991, 0.007046394, 0.08520739, -0.8577335, 0.5140946, 7.426457e-07,
-0.2133155, -0.4174627, 0.1989395, -0.1064389, -0.1775864, -0.9783322,
-0.2208626, -0.4129393, 0.1989395, -0.1064389, -0.1775864, -0.9783322,
0.03450932, 0.01313244, 0.09381566, -0.1064389, -0.1775864, -0.9783322,
0.04205646, 0.008608963, 0.09381566, -0.1064389, -0.1775864, -0.9783322,
-0.2208626, -0.4129393, 0.1989395, 0.8577335, -0.5140946, -7.426457e-07,
-0.2217992, -0.4145018, 0.1903313, 0.8577335, -0.5140946, -7.426457e-07,
0.03357277, 0.01156987, 0.08520739, 0.8577335, -0.5140946, -7.426457e-07,
0.03450932, 0.01313244, 0.09381566, 0.8577335, -0.5140946, -7.426457e-07,
-0.2182804, -0.4157299, 0.1939016, -0.5029659, -0.8391381, 0.207057,
-0.2169939, -0.416501, 0.1939016, -0.5029659, -0.8391381, 0.207057,
-0.2168342, -0.4162346, 0.1953691, -0.5029659, -0.8391381, 0.207057,
-0.2181208, -0.4154635, 0.1953691, -0.5029659, -0.8391381, 0.207057,
-0.2182804, -0.4157299, 0.1939016, 0.9797195, -0.1867189, -0.07270269,
-0.2181208, -0.4154635, 0.1953691, 0.9797195, -0.1867189, -0.07270269,
-0.2185632, -0.4176606, 0.1950495, 0.9797195, -0.1867189, -0.07270269,
-0.2185632, -0.4176606, 0.1950495, 0.9797195, -0.1867189, -0.07270269,
-0.2182804, -0.4157299, 0.1939016, -0.2762694, -0.4609224, -0.843342,
-0.2169939, -0.416501, 0.1939016, -0.2762694, -0.4609224, -0.843342,
-0.2185632, -0.4176606, 0.1950495, -0.2762694, -0.4609224, -0.843342,
-0.2185632, -0.4176606, 0.1950495, -0.2762694, -0.4609224, -0.843342,
-0.2169939, -0.416501, 0.1939016, 0.6265218, -0.7760055, 0.07270613,
-0.2168342, -0.4162346, 0.1953691, 0.6265218, -0.7760055, 0.07270613,
-0.2185632, -0.4176606, 0.1950495, 0.6265218, -0.7760055, 0.07270613,
-0.2185632, -0.4176606, 0.1950495, 0.6265218, -0.7760055, 0.07270613,
-0.2168342, -0.4162346, 0.1953691, -0.07693554, -0.1283627, 0.9887386,
-0.2181208, -0.4154635, 0.1953691, -0.07693554, -0.1283627, 0.9887386,
-0.2185632, -0.4176606, 0.1950495, -0.07693554, -0.1283627, 0.9887386,
-0.2185632, -0.4176606, 0.1950495, -0.07693554, -0.1283627, 0.9887386
]);
var normLoc32 = gl.getAttribLocation(prog32, "aNorm");
var f=new Uint16Array([
0, 1, 2, 0, 2, 3,
4, 5, 6, 4, 6, 7,
8, 9, 10, 8, 10, 11,
12, 13, 14, 12, 14, 15,
16, 17, 18, 16, 18, 19,
20, 21, 22, 20, 22, 23,
24, 25, 26, 24, 26, 27,
28, 29, 30, 28, 30, 31,
32, 33, 34, 32, 34, 35,
36, 37, 38, 36, 38, 39,
40, 41, 42, 40, 42, 43
]);
var buf32 = gl.createBuffer();
gl.bindBuffer(gl.ARRAY_BUFFER, buf32);
gl.bufferData(gl.ARRAY_BUFFER, v, gl.STATIC_DRAW);
var ibuf32 = gl.createBuffer();
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, ibuf32);
gl.bufferData(gl.ELEMENT_ARRAY_BUFFER, f, gl.STATIC_DRAW);
var mvMatLoc32 = gl.getUniformLocation(prog32,"mvMatrix");
var prMatLoc32 = gl.getUniformLocation(prog32,"prMatrix");
var normMatLoc32 = gl.getUniformLocation(prog32,"normMatrix");
// ****** quads object 33 ******
var prog33  = gl.createProgram();
gl.attachShader(prog33, getShader( gl, "unnamed_chunk_2vshader33" ));
gl.attachShader(prog33, getShader( gl, "unnamed_chunk_2fshader33" ));
//  Force aPos to location 0, aCol to location 1 
gl.bindAttribLocation(prog33, 0, "aPos");
gl.bindAttribLocation(prog33, 1, "aCol");
gl.linkProgram(prog33);
var v=new Float32Array([
-0.2811925, 0.172358, -0.2243378, -0.6800765, 0.3350681, -0.652093,
-0.2852339, 0.1641553, -0.2243378, -0.6800765, 0.3350681, -0.652093,
-0.2905829, 0.1667906, -0.2174052, -0.6800765, 0.3350681, -0.652093,
-0.2865415, 0.1749934, -0.2174052, -0.6800765, 0.3350681, -0.652093,
0.04250978, 0.01287309, 0.08604522, -0.6800768, 0.3350668, -0.6520933,
0.03846839, 0.004670383, 0.08604522, -0.6800768, 0.3350668, -0.6520933,
0.03311945, 0.007305748, 0.09297783, -0.6800768, 0.3350668, -0.6520933,
0.03716084, 0.01550845, 0.09297783, -0.6800768, 0.3350668, -0.6520933,
-0.2811925, 0.172358, -0.2243378, -0.5849502, 0.2882001, 0.7581385,
-0.2852339, 0.1641553, -0.2243378, -0.5849502, 0.2882001, 0.7581385,
0.03846839, 0.004670383, 0.08604522, -0.5849502, 0.2882001, 0.7581385,
0.04250978, 0.01287309, 0.08604522, -0.5849502, 0.2882001, 0.7581385,
-0.2852339, 0.1641553, -0.2243378, 0.4419601, 0.8970348, 1.337349e-08,
-0.2905829, 0.1667906, -0.2174052, 0.4419601, 0.8970348, 1.337349e-08,
0.03311945, 0.007305748, 0.09297783, 0.4419601, 0.8970348, 1.337349e-08,
0.03846839, 0.004670383, 0.08604522, 0.4419601, 0.8970348, 1.337349e-08,
-0.2905829, 0.1667906, -0.2174052, 0.5849502, -0.2882001, -0.7581384,
-0.2865415, 0.1749934, -0.2174052, 0.5849502, -0.2882001, -0.7581384,
0.03716084, 0.01550845, 0.09297783, 0.5849502, -0.2882001, -0.7581384,
0.03311945, 0.007305748, 0.09297783, 0.5849502, -0.2882001, -0.7581384,
-0.2865415, 0.1749934, -0.2174052, -0.4419601, -0.8970348, -2.674698e-08,
-0.2811925, 0.172358, -0.2243378, -0.4419601, -0.8970348, -2.674698e-08,
0.04250978, 0.01287309, 0.08604522, -0.4419601, -0.8970348, -2.674698e-08,
0.03716084, 0.01550845, 0.09297783, -0.4419601, -0.8970348, -2.674698e-08,
-0.2851175, 0.1700309, -0.2214401, -0.6800787, 0.3350761, -0.6520865,
-0.2857805, 0.1686854, -0.2214401, -0.6800787, 0.3350761, -0.6520865,
-0.2866579, 0.1691177, -0.2203029, -0.6800787, 0.3350761, -0.6520865,
-0.2859949, 0.1704632, -0.2203029, -0.6800787, 0.3350761, -0.6520865,
-0.2851175, 0.1700309, -0.2214401, -0.1750336, -0.9575678, 0.2289697,
-0.2859949, 0.1704632, -0.2203029, -0.1750336, -0.9575678, 0.2289697,
-0.2872479, 0.1702445, -0.2221757, -0.1750336, -0.9575678, 0.2289697,
-0.2872479, 0.1702445, -0.2221757, -0.1750336, -0.9575678, 0.2289697,
-0.2851175, 0.1700309, -0.2214401, 0.3089106, -0.1522008, -0.938834,
-0.2857805, 0.1686854, -0.2214401, 0.3089106, -0.1522008, -0.938834,
-0.2872479, 0.1702445, -0.2221757, 0.3089106, -0.1522008, -0.938834,
-0.2872479, 0.1702445, -0.2221757, 0.3089106, -0.1522008, -0.938834,
-0.2857805, 0.1686854, -0.2214401, -0.652613, -0.7222704, -0.2289578,
-0.2866579, 0.1691177, -0.2203029, -0.652613, -0.7222704, -0.2289578,
-0.2872479, 0.1702445, -0.2221757, -0.652613, -0.7222704, -0.2289578,
-0.2872479, 0.1702445, -0.2221757, -0.652613, -0.7222704, -0.2289578,
-0.2866579, 0.1691177, -0.2203029, -0.7864993, 0.387488, 0.4809076,
-0.2859949, 0.1704632, -0.2203029, -0.7864993, 0.387488, 0.4809076,
-0.2872479, 0.1702445, -0.2221757, -0.7864993, 0.387488, 0.4809076,
-0.2872479, 0.1702445, -0.2221757, -0.7864993, 0.387488, 0.4809076
]);
var normLoc33 = gl.getAttribLocation(prog33, "aNorm");
var f=new Uint16Array([
0, 1, 2, 0, 2, 3,
4, 5, 6, 4, 6, 7,
8, 9, 10, 8, 10, 11,
12, 13, 14, 12, 14, 15,
16, 17, 18, 16, 18, 19,
20, 21, 22, 20, 22, 23,
24, 25, 26, 24, 26, 27,
28, 29, 30, 28, 30, 31,
32, 33, 34, 32, 34, 35,
36, 37, 38, 36, 38, 39,
40, 41, 42, 40, 42, 43
]);
var buf33 = gl.createBuffer();
gl.bindBuffer(gl.ARRAY_BUFFER, buf33);
gl.bufferData(gl.ARRAY_BUFFER, v, gl.STATIC_DRAW);
var ibuf33 = gl.createBuffer();
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, ibuf33);
gl.bufferData(gl.ELEMENT_ARRAY_BUFFER, f, gl.STATIC_DRAW);
var mvMatLoc33 = gl.getUniformLocation(prog33,"mvMatrix");
var prMatLoc33 = gl.getUniformLocation(prog33,"prMatrix");
var normMatLoc33 = gl.getUniformLocation(prog33,"normMatrix");
// ****** quads object 34 ******
var prog34  = gl.createProgram();
gl.attachShader(prog34, getShader( gl, "unnamed_chunk_2vshader34" ));
gl.attachShader(prog34, getShader( gl, "unnamed_chunk_2fshader34" ));
//  Force aPos to location 0, aCol to location 1 
gl.bindAttribLocation(prog34, 0, "aPos");
gl.bindAttribLocation(prog34, 1, "aCol");
gl.linkProgram(prog34);
var v=new Float32Array([
-0.7104802, -0.9732763, -0.7256108, -0.2933488, -0.9021607, -0.3163108,
-0.7031052, -0.9756743, -0.7256108, -0.2933488, -0.9021607, -0.3163108,
-0.7038637, -0.9780071, -0.7182539, -0.2933488, -0.9021607, -0.3163108,
-0.7112387, -0.9756091, -0.7182539, -0.2933488, -0.9021607, -0.3163108,
-0.5730551, -0.5506461, -0.5774294, -0.2933554, -0.9021586, -0.3163108,
-0.5656801, -0.5530443, -0.5774294, -0.2933554, -0.9021586, -0.3163108,
-0.5664387, -0.5553771, -0.5700724, -0.2933554, -0.9021586, -0.3163108,
-0.5738137, -0.5529789, -0.5700724, -0.2933554, -0.9021586, -0.3163108,
-0.7104802, -0.9732763, -0.7256108, -0.09781204, -0.3008098, 0.9486551,
-0.7031052, -0.9756743, -0.7256108, -0.09781204, -0.3008098, 0.9486551,
-0.5656801, -0.5530443, -0.5774294, -0.09781204, -0.3008098, 0.9486551,
-0.5730551, -0.5506461, -0.5774294, -0.09781204, -0.3008098, 0.9486551,
-0.7031052, -0.9756743, -0.7256108, -0.9509878, 0.3092282, 2.459363e-06,
-0.7038637, -0.9780071, -0.7182539, -0.9509878, 0.3092282, 2.459363e-06,
-0.5664387, -0.5553771, -0.5700724, -0.9509878, 0.3092282, 2.459363e-06,
-0.5656801, -0.5530443, -0.5774294, -0.9509878, 0.3092282, 2.459363e-06,
-0.7038637, -0.9780071, -0.7182539, 0.09781202, 0.3008097, -0.9486549,
-0.7112387, -0.9756091, -0.7182539, 0.09781202, 0.3008097, -0.9486549,
-0.5738137, -0.5529789, -0.5700724, 0.09781202, 0.3008097, -0.9486549,
-0.5664387, -0.5553771, -0.5700724, 0.09781202, 0.3008097, -0.9486549,
-0.7112387, -0.9756091, -0.7182539, 0.9509879, -0.3092282, -2.44334e-06,
-0.7104802, -0.9732763, -0.7256108, 0.9509879, -0.3092282, -2.44334e-06,
-0.5730551, -0.5506461, -0.5774294, 0.9509879, -0.3092282, -2.44334e-06,
-0.5738137, -0.5529789, -0.5700724, 0.9509879, -0.3092282, -2.44334e-06,
-0.7078118, -0.9751842, -0.7226439, -0.2933561, -0.9021586, -0.31631,
-0.7063853, -0.975648, -0.7226439, -0.2933561, -0.9021586, -0.31631,
-0.7065321, -0.9760993, -0.7212209, -0.2933561, -0.9021586, -0.31631,
-0.7079585, -0.9756354, -0.7212209, -0.2933561, -0.9021586, -0.31631,
-0.7078118, -0.9751842, -0.7226439, 0.9934382, 0.02722794, 0.1110815,
-0.7079585, -0.9756354, -0.7212209, 0.9934382, 0.02722794, 0.1110815,
-0.7077586, -0.977446, -0.7225649, 0.9934382, 0.02722794, 0.1110815,
-0.7077586, -0.977446, -0.7225649, 0.9934382, 0.02722794, 0.1110815,
-0.7078118, -0.9751842, -0.7226439, -0.01142506, -0.03513551, -0.9993172,
-0.7063853, -0.975648, -0.7226439, -0.01142506, -0.03513551, -0.9993172,
-0.7077586, -0.977446, -0.7225649, -0.01142506, -0.03513551, -0.9993172,
-0.7077586, -0.977446, -0.7225649, -0.01142506, -0.03513551, -0.9993172,
-0.7063853, -0.975648, -0.7226439, 0.7874331, -0.6063148, -0.1110473,
-0.7065321, -0.9760993, -0.7212209, 0.7874331, -0.6063148, -0.1110473,
-0.7077586, -0.977446, -0.7225649, 0.7874331, -0.6063148, -0.1110473,
-0.7077586, -0.977446, -0.7225649, 0.7874331, -0.6063148, -0.1110473,
-0.7065321, -0.9760993, -0.7212209, -0.19459, -0.598423, 0.7771903,
-0.7079585, -0.9756354, -0.7212209, -0.19459, -0.598423, 0.7771903,
-0.7077586, -0.977446, -0.7225649, -0.19459, -0.598423, 0.7771903,
-0.7077586, -0.977446, -0.7225649, -0.19459, -0.598423, 0.7771903
]);
var normLoc34 = gl.getAttribLocation(prog34, "aNorm");
var f=new Uint16Array([
0, 1, 2, 0, 2, 3,
4, 5, 6, 4, 6, 7,
8, 9, 10, 8, 10, 11,
12, 13, 14, 12, 14, 15,
16, 17, 18, 16, 18, 19,
20, 21, 22, 20, 22, 23,
24, 25, 26, 24, 26, 27,
28, 29, 30, 28, 30, 31,
32, 33, 34, 32, 34, 35,
36, 37, 38, 36, 38, 39,
40, 41, 42, 40, 42, 43
]);
var buf34 = gl.createBuffer();
gl.bindBuffer(gl.ARRAY_BUFFER, buf34);
gl.bufferData(gl.ARRAY_BUFFER, v, gl.STATIC_DRAW);
var ibuf34 = gl.createBuffer();
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, ibuf34);
gl.bufferData(gl.ELEMENT_ARRAY_BUFFER, f, gl.STATIC_DRAW);
var mvMatLoc34 = gl.getUniformLocation(prog34,"mvMatrix");
var prMatLoc34 = gl.getUniformLocation(prog34,"prMatrix");
var normMatLoc34 = gl.getUniformLocation(prog34,"normMatrix");
// ****** quads object 35 ******
var prog35  = gl.createProgram();
gl.attachShader(prog35, getShader( gl, "unnamed_chunk_2vshader35" ));
gl.attachShader(prog35, getShader( gl, "unnamed_chunk_2fshader35" ));
//  Force aPos to location 0, aCol to location 1 
gl.bindAttribLocation(prog35, 0, "aPos");
gl.bindAttribLocation(prog35, 1, "aCol");
gl.linkProgram(prog35);
var v=new Float32Array([
-0.7345065, -0.5748679, -0.9769443, -0.3857503, -0.06208622, -0.9205118,
-0.733044, -0.5839551, -0.9769443, -0.3857503, -0.06208622, -0.9205118,
-0.7414088, -0.5853014, -0.9733481, -0.3857503, -0.06208622, -0.9205118,
-0.7428713, -0.5762142, -0.9733481, -0.3857503, -0.06208622, -0.9205118,
-0.5662958, -0.5477949, -0.575549, -0.3857526, -0.06208698, -0.9205108,
-0.5648332, -0.556882, -0.575549, -0.3857526, -0.06208698, -0.9205108,
-0.573198, -0.5582283, -0.5719528, -0.3857526, -0.06208698, -0.9205108,
-0.5746606, -0.5491412, -0.5719528, -0.3857526, -0.06208698, -0.9205108,
-0.7345065, -0.5748679, -0.9769443, -0.9088144, -0.146273, 0.3907181,
-0.733044, -0.5839551, -0.9769443, -0.9088144, -0.146273, 0.3907181,
-0.5648332, -0.556882, -0.575549, -0.9088144, -0.146273, 0.3907181,
-0.5662958, -0.5477949, -0.575549, -0.9088144, -0.146273, 0.3907181,
-0.733044, -0.5839551, -0.9769443, -0.1589013, 0.9872944, -4.785949e-07,
-0.7414088, -0.5853014, -0.9733481, -0.1589013, 0.9872944, -4.785949e-07,
-0.573198, -0.5582283, -0.5719528, -0.1589013, 0.9872944, -4.785949e-07,
-0.5648332, -0.556882, -0.575549, -0.1589013, 0.9872944, -4.785949e-07,
-0.7414088, -0.5853014, -0.9733481, 0.9088153, 0.1462672, -0.390718,
-0.7428713, -0.5762142, -0.9733481, 0.9088153, 0.1462672, -0.390718,
-0.5746606, -0.5491412, -0.5719528, 0.9088153, 0.1462672, -0.390718,
-0.573198, -0.5582283, -0.5719528, 0.9088153, 0.1462672, -0.390718,
-0.7428713, -0.5762142, -0.9733481, 0.1589022, -0.9872944, -2.538019e-08,
-0.7345065, -0.5748679, -0.9769443, 0.1589022, -0.9872944, -2.538019e-08,
-0.5662958, -0.5477949, -0.575549, 0.1589022, -0.9872944, -2.538019e-08,
-0.5746606, -0.5491412, -0.5719528, 0.1589022, -0.9872944, -2.538019e-08,
-0.7373952, -0.5792345, -0.9754393, -0.3857631, -0.06208914, -0.9205062,
-0.7371569, -0.5807154, -0.9754393, -0.3857631, -0.06208914, -0.9205062,
-0.7385201, -0.5809348, -0.9748532, -0.3857631, -0.06208914, -0.9205062,
-0.7387584, -0.5794539, -0.9748532, -0.3857631, -0.06208914, -0.9205062,
-0.7373952, -0.5792345, -0.9754393, 0.2842348, -0.9026319, 0.3232124,
-0.7387584, -0.5794539, -0.9748532, 0.2842348, -0.9026319, 0.3232124,
-0.7387292, -0.5802088, -0.9769872, 0.2842348, -0.9026319, 0.3232124,
-0.7387292, -0.5802088, -0.9769872, 0.2842348, -0.9026319, 0.3232124,
-0.7373952, -0.5792345, -0.9754393, 0.7155008, 0.1151609, -0.6890548,
-0.7371569, -0.5807154, -0.9754393, 0.7155008, 0.1151609, -0.6890548,
-0.7387292, -0.5802088, -0.9769872, 0.7155008, 0.1151609, -0.6890548,
-0.7387292, -0.5802088, -0.9769872, 0.7155008, 0.1151609, -0.6890548,
-0.7371569, -0.5807154, -0.9754393, 0.01333761, -0.9462359, -0.3232025,
-0.7385201, -0.5809348, -0.9748532, 0.01333761, -0.9462359, -0.3232025,
-0.7387292, -0.5802088, -0.9769872, 0.01333761, -0.9462359, -0.3232025,
-0.7387292, -0.5802088, -0.9769872, 0.01333761, -0.9462359, -0.3232025,
-0.7385201, -0.5809348, -0.9748532, -0.9863958, -0.1587618, 0.0426365,
-0.7387584, -0.5794539, -0.9748532, -0.9863958, -0.1587618, 0.0426365,
-0.7387292, -0.5802088, -0.9769872, -0.9863958, -0.1587618, 0.0426365,
-0.7387292, -0.5802088, -0.9769872, -0.9863958, -0.1587618, 0.0426365
]);
var normLoc35 = gl.getAttribLocation(prog35, "aNorm");
var f=new Uint16Array([
0, 1, 2, 0, 2, 3,
4, 5, 6, 4, 6, 7,
8, 9, 10, 8, 10, 11,
12, 13, 14, 12, 14, 15,
16, 17, 18, 16, 18, 19,
20, 21, 22, 20, 22, 23,
24, 25, 26, 24, 26, 27,
28, 29, 30, 28, 30, 31,
32, 33, 34, 32, 34, 35,
36, 37, 38, 36, 38, 39,
40, 41, 42, 40, 42, 43
]);
var buf35 = gl.createBuffer();
gl.bindBuffer(gl.ARRAY_BUFFER, buf35);
gl.bufferData(gl.ARRAY_BUFFER, v, gl.STATIC_DRAW);
var ibuf35 = gl.createBuffer();
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, ibuf35);
gl.bufferData(gl.ELEMENT_ARRAY_BUFFER, f, gl.STATIC_DRAW);
var mvMatLoc35 = gl.getUniformLocation(prog35,"mvMatrix");
var prMatLoc35 = gl.getUniformLocation(prog35,"prMatrix");
var normMatLoc35 = gl.getUniformLocation(prog35,"normMatrix");
// ****** quads object 36 ******
var prog36  = gl.createProgram();
gl.attachShader(prog36, getShader( gl, "unnamed_chunk_2vshader36" ));
gl.attachShader(prog36, getShader( gl, "unnamed_chunk_2fshader36" ));
//  Force aPos to location 0, aCol to location 1 
gl.bindAttribLocation(prog36, 0, "aPos");
gl.bindAttribLocation(prog36, 1, "aCol");
gl.linkProgram(prog36);
var v=new Float32Array([
-0.5605116, -0.819522, -0.9256307, 0.03277615, -0.6120842, -0.790113,
-0.5504692, -0.8189843, -0.9256307, 0.03277615, -0.6120842, -0.790113,
-0.5500444, -0.8269188, -0.9194663, 0.03277615, -0.6120842, -0.790113,
-0.5600867, -0.8274566, -0.9194663, 0.03277615, -0.6120842, -0.790113,
-0.5749805, -0.5493132, -0.5768331, 0.03277654, -0.6120878, -0.7901102,
-0.5649382, -0.5487754, -0.5768331, 0.03277654, -0.6120878, -0.7901102,
-0.5645133, -0.55671, -0.5706687, 0.03277654, -0.6120878, -0.7901102,
-0.5745556, -0.5572478, -0.5706687, 0.03277654, -0.6120878, -0.7901102,
-0.5605116, -0.819522, -0.9256307, 0.04224863, -0.7889798, 0.6129647,
-0.5504692, -0.8189843, -0.9256307, 0.04224863, -0.7889798, 0.6129647,
-0.5649382, -0.5487754, -0.5768331, 0.04224863, -0.7889798, 0.6129647,
-0.5749805, -0.5493132, -0.5768331, 0.04224863, -0.7889798, 0.6129647,
-0.5504692, -0.8189843, -0.9256307, -0.9985694, -0.05346971, -8.112481e-07,
-0.5500444, -0.8269188, -0.9194663, -0.9985694, -0.05346971, -8.112481e-07,
-0.5645133, -0.55671, -0.5706687, -0.9985694, -0.05346971, -8.112481e-07,
-0.5649382, -0.5487754, -0.5768331, -0.9985694, -0.05346971, -8.112481e-07,
-0.5500444, -0.8269188, -0.9194663, -0.04224889, 0.7889799, -0.6129647,
-0.5600867, -0.8274566, -0.9194663, -0.04224889, 0.7889799, -0.6129647,
-0.5745556, -0.5572478, -0.5706687, -0.04224889, 0.7889799, -0.6129647,
-0.5645133, -0.55671, -0.5706687, -0.04224889, 0.7889799, -0.6129647,
-0.5600867, -0.8274566, -0.9194663, 0.9985692, 0.05347429, -2.923771e-06,
-0.5605116, -0.819522, -0.9256307, 0.9985692, 0.05347429, -2.923771e-06,
-0.5749805, -0.5493132, -0.5768331, 0.9985692, 0.05347429, -2.923771e-06,
-0.5745556, -0.5572478, -0.5706687, 0.9985692, 0.05347429, -2.923771e-06,
-0.5560586, -0.8226688, -0.9230082, 0.03275936, -0.6120763, -0.7901199,
-0.5545607, -0.8225886, -0.9230082, 0.03275936, -0.6120763, -0.7901199,
-0.5544974, -0.8237721, -0.9220888, 0.03275936, -0.6120763, -0.7901199,
-0.5559952, -0.8238523, -0.9220888, 0.03275936, -0.6120763, -0.7901199,
-0.5560586, -0.8226688, -0.9230082, 0.9234758, 0.2650028, 0.2774274,
-0.5559952, -0.8238523, -0.9220888, 0.9234758, 0.2650028, 0.2774274,
-0.5552124, -0.8244446, -0.9241287, 0.9234758, 0.2650028, 0.2774274,
-0.5552124, -0.8244446, -0.9241287, 0.9234758, 0.2650028, 0.2774274,
-0.5560586, -0.8226688, -0.9230082, -0.02803658, 0.5238358, -0.8513578,
-0.5545607, -0.8225886, -0.9230082, -0.02803658, 0.5238358, -0.8513578,
-0.5552124, -0.8244446, -0.9241287, -0.02803658, 0.5238358, -0.8513578,
-0.5552124, -0.8244446, -0.9241287, -0.02803658, 0.5238358, -0.8513578,
-0.5545607, -0.8225886, -0.9230082, 0.9465021, -0.1648457, -0.277416,
-0.5544974, -0.8237721, -0.9220888, 0.9465021, -0.1648457, -0.277416,
-0.5552124, -0.8244446, -0.9241287, 0.9465021, -0.1648457, -0.277416,
-0.5552124, -0.8244446, -0.9241287, 0.9465021, -0.1648457, -0.277416,
-0.5544974, -0.8237721, -0.9220888, 0.05108178, -0.9536656, 0.2965005,
-0.5559952, -0.8238523, -0.9220888, 0.05108178, -0.9536656, 0.2965005,
-0.5552124, -0.8244446, -0.9241287, 0.05108178, -0.9536656, 0.2965005,
-0.5552124, -0.8244446, -0.9241287, 0.05108178, -0.9536656, 0.2965005
]);
var normLoc36 = gl.getAttribLocation(prog36, "aNorm");
var f=new Uint16Array([
0, 1, 2, 0, 2, 3,
4, 5, 6, 4, 6, 7,
8, 9, 10, 8, 10, 11,
12, 13, 14, 12, 14, 15,
16, 17, 18, 16, 18, 19,
20, 21, 22, 20, 22, 23,
24, 25, 26, 24, 26, 27,
28, 29, 30, 28, 30, 31,
32, 33, 34, 32, 34, 35,
36, 37, 38, 36, 38, 39,
40, 41, 42, 40, 42, 43
]);
var buf36 = gl.createBuffer();
gl.bindBuffer(gl.ARRAY_BUFFER, buf36);
gl.bufferData(gl.ARRAY_BUFFER, v, gl.STATIC_DRAW);
var ibuf36 = gl.createBuffer();
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, ibuf36);
gl.bufferData(gl.ELEMENT_ARRAY_BUFFER, f, gl.STATIC_DRAW);
var mvMatLoc36 = gl.getUniformLocation(prog36,"mvMatrix");
var prMatLoc36 = gl.getUniformLocation(prog36,"prMatrix");
var normMatLoc36 = gl.getUniformLocation(prog36,"normMatrix");
// ****** quads object 37 ******
var prog37  = gl.createProgram();
gl.attachShader(prog37, getShader( gl, "unnamed_chunk_2vshader37" ));
gl.attachShader(prog37, getShader( gl, "unnamed_chunk_2fshader37" ));
//  Force aPos to location 0, aCol to location 1 
gl.bindAttribLocation(prog37, 0, "aPos");
gl.bindAttribLocation(prog37, 1, "aCol");
gl.linkProgram(prog37);
var v=new Float32Array([
0.02667611, -0.005408724, 0.06967342, 0.572527, 0.5306304, 0.6250154,
0.02151628, 0.00015851, 0.06967342, 0.572527, 0.5306304, 0.6250154,
0.01803667, -0.003066466, 0.07559878, 0.572527, 0.5306304, 0.6250154,
0.0231965, -0.0086337, 0.07559878, 0.572527, 0.5306304, 0.6250154,
-0.5654272, -0.5541827, -0.5767136, 0.5725253, 0.5306293, 0.6250178,
-0.570587, -0.5486155, -0.5767136, 0.5725253, 0.5306293, 0.6250178,
-0.5740666, -0.5518405, -0.5707882, 0.5725253, 0.5306293, 0.6250178,
-0.5689068, -0.5574077, -0.5707882, 0.5725253, 0.5306293, 0.6250178,
0.02667611, -0.005408724, 0.06967342, -0.4584073, -0.4248618, 0.7806122,
0.02151628, 0.00015851, 0.06967342, -0.4584073, -0.4248618, 0.7806122,
-0.570587, -0.5486155, -0.5767136, -0.4584073, -0.4248618, 0.7806122,
-0.5654272, -0.5541827, -0.5767136, -0.4584073, -0.4248618, 0.7806122,
0.02151628, 0.00015851, 0.06967342, 0.6797616, -0.7334332, -1.038072e-07,
0.01803667, -0.003066466, 0.07559878, 0.6797616, -0.7334332, -1.038072e-07,
-0.5740666, -0.5518405, -0.5707882, 0.6797616, -0.7334332, -1.038072e-07,
-0.570587, -0.5486155, -0.5767136, 0.6797616, -0.7334332, -1.038072e-07,
0.01803667, -0.003066466, 0.07559878, 0.4584073, 0.4248616, -0.7806122,
0.0231965, -0.0086337, 0.07559878, 0.4584073, 0.4248616, -0.7806122,
-0.5689068, -0.5574077, -0.5707882, 0.4584073, 0.4248616, -0.7806122,
-0.5740666, -0.5518405, -0.5707882, 0.4584073, 0.4248616, -0.7806122,
0.0231965, -0.0086337, 0.07559878, -0.6797616, 0.7334332, 1.48296e-08,
0.02667611, -0.005408724, 0.06967342, -0.6797616, 0.7334332, 1.48296e-08,
-0.5654272, -0.5541827, -0.5767136, -0.6797616, 0.7334332, 1.48296e-08,
-0.5689068, -0.5574077, -0.5707882, -0.6797616, 0.7334332, 1.48296e-08,
0.02321002, -0.004469024, 0.07205064, 0.5725268, 0.5306298, 0.6250162,
0.02219038, -0.003368874, 0.07205064, 0.5725268, 0.5306298, 0.6250162,
0.02150276, -0.004006166, 0.07322156, 0.5725268, 0.5306298, 0.6250162,
0.02252241, -0.005106316, 0.07322156, 0.5725268, 0.5306298, 0.6250162,
0.02321002, -0.004469024, 0.07205064, -0.8375084, 0.5004179, -0.2194576,
0.02252241, -0.005106316, 0.07322156, -0.8375084, 0.5004179, -0.2194576,
0.02350144, -0.003176335, 0.07388613, -0.8375084, 0.5004179, -0.2194576,
0.02350144, -0.003176335, 0.07388613, -0.8375084, 0.5004179, -0.2194576,
0.02321002, -0.004469024, 0.07205064, 0.6302476, 0.5841267, -0.5114529,
0.02219038, -0.003368874, 0.07205064, 0.6302476, 0.5841267, -0.5114529,
0.02350144, -0.003176335, 0.07388613, 0.6302476, 0.5841267, -0.5114529,
0.02350144, -0.003176335, 0.07388613, 0.6302476, 0.5841267, -0.5114529,
0.02219038, -0.003368874, 0.07205064, -0.4354525, 0.8730518, 0.2194577,
0.02150276, -0.004006166, 0.07322156, -0.4354525, 0.8730518, 0.2194577,
0.02350144, -0.003176335, 0.07388613, -0.4354525, 0.8730518, 0.2194577,
0.02350144, -0.003176335, 0.07388613, -0.4354525, 0.8730518, 0.2194577,
0.02150276, -0.004006166, 0.07322156, -0.2281914, -0.211493, 0.950368,
0.02252241, -0.005106316, 0.07322156, -0.2281914, -0.211493, 0.950368,
0.02350144, -0.003176335, 0.07388613, -0.2281914, -0.211493, 0.950368,
0.02350144, -0.003176335, 0.07388613, -0.2281914, -0.211493, 0.950368
]);
var normLoc37 = gl.getAttribLocation(prog37, "aNorm");
var f=new Uint16Array([
0, 1, 2, 0, 2, 3,
4, 5, 6, 4, 6, 7,
8, 9, 10, 8, 10, 11,
12, 13, 14, 12, 14, 15,
16, 17, 18, 16, 18, 19,
20, 21, 22, 20, 22, 23,
24, 25, 26, 24, 26, 27,
28, 29, 30, 28, 30, 31,
32, 33, 34, 32, 34, 35,
36, 37, 38, 36, 38, 39,
40, 41, 42, 40, 42, 43
]);
var buf37 = gl.createBuffer();
gl.bindBuffer(gl.ARRAY_BUFFER, buf37);
gl.bufferData(gl.ARRAY_BUFFER, v, gl.STATIC_DRAW);
var ibuf37 = gl.createBuffer();
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, ibuf37);
gl.bufferData(gl.ELEMENT_ARRAY_BUFFER, f, gl.STATIC_DRAW);
var mvMatLoc37 = gl.getUniformLocation(prog37,"mvMatrix");
var prMatLoc37 = gl.getUniformLocation(prog37,"prMatrix");
var normMatLoc37 = gl.getUniformLocation(prog37,"normMatrix");
// ****** quads object 38 ******
var prog38  = gl.createProgram();
gl.attachShader(prog38, getShader( gl, "unnamed_chunk_2vshader38" ));
gl.attachShader(prog38, getShader( gl, "unnamed_chunk_2fshader38" ));
//  Force aPos to location 0, aCol to location 1 
gl.bindAttribLocation(prog38, 0, "aPos");
gl.bindAttribLocation(prog38, 1, "aCol");
gl.linkProgram(prog38);
var v=new Float32Array([
-0.9584081, -0.8183185, -0.6349673, -0.8156331, -0.5656133, -0.1217558,
-0.9544585, -0.8240138, -0.6349673, -0.8156331, -0.5656133, -0.1217558,
-0.955152, -0.8244947, -0.6280881, -0.8156331, -0.5656133, -0.1217558,
-0.9591016, -0.8187994, -0.6280881, -0.8156331, -0.5656133, -0.1217558,
-0.571375, -0.5499235, -0.5771905, -0.8156283, -0.5656185, -0.1217627,
-0.5674254, -0.5556188, -0.5771905, -0.8156283, -0.5656185, -0.1217627,
-0.5681189, -0.5560997, -0.5703112, -0.8156283, -0.5656185, -0.1217627,
-0.5720685, -0.5504044, -0.5703112, -0.8156283, -0.5656185, -0.1217627,
-0.9584081, -0.8183185, -0.6349673, -0.1000547, -0.06938447, 0.9925597,
-0.9544585, -0.8240138, -0.6349673, -0.1000547, -0.06938447, 0.9925597,
-0.5674254, -0.5556188, -0.5771905, -0.1000547, -0.06938447, 0.9925597,
-0.571375, -0.5499235, -0.5771905, -0.1000547, -0.06938447, 0.9925597,
-0.9544585, -0.8240138, -0.6349673, -0.5698544, 0.8217457, 1.367222e-06,
-0.955152, -0.8244947, -0.6280881, -0.5698544, 0.8217457, 1.367222e-06,
-0.5681189, -0.5560997, -0.5703112, -0.5698544, 0.8217457, 1.367222e-06,
-0.5674254, -0.5556188, -0.5771905, -0.5698544, 0.8217457, 1.367222e-06,
-0.955152, -0.8244947, -0.6280881, 0.1000542, 0.06938518, -0.9925597,
-0.9591016, -0.8187994, -0.6280881, 0.1000542, 0.06938518, -0.9925597,
-0.5720685, -0.5504044, -0.5703112, 0.1000542, 0.06938518, -0.9925597,
-0.5681189, -0.5560997, -0.5703112, 0.1000542, 0.06938518, -0.9925597,
-0.9591016, -0.8187994, -0.6280881, 0.5698539, -0.821746, 3.495484e-06,
-0.9584081, -0.8183185, -0.6349673, 0.5698539, -0.821746, 3.495484e-06,
-0.571375, -0.5499235, -0.5771905, 0.5698539, -0.821746, 3.495484e-06,
-0.5720685, -0.5504044, -0.5703112, 0.5698539, -0.821746, 3.495484e-06,
-0.9571324, -0.8207383, -0.6322721, -0.8156305, -0.5656169, -0.1217553,
-0.9562776, -0.8219709, -0.6322721, -0.8156305, -0.5656169, -0.1217553,
-0.9564277, -0.8220749, -0.6307833, -0.8156305, -0.5656169, -0.1217553,
-0.9572825, -0.8208423, -0.6307833, -0.8156305, -0.5656169, -0.1217553,
-0.9571324, -0.8207383, -0.6322721, 0.8199681, -0.5708101, 0.04275772,
-0.9572825, -0.8208423, -0.6307833, 0.8199681, -0.5708101, 0.04275772,
-0.9584113, -0.8225378, -0.6317712, 0.8199681, -0.5708101, 0.04275772,
-0.9584113, -0.8225378, -0.6317712, 0.8199681, -0.5708101, 0.04275772,
-0.9571324, -0.8207383, -0.6322721, -0.1927105, -0.1336393, -0.9721127,
-0.9562776, -0.8219709, -0.6322721, -0.1927105, -0.1336393, -0.9721127,
-0.9584113, -0.8225378, -0.6317712, -0.1927105, -0.1336393, -0.9721127,
-0.9584113, -0.8225378, -0.6317712, -0.1927105, -0.1336393, -0.9721127,
-0.9562776, -0.8219709, -0.6322721, 0.2471885, -0.9680241, -0.04274588,
-0.9564277, -0.8220749, -0.6307833, 0.2471885, -0.9680241, -0.04274588,
-0.9584113, -0.8225378, -0.6317712, 0.2471885, -0.9680241, -0.04274588,
-0.9584113, -0.8225378, -0.6317712, 0.2471885, -0.9680241, -0.04274588,
-0.9564277, -0.8220749, -0.6307833, -0.3800773, -0.2635729, 0.8866063,
-0.9572825, -0.8208423, -0.6307833, -0.3800773, -0.2635729, 0.8866063,
-0.9584113, -0.8225378, -0.6317712, -0.3800773, -0.2635729, 0.8866063,
-0.9584113, -0.8225378, -0.6317712, -0.3800773, -0.2635729, 0.8866063
]);
var normLoc38 = gl.getAttribLocation(prog38, "aNorm");
var f=new Uint16Array([
0, 1, 2, 0, 2, 3,
4, 5, 6, 4, 6, 7,
8, 9, 10, 8, 10, 11,
12, 13, 14, 12, 14, 15,
16, 17, 18, 16, 18, 19,
20, 21, 22, 20, 22, 23,
24, 25, 26, 24, 26, 27,
28, 29, 30, 28, 30, 31,
32, 33, 34, 32, 34, 35,
36, 37, 38, 36, 38, 39,
40, 41, 42, 40, 42, 43
]);
var buf38 = gl.createBuffer();
gl.bindBuffer(gl.ARRAY_BUFFER, buf38);
gl.bufferData(gl.ARRAY_BUFFER, v, gl.STATIC_DRAW);
var ibuf38 = gl.createBuffer();
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, ibuf38);
gl.bufferData(gl.ELEMENT_ARRAY_BUFFER, f, gl.STATIC_DRAW);
var mvMatLoc38 = gl.getUniformLocation(prog38,"mvMatrix");
var prMatLoc38 = gl.getUniformLocation(prog38,"prMatrix");
var normMatLoc38 = gl.getUniformLocation(prog38,"normMatrix");
// ****** quads object 39 ******
var prog39  = gl.createProgram();
gl.attachShader(prog39, getShader( gl, "unnamed_chunk_2vshader39" ));
gl.attachShader(prog39, getShader( gl, "unnamed_chunk_2fshader39" ));
//  Force aPos to location 0, aCol to location 1 
gl.bindAttribLocation(prog39, 0, "aPos");
gl.bindAttribLocation(prog39, 1, "aCol");
gl.linkProgram(prog39);
var v=new Float32Array([
-0.9745211, -0.5677239, -0.8034853, -0.8734021, -0.04110814, -0.4852619,
-0.9741136, -0.5763822, -0.8034853, -0.8734021, -0.04110814, -0.4852619,
-0.9783151, -0.5765799, -0.7959064, -0.8734021, -0.04110814, -0.4852619,
-0.9787226, -0.5679216, -0.7959064, -0.8734021, -0.04110814, -0.4852619,
-0.5678499, -0.5485836, -0.5775404, -0.8734039, -0.04110221, -0.485259,
-0.5674424, -0.5572419, -0.5775404, -0.8734039, -0.04110221, -0.485259,
-0.5716439, -0.5574396, -0.5699614, -0.8734039, -0.04110221, -0.485259,
-0.5720514, -0.5487813, -0.5699614, -0.8734039, -0.04110221, -0.485259,
-0.9745211, -0.5677239, -0.8034853, -0.4847228, -0.02281429, 0.8743703,
-0.9741136, -0.5763822, -0.8034853, -0.4847228, -0.02281429, 0.8743703,
-0.5674424, -0.5572419, -0.5775404, -0.4847228, -0.02281429, 0.8743703,
-0.5678499, -0.5485836, -0.5775404, -0.4847228, -0.02281429, 0.8743703,
-0.9741136, -0.5763822, -0.8034853, -0.04701487, 0.9988942, 1.993906e-06,
-0.9783151, -0.5765799, -0.7959064, -0.04701487, 0.9988942, 1.993906e-06,
-0.5716439, -0.5574396, -0.5699614, -0.04701487, 0.9988942, 1.993906e-06,
-0.5674424, -0.5572419, -0.5775404, -0.04701487, 0.9988942, 1.993906e-06,
-0.9783151, -0.5765799, -0.7959064, 0.4847229, 0.02281429, -0.8743702,
-0.9787226, -0.5679216, -0.7959064, 0.4847229, 0.02281429, -0.8743702,
-0.5720514, -0.5487813, -0.5699614, 0.4847229, 0.02281429, -0.8743702,
-0.5716439, -0.5574396, -0.5699614, 0.4847229, 0.02281429, -0.8743702,
-0.9787226, -0.5679216, -0.7959064, 0.04701486, -0.9988942, -1.995709e-06,
-0.9745211, -0.5677239, -0.8034853, 0.04701486, -0.9988942, -1.995709e-06,
-0.5678499, -0.5485836, -0.5775404, 0.04701486, -0.9988942, -1.995709e-06,
-0.5720514, -0.5487813, -0.5699614, 0.04701486, -0.9988942, -1.995709e-06,
-0.9760898, -0.5713856, -0.8003516, -0.8734089, -0.04110282, -0.4852497,
-0.9760193, -0.572884, -0.8003516, -0.8734089, -0.04110282, -0.4852497,
-0.9767464, -0.5729182, -0.79904, -0.8734089, -0.04110282, -0.4852497,
-0.9768169, -0.5714198, -0.79904, -0.8734089, -0.04110282, -0.4852497,
-0.9760898, -0.5713856, -0.8003516, 0.3506841, -0.9208642, 0.1703813,
-0.9768169, -0.5714198, -0.79904, 0.3506841, -0.9208642, 0.1703813,
-0.9781649, -0.5722341, -0.8006663, 0.3506841, -0.9208642, 0.1703813,
-0.9781649, -0.5722341, -0.8006663, 0.3506841, -0.9208642, 0.1703813,
-0.9760898, -0.5713856, -0.8003516, 0.1472031, 0.006927413, -0.989082,
-0.9760193, -0.572884, -0.8003516, 0.1472031, 0.006927413, -0.989082,
-0.9781649, -0.5722341, -0.8006663, 0.1472031, 0.006927413, -0.989082,
-0.9781649, -0.5722341, -0.8006663, 0.1472031, 0.006927413, -0.989082,
-0.9760193, -0.572884, -0.8003516, -0.2626626, -0.9497254, -0.1703827,
-0.9767464, -0.5729182, -0.79904, -0.2626626, -0.9497254, -0.1703827,
-0.9781649, -0.5722341, -0.8006663, -0.2626626, -0.9497254, -0.1703827,
-0.9781649, -0.5722341, -0.8006663, -0.2626626, -0.9497254, -0.1703827,
-0.9767464, -0.5729182, -0.79904, -0.7605338, -0.03579089, 0.6483113,
-0.9768169, -0.5714198, -0.79904, -0.7605338, -0.03579089, 0.6483113,
-0.9781649, -0.5722341, -0.8006663, -0.7605338, -0.03579089, 0.6483113,
-0.9781649, -0.5722341, -0.8006663, -0.7605338, -0.03579089, 0.6483113
]);
var normLoc39 = gl.getAttribLocation(prog39, "aNorm");
var f=new Uint16Array([
0, 1, 2, 0, 2, 3,
4, 5, 6, 4, 6, 7,
8, 9, 10, 8, 10, 11,
12, 13, 14, 12, 14, 15,
16, 17, 18, 16, 18, 19,
20, 21, 22, 20, 22, 23,
24, 25, 26, 24, 26, 27,
28, 29, 30, 28, 30, 31,
32, 33, 34, 32, 34, 35,
36, 37, 38, 36, 38, 39,
40, 41, 42, 40, 42, 43
]);
var buf39 = gl.createBuffer();
gl.bindBuffer(gl.ARRAY_BUFFER, buf39);
gl.bufferData(gl.ARRAY_BUFFER, v, gl.STATIC_DRAW);
var ibuf39 = gl.createBuffer();
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, ibuf39);
gl.bufferData(gl.ELEMENT_ARRAY_BUFFER, f, gl.STATIC_DRAW);
var mvMatLoc39 = gl.getUniformLocation(prog39,"mvMatrix");
var prMatLoc39 = gl.getUniformLocation(prog39,"prMatrix");
var normMatLoc39 = gl.getUniformLocation(prog39,"normMatrix");
// ****** quads object 40 ******
var prog40  = gl.createProgram();
gl.attachShader(prog40, getShader( gl, "unnamed_chunk_2vshader40" ));
gl.attachShader(prog40, getShader( gl, "unnamed_chunk_2fshader40" ));
//  Force aPos to location 0, aCol to location 1 
gl.bindAttribLocation(prog40, 0, "aPos");
gl.bindAttribLocation(prog40, 1, "aCol");
gl.linkProgram(prog40);
var v=new Float32Array([
0.0570799, 0.01201867, 0.06975303, -0.7892724, 0.0967354, 0.6063756,
0.05604376, 0.003564736, 0.06975303, -0.7892724, 0.0967354, 0.6063756,
0.06117002, 0.002936446, 0.07652572, -0.7892724, 0.0967354, 0.6063756,
0.06220616, 0.01139038, 0.07652572, -0.7892724, 0.0967354, 0.6063756,
0.5595514, -0.04956574, -0.316282, -0.7892743, 0.09673283, 0.6063735,
0.5585153, -0.05801968, -0.316282, -0.7892743, 0.09673283, 0.6063735,
0.5636415, -0.05864796, -0.3095093, -0.7892743, 0.09673283, 0.6063735,
0.5646777, -0.05019403, -0.3095093, -0.7892743, 0.09673283, 0.6063735,
0.0570799, 0.01201867, 0.06975303, 0.6018722, -0.0737671, 0.7951781,
0.05604376, 0.003564736, 0.06975303, 0.6018722, -0.0737671, 0.7951781,
0.5585153, -0.05801968, -0.316282, 0.6018722, -0.0737671, 0.7951781,
0.5595514, -0.04956574, -0.316282, 0.6018722, -0.0737671, 0.7951781,
0.05604376, 0.003564736, 0.06975303, 0.1216527, 0.9925727, 2.146984e-08,
0.06117002, 0.002936446, 0.07652572, 0.1216527, 0.9925727, 2.146984e-08,
0.5636415, -0.05864796, -0.3095093, 0.1216527, 0.9925727, 2.146984e-08,
0.5585153, -0.05801968, -0.316282, 0.1216527, 0.9925727, 2.146984e-08,
0.06117002, 0.002936446, 0.07652572, -0.6018722, 0.07376737, -0.7951781,
0.06220616, 0.01139038, 0.07652572, -0.6018722, 0.07376737, -0.7951781,
0.5646777, -0.05019403, -0.3095093, -0.6018722, 0.07376737, -0.7951781,
0.5636415, -0.05864796, -0.3095093, -0.6018722, 0.07376737, -0.7951781,
0.06220616, 0.01139038, 0.07652572, -0.1216527, -0.9925727, -4.293967e-08,
0.0570799, 0.01201867, 0.06975303, -0.1216527, -0.9925727, -4.293967e-08,
0.5595514, -0.04956574, -0.316282, -0.1216527, -0.9925727, -4.293967e-08,
0.5646777, -0.05019403, -0.3095093, -0.1216527, -0.9925727, -4.293967e-08,
0.0587648, 0.008277313, 0.07254299, -0.7892727, 0.09673595, 0.606375,
0.05858232, 0.006788454, 0.07254299, -0.7892727, 0.09673595, 0.606375,
0.05948513, 0.006677803, 0.07373576, -0.7892727, 0.09673595, 0.606375,
0.05966761, 0.008166662, 0.07373576, -0.7892727, 0.09673595, 0.606375,
0.0587648, 0.008277313, 0.07254299, 0.1632256, -0.9633409, -0.2129123,
0.05966761, 0.008166662, 0.07373576, 0.1632256, -0.9633409, -0.2129123,
0.05754642, 0.007671029, 0.07435212, 0.1632256, -0.9633409, -0.2129123,
0.05754642, 0.007671029, 0.07435212, 0.1632256, -0.9633409, -0.2129123,
0.0587648, 0.008277313, 0.07254299, -0.8406826, 0.1030369, -0.5316353,
0.05858232, 0.006788454, 0.07254299, -0.8406826, 0.1030369, -0.5316353,
0.05754642, 0.007671029, 0.07435212, -0.8406826, 0.1030369, -0.5316353,
0.05754642, 0.007671029, 0.07435212, -0.8406826, 0.1030369, -0.5316353,
0.05858232, 0.006788454, 0.07254299, -0.3910394, -0.8954085, 0.2129128,
0.05948513, 0.006677803, 0.07373576, -0.3910394, -0.8954085, 0.2129128,
0.05754642, 0.007671029, 0.07435212, -0.3910394, -0.8954085, 0.2129128,
0.05754642, 0.007671029, 0.07435212, -0.3910394, -0.8954085, 0.2129128,
0.05948513, 0.006677803, 0.07373576, 0.2864169, -0.03510422, 0.9574618,
0.05966761, 0.008166662, 0.07373576, 0.2864169, -0.03510422, 0.9574618,
0.05754642, 0.007671029, 0.07435212, 0.2864169, -0.03510422, 0.9574618,
0.05754642, 0.007671029, 0.07435212, 0.2864169, -0.03510422, 0.9574618
]);
var normLoc40 = gl.getAttribLocation(prog40, "aNorm");
var f=new Uint16Array([
0, 1, 2, 0, 2, 3,
4, 5, 6, 4, 6, 7,
8, 9, 10, 8, 10, 11,
12, 13, 14, 12, 14, 15,
16, 17, 18, 16, 18, 19,
20, 21, 22, 20, 22, 23,
24, 25, 26, 24, 26, 27,
28, 29, 30, 28, 30, 31,
32, 33, 34, 32, 34, 35,
36, 37, 38, 36, 38, 39,
40, 41, 42, 40, 42, 43
]);
var buf40 = gl.createBuffer();
gl.bindBuffer(gl.ARRAY_BUFFER, buf40);
gl.bufferData(gl.ARRAY_BUFFER, v, gl.STATIC_DRAW);
var ibuf40 = gl.createBuffer();
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, ibuf40);
gl.bufferData(gl.ELEMENT_ARRAY_BUFFER, f, gl.STATIC_DRAW);
var mvMatLoc40 = gl.getUniformLocation(prog40,"mvMatrix");
var prMatLoc40 = gl.getUniformLocation(prog40,"prMatrix");
var normMatLoc40 = gl.getUniformLocation(prog40,"normMatrix");
// ****** quads object 41 ******
var prog41  = gl.createProgram();
gl.attachShader(prog41, getShader( gl, "unnamed_chunk_2vshader41" ));
gl.attachShader(prog41, getShader( gl, "unnamed_chunk_2fshader41" ));
//  Force aPos to location 0, aCol to location 1 
gl.bindAttribLocation(prog41, 0, "aPos");
gl.bindAttribLocation(prog41, 1, "aCol");
gl.linkProgram(prog41);
var v=new Float32Array([
0.9053447, 0.009328349, -0.4684874, 0.8997583, 0.1725533, -0.4008246,
0.9044247, 0.01412557, -0.4684874, 0.8997583, 0.1725533, -0.4008246,
0.9063476, 0.01449431, -0.4640123, 0.8997583, 0.1725533, -0.4008246,
0.9072676, 0.009697096, -0.4640123, 0.8997583, 0.1725533, -0.4008246,
0.5610951, -0.05668984, -0.3151332, 0.8997647, 0.1725432, -0.4008146,
0.5601751, -0.05189262, -0.3151332, 0.8997647, 0.1725432, -0.4008146,
0.5620979, -0.05152387, -0.3106581, 0.8997647, 0.1725432, -0.4008146,
0.5630179, -0.05632109, -0.3106581, 0.8997647, 0.1725432, -0.4008146,
0.9053447, 0.009328349, -0.4684874, 0.3936465, 0.07549248, 0.9161568,
0.9044247, 0.01412557, -0.4684874, 0.3936465, 0.07549248, 0.9161568,
0.5601751, -0.05189262, -0.3151332, 0.3936465, 0.07549248, 0.9161568,
0.5610951, -0.05668984, -0.3151332, 0.3936465, 0.07549248, 0.9161568,
0.9044247, 0.01412557, -0.4684874, 0.1883416, -0.9821035, -9.421639e-07,
0.9063476, 0.01449431, -0.4640123, 0.1883416, -0.9821035, -9.421639e-07,
0.5620979, -0.05152387, -0.3106581, 0.1883416, -0.9821035, -9.421639e-07,
0.5601751, -0.05189262, -0.3151332, 0.1883416, -0.9821035, -9.421639e-07,
0.9063476, 0.01449431, -0.4640123, -0.3936464, -0.07549249, -0.9161569,
0.9072676, 0.009697096, -0.4640123, -0.3936464, -0.07549249, -0.9161569,
0.5630179, -0.05632109, -0.3106581, -0.3936464, -0.07549249, -0.9161569,
0.5620979, -0.05152387, -0.3106581, -0.3936464, -0.07549249, -0.9161569,
0.9072676, 0.009697096, -0.4640123, -0.1883417, 0.9821035, 7.786478e-07,
0.9053447, 0.009328349, -0.4684874, -0.1883417, 0.9821035, 7.786478e-07,
0.5610951, -0.05668984, -0.3151332, -0.1883417, 0.9821035, 7.786478e-07,
0.5630179, -0.05632109, -0.3106581, -0.1883417, 0.9821035, 7.786478e-07,
0.9056922, 0.01111814, -0.466937, 0.8997526, 0.1725572, -0.4008359,
0.9054096, 0.01259129, -0.466937, 0.8997526, 0.1725572, -0.4008359,
0.9060001, 0.01270453, -0.4655627, 0.8997526, 0.1725572, -0.4008359,
0.9062827, 0.01123137, -0.4655627, 0.8997526, 0.1725572, -0.4008359,
0.9056922, 0.01111814, -0.466937, -0.4922801, 0.8589819, 0.1407498,
0.9062827, 0.01123137, -0.4655627, -0.4922801, 0.8589819, 0.1407498,
0.9076456, 0.01225643, -0.4670515, -0.4922801, 0.8589819, 0.1407498,
0.9076456, 0.01225643, -0.4670515, -0.4922801, 0.8589819, 0.1407498,
0.9056922, 0.01111814, -0.466937, -0.05264596, -0.0100966, -0.9985623,
0.9054096, 0.01259129, -0.466937, -0.05264596, -0.0100966, -0.9985623,
0.9076456, 0.01225643, -0.4670515, -0.05264596, -0.0100966, -0.9985623,
0.9076456, 0.01225643, -0.4670515, -0.05264596, -0.0100966, -0.9985623,
0.9054096, 0.01259129, -0.466937, 0.1395786, 0.9801581, -0.1407402,
0.9060001, 0.01270453, -0.4655627, 0.1395786, 0.9801581, -0.1407402,
0.9076456, 0.01225643, -0.4670515, 0.1395786, 0.9801581, -0.1407402,
0.9076456, 0.01225643, -0.4670515, 0.1395786, 0.9801581, -0.1407402,
0.9060001, 0.01270453, -0.4655627, 0.684516, 0.1312785, 0.7170801,
0.9062827, 0.01123137, -0.4655627, 0.684516, 0.1312785, 0.7170801,
0.9076456, 0.01225643, -0.4670515, 0.684516, 0.1312785, 0.7170801,
0.9076456, 0.01225643, -0.4670515, 0.684516, 0.1312785, 0.7170801
]);
var normLoc41 = gl.getAttribLocation(prog41, "aNorm");
var f=new Uint16Array([
0, 1, 2, 0, 2, 3,
4, 5, 6, 4, 6, 7,
8, 9, 10, 8, 10, 11,
12, 13, 14, 12, 14, 15,
16, 17, 18, 16, 18, 19,
20, 21, 22, 20, 22, 23,
24, 25, 26, 24, 26, 27,
28, 29, 30, 28, 30, 31,
32, 33, 34, 32, 34, 35,
36, 37, 38, 36, 38, 39,
40, 41, 42, 40, 42, 43
]);
var buf41 = gl.createBuffer();
gl.bindBuffer(gl.ARRAY_BUFFER, buf41);
gl.bufferData(gl.ARRAY_BUFFER, v, gl.STATIC_DRAW);
var ibuf41 = gl.createBuffer();
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, ibuf41);
gl.bufferData(gl.ELEMENT_ARRAY_BUFFER, f, gl.STATIC_DRAW);
var mvMatLoc41 = gl.getUniformLocation(prog41,"mvMatrix");
var prMatLoc41 = gl.getUniformLocation(prog41,"prMatrix");
var normMatLoc41 = gl.getUniformLocation(prog41,"normMatrix");
// ****** quads object 42 ******
var prog42  = gl.createProgram();
gl.attachShader(prog42, getShader( gl, "unnamed_chunk_2vshader42" ));
gl.attachShader(prog42, getShader( gl, "unnamed_chunk_2fshader42" ));
//  Force aPos to location 0, aCol to location 1 
gl.bindAttribLocation(prog42, 0, "aPos");
gl.bindAttribLocation(prog42, 1, "aCol");
gl.linkProgram(prog42);
var v=new Float32Array([
-0.742283, -0.2090227, 0.7177903, -0.8093547, 0.01098271, 0.5872176,
-0.7423854, -0.2165646, 0.7177903, -0.8093547, 0.01098271, 0.5872176,
-0.7379567, -0.2166247, 0.7238954, -0.8093547, 0.01098271, 0.5872176,
-0.7378544, -0.2090828, 0.7238954, -0.8093547, 0.01098271, 0.5872176,
-0.4376958, -0.2131558, 0.4967996, -0.8093535, 0.0109827, 0.5872189,
-0.4377981, -0.2206976, 0.4967996, -0.8093535, 0.0109827, 0.5872189,
-0.4333694, -0.2207577, 0.5029048, -0.8093535, 0.0109827, 0.5872189,
-0.433267, -0.2132159, 0.5029048, -0.8093535, 0.0109827, 0.5872189,
-0.742283, -0.2090227, 0.7177903, 0.5871654, -0.007967669, 0.8094279,
-0.7423854, -0.2165646, 0.7177903, 0.5871654, -0.007967669, 0.8094279,
-0.4377981, -0.2206976, 0.4967996, 0.5871654, -0.007967669, 0.8094279,
-0.4376958, -0.2131558, 0.4967996, 0.5871654, -0.007967669, 0.8094279,
-0.7423854, -0.2165646, 0.7177903, 0.01356828, 0.999908, 2.025014e-07,
-0.7379567, -0.2166247, 0.7238954, 0.01356828, 0.999908, 2.025014e-07,
-0.4333694, -0.2207577, 0.5029048, 0.01356828, 0.999908, 2.025014e-07,
-0.4377981, -0.2206976, 0.4967996, 0.01356828, 0.999908, 2.025014e-07,
-0.7379567, -0.2166247, 0.7238954, -0.5871652, 0.007967665, -0.809428,
-0.7378544, -0.2090828, 0.7238954, -0.5871652, 0.007967665, -0.809428,
-0.433267, -0.2132159, 0.5029048, -0.5871652, 0.007967665, -0.809428,
-0.4333694, -0.2207577, 0.5029048, -0.5871652, 0.007967665, -0.809428,
-0.7378544, -0.2090828, 0.7238954, -0.01356828, -0.999908, -2.012197e-07,
-0.742283, -0.2090227, 0.7177903, -0.01356828, -0.999908, -2.012197e-07,
-0.4376958, -0.2131558, 0.4967996, -0.01356828, -0.999908, -2.012197e-07,
-0.433267, -0.2132159, 0.5029048, -0.01356828, -0.999908, -2.012197e-07,
-0.7405501, -0.2120678, 0.7202358, -0.8093315, 0.01096755, 0.5872498,
-0.7405704, -0.2135676, 0.7202358, -0.8093315, 0.01096755, 0.5872498,
-0.7396896, -0.2135796, 0.7214499, -0.8093315, 0.01096755, 0.5872498,
-0.7396693, -0.2120797, 0.7214499, -0.8093315, 0.01096755, 0.5872498,
-0.7405501, -0.2120678, 0.7202358, 0.2714763, -0.9400968, -0.2062004,
-0.7396693, -0.2120797, 0.7214499, 0.2714763, -0.9400968, -0.2062004,
-0.7417386, -0.2128017, 0.7220173, 0.2714763, -0.9400968, -0.2062004,
-0.7417386, -0.2128017, 0.7220173, 0.2714763, -0.9400968, -0.2062004,
-0.7405501, -0.2120678, 0.7202358, -0.8339648, 0.01130137, -0.5517019,
-0.7405704, -0.2135676, 0.7202358, -0.8339648, 0.01130137, -0.5517019,
-0.7417386, -0.2128017, 0.7220173, -0.8339648, 0.01130137, -0.5517019,
-0.7417386, -0.2128017, 0.7220173, -0.8339648, 0.01130137, -0.5517019,
-0.7405704, -0.2135676, 0.7202358, -0.2968812, -0.9323859, 0.2061991,
-0.7396896, -0.2135796, 0.7214499, -0.2968812, -0.9323859, 0.2061991,
-0.7417386, -0.2128017, 0.7220173, -0.2968812, -0.9323859, 0.2061991,
-0.7417386, -0.2128017, 0.7220173, -0.2968812, -0.9323859, 0.2061991,
-0.7396896, -0.2135796, 0.7214499, 0.265602, -0.003599272, 0.964076,
-0.7396693, -0.2120797, 0.7214499, 0.265602, -0.003599272, 0.964076,
-0.7417386, -0.2128017, 0.7220173, 0.265602, -0.003599272, 0.964076,
-0.7417386, -0.2128017, 0.7220173, 0.265602, -0.003599272, 0.964076
]);
var normLoc42 = gl.getAttribLocation(prog42, "aNorm");
var f=new Uint16Array([
0, 1, 2, 0, 2, 3,
4, 5, 6, 4, 6, 7,
8, 9, 10, 8, 10, 11,
12, 13, 14, 12, 14, 15,
16, 17, 18, 16, 18, 19,
20, 21, 22, 20, 22, 23,
24, 25, 26, 24, 26, 27,
28, 29, 30, 28, 30, 31,
32, 33, 34, 32, 34, 35,
36, 37, 38, 36, 38, 39,
40, 41, 42, 40, 42, 43
]);
var buf42 = gl.createBuffer();
gl.bindBuffer(gl.ARRAY_BUFFER, buf42);
gl.bufferData(gl.ARRAY_BUFFER, v, gl.STATIC_DRAW);
var ibuf42 = gl.createBuffer();
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, ibuf42);
gl.bufferData(gl.ELEMENT_ARRAY_BUFFER, f, gl.STATIC_DRAW);
var mvMatLoc42 = gl.getUniformLocation(prog42,"mvMatrix");
var prMatLoc42 = gl.getUniformLocation(prog42,"prMatrix");
var normMatLoc42 = gl.getUniformLocation(prog42,"normMatrix");
// ****** quads object 43 ******
var prog43  = gl.createProgram();
gl.attachShader(prog43, getShader( gl, "unnamed_chunk_2vshader43" ));
gl.attachShader(prog43, getShader( gl, "unnamed_chunk_2fshader43" ));
//  Force aPos to location 0, aCol to location 1 
gl.bindAttribLocation(prog43, 0, "aPos");
gl.bindAttribLocation(prog43, 1, "aCol");
gl.linkProgram(prog43);
var v=new Float32Array([
0.01813261, -0.003882237, 0.1029201, 0.7103865, 0.3407447, -0.615828,
0.01459896, 0.003484739, 0.1029201, 0.7103865, 0.3407447, -0.615828,
0.01913575, 0.005660861, 0.1093576, 0.7103865, 0.3407447, -0.615828,
0.0226694, -0.001706115, 0.1093576, 0.7103865, 0.3407447, -0.615828,
-0.4360341, -0.2217283, 0.4966334, 0.7103842, 0.3407449, -0.6158305,
-0.4395678, -0.2143613, 0.4966334, 0.7103842, 0.3407449, -0.6158305,
-0.435031, -0.2121852, 0.5030709, 0.7103842, 0.3407449, -0.6158305,
-0.4314974, -0.2195522, 0.5030709, 0.7103842, 0.3407449, -0.6158305,
0.01813261, -0.003882237, 0.1029201, 0.5552565, 0.2663349, 0.7878806,
0.01459896, 0.003484739, 0.1029201, 0.5552565, 0.2663349, 0.7878806,
-0.4395678, -0.2143613, 0.4966334, 0.5552565, 0.2663349, 0.7878806,
-0.4360341, -0.2217283, 0.4966334, 0.5552565, 0.2663349, 0.7878806,
0.01459896, 0.003484739, 0.1029201, 0.4324826, -0.9016423, 2.228612e-08,
0.01913575, 0.005660861, 0.1093576, 0.4324826, -0.9016423, 2.228612e-08,
-0.435031, -0.2121852, 0.5030709, 0.4324826, -0.9016423, 2.228612e-08,
-0.4395678, -0.2143613, 0.4966334, 0.4324826, -0.9016423, 2.228612e-08,
0.01913575, 0.005660861, 0.1093576, -0.5552565, -0.2663349, -0.7878807,
0.0226694, -0.001706115, 0.1093576, -0.5552565, -0.2663349, -0.7878807,
-0.4314974, -0.2195522, 0.5030709, -0.5552565, -0.2663349, -0.7878807,
-0.435031, -0.2121852, 0.5030709, -0.5552565, -0.2663349, -0.7878807,
0.0226694, -0.001706115, 0.1093576, -0.4324826, 0.9016423, 4.457224e-08,
0.01813261, -0.003882237, 0.1029201, -0.4324826, 0.9016423, 4.457224e-08,
-0.4360341, -0.2217283, 0.4966334, -0.4324826, 0.9016423, 4.457224e-08,
-0.4314974, -0.2195522, 0.5030709, -0.4324826, 0.9016423, 4.457224e-08,
0.0185421, 1.33292e-05, 0.105548, 0.7103858, 0.3407444, -0.6158291,
0.01789338, 0.001365793, 0.105548, 0.7103858, 0.3407444, -0.6158291,
0.01872626, 0.001765295, 0.1067298, 0.7103858, 0.3407444, -0.6158291,
0.01937499, 0.0004128315, 0.1067298, 0.7103858, 0.3407444, -0.6158291,
0.0185421, 1.33292e-05, 0.105548, -0.654379, 0.7245908, 0.216232,
0.01937499, 0.0004128315, 0.1067298, -0.654379, 0.7245908, 0.216232,
0.02005495, 0.001570801, 0.1049072, -0.654379, 0.7245908, 0.216232,
0.02005495, 0.001570801, 0.1049072, -0.654379, 0.7245908, 0.216232,
0.0185421, 1.33292e-05, 0.105548, -0.2704712, -0.1297345, -0.9539467,
0.01789338, 0.001365793, 0.105548, -0.2704712, -0.1297345, -0.9539467,
0.02005495, 0.001570801, 0.1049072, -0.2704712, -0.1297345, -0.9539467,
0.02005495, 0.001570801, 0.1049072, -0.2704712, -0.1297345, -0.9539467,
0.01789338, 0.001365793, 0.105548, -0.1555132, 0.9638773, -0.2162317,
0.01872626, 0.001765295, 0.1067298, -0.1555132, 0.9638773, -0.2162317,
0.02005495, 0.001570801, 0.1049072, -0.1555132, 0.9638773, -0.2162317,
0.02005495, 0.001570801, 0.1049072, -0.1555132, 0.9638773, -0.2162317,
0.01872626, 0.001765295, 0.1067298, 0.7693366, 0.3690208, 0.5214834,
0.01937499, 0.0004128315, 0.1067298, 0.7693366, 0.3690208, 0.5214834,
0.02005495, 0.001570801, 0.1049072, 0.7693366, 0.3690208, 0.5214834,
0.02005495, 0.001570801, 0.1049072, 0.7693366, 0.3690208, 0.5214834
]);
var normLoc43 = gl.getAttribLocation(prog43, "aNorm");
var f=new Uint16Array([
0, 1, 2, 0, 2, 3,
4, 5, 6, 4, 6, 7,
8, 9, 10, 8, 10, 11,
12, 13, 14, 12, 14, 15,
16, 17, 18, 16, 18, 19,
20, 21, 22, 20, 22, 23,
24, 25, 26, 24, 26, 27,
28, 29, 30, 28, 30, 31,
32, 33, 34, 32, 34, 35,
36, 37, 38, 36, 38, 39,
40, 41, 42, 40, 42, 43
]);
var buf43 = gl.createBuffer();
gl.bindBuffer(gl.ARRAY_BUFFER, buf43);
gl.bufferData(gl.ARRAY_BUFFER, v, gl.STATIC_DRAW);
var ibuf43 = gl.createBuffer();
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, ibuf43);
gl.bufferData(gl.ELEMENT_ARRAY_BUFFER, f, gl.STATIC_DRAW);
var mvMatLoc43 = gl.getUniformLocation(prog43,"mvMatrix");
var prMatLoc43 = gl.getUniformLocation(prog43,"prMatrix");
var normMatLoc43 = gl.getUniformLocation(prog43,"normMatrix");
// ****** quads object 44 ******
var prog44  = gl.createProgram();
gl.attachShader(prog44, getShader( gl, "unnamed_chunk_2vshader44" ));
gl.attachShader(prog44, getShader( gl, "unnamed_chunk_2fshader44" ));
//  Force aPos to location 0, aCol to location 1 
gl.bindAttribLocation(prog44, 0, "aPos");
gl.bindAttribLocation(prog44, 1, "aCol");
gl.linkProgram(prog44);
var v=new Float32Array([
0.03529621, 0.02241003, 0.1141989, -0.04333458, -0.2768236, -0.9599431,
0.04397767, 0.02105101, 0.1141989, -0.04333458, -0.2768236, -0.9599431,
0.04267309, 0.0127173, 0.116661, -0.04333458, -0.2768236, -0.9599431,
0.03399163, 0.01407631, 0.116661, -0.04333458, -0.2768236, -0.9599431,
0.06108372, 0.1871421, 0.685441, -0.043335, -0.2768263, -0.9599423,
0.06976518, 0.1857831, 0.685441, -0.043335, -0.2768263, -0.9599423,
0.0684606, 0.1774494, 0.6879031, -0.043335, -0.2768263, -0.9599423,
0.05977914, 0.1788084, 0.6879031, -0.043335, -0.2768263, -0.9599423,
0.03529621, 0.02241003, 0.1141989, -0.1484635, -0.948393, 0.2801952,
0.04397767, 0.02105101, 0.1141989, -0.1484635, -0.948393, 0.2801952,
0.06976518, 0.1857831, 0.685441, -0.1484635, -0.948393, 0.2801952,
0.06108372, 0.1871421, 0.685441, -0.1484635, -0.948393, 0.2801952,
0.04397767, 0.02105101, 0.1141989, -0.987968, 0.1546587, -5.844061e-08,
0.04267309, 0.0127173, 0.116661, -0.987968, 0.1546587, -5.844061e-08,
0.0684606, 0.1774494, 0.6879031, -0.987968, 0.1546587, -5.844061e-08,
0.06976518, 0.1857831, 0.685441, -0.987968, 0.1546587, -5.844061e-08,
0.04267309, 0.0127173, 0.116661, 0.1484634, 0.948393, -0.2801952,
0.03399163, 0.01407631, 0.116661, 0.1484634, 0.948393, -0.2801952,
0.05977914, 0.1788084, 0.6879031, 0.1484634, 0.948393, -0.2801952,
0.0684606, 0.1774494, 0.6879031, 0.1484634, 0.948393, -0.2801952,
0.03399163, 0.01407631, 0.116661, 0.987968, -0.1546587, 4.730906e-08,
0.03529621, 0.02241003, 0.1141989, 0.987968, -0.1546587, 4.730906e-08,
0.06108372, 0.1871421, 0.685441, 0.987968, -0.1546587, 4.730906e-08,
0.05977914, 0.1788084, 0.6879031, 0.987968, -0.1546587, 4.730906e-08,
0.03835502, 0.01839095, 0.1152198, -0.04333487, -0.276825, -0.9599427,
0.03983697, 0.01815896, 0.1152198, -0.04333487, -0.276825, -0.9599427,
0.03961428, 0.01673637, 0.1156401, -0.04333487, -0.276825, -0.9599427,
0.03813232, 0.01696836, 0.1156401, -0.04333487, -0.276825, -0.9599427,
0.03835502, 0.01839095, 0.1152198, 0.9402789, -0.0476107, 0.337059,
0.03813232, 0.01696836, 0.1156401, 0.9402789, -0.0476107, 0.337059,
0.03889798, 0.01701001, 0.1135101, 0.9402789, -0.0476107, 0.337059,
0.03889798, 0.01701001, 0.1135101, 0.9402789, -0.0476107, 0.337059,
0.03835502, 0.01839095, 0.1152198, 0.123795, 0.7908081, -0.5994141,
0.03983697, 0.01815896, 0.1152198, 0.123795, 0.7908081, -0.5994141,
0.03889798, 0.01701001, 0.1135101, 0.123795, 0.7908081, -0.5994141,
0.03889798, 0.01701001, 0.1135101, 0.123795, 0.7908081, -0.5994141,
0.03983697, 0.01815896, 0.1152198, 0.9098473, -0.2420106, -0.3370591,
0.03961428, 0.01673637, 0.1156401, 0.9098473, -0.2420106, -0.3370591,
0.03889798, 0.01701001, 0.1135101, 0.9098473, -0.2420106, -0.3370591,
0.03889798, 0.01701001, 0.1135101, 0.9098473, -0.2420106, -0.3370591,
0.03961428, 0.01673637, 0.1156401, -0.1542268, -0.9852073, -0.07470351,
0.03813232, 0.01696836, 0.1156401, -0.1542268, -0.9852073, -0.07470351,
0.03889798, 0.01701001, 0.1135101, -0.1542268, -0.9852073, -0.07470351,
0.03889798, 0.01701001, 0.1135101, -0.1542268, -0.9852073, -0.07470351
]);
var normLoc44 = gl.getAttribLocation(prog44, "aNorm");
var f=new Uint16Array([
0, 1, 2, 0, 2, 3,
4, 5, 6, 4, 6, 7,
8, 9, 10, 8, 10, 11,
12, 13, 14, 12, 14, 15,
16, 17, 18, 16, 18, 19,
20, 21, 22, 20, 22, 23,
24, 25, 26, 24, 26, 27,
28, 29, 30, 28, 30, 31,
32, 33, 34, 32, 34, 35,
36, 37, 38, 36, 38, 39,
40, 41, 42, 40, 42, 43
]);
var buf44 = gl.createBuffer();
gl.bindBuffer(gl.ARRAY_BUFFER, buf44);
gl.bufferData(gl.ARRAY_BUFFER, v, gl.STATIC_DRAW);
var ibuf44 = gl.createBuffer();
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, ibuf44);
gl.bufferData(gl.ELEMENT_ARRAY_BUFFER, f, gl.STATIC_DRAW);
var mvMatLoc44 = gl.getUniformLocation(prog44,"mvMatrix");
var prMatLoc44 = gl.getUniformLocation(prog44,"prMatrix");
var normMatLoc44 = gl.getUniformLocation(prog44,"normMatrix");
// ****** quads object 45 ******
var prog45  = gl.createProgram();
gl.attachShader(prog45, getShader( gl, "unnamed_chunk_2vshader45" ));
gl.attachShader(prog45, getShader( gl, "unnamed_chunk_2fshader45" ));
//  Force aPos to location 0, aCol to location 1 
gl.bindAttribLocation(prog45, 0, "aPos");
gl.bindAttribLocation(prog45, 1, "aCol");
gl.linkProgram(prog45);
var v=new Float32Array([
0.01543362, 0.3872011, 0.9766294, -0.1428937, 0.564607, 0.8128962,
0.01069854, 0.3860027, 0.9766294, -0.1428937, 0.564607, 0.8128962,
0.01167268, 0.3821536, 0.9794741, -0.1428937, 0.564607, 0.8128962,
0.01640777, 0.3833519, 0.9794741, -0.1428937, 0.564607, 0.8128962,
0.06665263, 0.1848195, 0.6852497, -0.1428896, 0.5646052, 0.8128982,
0.06191754, 0.1836212, 0.6852497, -0.1428896, 0.5646052, 0.8128982,
0.06289168, 0.179772, 0.6880944, -0.1428896, 0.5646052, 0.8128982,
0.06762677, 0.1809704, 0.6880944, -0.1428896, 0.5646052, 0.8128982,
0.01543362, 0.3872011, 0.9766294, 0.1994438, -0.7880499, 0.5824085,
0.01069854, 0.3860027, 0.9766294, 0.1994438, -0.7880499, 0.5824085,
0.06191754, 0.1836212, 0.6852497, 0.1994438, -0.7880499, 0.5824085,
0.06665263, 0.1848195, 0.6852497, 0.1994438, -0.7880499, 0.5824085,
0.01069854, 0.3860027, 0.9766294, 0.9694353, 0.2453468, -5.153238e-07,
0.01167268, 0.3821536, 0.9794741, 0.9694353, 0.2453468, -5.153238e-07,
0.06289168, 0.179772, 0.6880944, 0.9694353, 0.2453468, -5.153238e-07,
0.06191754, 0.1836212, 0.6852497, 0.9694353, 0.2453468, -5.153238e-07,
0.01167268, 0.3821536, 0.9794741, -0.1994391, 0.7880509, -0.5824085,
0.01640777, 0.3833519, 0.9794741, -0.1994391, 0.7880509, -0.5824085,
0.06762677, 0.1809704, 0.6880944, -0.1994391, 0.7880509, -0.5824085,
0.06289168, 0.179772, 0.6880944, -0.1994391, 0.7880509, -0.5824085,
0.01640777, 0.3833519, 0.9794741, -0.9694357, -0.2453457, -3.657119e-07,
0.01543362, 0.3872011, 0.9766294, -0.9694357, -0.2453457, -3.657119e-07,
0.06665263, 0.1848195, 0.6852497, -0.9694357, -0.2453457, -3.657119e-07,
0.06762677, 0.1809704, 0.6880944, -0.9694357, -0.2453457, -3.657119e-07,
0.01413065, 0.3854524, 0.977615, -0.1428963, 0.564611, 0.8128931,
0.0126765, 0.3850843, 0.977615, -0.1428963, 0.564611, 0.8128931,
0.01297566, 0.3839023, 0.9784886, -0.1428963, 0.564611, 0.8128931,
0.01442981, 0.3842703, 0.9784886, -0.1428963, 0.564611, 0.8128931,
0.01413065, 0.3854524, 0.977615, -0.8575392, -0.4279715, -0.285424,
0.01442981, 0.3842703, 0.9784886, -0.8575392, -0.4279715, -0.285424,
0.01326737, 0.3858065, 0.9796776, -0.8575392, -0.4279715, -0.285424,
0.01326737, 0.3858065, 0.9796776, -0.8575392, -0.4279715, -0.285424,
0.01413065, 0.3854524, 0.977615, -0.2369208, 0.9361199, -0.2599002,
0.0126765, 0.3850843, 0.977615, -0.2369208, 0.9361199, -0.2599002,
0.01326737, 0.3858065, 0.9796776, -0.2369208, 0.9361199, -0.2599002,
0.01326737, 0.3858065, 0.9796776, -0.2369208, 0.9361199, -0.2599002,
0.0126765, 0.3850843, 0.977615, -0.9578843, -0.03147681, 0.2854242,
0.01297566, 0.3839023, 0.9784886, -0.9578843, -0.03147681, 0.2854242,
0.01326737, 0.3858065, 0.9796776, -0.9578843, -0.03147681, 0.2854242,
0.01326737, 0.3858065, 0.9796776, -0.9578843, -0.03147681, 0.2854242,
0.01297566, 0.3839023, 0.9784886, 0.1365731, -0.5396268, 0.830753,
0.01442981, 0.3842703, 0.9784886, 0.1365731, -0.5396268, 0.830753,
0.01326737, 0.3858065, 0.9796776, 0.1365731, -0.5396268, 0.830753,
0.01326737, 0.3858065, 0.9796776, 0.1365731, -0.5396268, 0.830753
]);
var normLoc45 = gl.getAttribLocation(prog45, "aNorm");
var f=new Uint16Array([
0, 1, 2, 0, 2, 3,
4, 5, 6, 4, 6, 7,
8, 9, 10, 8, 10, 11,
12, 13, 14, 12, 14, 15,
16, 17, 18, 16, 18, 19,
20, 21, 22, 20, 22, 23,
24, 25, 26, 24, 26, 27,
28, 29, 30, 28, 30, 31,
32, 33, 34, 32, 34, 35,
36, 37, 38, 36, 38, 39,
40, 41, 42, 40, 42, 43
]);
var buf45 = gl.createBuffer();
gl.bindBuffer(gl.ARRAY_BUFFER, buf45);
gl.bufferData(gl.ARRAY_BUFFER, v, gl.STATIC_DRAW);
var ibuf45 = gl.createBuffer();
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, ibuf45);
gl.bufferData(gl.ELEMENT_ARRAY_BUFFER, f, gl.STATIC_DRAW);
var mvMatLoc45 = gl.getUniformLocation(prog45,"mvMatrix");
var prMatLoc45 = gl.getUniformLocation(prog45,"prMatrix");
var normMatLoc45 = gl.getUniformLocation(prog45,"normMatrix");
// ****** quads object 46 ******
var prog46  = gl.createProgram();
gl.attachShader(prog46, getShader( gl, "unnamed_chunk_2vshader46" ));
gl.attachShader(prog46, getShader( gl, "unnamed_chunk_2fshader46" ));
//  Force aPos to location 0, aCol to location 1 
gl.bindAttribLocation(prog46, 0, "aPos");
gl.bindAttribLocation(prog46, 1, "aCol");
gl.linkProgram(prog46);
var v=new Float32Array([
-0.748125, -0.199039, 0.7171079, -0.6610333, -0.4292327, 0.6154625,
-0.7440174, -0.2053649, 0.7171079, -0.6610333, -0.4292327, 0.6154625,
-0.740124, -0.2028368, 0.7230527, -0.6610333, -0.4292327, 0.6154625,
-0.7442316, -0.1965109, 0.7230527, -0.6610333, -0.4292327, 0.6154625,
-0.498155, -0.03672444, 0.4843706, -0.6610333, -0.4292322, 0.6154629,
-0.4940474, -0.04305037, 0.4843706, -0.6610333, -0.4292322, 0.6154629,
-0.490154, -0.04052227, 0.4903154, -0.6610333, -0.4292322, 0.6154629,
-0.4942617, -0.03419632, 0.4903154, -0.6610333, -0.4292322, 0.6154629,
-0.748125, -0.199039, 0.7171079, 0.5161871, 0.3351789, 0.7881662,
-0.7440174, -0.2053649, 0.7171079, 0.5161871, 0.3351789, 0.7881662,
-0.4940474, -0.04305037, 0.4843706, 0.5161871, 0.3351789, 0.7881662,
-0.498155, -0.03672444, 0.4843706, 0.5161871, 0.3351789, 0.7881662,
-0.7440174, -0.2053649, 0.7171079, -0.5445964, 0.8386983, 6.938666e-07,
-0.740124, -0.2028368, 0.7230527, -0.5445964, 0.8386983, 6.938666e-07,
-0.490154, -0.04052227, 0.4903154, -0.5445964, 0.8386983, 6.938666e-07,
-0.4940474, -0.04305037, 0.4843706, -0.5445964, 0.8386983, 6.938666e-07,
-0.740124, -0.2028368, 0.7230527, -0.5161875, -0.3351783, -0.7881662,
-0.7442316, -0.1965109, 0.7230527, -0.5161875, -0.3351783, -0.7881662,
-0.4942617, -0.03419632, 0.4903154, -0.5161875, -0.3351783, -0.7881662,
-0.490154, -0.04052227, 0.4903154, -0.5161875, -0.3351783, -0.7881662,
-0.7442316, -0.1965109, 0.7230527, 0.5445973, -0.8386977, 6.122348e-07,
-0.748125, -0.199039, 0.7171079, 0.5445973, -0.8386977, 6.122348e-07,
-0.498155, -0.03672444, 0.4843706, 0.5445973, -0.8386977, 6.122348e-07,
-0.4942617, -0.03419632, 0.4903154, 0.5445973, -0.8386977, 6.122348e-07,
-0.7449201, -0.2005602, 0.7194892, -0.6610425, -0.4292322, 0.6154532,
-0.7441032, -0.2018183, 0.7194892, -0.6610425, -0.4292322, 0.6154532,
-0.7433289, -0.2013155, 0.7206714, -0.6610425, -0.4292322, 0.6154532,
-0.7441458, -0.2000575, 0.7206714, -0.6610425, -0.4292322, 0.6154532,
-0.7449201, -0.2005602, 0.7194892, 0.7420331, -0.6345797, -0.2160913,
-0.7441458, -0.2000575, 0.7206714, 0.7420331, -0.6345797, -0.2160913,
-0.7454466, -0.2017963, 0.7213112, 0.7420331, -0.6345797, -0.2160913,
-0.7454466, -0.2017963, 0.7213112, 0.7420331, -0.6345797, -0.2160913,
-0.7449201, -0.2005602, 0.7194892, -0.7154296, -0.4645471, -0.5218778,
-0.7441032, -0.2018183, 0.7194892, -0.7154296, -0.4645471, -0.5218778,
-0.7454466, -0.2017963, 0.7213112, -0.7154296, -0.4645471, -0.5218778,
-0.7454466, -0.2017963, 0.7213112, -0.7154296, -0.4645471, -0.5218778,
-0.7441032, -0.2018183, 0.7194892, 0.2778157, -0.9360113, 0.2161044,
-0.7433289, -0.2013155, 0.7206714, 0.2778157, -0.9360113, 0.2161044,
-0.7454466, -0.2017963, 0.7213112, 0.2778157, -0.9360113, 0.2161044,
-0.7454466, -0.2017963, 0.7213112, 0.2778157, -0.9360113, 0.2161044,
-0.7433289, -0.2013155, 0.7206714, 0.2512189, 0.163121, 0.9540862,
-0.7441458, -0.2000575, 0.7206714, 0.2512189, 0.163121, 0.9540862,
-0.7454466, -0.2017963, 0.7213112, 0.2512189, 0.163121, 0.9540862,
-0.7454466, -0.2017963, 0.7213112, 0.2512189, 0.163121, 0.9540862
]);
var normLoc46 = gl.getAttribLocation(prog46, "aNorm");
var f=new Uint16Array([
0, 1, 2, 0, 2, 3,
4, 5, 6, 4, 6, 7,
8, 9, 10, 8, 10, 11,
12, 13, 14, 12, 14, 15,
16, 17, 18, 16, 18, 19,
20, 21, 22, 20, 22, 23,
24, 25, 26, 24, 26, 27,
28, 29, 30, 28, 30, 31,
32, 33, 34, 32, 34, 35,
36, 37, 38, 36, 38, 39,
40, 41, 42, 40, 42, 43
]);
var buf46 = gl.createBuffer();
gl.bindBuffer(gl.ARRAY_BUFFER, buf46);
gl.bufferData(gl.ARRAY_BUFFER, v, gl.STATIC_DRAW);
var ibuf46 = gl.createBuffer();
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, ibuf46);
gl.bufferData(gl.ELEMENT_ARRAY_BUFFER, f, gl.STATIC_DRAW);
var mvMatLoc46 = gl.getUniformLocation(prog46,"mvMatrix");
var prMatLoc46 = gl.getUniformLocation(prog46,"prMatrix");
var normMatLoc46 = gl.getUniformLocation(prog46,"normMatrix");
// ****** quads object 47 ******
var prog47  = gl.createProgram();
gl.attachShader(prog47, getShader( gl, "unnamed_chunk_2vshader47" ));
gl.attachShader(prog47, getShader( gl, "unnamed_chunk_2fshader47" ));
//  Force aPos to location 0, aCol to location 1 
gl.bindAttribLocation(prog47, 0, "aPos");
gl.bindAttribLocation(prog47, 1, "aCol");
gl.linkProgram(prog47);
var v=new Float32Array([
0.01419277, 0.003823948, 0.1023619, 0.7986823, 0.0731358, -0.5972921,
0.0134477, 0.01196053, 0.1023619, 0.7986823, 0.0731358, -0.5972921,
0.01830762, 0.01240555, 0.1089149, 0.7986823, 0.0731358, -0.5972921,
0.01905269, 0.004268974, 0.1089149, 0.7986823, 0.0731358, -0.5972921,
-0.4962119, -0.04291415, 0.4840665, 0.7986831, 0.07313459, -0.5972911,
-0.496957, -0.03477757, 0.4840665, 0.7986831, 0.07313459, -0.5972911,
-0.4920971, -0.03433255, 0.4906195, 0.7986831, 0.07313459, -0.5972911,
-0.491352, -0.04246913, 0.4906195, 0.7986831, 0.07313459, -0.5972911,
0.01419277, 0.003823948, 0.1023619, 0.5948036, 0.05446651, 0.8020238,
0.0134477, 0.01196053, 0.1023619, 0.5948036, 0.05446651, 0.8020238,
-0.496957, -0.03477757, 0.4840665, 0.5948036, 0.05446651, 0.8020238,
-0.4962119, -0.04291415, 0.4840665, 0.5948036, 0.05446651, 0.8020238,
0.0134477, 0.01196053, 0.1023619, 0.09118918, -0.9958336, 4.737765e-08,
0.01830762, 0.01240555, 0.1089149, 0.09118918, -0.9958336, 4.737765e-08,
-0.4920971, -0.03433255, 0.4906195, 0.09118918, -0.9958336, 4.737765e-08,
-0.496957, -0.03477757, 0.4840665, 0.09118918, -0.9958336, 4.737765e-08,
0.01830762, 0.01240555, 0.1089149, -0.5948035, -0.05446649, -0.8020238,
0.01905269, 0.004268974, 0.1089149, -0.5948035, -0.05446649, -0.8020238,
-0.491352, -0.04246913, 0.4906195, -0.5948035, -0.05446649, -0.8020238,
-0.4920971, -0.03433255, 0.4906195, -0.5948035, -0.05446649, -0.8020238,
0.01905269, 0.004268974, 0.1089149, -0.09118916, 0.9958336, -2.78692e-09,
0.01419277, 0.003823948, 0.1023619, -0.09118916, 0.9958336, -2.78692e-09,
-0.4962119, -0.04291415, 0.4840665, -0.09118916, 0.9958336, -2.78692e-09,
-0.491352, -0.04246913, 0.4906195, -0.09118916, 0.9958336, -2.78692e-09,
0.01587248, 0.007327024, 0.1050369, 0.7986826, 0.07313669, -0.5972914,
0.0157357, 0.008820775, 0.1050369, 0.7986826, 0.07313669, -0.5972914,
0.0166279, 0.008902474, 0.1062399, 0.7986826, 0.07313669, -0.5972914,
0.01676469, 0.007408724, 0.1062399, 0.7986826, 0.07313669, -0.5972914,
0.01587248, 0.007327024, 0.1050369, -0.3658194, 0.9067483, 0.2097231,
0.01676469, 0.007408724, 0.1062399, -0.3658194, 0.9067483, 0.2097231,
0.01784756, 0.008261021, 0.1044438, -0.3658194, 0.9067483, 0.2097231,
0.01784756, 0.008261021, 0.1044438, -0.3658194, 0.9067483, 0.2097231,
0.01587248, 0.007327024, 0.1050369, -0.2764958, -0.02531917, -0.9606816,
0.0157357, 0.008820775, 0.1050369, -0.2764958, -0.02531917, -0.9606816,
0.01784756, 0.008261021, 0.1044438, -0.2764958, -0.02531917, -0.9606816,
0.01784756, 0.008261021, 0.1044438, -0.2764958, -0.02531917, -0.9606816,
0.0157357, 0.008820775, 0.1050369, 0.1950532, 0.9581078, -0.2097226,
0.0166279, 0.008902474, 0.1062399, 0.1950532, 0.9581078, -0.2097226,
0.01784756, 0.008261021, 0.1044438, 0.1950532, 0.9581078, -0.2097226,
0.01784756, 0.008261021, 0.1044438, 0.1950532, 0.9581078, -0.2097226,
0.0166279, 0.008902474, 0.1062399, 0.8373681, 0.07667921, 0.5412346,
0.01676469, 0.007408724, 0.1062399, 0.8373681, 0.07667921, 0.5412346,
0.01784756, 0.008261021, 0.1044438, 0.8373681, 0.07667921, 0.5412346,
0.01784756, 0.008261021, 0.1044438, 0.8373681, 0.07667921, 0.5412346
]);
var normLoc47 = gl.getAttribLocation(prog47, "aNorm");
var f=new Uint16Array([
0, 1, 2, 0, 2, 3,
4, 5, 6, 4, 6, 7,
8, 9, 10, 8, 10, 11,
12, 13, 14, 12, 14, 15,
16, 17, 18, 16, 18, 19,
20, 21, 22, 20, 22, 23,
24, 25, 26, 24, 26, 27,
28, 29, 30, 28, 30, 31,
32, 33, 34, 32, 34, 35,
36, 37, 38, 36, 38, 39,
40, 41, 42, 40, 42, 43
]);
var buf47 = gl.createBuffer();
gl.bindBuffer(gl.ARRAY_BUFFER, buf47);
gl.bufferData(gl.ARRAY_BUFFER, v, gl.STATIC_DRAW);
var ibuf47 = gl.createBuffer();
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, ibuf47);
gl.bufferData(gl.ELEMENT_ARRAY_BUFFER, f, gl.STATIC_DRAW);
var mvMatLoc47 = gl.getUniformLocation(prog47,"mvMatrix");
var prMatLoc47 = gl.getUniformLocation(prog47,"prMatrix");
var normMatLoc47 = gl.getUniformLocation(prog47,"normMatrix");
// ****** quads object 48 ******
var prog48  = gl.createProgram();
gl.attachShader(prog48, getShader( gl, "unnamed_chunk_2vshader48" ));
gl.attachShader(prog48, getShader( gl, "unnamed_chunk_2fshader48" ));
//  Force aPos to location 0, aCol to location 1 
gl.bindAttribLocation(prog48, 0, "aPos");
gl.bindAttribLocation(prog48, 1, "aCol");
gl.linkProgram(prog48);
var v=new Float32Array([
-0.6155352, 0.8323621, 0.1599814, -0.5763937, 0.7687892, 0.2770081,
-0.6202165, 0.8288524, 0.1599814, -0.5763937, 0.7687892, 0.2770081,
-0.6192443, 0.8275556, 0.1656033, -0.5763937, 0.7687892, 0.2770081,
-0.614563, 0.8310654, 0.1656033, -0.5763937, 0.7687892, 0.2770081,
-0.3938952, 0.5367367, 0.05346142, -0.5763932, 0.7687886, 0.2770108,
-0.3985765, 0.5332269, 0.05346142, -0.5763932, 0.7687886, 0.2770108,
-0.3976042, 0.5319301, 0.05908332, -0.5763932, 0.7687886, 0.2770108,
-0.3929229, 0.5354398, 0.05908332, -0.5763932, 0.7687886, 0.2770108,
-0.6155352, 0.8323621, 0.1599814, 0.1661705, -0.2216368, 0.9608665,
-0.6202165, 0.8288524, 0.1599814, 0.1661705, -0.2216368, 0.9608665,
-0.3985765, 0.5332269, 0.05346142, 0.1661705, -0.2216368, 0.9608665,
-0.3938952, 0.5367367, 0.05346142, 0.1661705, -0.2216368, 0.9608665,
-0.6202165, 0.8288524, 0.1599814, 0.8001029, 0.5998628, 1.435889e-06,
-0.6192443, 0.8275556, 0.1656033, 0.8001029, 0.5998628, 1.435889e-06,
-0.3976042, 0.5319301, 0.05908332, 0.8001029, 0.5998628, 1.435889e-06,
-0.3985765, 0.5332269, 0.05346142, 0.8001029, 0.5998628, 1.435889e-06,
-0.6192443, 0.8275556, 0.1656033, -0.1661705, 0.2216368, -0.9608666,
-0.614563, 0.8310654, 0.1656033, -0.1661705, 0.2216368, -0.9608666,
-0.3929229, 0.5354398, 0.05908332, -0.1661705, 0.2216368, -0.9608666,
-0.3976042, 0.5319301, 0.05908332, -0.1661705, 0.2216368, -0.9608666,
-0.614563, 0.8310654, 0.1656033, -0.8001029, -0.5998627, -1.422953e-06,
-0.6155352, 0.8323621, 0.1599814, -0.8001029, -0.5998627, -1.422953e-06,
-0.3938952, 0.5367367, 0.05346142, -0.8001029, -0.5998627, -1.422953e-06,
-0.3929229, 0.5354398, 0.05908332, -0.8001029, -0.5998627, -1.422953e-06,
-0.6169143, 0.830575, 0.1620717, -0.5763931, 0.7687914, 0.2770033,
-0.6181144, 0.8296752, 0.1620717, -0.5763931, 0.7687914, 0.2770033,
-0.6178652, 0.8293427, 0.163513, -0.5763931, 0.7687914, 0.2770033,
-0.616665, 0.8302425, 0.163513, -0.5763931, 0.7687914, 0.2770033,
-0.6169143, 0.830575, 0.1620717, -0.5467698, -0.8316134, -0.09727259,
-0.616665, 0.8302425, 0.163513, -0.5467698, -0.8316134, -0.09727259,
-0.6185425, 0.8314964, 0.1633464, -0.5467698, -0.8316134, -0.09727259,
-0.6185425, 0.8314964, 0.1633464, -0.5467698, -0.8316134, -0.09727259,
-0.6169143, 0.830575, 0.1620717, -0.3579755, 0.4774666, -0.8024209,
-0.6181144, 0.8296752, 0.1620717, -0.3579755, 0.4774666, -0.8024209,
-0.6185425, 0.8314964, 0.1633464, -0.3579755, 0.4774666, -0.8024209,
-0.6185425, 0.8314964, 0.1633464, -0.3579755, 0.4774666, -0.8024209,
-0.6181144, 0.8296752, 0.1620717, -0.9515496, -0.2917171, 0.09723464,
-0.6178652, 0.8293427, 0.163513, -0.9515496, -0.2917171, 0.09723464,
-0.6185425, 0.8314964, 0.1633464, -0.9515496, -0.2917171, 0.09723464,
-0.6185425, 0.8314964, 0.1633464, -0.9515496, -0.2917171, 0.09723464,
-0.6178652, 0.8293427, 0.163513, -0.0467974, 0.06242134, 0.9969522,
-0.616665, 0.8302425, 0.163513, -0.0467974, 0.06242134, 0.9969522,
-0.6185425, 0.8314964, 0.1633464, -0.0467974, 0.06242134, 0.9969522,
-0.6185425, 0.8314964, 0.1633464, -0.0467974, 0.06242134, 0.9969522
]);
var normLoc48 = gl.getAttribLocation(prog48, "aNorm");
var f=new Uint16Array([
0, 1, 2, 0, 2, 3,
4, 5, 6, 4, 6, 7,
8, 9, 10, 8, 10, 11,
12, 13, 14, 12, 14, 15,
16, 17, 18, 16, 18, 19,
20, 21, 22, 20, 22, 23,
24, 25, 26, 24, 26, 27,
28, 29, 30, 28, 30, 31,
32, 33, 34, 32, 34, 35,
36, 37, 38, 36, 38, 39,
40, 41, 42, 40, 42, 43
]);
var buf48 = gl.createBuffer();
gl.bindBuffer(gl.ARRAY_BUFFER, buf48);
gl.bufferData(gl.ARRAY_BUFFER, v, gl.STATIC_DRAW);
var ibuf48 = gl.createBuffer();
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, ibuf48);
gl.bufferData(gl.ELEMENT_ARRAY_BUFFER, f, gl.STATIC_DRAW);
var mvMatLoc48 = gl.getUniformLocation(prog48,"mvMatrix");
var prMatLoc48 = gl.getUniformLocation(prog48,"prMatrix");
var normMatLoc48 = gl.getUniformLocation(prog48,"normMatrix");
// ****** quads object 49 ******
var prog49  = gl.createProgram();
gl.attachShader(prog49, getShader( gl, "unnamed_chunk_2vshader49" ));
gl.attachShader(prog49, getShader( gl, "unnamed_chunk_2fshader49" ));
//  Force aPos to location 0, aCol to location 1 
gl.bindAttribLocation(prog49, 0, "aPos");
gl.bindAttribLocation(prog49, 1, "aCol");
gl.linkProgram(prog49);
var v=new Float32Array([
0.01722214, 0.02776286, 0.08359421, 0.6365529, -0.7696875, 0.04880132,
0.02431968, 0.03363273, 0.08359421, 0.6365529, -0.7696875, 0.04880132,
0.02403323, 0.0339791, 0.09279358, 0.6365529, -0.7696875, 0.04880132,
0.01693569, 0.02810923, 0.09279358, 0.6365529, -0.7696875, 0.04880132,
-0.3991553, 0.5312253, 0.05167268, 0.636553, -0.7696875, 0.04879888,
-0.3920577, 0.5370951, 0.05167268, 0.636553, -0.7696875, 0.04879888,
-0.3923441, 0.5374415, 0.06087205, 0.636553, -0.7696875, 0.04879888,
-0.3994417, 0.5315717, 0.06087205, 0.636553, -0.7696875, 0.04879888,
0.01722214, 0.02776286, 0.08359421, -0.03110163, 0.03760653, 0.9988084,
0.02431968, 0.03363273, 0.08359421, -0.03110163, 0.03760653, 0.9988084,
-0.3920577, 0.5370951, 0.05167268, -0.03110163, 0.03760653, 0.9988084,
-0.3991553, 0.5312253, 0.05167268, -0.03110163, 0.03760653, 0.9988084,
0.02431968, 0.03363273, 0.08359421, -0.7706057, -0.6373123, 1.207708e-07,
0.02403323, 0.0339791, 0.09279358, -0.7706057, -0.6373123, 1.207708e-07,
-0.3923441, 0.5374415, 0.06087205, -0.7706057, -0.6373123, 1.207708e-07,
-0.3920577, 0.5370951, 0.05167268, -0.7706057, -0.6373123, 1.207708e-07,
0.02403323, 0.0339791, 0.09279358, 0.03110164, -0.03760653, -0.9988086,
0.01693569, 0.02810923, 0.09279358, 0.03110164, -0.03760653, -0.9988086,
-0.3994417, 0.5315717, 0.06087205, 0.03110164, -0.03760653, -0.9988086,
-0.3923441, 0.5374415, 0.06087205, 0.03110164, -0.03760653, -0.9988086,
0.01693569, 0.02810923, 0.09279358, 0.7706056, 0.6373123, -1.231862e-07,
0.01722214, 0.02776286, 0.08359421, 0.7706056, 0.6373123, -1.231862e-07,
-0.3991553, 0.5312253, 0.05167268, 0.7706056, 0.6373123, -1.231862e-07,
-0.3994417, 0.5315717, 0.06087205, 0.7706056, 0.6373123, -1.231862e-07,
0.02007306, 0.03036479, 0.08744478, 0.6365522, -0.769688, 0.04880208,
0.02122897, 0.03132076, 0.08744478, 0.6365522, -0.769688, 0.04880208,
0.02118232, 0.03137717, 0.088943, 0.6365522, -0.769688, 0.04880208,
0.02002641, 0.0304212, 0.088943, 0.6365522, -0.769688, 0.04880208,
0.02007306, 0.03036479, 0.08744478, 0.4980319, 0.8669894, -0.0171357,
0.02002641, 0.0304212, 0.088943, 0.4980319, 0.8669894, -0.0171357,
0.02190079, 0.02933161, 0.0882915, 0.4980319, 0.8669894, -0.0171357,
0.02190079, 0.02933161, 0.0882915, 0.4980319, 0.8669894, -0.0171357,
0.02007306, 0.03036479, 0.08744478, 0.2526312, -0.3054693, -0.9180774,
0.02122897, 0.03132076, 0.08744478, 0.2526312, -0.3054693, -0.9180774,
0.02190079, 0.02933161, 0.0882915, 0.2526312, -0.3054693, -0.9180774,
0.02190079, 0.02933161, 0.0882915, 0.2526312, -0.3054693, -0.9180774,
0.02122897, 0.03132076, 0.08744478, 0.9450493, 0.3264783, 0.01713435,
0.02118232, 0.03137717, 0.088943, 0.9450493, 0.3264783, 0.01713435,
0.02190079, 0.02933161, 0.0882915, 0.9450493, 0.3264783, 0.01713435,
0.02190079, 0.02933161, 0.0882915, 0.9450493, 0.3264783, 0.01713435,
0.02118232, 0.03137717, 0.088943, 0.1943866, -0.2350424, 0.9523491,
0.02002641, 0.0304212, 0.088943, 0.1943866, -0.2350424, 0.9523491,
0.02190079, 0.02933161, 0.0882915, 0.1943866, -0.2350424, 0.9523491,
0.02190079, 0.02933161, 0.0882915, 0.1943866, -0.2350424, 0.9523491
]);
var normLoc49 = gl.getAttribLocation(prog49, "aNorm");
var f=new Uint16Array([
0, 1, 2, 0, 2, 3,
4, 5, 6, 4, 6, 7,
8, 9, 10, 8, 10, 11,
12, 13, 14, 12, 14, 15,
16, 17, 18, 16, 18, 19,
20, 21, 22, 20, 22, 23,
24, 25, 26, 24, 26, 27,
28, 29, 30, 28, 30, 31,
32, 33, 34, 32, 34, 35,
36, 37, 38, 36, 38, 39,
40, 41, 42, 40, 42, 43
]);
var buf49 = gl.createBuffer();
gl.bindBuffer(gl.ARRAY_BUFFER, buf49);
gl.bufferData(gl.ARRAY_BUFFER, v, gl.STATIC_DRAW);
var ibuf49 = gl.createBuffer();
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, ibuf49);
gl.bufferData(gl.ELEMENT_ARRAY_BUFFER, f, gl.STATIC_DRAW);
var mvMatLoc49 = gl.getUniformLocation(prog49,"mvMatrix");
var prMatLoc49 = gl.getUniformLocation(prog49,"prMatrix");
var normMatLoc49 = gl.getUniformLocation(prog49,"normMatrix");
// ****** quads object 50 ******
var prog50  = gl.createProgram();
gl.attachShader(prog50, getShader( gl, "unnamed_chunk_2vshader50" ));
gl.attachShader(prog50, getShader( gl, "unnamed_chunk_2fshader50" ));
//  Force aPos to location 0, aCol to location 1 
gl.bindAttribLocation(prog50, 0, "aPos");
gl.bindAttribLocation(prog50, 1, "aCol");
gl.linkProgram(prog50);
var v=new Float32Array([
0.0451709, 0.03626422, 0.08440898, -0.4178056, -0.9079959, 0.03133467,
0.05290828, 0.03270394, 0.08440898, -0.4178056, -0.9079959, 0.03133467,
0.05301983, 0.03294639, 0.09292199, -0.4178056, -0.9079959, 0.03133467,
0.04528246, 0.03650667, 0.09292199, -0.4178056, -0.9079959, 0.03133467,
0.3124387, 0.6171039, 0.06436438, -0.4178083, -0.9079945, 0.03133814,
0.3201761, 0.6135436, 0.06436438, -0.4178083, -0.9079945, 0.03133814,
0.3202876, 0.6137861, 0.07287739, -0.4178083, -0.9079945, 0.03133814,
0.3125503, 0.6173463, 0.07287739, -0.4178083, -0.9079945, 0.03133814,
0.0451709, 0.03626422, 0.08440898, 0.01309823, 0.02846573, 0.9995089,
0.05290828, 0.03270394, 0.08440898, 0.01309823, 0.02846573, 0.9995089,
0.3201761, 0.6135436, 0.06436438, 0.01309823, 0.02846573, 0.9995089,
0.3124387, 0.6171039, 0.06436438, 0.01309823, 0.02846573, 0.9995089,
0.05290828, 0.03270394, 0.08440898, -0.908442, 0.4180109, -3.405348e-07,
0.05301983, 0.03294639, 0.09292199, -0.908442, 0.4180109, -3.405348e-07,
0.3202876, 0.6137861, 0.07287739, -0.908442, 0.4180109, -3.405348e-07,
0.3201761, 0.6135436, 0.06436438, -0.908442, 0.4180109, -3.405348e-07,
0.05301983, 0.03294639, 0.09292199, -0.01309823, -0.02846573, -0.9995089,
0.04528246, 0.03650667, 0.09292199, -0.01309823, -0.02846573, -0.9995089,
0.3125503, 0.6173463, 0.07287739, -0.01309823, -0.02846573, -0.9995089,
0.3202876, 0.6137861, 0.07287739, -0.01309823, -0.02846573, -0.9995089,
0.04528246, 0.03650667, 0.09292199, 0.908442, -0.4180108, 3.391993e-07,
0.0451709, 0.03626422, 0.08440898, 0.908442, -0.4180108, 3.391993e-07,
0.3124387, 0.6171039, 0.06436438, 0.908442, -0.4180108, 3.391993e-07,
0.3125503, 0.6173463, 0.07287739, 0.908442, -0.4180108, 3.391993e-07,
0.04840421, 0.03489747, 0.08791586, -0.4178039, -0.9079967, 0.03133515,
0.04976688, 0.03427045, 0.08791586, -0.4178039, -0.9079967, 0.03133515,
0.04978652, 0.03431315, 0.08941512, -0.4178039, -0.9079967, 0.03133515,
0.04842386, 0.03494016, 0.08941512, -0.4178039, -0.9079967, 0.03133515,
0.04840421, 0.03489747, 0.08791586, 0.9973021, -0.07257786, -0.01100469,
0.04842386, 0.03494016, 0.08941512, 0.9973021, -0.07257786, -0.01100469,
0.04825975, 0.03278932, 0.08872816, 0.9973021, -0.07257786, -0.01100469,
0.04825975, 0.03278932, 0.08872816, 0.9973021, -0.07257786, -0.01100469,
0.04840421, 0.03489747, 0.08791586, -0.1589647, -0.3454717, -0.9248673,
0.04976688, 0.03427045, 0.08791586, -0.1589647, -0.3454717, -0.9248673,
0.04825975, 0.03278932, 0.08872816, -0.1589647, -0.3454717, -0.9248673,
0.04825975, 0.03278932, 0.08872816, -0.1589647, -0.3454717, -0.9248673,
0.04976688, 0.03427045, 0.08791586, 0.7038988, -0.710215, 0.0110028,
0.04978652, 0.03431315, 0.08941512, 0.7038988, -0.710215, 0.0110028,
0.04825975, 0.03278932, 0.08872816, 0.7038988, -0.710215, 0.0110028,
0.04825975, 0.03278932, 0.08872816, 0.7038988, -0.710215, 0.0110028,
0.04978652, 0.03431315, 0.08941512, -0.1344361, -0.2921638, 0.9468724,
0.04842386, 0.03494016, 0.08941512, -0.1344361, -0.2921638, 0.9468724,
0.04825975, 0.03278932, 0.08872816, -0.1344361, -0.2921638, 0.9468724,
0.04825975, 0.03278932, 0.08872816, -0.1344361, -0.2921638, 0.9468724
]);
var normLoc50 = gl.getAttribLocation(prog50, "aNorm");
var f=new Uint16Array([
0, 1, 2, 0, 2, 3,
4, 5, 6, 4, 6, 7,
8, 9, 10, 8, 10, 11,
12, 13, 14, 12, 14, 15,
16, 17, 18, 16, 18, 19,
20, 21, 22, 20, 22, 23,
24, 25, 26, 24, 26, 27,
28, 29, 30, 28, 30, 31,
32, 33, 34, 32, 34, 35,
36, 37, 38, 36, 38, 39,
40, 41, 42, 40, 42, 43
]);
var buf50 = gl.createBuffer();
gl.bindBuffer(gl.ARRAY_BUFFER, buf50);
gl.bufferData(gl.ARRAY_BUFFER, v, gl.STATIC_DRAW);
var ibuf50 = gl.createBuffer();
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, ibuf50);
gl.bufferData(gl.ELEMENT_ARRAY_BUFFER, f, gl.STATIC_DRAW);
var mvMatLoc50 = gl.getUniformLocation(prog50,"mvMatrix");
var prMatLoc50 = gl.getUniformLocation(prog50,"prMatrix");
var normMatLoc50 = gl.getUniformLocation(prog50,"normMatrix");
// ****** quads object 51 ******
var prog51  = gl.createProgram();
gl.attachShader(prog51, getShader( gl, "unnamed_chunk_2vshader51" ));
gl.attachShader(prog51, getShader( gl, "unnamed_chunk_2fshader51" ));
//  Force aPos to location 0, aCol to location 1 
gl.bindAttribLocation(prog51, 0, "aPos");
gl.bindAttribLocation(prog51, 1, "aCol");
gl.linkProgram(prog51);
var v=new Float32Array([
0.4114336, 0.9747545, 0.1655648, 0.2393914, 0.9354637, 0.2599987,
0.4055769, 0.9762533, 0.1655648, 0.2393914, 0.9354637, 0.2599987,
0.4051872, 0.9747306, 0.1714023, 0.2393914, 0.9354637, 0.2599987,
0.4110439, 0.9732317, 0.1714023, 0.2393914, 0.9354637, 0.2599987,
0.3194863, 0.615457, 0.06570214, 0.2393914, 0.9354638, 0.2599984,
0.3136297, 0.6169558, 0.06570214, 0.2393914, 0.9354638, 0.2599984,
0.31324, 0.615433, 0.07153963, 0.2393914, 0.9354638, 0.2599984,
0.3190967, 0.6139342, 0.07153963, 0.2393914, 0.9354638, 0.2599984,
0.4114336, 0.9747545, 0.1655648, -0.06445885, -0.2518843, 0.9656082,
0.4055769, 0.9762533, 0.1655648, -0.06445885, -0.2518843, 0.9656082,
0.3136297, 0.6169558, 0.06570214, -0.06445885, -0.2518843, 0.9656082,
0.3194863, 0.615457, 0.06570214, -0.06445885, -0.2518843, 0.9656082,
0.4055769, 0.9762533, 0.1655648, 0.9687806, -0.2479198, 2.857806e-06,
0.4051872, 0.9747306, 0.1714023, 0.9687806, -0.2479198, 2.857806e-06,
0.31324, 0.615433, 0.07153963, 0.9687806, -0.2479198, 2.857806e-06,
0.3136297, 0.6169558, 0.06570214, 0.9687806, -0.2479198, 2.857806e-06,
0.4051872, 0.9747306, 0.1714023, 0.06446096, 0.2518837, -0.9656083,
0.4110439, 0.9732317, 0.1714023, 0.06446096, 0.2518837, -0.9656083,
0.3190967, 0.6139342, 0.07153963, 0.06446096, 0.2518837, -0.9656083,
0.31324, 0.615433, 0.07153963, 0.06446096, 0.2518837, -0.9656083,
0.4110439, 0.9732317, 0.1714023, -0.9687809, 0.247918, 4.117488e-06,
0.4114336, 0.9747545, 0.1655648, -0.9687809, 0.247918, 4.117488e-06,
0.3194863, 0.615457, 0.06570214, -0.9687809, 0.247918, 4.117488e-06,
0.3190967, 0.6139342, 0.07153963, -0.9687809, 0.247918, 4.117488e-06,
0.4090853, 0.9747455, 0.1677593, 0.2394265, 0.9354516, 0.2600096,
0.4076322, 0.9751174, 0.1677593, 0.2394265, 0.9354516, 0.2600096,
0.4075355, 0.9747396, 0.1692078, 0.2394265, 0.9354516, 0.2600096,
0.4089887, 0.9743677, 0.1692078, 0.2394265, 0.9354516, 0.2600096,
0.4090853, 0.9747455, 0.1677593, -0.9911546, -0.09633303, -0.09128349,
0.4089887, 0.9743677, 0.1692078, -0.9911546, -0.09633303, -0.09128349,
0.4087892, 0.9766135, 0.1690035, -0.9911546, -0.09633303, -0.09128349,
0.4087892, 0.9766135, 0.1690035, -0.9911546, -0.09633303, -0.09128349,
0.4090853, 0.9747455, 0.1677593, 0.1444302, 0.5642961, -0.8128406,
0.4076322, 0.9751174, 0.1677593, 0.1444302, 0.5642961, -0.8128406,
0.4087892, 0.9766135, 0.1690035, 0.1444302, 0.5642961, -0.8128406,
0.4087892, 0.9766135, 0.1690035, 0.1444302, 0.5642961, -0.8128406,
0.4076322, 0.9751174, 0.1677593, -0.823042, 0.5605969, 0.0912846,
0.4075355, 0.9747396, 0.1692078, -0.823042, 0.5605969, 0.0912846,
0.4087892, 0.9766135, 0.1690035, -0.823042, 0.5605969, 0.0912846,
0.4087892, 0.9766135, 0.1690035, -0.823042, 0.5605969, 0.0912846,
0.4075355, 0.9747396, 0.1692078, 0.0237008, 0.09261698, 0.9954197,
0.4089887, 0.9743677, 0.1692078, 0.0237008, 0.09261698, 0.9954197,
0.4087892, 0.9766135, 0.1690035, 0.0237008, 0.09261698, 0.9954197,
0.4087892, 0.9766135, 0.1690035, 0.0237008, 0.09261698, 0.9954197
]);
var normLoc51 = gl.getAttribLocation(prog51, "aNorm");
var f=new Uint16Array([
0, 1, 2, 0, 2, 3,
4, 5, 6, 4, 6, 7,
8, 9, 10, 8, 10, 11,
12, 13, 14, 12, 14, 15,
16, 17, 18, 16, 18, 19,
20, 21, 22, 20, 22, 23,
24, 25, 26, 24, 26, 27,
28, 29, 30, 28, 30, 31,
32, 33, 34, 32, 34, 35,
36, 37, 38, 36, 38, 39,
40, 41, 42, 40, 42, 43
]);
var buf51 = gl.createBuffer();
gl.bindBuffer(gl.ARRAY_BUFFER, buf51);
gl.bufferData(gl.ARRAY_BUFFER, v, gl.STATIC_DRAW);
var ibuf51 = gl.createBuffer();
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, ibuf51);
gl.bufferData(gl.ELEMENT_ARRAY_BUFFER, f, gl.STATIC_DRAW);
var mvMatLoc51 = gl.getUniformLocation(prog51,"mvMatrix");
var prMatLoc51 = gl.getUniformLocation(prog51,"prMatrix");
var normMatLoc51 = gl.getUniformLocation(prog51,"normMatrix");
// ****** quads object 52 ******
var prog52  = gl.createProgram();
gl.attachShader(prog52, getShader( gl, "unnamed_chunk_2vshader52" ));
gl.attachShader(prog52, getShader( gl, "unnamed_chunk_2fshader52" ));
//  Force aPos to location 0, aCol to location 1 
gl.bindAttribLocation(prog52, 0, "aPos");
gl.bindAttribLocation(prog52, 1, "aCol");
gl.linkProgram(prog52);
var v=new Float32Array([
0.05896215, 0.01736099, 0.07322726, -0.8775574, -0.1232936, 0.4633483,
0.06014715, 0.008926632, 0.07322726, -0.8775574, -0.1232936, 0.4633483,
0.06405519, 0.009475697, 0.08077499, -0.8775574, -0.1232936, 0.4633483,
0.0628702, 0.01791005, 0.08077499, -0.8775574, -0.1232936, 0.4633483,
0.6230214, 0.09660915, -0.2245945, -0.8775577, -0.1232941, 0.4633476,
0.6242064, 0.0881748, -0.2245945, -0.8775577, -0.1232941, 0.4633476,
0.6281144, 0.08872386, -0.2170467, -0.8775577, -0.1232941, 0.4633476,
0.6269294, 0.09715822, -0.2170467, -0.8775577, -0.1232941, 0.4633476,
0.05896215, 0.01736099, 0.07322726, 0.4588416, 0.06446557, 0.8861764,
0.06014715, 0.008926632, 0.07322726, 0.4588416, 0.06446557, 0.8861764,
0.6242064, 0.0881748, -0.2245945, 0.4588416, 0.06446557, 0.8861764,
0.6230214, 0.09660915, -0.2245945, 0.4588416, 0.06446557, 0.8861764,
0.06014715, 0.008926632, 0.07322726, -0.1391297, 0.9902742, 0,
0.06405519, 0.009475697, 0.08077499, -0.1391297, 0.9902742, 0,
0.6281144, 0.08872386, -0.2170467, -0.1391297, 0.9902742, 0,
0.6242064, 0.0881748, -0.2245945, -0.1391297, 0.9902742, 0,
0.06405519, 0.009475697, 0.08077499, -0.4588416, -0.06446537, -0.8861764,
0.0628702, 0.01791005, 0.08077499, -0.4588416, -0.06446537, -0.8861764,
0.6269294, 0.09715822, -0.2170467, -0.4588416, -0.06446537, -0.8861764,
0.6281144, 0.08872386, -0.2170467, -0.4588416, -0.06446537, -0.8861764,
0.0628702, 0.01791005, 0.08077499, 0.1391297, -0.9902742, -5.847868e-08,
0.05896215, 0.01736099, 0.07322726, 0.1391297, -0.9902742, -5.847868e-08,
0.6230214, 0.09660915, -0.2245945, 0.1391297, -0.9902742, -5.847868e-08,
0.6269294, 0.09715822, -0.2170467, 0.1391297, -0.9902742, -5.847868e-08,
0.06106019, 0.0141127, 0.0763365, -0.8775577, -0.1232934, 0.4633477,
0.06126888, 0.01262729, 0.0763365, -0.8775577, -0.1232934, 0.4633477,
0.06195715, 0.01272399, 0.07766576, -0.8775577, -0.1232934, 0.4633477,
0.06174845, 0.0142094, 0.07766576, -0.8775577, -0.1232934, 0.4633477,
0.06106019, 0.0141127, 0.0763365, 0.4384027, -0.883931, -0.1626924,
0.06174845, 0.0142094, 0.07766576, 0.4384027, -0.883931, -0.1626924,
0.05975356, 0.01317175, 0.07792783, 0.4384027, -0.883931, -0.1626924,
0.05975356, 0.01317175, 0.07792783, 0.4384027, -0.883931, -0.1626924,
0.06106019, 0.0141127, 0.0763365, -0.7377591, -0.1036523, -0.6670589,
0.06126888, 0.01262729, 0.0763365, -0.7377591, -0.1036523, -0.6670589,
0.05975356, 0.01317175, 0.07792783, -0.7377591, -0.1036523, -0.6670589,
0.05975356, 0.01317175, 0.07792783, -0.7377591, -0.1036523, -0.6670589,
0.06126888, 0.01262729, 0.0763365, -0.1778595, -0.9705139, 0.1626921,
0.06195715, 0.01272399, 0.07766576, -0.1778595, -0.9705139, 0.1626921,
0.05975356, 0.01317175, 0.07792783, -0.1778595, -0.9705139, 0.1626921,
0.05975356, 0.01317175, 0.07792783, -0.1778595, -0.9705139, 0.1626921,
0.06195715, 0.01272399, 0.07766576, 0.1214972, 0.01706989, 0.992445,
0.06174845, 0.0142094, 0.07766576, 0.1214972, 0.01706989, 0.992445,
0.05975356, 0.01317175, 0.07792783, 0.1214972, 0.01706989, 0.992445,
0.05975356, 0.01317175, 0.07792783, 0.1214972, 0.01706989, 0.992445
]);
var normLoc52 = gl.getAttribLocation(prog52, "aNorm");
var f=new Uint16Array([
0, 1, 2, 0, 2, 3,
4, 5, 6, 4, 6, 7,
8, 9, 10, 8, 10, 11,
12, 13, 14, 12, 14, 15,
16, 17, 18, 16, 18, 19,
20, 21, 22, 20, 22, 23,
24, 25, 26, 24, 26, 27,
28, 29, 30, 28, 30, 31,
32, 33, 34, 32, 34, 35,
36, 37, 38, 36, 38, 39,
40, 41, 42, 40, 42, 43
]);
var buf52 = gl.createBuffer();
gl.bindBuffer(gl.ARRAY_BUFFER, buf52);
gl.bufferData(gl.ARRAY_BUFFER, v, gl.STATIC_DRAW);
var ibuf52 = gl.createBuffer();
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, ibuf52);
gl.bufferData(gl.ELEMENT_ARRAY_BUFFER, f, gl.STATIC_DRAW);
var mvMatLoc52 = gl.getUniformLocation(prog52,"mvMatrix");
var prMatLoc52 = gl.getUniformLocation(prog52,"prMatrix");
var normMatLoc52 = gl.getUniformLocation(prog52,"normMatrix");
// ****** quads object 53 ******
var prog53  = gl.createProgram();
gl.attachShader(prog53, getShader( gl, "unnamed_chunk_2vshader53" ));
gl.attachShader(prog53, getShader( gl, "unnamed_chunk_2fshader53" ));
//  Force aPos to location 0, aCol to location 1 
gl.bindAttribLocation(prog53, 0, "aPos");
gl.bindAttribLocation(prog53, 1, "aCol");
gl.linkProgram(prog53);
var v=new Float32Array([
0.9077566, 0.01964516, -0.4618907, 0.7515858, -0.1877863, -0.632341,
0.9089406, 0.02438412, -0.4618907, 0.7515858, -0.1877863, -0.632341,
0.9119372, 0.02363542, -0.4581066, 0.7515858, -0.1877863, -0.632341,
0.9107533, 0.01889645, -0.4581066, 0.7515858, -0.1877863, -0.632341,
0.6234776, 0.09067138, -0.2227126, 0.7515823, -0.187776, -0.6323481,
0.6246616, 0.09541035, -0.2227126, 0.7515823, -0.187776, -0.6323481,
0.6276582, 0.09466164, -0.2189286, 0.7515823, -0.187776, -0.6323481,
0.6264742, 0.08992267, -0.2189286, 0.7515823, -0.187776, -0.6323481,
0.9077566, 0.01964516, -0.4618907, 0.6134858, -0.1532816, 0.7746871,
0.9089406, 0.02438412, -0.4618907, 0.6134858, -0.1532816, 0.7746871,
0.6246616, 0.09541035, -0.2227126, 0.6134858, -0.1532816, 0.7746871,
0.6234776, 0.09067138, -0.2227126, 0.6134858, -0.1532816, 0.7746871,
0.9089406, 0.02438412, -0.4618907, -0.242397, -0.9701772, -1.528004e-06,
0.9119372, 0.02363542, -0.4581066, -0.242397, -0.9701772, -1.528004e-06,
0.6276582, 0.09466164, -0.2189286, -0.242397, -0.9701772, -1.528004e-06,
0.6246616, 0.09541035, -0.2227126, -0.242397, -0.9701772, -1.528004e-06,
0.9119372, 0.02363542, -0.4581066, -0.6134875, 0.1532743, -0.7746871,
0.9107533, 0.01889645, -0.4581066, -0.6134875, 0.1532743, -0.7746871,
0.6264742, 0.08992267, -0.2189286, -0.6134875, 0.1532743, -0.7746871,
0.6276582, 0.09466164, -0.2189286, -0.6134875, 0.1532743, -0.7746871,
0.9107533, 0.01889645, -0.4581066, 0.2423952, 0.9701777, -7.639964e-07,
0.9077566, 0.01964516, -0.4618907, 0.2423952, 0.9701777, -7.639964e-07,
0.6234776, 0.09067138, -0.2227126, 0.2423952, 0.9701777, -7.639964e-07,
0.6264742, 0.08992267, -0.2189286, 0.2423952, 0.9701777, -7.639964e-07,
0.909205, 0.02102761, -0.4605797, 0.7515805, -0.1877773, -0.6323499,
0.9095686, 0.02248288, -0.4605797, 0.7515805, -0.1877773, -0.6323499,
0.9104888, 0.02225296, -0.4594177, 0.7515805, -0.1877773, -0.6323499,
0.9101253, 0.0207977, -0.4594177, 0.7515805, -0.1877773, -0.6323499,
0.909205, 0.02102761, -0.4605797, -0.03693689, 0.9743391, 0.2220338,
0.9101253, 0.0207977, -0.4594177, -0.03693689, 0.9743391, 0.2220338,
0.9113501, 0.02126473, -0.4612634, -0.03693689, 0.9743391, 0.2220338,
0.9113501, 0.02126473, -0.4612634, -0.03693689, 0.9743391, 0.2220338,
0.909205, 0.02102761, -0.4605797, -0.3105267, 0.07758298, -0.9473933,
0.9095686, 0.02248288, -0.4605797, -0.3105267, 0.07758298, -0.9473933,
0.9113501, 0.02126473, -0.4612634, -0.3105267, 0.07758298, -0.9473933,
0.9113501, 0.02126473, -0.4612634, -0.3105267, 0.07758298, -0.9473933,
0.9095686, 0.02248288, -0.4605797, 0.4908637, 0.842468, -0.2220374,
0.9104888, 0.02225296, -0.4594177, 0.4908637, 0.842468, -0.2220374,
0.9113501, 0.02126473, -0.4612634, 0.4908637, 0.842468, -0.2220374,
0.9113501, 0.02126473, -0.4612634, 0.4908637, 0.842468, -0.2220374,
0.9104888, 0.02225296, -0.4594177, 0.838329, -0.2094508, 0.5033239,
0.9101253, 0.0207977, -0.4594177, 0.838329, -0.2094508, 0.5033239,
0.9113501, 0.02126473, -0.4612634, 0.838329, -0.2094508, 0.5033239,
0.9113501, 0.02126473, -0.4612634, 0.838329, -0.2094508, 0.5033239
]);
var normLoc53 = gl.getAttribLocation(prog53, "aNorm");
var f=new Uint16Array([
0, 1, 2, 0, 2, 3,
4, 5, 6, 4, 6, 7,
8, 9, 10, 8, 10, 11,
12, 13, 14, 12, 14, 15,
16, 17, 18, 16, 18, 19,
20, 21, 22, 20, 22, 23,
24, 25, 26, 24, 26, 27,
28, 29, 30, 28, 30, 31,
32, 33, 34, 32, 34, 35,
36, 37, 38, 36, 38, 39,
40, 41, 42, 40, 42, 43
]);
var buf53 = gl.createBuffer();
gl.bindBuffer(gl.ARRAY_BUFFER, buf53);
gl.bufferData(gl.ARRAY_BUFFER, v, gl.STATIC_DRAW);
var ibuf53 = gl.createBuffer();
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, ibuf53);
gl.bufferData(gl.ELEMENT_ARRAY_BUFFER, f, gl.STATIC_DRAW);
var mvMatLoc53 = gl.getUniformLocation(prog53,"mvMatrix");
var prMatLoc53 = gl.getUniformLocation(prog53,"prMatrix");
var normMatLoc53 = gl.getUniformLocation(prog53,"normMatrix");
// ****** quads object 54 ******
var prog54  = gl.createProgram();
gl.attachShader(prog54, getShader( gl, "unnamed_chunk_2vshader54" ));
gl.attachShader(prog54, getShader( gl, "unnamed_chunk_2fshader54" ));
//  Force aPos to location 0, aCol to location 1 
gl.bindAttribLocation(prog54, 0, "aPos");
gl.bindAttribLocation(prog54, 1, "aCol");
gl.linkProgram(prog54);
var v=new Float32Array([
0.9810885, 0.2192724, 0.481209, 0.7864152, 0.3247018, 0.5254711,
0.9790453, 0.2242208, 0.481209, 0.7864152, 0.3247018, 0.5254711,
0.9764451, 0.2231472, 0.4857639, 0.7864152, 0.3247018, 0.5254711,
0.9784883, 0.2181988, 0.4857639, 0.7864152, 0.3247018, 0.5254711,
0.684824, 0.09694614, 0.2832511, 0.7864162, 0.3247117, 0.5254637,
0.6827809, 0.1018945, 0.2832511, 0.7864162, 0.3247117, 0.5254637,
0.6801807, 0.1008209, 0.287806, 0.7864162, 0.3247117, 0.5254637,
0.6822238, 0.09587252, 0.287806, 0.7864162, 0.3247117, 0.5254637,
0.9810885, 0.2192724, 0.481209, -0.4856954, -0.200538, 0.850814,
0.9790453, 0.2242208, 0.481209, -0.4856954, -0.200538, 0.850814,
0.6827809, 0.1018945, 0.2832511, -0.4856954, -0.200538, 0.850814,
0.684824, 0.09694614, 0.2832511, -0.4856954, -0.200538, 0.850814,
0.9790453, 0.2242208, 0.481209, 0.3816418, -0.9243103, 2.857195e-06,
0.9764451, 0.2231472, 0.4857639, 0.3816418, -0.9243103, 2.857195e-06,
0.6801807, 0.1008209, 0.287806, 0.3816418, -0.9243103, 2.857195e-06,
0.6827809, 0.1018945, 0.2832511, 0.3816418, -0.9243103, 2.857195e-06,
0.9764451, 0.2231472, 0.4857639, 0.4856933, 0.200543, -0.8508141,
0.9784883, 0.2181988, 0.4857639, 0.4856933, 0.200543, -0.8508141,
0.6822238, 0.09587252, 0.287806, 0.4856933, 0.200543, -0.8508141,
0.6801807, 0.1008209, 0.287806, 0.4856933, 0.200543, -0.8508141,
0.9784883, 0.2181988, 0.4857639, -0.3816439, 0.9243095, 7.648088e-07,
0.9810885, 0.2192724, 0.481209, -0.3816439, 0.9243095, 7.648088e-07,
0.684824, 0.09694614, 0.2832511, -0.3816439, 0.9243095, 7.648088e-07,
0.6822238, 0.09587252, 0.287806, -0.3816439, 0.9243095, 7.648088e-07,
0.9794173, 0.220667, 0.4828484, 0.7864141, 0.3246946, 0.5254772,
0.9788448, 0.2220535, 0.4828484, 0.7864141, 0.3246946, 0.5254772,
0.9781163, 0.2217527, 0.4841246, 0.7864141, 0.3246946, 0.5254772,
0.9786887, 0.2203662, 0.4841246, 0.7864141, 0.3246946, 0.5254772,
0.9794173, 0.220667, 0.4828484, -0.6334691, 0.7514474, -0.1845091,
0.9786887, 0.2203662, 0.4841246, -0.6334691, 0.7514474, -0.1845091,
0.9803396, 0.2218592, 0.4845374, -0.6334691, 0.7514474, -0.1845091,
0.9803396, 0.2218592, 0.4845374, -0.6334691, 0.7514474, -0.1845091,
0.9794173, 0.220667, 0.4828484, 0.7309062, 0.3017765, -0.6121332,
0.9788448, 0.2220535, 0.4828484, 0.7309062, 0.3017765, -0.6121332,
0.9803396, 0.2218592, 0.4845374, 0.7309062, 0.3017765, -0.6121332,
0.9803396, 0.2218592, 0.4845374, 0.7309062, 0.3017765, -0.6121332,
0.9788448, 0.2220535, 0.4828484, -0.08121779, 0.9794703, 0.1845041,
0.9781163, 0.2217527, 0.4841246, -0.08121779, 0.9794703, 0.1845041,
0.9803396, 0.2218592, 0.4845374, -0.08121779, 0.9794703, 0.1845041,
0.9803396, 0.2218592, 0.4845374, -0.08121779, 0.9794703, 0.1845041,
0.9781163, 0.2217527, 0.4841246, -0.1786542, -0.07376274, 0.9811431,
0.9786887, 0.2203662, 0.4841246, -0.1786542, -0.07376274, 0.9811431,
0.9803396, 0.2218592, 0.4845374, -0.1786542, -0.07376274, 0.9811431,
0.9803396, 0.2218592, 0.4845374, -0.1786542, -0.07376274, 0.9811431
]);
var normLoc54 = gl.getAttribLocation(prog54, "aNorm");
var f=new Uint16Array([
0, 1, 2, 0, 2, 3,
4, 5, 6, 4, 6, 7,
8, 9, 10, 8, 10, 11,
12, 13, 14, 12, 14, 15,
16, 17, 18, 16, 18, 19,
20, 21, 22, 20, 22, 23,
24, 25, 26, 24, 26, 27,
28, 29, 30, 28, 30, 31,
32, 33, 34, 32, 34, 35,
36, 37, 38, 36, 38, 39,
40, 41, 42, 40, 42, 43
]);
var buf54 = gl.createBuffer();
gl.bindBuffer(gl.ARRAY_BUFFER, buf54);
gl.bufferData(gl.ARRAY_BUFFER, v, gl.STATIC_DRAW);
var ibuf54 = gl.createBuffer();
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, ibuf54);
gl.bufferData(gl.ELEMENT_ARRAY_BUFFER, f, gl.STATIC_DRAW);
var mvMatLoc54 = gl.getUniformLocation(prog54,"mvMatrix");
var prMatLoc54 = gl.getUniformLocation(prog54,"prMatrix");
var normMatLoc54 = gl.getUniformLocation(prog54,"normMatrix");
// ****** quads object 55 ******
var prog55  = gl.createProgram();
gl.attachShader(prog55, getShader( gl, "unnamed_chunk_2vshader55" ));
gl.attachShader(prog55, getShader( gl, "unnamed_chunk_2fshader55" ));
//  Force aPos to location 0, aCol to location 1 
gl.bindAttribLocation(prog55, 0, "aPos");
gl.bindAttribLocation(prog55, 1, "aCol");
gl.linkProgram(prog55);
var v=new Float32Array([
0.06405225, 0.01794138, 0.09327836, -0.9485531, -0.1306459, -0.2884073,
0.06519799, 0.00962278, 0.09327836, -0.9485531, -0.1306459, -0.2884073,
0.06279884, 0.009292341, 0.1013187, -0.9485531, -0.1306459, -0.2884073,
0.06165311, 0.01761094, 0.1013187, -0.9485531, -0.1306459, -0.2884073,
0.683129, 0.103208, 0.2815084, -0.9485523, -0.1306508, -0.2884078,
0.6842748, 0.09488944, 0.2815084, -0.9485523, -0.1306508, -0.2884078,
0.6818756, 0.094559, 0.2895487, -0.9485523, -0.1306508, -0.2884078,
0.6807299, 0.1028776, 0.2895487, -0.9485523, -0.1306508, -0.2884078,
0.06405225, 0.01794138, 0.09327836, -0.28571, -0.03935133, 0.9575078,
0.06519799, 0.00962278, 0.09327836, -0.28571, -0.03935133, 0.9575078,
0.6842748, 0.09488944, 0.2815084, -0.28571, -0.03935133, 0.9575078,
0.683129, 0.103208, 0.2815084, -0.28571, -0.03935133, 0.9575078,
0.06519799, 0.00962278, 0.09327836, -0.1364439, 0.9906479, -3.45183e-08,
0.06279884, 0.009292341, 0.1013187, -0.1364439, 0.9906479, -3.45183e-08,
0.6818756, 0.094559, 0.2895487, -0.1364439, 0.9906479, -3.45183e-08,
0.6842748, 0.09488944, 0.2815084, -0.1364439, 0.9906479, -3.45183e-08,
0.06279884, 0.009292341, 0.1013187, 0.2857099, 0.03935133, -0.9575078,
0.06165311, 0.01761094, 0.1013187, 0.2857099, 0.03935133, -0.9575078,
0.6807299, 0.1028776, 0.2895487, 0.2857099, 0.03935133, -0.9575078,
0.6818756, 0.094559, 0.2895487, 0.2857099, 0.03935133, -0.9575078,
0.06165311, 0.01761094, 0.1013187, 0.1364439, -0.9906479, 4.248407e-08,
0.06405225, 0.01794138, 0.09327836, 0.1364439, -0.9906479, 4.248407e-08,
0.683129, 0.103208, 0.2815084, 0.1364439, -0.9906479, 4.248407e-08,
0.6807299, 0.1028776, 0.2895487, 0.1364439, -0.9906479, 4.248407e-08,
0.06353749, 0.01438936, 0.09658039, -0.948553, -0.1306471, -0.2884068,
0.06374216, 0.01290339, 0.09658039, -0.948553, -0.1306471, -0.2884068,
0.0633136, 0.01284436, 0.09801665, -0.948553, -0.1306471, -0.2884068,
0.06310893, 0.01433033, 0.09801665, -0.948553, -0.1306471, -0.2884068,
0.06353749, 0.01438936, 0.09658039, 0.460816, -0.8816994, 0.1012664,
0.06310893, 0.01433033, 0.09801665, 0.460816, -0.8816994, 0.1012664,
0.06152844, 0.01335557, 0.0967217, 0.460816, -0.8816994, 0.1012664,
0.06152844, 0.01335557, 0.0967217, 0.460816, -0.8816994, 0.1012664,
0.06353749, 0.01438936, 0.09658039, -0.06554008, -0.009027036, -0.9978091,
0.06374216, 0.01290339, 0.09658039, -0.06554008, -0.009027036, -0.9978091,
0.06152844, 0.01335557, 0.0967217, -0.06554008, -0.009027036, -0.9978091,
0.06152844, 0.01335557, 0.0967217, -0.06554008, -0.009027036, -0.9978091,
0.06374216, 0.01290339, 0.09658039, -0.205303, -0.9734454, -0.1012665,
0.0633136, 0.01284436, 0.09801665, -0.205303, -0.9734454, -0.1012665,
0.06152844, 0.01335557, 0.0967217, -0.205303, -0.9734454, -0.1012665,
0.06152844, 0.01335557, 0.0967217, -0.205303, -0.9734454, -0.1012665,
0.0633136, 0.01284436, 0.09801665, -0.600579, -0.08271959, 0.795275,
0.06310893, 0.01433033, 0.09801665, -0.600579, -0.08271959, 0.795275,
0.06152844, 0.01335557, 0.0967217, -0.600579, -0.08271959, 0.795275,
0.06152844, 0.01335557, 0.0967217, -0.600579, -0.08271959, 0.795275
]);
var normLoc55 = gl.getAttribLocation(prog55, "aNorm");
var f=new Uint16Array([
0, 1, 2, 0, 2, 3,
4, 5, 6, 4, 6, 7,
8, 9, 10, 8, 10, 11,
12, 13, 14, 12, 14, 15,
16, 17, 18, 16, 18, 19,
20, 21, 22, 20, 22, 23,
24, 25, 26, 24, 26, 27,
28, 29, 30, 28, 30, 31,
32, 33, 34, 32, 34, 35,
36, 37, 38, 36, 38, 39,
40, 41, 42, 40, 42, 43
]);
var buf55 = gl.createBuffer();
gl.bindBuffer(gl.ARRAY_BUFFER, buf55);
gl.bufferData(gl.ARRAY_BUFFER, v, gl.STATIC_DRAW);
var ibuf55 = gl.createBuffer();
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, ibuf55);
gl.bufferData(gl.ELEMENT_ARRAY_BUFFER, f, gl.STATIC_DRAW);
var mvMatLoc55 = gl.getUniformLocation(prog55,"mvMatrix");
var prMatLoc55 = gl.getUniformLocation(prog55,"prMatrix");
var normMatLoc55 = gl.getUniformLocation(prog55,"normMatrix");
// ****** spheres object 56 ******
var prog56  = gl.createProgram();
gl.attachShader(prog56, getShader( gl, "unnamed_chunk_2vshader56" ));
gl.attachShader(prog56, getShader( gl, "unnamed_chunk_2fshader56" ));
//  Force aPos to location 0, aCol to location 1 
gl.bindAttribLocation(prog56, 0, "aPos");
gl.bindAttribLocation(prog56, 1, "aCol");
gl.linkProgram(prog56);
var v=new Float32Array([
0.3727723, -0.5748608, 0.2489676, 0.7450981, 0.7450981, 0.7450981, 1, 0.025,
-0.3583143, 0.5404223, 0.2253444, 0.7450981, 0.7450981, 0.7450981, 1, 0.025,
-0.02402218, 0.3337696, 0.6249, 0.7450981, 0.7450981, 0.7450981, 1, 0.025,
0.5946515, 0.2066595, 0.3991753, 0.7450981, 0.7450981, 0.7450981, 1, 0.025,
0.2282393, 0.6328301, 0.2187082, 0.7450981, 0.7450981, 0.7450981, 1, 0.025,
0.006283607, 0.4749591, -0.3539738, 0.7450981, 0.7450981, 0.7450981, 1, 0.025,
0.2163106, -0.6000242, 0.3421054, 0.7450981, 0.7450981, 0.7450981, 1, 0.025,
0.1710334, 0.3957197, -0.3976629, 0.7450981, 0.7450981, 0.7450981, 1, 0.025,
0.03781461, 0.01008942, 0.08951152, 1, 1, 0, 1, 0.025,
-0.5697469, -0.5530116, -0.5737509, 0.7450981, 0.7450981, 0.7450981, 1, 0.025,
0.5615965, -0.05410685, -0.3128956, 0.7450981, 0.7450981, 0.7450981, 1, 0.025,
-0.4355326, -0.2169567, 0.4998522, 0.7450981, 0.7450981, 0.7450981, 1, 0.025,
0.06477216, 0.1822958, 0.686672, 0.7450981, 0.7450981, 0.7450981, 1, 0.025,
-0.4941545, -0.03862335, 0.487343, 0.7450981, 0.7450981, 0.7450981, 1, 0.025,
-0.3957497, 0.5343334, 0.05627237, 0.7450981, 0.7450981, 0.7450981, 1, 0.025,
0.3163632, 0.615445, 0.06862088, 0.7450981, 0.7450981, 0.7450981, 1, 0.025,
0.6255679, 0.09266651, -0.2208206, 0.7450981, 0.7450981, 0.7450981, 1, 0.025,
0.6825023, 0.09888352, 0.2855286, 0.7450981, 0.7450981, 0.7450981, 1, 0.025,
0.4490826, -0.9373012, 0.4210317, 0.7450981, 0.7450981, 0.7450981, 1, 0.025,
-0.6329522, 0.8507162, 0.1702717, 0.7450981, 0.7450981, 0.7450981, 1, 0.025,
0.009695077, 0.3999217, 1, 0.7450981, 0.7450981, 0.7450981, 1, 0.025,
1, 0.2299769, 0.4976741, 0.7450981, 0.7450981, 0.7450981, 1, 0.025,
0.414774, 1, 0.1755036, 0.7450981, 0.7450981, 0.7450981, 1, 0.025,
0.1195661, 0.6917884, -0.658723, 0.7450981, 0.7450981, 0.7450981, 1, 0.025,
0.3232409, -0.1245522, 0.4785999, 0.7450981, 0.7450981, 0.7450981, 1, 0.025,
0.2622334, -0.3512802, -0.214937, 0.7450981, 0.7450981, 0.7450981, 1, 0.025,
-0.4785089, 0.1222739, 0.1153459, 0.7450981, 0.7450981, 0.7450981, 1, 0.025,
-0.03159905, -0.4725967, -0.08610881, 0.7450981, 0.7450981, 0.7450981, 1, 0.025,
0.5048425, -0.2371003, 0.07142509, 0.7450981, 0.7450981, 0.7450981, 1, 0.025,
-0.006780485, -0.2548676, 0.5109338, 0.7450981, 0.7450981, 0.7450981, 1, 0.025,
0.02893061, -0.06851099, -0.3761355, 0.7450981, 0.7450981, 0.7450981, 1, 0.025,
-0.4189956, -0.1750223, -0.05749637, 0.7450981, 0.7450981, 0.7450981, 1, 0.025,
-0.2311371, -0.4386393, 0.2002255, 0.7450981, 0.7450981, 0.7450981, 1, 0.025,
-0.3042498, 0.1786211, -0.238478, 0.7450981, 0.7450981, 0.7450981, 1, 0.025,
-0.7150924, -1, -0.7304728, 0.7450981, 0.7450981, 0.7450981, 1, 0.025,
-0.748373, -0.581761, -1, 0.7450981, 0.7450981, 0.7450981, 1, 0.025,
-0.554393, -0.8397468, -0.9438815, 0.7450981, 0.7450981, 0.7450981, 1, 0.025,
-0.9788021, -0.8366782, -0.6348152, 0.7450981, 0.7450981, 0.7450981, 1, 0.025,
-1, -0.5732618, -0.8127978, 0.7450981, 0.7450981, 0.7450981, 1, 0.025,
0.9301397, 0.0165702, -0.477072, 0.7450981, 0.7450981, 0.7450981, 1, 0.025,
-0.7619724, -0.2125272, 0.7366978, 0.7450981, 0.7450981, 0.7450981, 1, 0.025
]);
var values56 = v;
var normLoc56 = gl.getAttribLocation(prog56, "aNorm");
var mvMatLoc56 = gl.getUniformLocation(prog56,"mvMatrix");
var prMatLoc56 = gl.getUniformLocation(prog56,"prMatrix");
var normMatLoc56 = gl.getUniformLocation(prog56,"normMatrix");
// ****** text object 57 ******
var prog57  = gl.createProgram();
gl.attachShader(prog57, getShader( gl, "unnamed_chunk_2vshader57" ));
gl.attachShader(prog57, getShader( gl, "unnamed_chunk_2fshader57" ));
//  Force aPos to location 0, aCol to location 1 
gl.bindAttribLocation(prog57, 0, "aPos");
gl.bindAttribLocation(prog57, 1, "aCol");
gl.linkProgram(prog57);
var texts = [
"",
"",
"",
"",
"",
"",
"",
"",
"",
"",
"",
"",
"",
"",
"",
"",
"",
"",
"",
"",
"",
"",
"",
"",
"",
"",
"",
"",
"",
"",
"",
"",
"",
"",
"",
"",
"",
"",
"",
"",
""
];
var texinfo = drawTextToCanvas(texts, 1);	 
var canvasX57 = texinfo.canvasX;
var canvasY57 = texinfo.canvasY;
var ofsLoc57 = gl.getAttribLocation(prog57, "aOfs");
var texture57 = gl.createTexture();
var texLoc57 = gl.getAttribLocation(prog57, "aTexcoord");
var sampler57 = gl.getUniformLocation(prog57,"uSampler");
handleLoadedTexture(texture57, document.getElementById("unnamed_chunk_2textureCanvas"));
var v=new Float32Array([
0.3727723, -0.5748608, 0.2489676, 0, -0.5, 0, 0.5,
0.3727723, -0.5748608, 0.2489676, 1, -0.5, 0, 0.5,
0.3727723, -0.5748608, 0.2489676, 1, 1.5, 0, 0.5,
0.3727723, -0.5748608, 0.2489676, 0, 1.5, 0, 0.5,
-0.3583143, 0.5404223, 0.2253444, 0, -0.5, 0, 0.5,
-0.3583143, 0.5404223, 0.2253444, 1, -0.5, 0, 0.5,
-0.3583143, 0.5404223, 0.2253444, 1, 1.5, 0, 0.5,
-0.3583143, 0.5404223, 0.2253444, 0, 1.5, 0, 0.5,
-0.02402218, 0.3337696, 0.6249, 0, -0.5, 0, 0.5,
-0.02402218, 0.3337696, 0.6249, 1, -0.5, 0, 0.5,
-0.02402218, 0.3337696, 0.6249, 1, 1.5, 0, 0.5,
-0.02402218, 0.3337696, 0.6249, 0, 1.5, 0, 0.5,
0.5946515, 0.2066595, 0.3991753, 0, -0.5, 0, 0.5,
0.5946515, 0.2066595, 0.3991753, 1, -0.5, 0, 0.5,
0.5946515, 0.2066595, 0.3991753, 1, 1.5, 0, 0.5,
0.5946515, 0.2066595, 0.3991753, 0, 1.5, 0, 0.5,
0.2282393, 0.6328301, 0.2187082, 0, -0.5, 0, 0.5,
0.2282393, 0.6328301, 0.2187082, 1, -0.5, 0, 0.5,
0.2282393, 0.6328301, 0.2187082, 1, 1.5, 0, 0.5,
0.2282393, 0.6328301, 0.2187082, 0, 1.5, 0, 0.5,
0.006283607, 0.4749591, -0.3539738, 0, -0.5, 0, 0.5,
0.006283607, 0.4749591, -0.3539738, 1, -0.5, 0, 0.5,
0.006283607, 0.4749591, -0.3539738, 1, 1.5, 0, 0.5,
0.006283607, 0.4749591, -0.3539738, 0, 1.5, 0, 0.5,
0.2163106, -0.6000242, 0.3421054, 0, -0.5, 0, 0.5,
0.2163106, -0.6000242, 0.3421054, 1, -0.5, 0, 0.5,
0.2163106, -0.6000242, 0.3421054, 1, 1.5, 0, 0.5,
0.2163106, -0.6000242, 0.3421054, 0, 1.5, 0, 0.5,
0.1710334, 0.3957197, -0.3976629, 0, -0.5, 0, 0.5,
0.1710334, 0.3957197, -0.3976629, 1, -0.5, 0, 0.5,
0.1710334, 0.3957197, -0.3976629, 1, 1.5, 0, 0.5,
0.1710334, 0.3957197, -0.3976629, 0, 1.5, 0, 0.5,
0.03781461, 0.01008942, 0.08951152, 0, -0.5, 0, 0.5,
0.03781461, 0.01008942, 0.08951152, 1, -0.5, 0, 0.5,
0.03781461, 0.01008942, 0.08951152, 1, 1.5, 0, 0.5,
0.03781461, 0.01008942, 0.08951152, 0, 1.5, 0, 0.5,
-0.5697469, -0.5530116, -0.5737509, 0, -0.5, 0, 0.5,
-0.5697469, -0.5530116, -0.5737509, 1, -0.5, 0, 0.5,
-0.5697469, -0.5530116, -0.5737509, 1, 1.5, 0, 0.5,
-0.5697469, -0.5530116, -0.5737509, 0, 1.5, 0, 0.5,
0.5615965, -0.05410685, -0.3128956, 0, -0.5, 0, 0.5,
0.5615965, -0.05410685, -0.3128956, 1, -0.5, 0, 0.5,
0.5615965, -0.05410685, -0.3128956, 1, 1.5, 0, 0.5,
0.5615965, -0.05410685, -0.3128956, 0, 1.5, 0, 0.5,
-0.4355326, -0.2169567, 0.4998522, 0, -0.5, 0, 0.5,
-0.4355326, -0.2169567, 0.4998522, 1, -0.5, 0, 0.5,
-0.4355326, -0.2169567, 0.4998522, 1, 1.5, 0, 0.5,
-0.4355326, -0.2169567, 0.4998522, 0, 1.5, 0, 0.5,
0.06477216, 0.1822958, 0.686672, 0, -0.5, 0, 0.5,
0.06477216, 0.1822958, 0.686672, 1, -0.5, 0, 0.5,
0.06477216, 0.1822958, 0.686672, 1, 1.5, 0, 0.5,
0.06477216, 0.1822958, 0.686672, 0, 1.5, 0, 0.5,
-0.4941545, -0.03862335, 0.487343, 0, -0.5, 0, 0.5,
-0.4941545, -0.03862335, 0.487343, 1, -0.5, 0, 0.5,
-0.4941545, -0.03862335, 0.487343, 1, 1.5, 0, 0.5,
-0.4941545, -0.03862335, 0.487343, 0, 1.5, 0, 0.5,
-0.3957497, 0.5343334, 0.05627237, 0, -0.5, 0, 0.5,
-0.3957497, 0.5343334, 0.05627237, 1, -0.5, 0, 0.5,
-0.3957497, 0.5343334, 0.05627237, 1, 1.5, 0, 0.5,
-0.3957497, 0.5343334, 0.05627237, 0, 1.5, 0, 0.5,
0.3163632, 0.615445, 0.06862088, 0, -0.5, 0, 0.5,
0.3163632, 0.615445, 0.06862088, 1, -0.5, 0, 0.5,
0.3163632, 0.615445, 0.06862088, 1, 1.5, 0, 0.5,
0.3163632, 0.615445, 0.06862088, 0, 1.5, 0, 0.5,
0.6255679, 0.09266651, -0.2208206, 0, -0.5, 0, 0.5,
0.6255679, 0.09266651, -0.2208206, 1, -0.5, 0, 0.5,
0.6255679, 0.09266651, -0.2208206, 1, 1.5, 0, 0.5,
0.6255679, 0.09266651, -0.2208206, 0, 1.5, 0, 0.5,
0.6825023, 0.09888352, 0.2855286, 0, -0.5, 0, 0.5,
0.6825023, 0.09888352, 0.2855286, 1, -0.5, 0, 0.5,
0.6825023, 0.09888352, 0.2855286, 1, 1.5, 0, 0.5,
0.6825023, 0.09888352, 0.2855286, 0, 1.5, 0, 0.5,
0.4490826, -0.9373012, 0.4210317, 0, -0.5, 0, 0.5,
0.4490826, -0.9373012, 0.4210317, 1, -0.5, 0, 0.5,
0.4490826, -0.9373012, 0.4210317, 1, 1.5, 0, 0.5,
0.4490826, -0.9373012, 0.4210317, 0, 1.5, 0, 0.5,
-0.6329522, 0.8507162, 0.1702717, 0, -0.5, 0, 0.5,
-0.6329522, 0.8507162, 0.1702717, 1, -0.5, 0, 0.5,
-0.6329522, 0.8507162, 0.1702717, 1, 1.5, 0, 0.5,
-0.6329522, 0.8507162, 0.1702717, 0, 1.5, 0, 0.5,
0.009695077, 0.3999217, 1, 0, -0.5, 0, 0.5,
0.009695077, 0.3999217, 1, 1, -0.5, 0, 0.5,
0.009695077, 0.3999217, 1, 1, 1.5, 0, 0.5,
0.009695077, 0.3999217, 1, 0, 1.5, 0, 0.5,
1, 0.2299769, 0.4976741, 0, -0.5, 0, 0.5,
1, 0.2299769, 0.4976741, 1, -0.5, 0, 0.5,
1, 0.2299769, 0.4976741, 1, 1.5, 0, 0.5,
1, 0.2299769, 0.4976741, 0, 1.5, 0, 0.5,
0.414774, 1, 0.1755036, 0, -0.5, 0, 0.5,
0.414774, 1, 0.1755036, 1, -0.5, 0, 0.5,
0.414774, 1, 0.1755036, 1, 1.5, 0, 0.5,
0.414774, 1, 0.1755036, 0, 1.5, 0, 0.5,
0.1195661, 0.6917884, -0.658723, 0, -0.5, 0, 0.5,
0.1195661, 0.6917884, -0.658723, 1, -0.5, 0, 0.5,
0.1195661, 0.6917884, -0.658723, 1, 1.5, 0, 0.5,
0.1195661, 0.6917884, -0.658723, 0, 1.5, 0, 0.5,
0.3232409, -0.1245522, 0.4785999, 0, -0.5, 0, 0.5,
0.3232409, -0.1245522, 0.4785999, 1, -0.5, 0, 0.5,
0.3232409, -0.1245522, 0.4785999, 1, 1.5, 0, 0.5,
0.3232409, -0.1245522, 0.4785999, 0, 1.5, 0, 0.5,
0.2622334, -0.3512802, -0.214937, 0, -0.5, 0, 0.5,
0.2622334, -0.3512802, -0.214937, 1, -0.5, 0, 0.5,
0.2622334, -0.3512802, -0.214937, 1, 1.5, 0, 0.5,
0.2622334, -0.3512802, -0.214937, 0, 1.5, 0, 0.5,
-0.4785089, 0.1222739, 0.1153459, 0, -0.5, 0, 0.5,
-0.4785089, 0.1222739, 0.1153459, 1, -0.5, 0, 0.5,
-0.4785089, 0.1222739, 0.1153459, 1, 1.5, 0, 0.5,
-0.4785089, 0.1222739, 0.1153459, 0, 1.5, 0, 0.5,
-0.03159905, -0.4725967, -0.08610881, 0, -0.5, 0, 0.5,
-0.03159905, -0.4725967, -0.08610881, 1, -0.5, 0, 0.5,
-0.03159905, -0.4725967, -0.08610881, 1, 1.5, 0, 0.5,
-0.03159905, -0.4725967, -0.08610881, 0, 1.5, 0, 0.5,
0.5048425, -0.2371003, 0.07142509, 0, -0.5, 0, 0.5,
0.5048425, -0.2371003, 0.07142509, 1, -0.5, 0, 0.5,
0.5048425, -0.2371003, 0.07142509, 1, 1.5, 0, 0.5,
0.5048425, -0.2371003, 0.07142509, 0, 1.5, 0, 0.5,
-0.006780485, -0.2548676, 0.5109338, 0, -0.5, 0, 0.5,
-0.006780485, -0.2548676, 0.5109338, 1, -0.5, 0, 0.5,
-0.006780485, -0.2548676, 0.5109338, 1, 1.5, 0, 0.5,
-0.006780485, -0.2548676, 0.5109338, 0, 1.5, 0, 0.5,
0.02893061, -0.06851099, -0.3761355, 0, -0.5, 0, 0.5,
0.02893061, -0.06851099, -0.3761355, 1, -0.5, 0, 0.5,
0.02893061, -0.06851099, -0.3761355, 1, 1.5, 0, 0.5,
0.02893061, -0.06851099, -0.3761355, 0, 1.5, 0, 0.5,
-0.4189956, -0.1750223, -0.05749637, 0, -0.5, 0, 0.5,
-0.4189956, -0.1750223, -0.05749637, 1, -0.5, 0, 0.5,
-0.4189956, -0.1750223, -0.05749637, 1, 1.5, 0, 0.5,
-0.4189956, -0.1750223, -0.05749637, 0, 1.5, 0, 0.5,
-0.2311371, -0.4386393, 0.2002255, 0, -0.5, 0, 0.5,
-0.2311371, -0.4386393, 0.2002255, 1, -0.5, 0, 0.5,
-0.2311371, -0.4386393, 0.2002255, 1, 1.5, 0, 0.5,
-0.2311371, -0.4386393, 0.2002255, 0, 1.5, 0, 0.5,
-0.3042498, 0.1786211, -0.238478, 0, -0.5, 0, 0.5,
-0.3042498, 0.1786211, -0.238478, 1, -0.5, 0, 0.5,
-0.3042498, 0.1786211, -0.238478, 1, 1.5, 0, 0.5,
-0.3042498, 0.1786211, -0.238478, 0, 1.5, 0, 0.5,
-0.7150924, -1, -0.7304728, 0, -0.5, 0, 0.5,
-0.7150924, -1, -0.7304728, 1, -0.5, 0, 0.5,
-0.7150924, -1, -0.7304728, 1, 1.5, 0, 0.5,
-0.7150924, -1, -0.7304728, 0, 1.5, 0, 0.5,
-0.748373, -0.581761, -1, 0, -0.5, 0, 0.5,
-0.748373, -0.581761, -1, 1, -0.5, 0, 0.5,
-0.748373, -0.581761, -1, 1, 1.5, 0, 0.5,
-0.748373, -0.581761, -1, 0, 1.5, 0, 0.5,
-0.554393, -0.8397468, -0.9438815, 0, -0.5, 0, 0.5,
-0.554393, -0.8397468, -0.9438815, 1, -0.5, 0, 0.5,
-0.554393, -0.8397468, -0.9438815, 1, 1.5, 0, 0.5,
-0.554393, -0.8397468, -0.9438815, 0, 1.5, 0, 0.5,
-0.9788021, -0.8366782, -0.6348152, 0, -0.5, 0, 0.5,
-0.9788021, -0.8366782, -0.6348152, 1, -0.5, 0, 0.5,
-0.9788021, -0.8366782, -0.6348152, 1, 1.5, 0, 0.5,
-0.9788021, -0.8366782, -0.6348152, 0, 1.5, 0, 0.5,
-1, -0.5732618, -0.8127978, 0, -0.5, 0, 0.5,
-1, -0.5732618, -0.8127978, 1, -0.5, 0, 0.5,
-1, -0.5732618, -0.8127978, 1, 1.5, 0, 0.5,
-1, -0.5732618, -0.8127978, 0, 1.5, 0, 0.5,
0.9301397, 0.0165702, -0.477072, 0, -0.5, 0, 0.5,
0.9301397, 0.0165702, -0.477072, 1, -0.5, 0, 0.5,
0.9301397, 0.0165702, -0.477072, 1, 1.5, 0, 0.5,
0.9301397, 0.0165702, -0.477072, 0, 1.5, 0, 0.5,
-0.7619724, -0.2125272, 0.7366978, 0, -0.5, 0, 0.5,
-0.7619724, -0.2125272, 0.7366978, 1, -0.5, 0, 0.5,
-0.7619724, -0.2125272, 0.7366978, 1, 1.5, 0, 0.5,
-0.7619724, -0.2125272, 0.7366978, 0, 1.5, 0, 0.5
]);
for (var i=0; i<41; i++) 
for (var j=0; j<4; j++) {
var ind = 7*(4*i + j) + 3;
v[ind+2] = 2*(v[ind]-v[ind+2])*texinfo.widths[i];
v[ind+3] = 2*(v[ind+1]-v[ind+3])*texinfo.textHeight;
v[ind] *= texinfo.widths[i]/texinfo.canvasX;
v[ind+1] = 1.0-(texinfo.offset + i*texinfo.skip 
- v[ind+1]*texinfo.textHeight)/texinfo.canvasY;
}
var f=new Uint16Array([
0, 1, 2, 0, 2, 3,
4, 5, 6, 4, 6, 7,
8, 9, 10, 8, 10, 11,
12, 13, 14, 12, 14, 15,
16, 17, 18, 16, 18, 19,
20, 21, 22, 20, 22, 23,
24, 25, 26, 24, 26, 27,
28, 29, 30, 28, 30, 31,
32, 33, 34, 32, 34, 35,
36, 37, 38, 36, 38, 39,
40, 41, 42, 40, 42, 43,
44, 45, 46, 44, 46, 47,
48, 49, 50, 48, 50, 51,
52, 53, 54, 52, 54, 55,
56, 57, 58, 56, 58, 59,
60, 61, 62, 60, 62, 63,
64, 65, 66, 64, 66, 67,
68, 69, 70, 68, 70, 71,
72, 73, 74, 72, 74, 75,
76, 77, 78, 76, 78, 79,
80, 81, 82, 80, 82, 83,
84, 85, 86, 84, 86, 87,
88, 89, 90, 88, 90, 91,
92, 93, 94, 92, 94, 95,
96, 97, 98, 96, 98, 99,
100, 101, 102, 100, 102, 103,
104, 105, 106, 104, 106, 107,
108, 109, 110, 108, 110, 111,
112, 113, 114, 112, 114, 115,
116, 117, 118, 116, 118, 119,
120, 121, 122, 120, 122, 123,
124, 125, 126, 124, 126, 127,
128, 129, 130, 128, 130, 131,
132, 133, 134, 132, 134, 135,
136, 137, 138, 136, 138, 139,
140, 141, 142, 140, 142, 143,
144, 145, 146, 144, 146, 147,
148, 149, 150, 148, 150, 151,
152, 153, 154, 152, 154, 155,
156, 157, 158, 156, 158, 159,
160, 161, 162, 160, 162, 163
]);
var buf57 = gl.createBuffer();
gl.bindBuffer(gl.ARRAY_BUFFER, buf57);
gl.bufferData(gl.ARRAY_BUFFER, v, gl.STATIC_DRAW);
var ibuf57 = gl.createBuffer();
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, ibuf57);
gl.bufferData(gl.ELEMENT_ARRAY_BUFFER, f, gl.STATIC_DRAW);
var mvMatLoc57 = gl.getUniformLocation(prog57,"mvMatrix");
var prMatLoc57 = gl.getUniformLocation(prog57,"prMatrix");
var textScaleLoc57 = gl.getUniformLocation(prog57,"textScale");
// ****** text object 58 ******
var prog58  = gl.createProgram();
gl.attachShader(prog58, getShader( gl, "unnamed_chunk_2vshader58" ));
gl.attachShader(prog58, getShader( gl, "unnamed_chunk_2fshader58" ));
//  Force aPos to location 0, aCol to location 1 
gl.bindAttribLocation(prog58, 0, "aPos");
gl.bindAttribLocation(prog58, 1, "aCol");
gl.linkProgram(prog58);
var texts = [
"",
""
];
var texinfo = drawTextToCanvas(texts, 1);	 
var canvasX58 = texinfo.canvasX;
var canvasY58 = texinfo.canvasY;
var ofsLoc58 = gl.getAttribLocation(prog58, "aOfs");
var texture58 = gl.createTexture();
var texLoc58 = gl.getAttribLocation(prog58, "aTexcoord");
var sampler58 = gl.getUniformLocation(prog58,"uSampler");
handleLoadedTexture(texture58, document.getElementById("unnamed_chunk_2textureCanvas"));
var v=new Float32Array([
0, 0, 0, 0, 0, 0.5450981, 1, 0, -0.5, 0, 0.5,
0, 0, 0, 0, 0, 0.5450981, 1, 1, -0.5, 0, 0.5,
0, 0, 0, 0, 0, 0.5450981, 1, 1, 1.5, 0, 0.5,
0, 0, 0, 0, 0, 0.5450981, 1, 0, 1.5, 0, 0.5,
0.3727723, -0.5748608, 0.2489676, 0, 0, 0.5450981, 1, 0, -0.5, 0, 0.5,
0.3727723, -0.5748608, 0.2489676, 0, 0, 0.5450981, 1, 1, -0.5, 0, 0.5,
0.3727723, -0.5748608, 0.2489676, 0, 0, 0.5450981, 1, 1, 1.5, 0, 0.5,
0.3727723, -0.5748608, 0.2489676, 0, 0, 0.5450981, 1, 0, 1.5, 0, 0.5
]);
for (var i=0; i<2; i++) 
for (var j=0; j<4; j++) {
var ind = 11*(4*i + j) + 7;
v[ind+2] = 2*(v[ind]-v[ind+2])*texinfo.widths[i];
v[ind+3] = 2*(v[ind+1]-v[ind+3])*texinfo.textHeight;
v[ind] *= texinfo.widths[i]/texinfo.canvasX;
v[ind+1] = 1.0-(texinfo.offset + i*texinfo.skip 
- v[ind+1]*texinfo.textHeight)/texinfo.canvasY;
}
var f=new Uint16Array([
0, 1, 2, 0, 2, 3,
4, 5, 6, 4, 6, 7
]);
var buf58 = gl.createBuffer();
gl.bindBuffer(gl.ARRAY_BUFFER, buf58);
gl.bufferData(gl.ARRAY_BUFFER, v, gl.STATIC_DRAW);
var ibuf58 = gl.createBuffer();
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, ibuf58);
gl.bufferData(gl.ELEMENT_ARRAY_BUFFER, f, gl.STATIC_DRAW);
var mvMatLoc58 = gl.getUniformLocation(prog58,"mvMatrix");
var prMatLoc58 = gl.getUniformLocation(prog58,"prMatrix");
var textScaleLoc58 = gl.getUniformLocation(prog58,"textScale");
// ****** text object 59 ******
var prog59  = gl.createProgram();
gl.attachShader(prog59, getShader( gl, "unnamed_chunk_2vshader59" ));
gl.attachShader(prog59, getShader( gl, "unnamed_chunk_2fshader59" ));
//  Force aPos to location 0, aCol to location 1 
gl.bindAttribLocation(prog59, 0, "aPos");
gl.bindAttribLocation(prog59, 1, "aCol");
gl.linkProgram(prog59);
var texts = [
"BTC transaction network for 1EhXj3KkhvzFPqbkHib7Bx8Zdn1GaviQnF"
];
var texinfo = drawTextToCanvas(texts, 1);	 
var canvasX59 = texinfo.canvasX;
var canvasY59 = texinfo.canvasY;
var ofsLoc59 = gl.getAttribLocation(prog59, "aOfs");
var texture59 = gl.createTexture();
var texLoc59 = gl.getAttribLocation(prog59, "aTexcoord");
var sampler59 = gl.getUniformLocation(prog59,"uSampler");
handleLoadedTexture(texture59, document.getElementById("unnamed_chunk_2textureCanvas"));
var v=new Float32Array([
0, 1.372475, 1.372475, 0, 0, 0.5450981, 1, 0, -0.5, 0.5, 0.5,
0, 1.372475, 1.372475, 0, 0, 0.5450981, 1, 1, -0.5, 0.5, 0.5,
0, 1.372475, 1.372475, 0, 0, 0.5450981, 1, 1, 1.5, 0.5, 0.5,
0, 1.372475, 1.372475, 0, 0, 0.5450981, 1, 0, 1.5, 0.5, 0.5
]);
for (var i=0; i<1; i++) 
for (var j=0; j<4; j++) {
var ind = 11*(4*i + j) + 7;
v[ind+2] = 2*(v[ind]-v[ind+2])*texinfo.widths[i];
v[ind+3] = 2*(v[ind+1]-v[ind+3])*texinfo.textHeight;
v[ind] *= texinfo.widths[i]/texinfo.canvasX;
v[ind+1] = 1.0-(texinfo.offset + i*texinfo.skip 
- v[ind+1]*texinfo.textHeight)/texinfo.canvasY;
}
var f=new Uint16Array([
0, 1, 2, 0, 2, 3
]);
var buf59 = gl.createBuffer();
gl.bindBuffer(gl.ARRAY_BUFFER, buf59);
gl.bufferData(gl.ARRAY_BUFFER, v, gl.STATIC_DRAW);
var ibuf59 = gl.createBuffer();
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, ibuf59);
gl.bufferData(gl.ELEMENT_ARRAY_BUFFER, f, gl.STATIC_DRAW);
var mvMatLoc59 = gl.getUniformLocation(prog59,"mvMatrix");
var prMatLoc59 = gl.getUniformLocation(prog59,"prMatrix");
var textScaleLoc59 = gl.getUniformLocation(prog59,"textScale");
gl.enable(gl.DEPTH_TEST);
gl.depthFunc(gl.LEQUAL);
gl.clearDepth(1.0);
gl.clearColor(1,1,1,1);
var xOffs = 0, yOffs = 0, drag  = 0;
function multMV(M, v) {
return [M.m11*v[0] + M.m12*v[1] + M.m13*v[2] + M.m14*v[3],
M.m21*v[0] + M.m22*v[1] + M.m23*v[2] + M.m24*v[3],
M.m31*v[0] + M.m32*v[1] + M.m33*v[2] + M.m34*v[3],
M.m41*v[0] + M.m42*v[1] + M.m43*v[2] + M.m44*v[3]];
}
drawScene();
function drawScene(){
gl.depthMask(true);
gl.disable(gl.BLEND);
gl.clear(gl.COLOR_BUFFER_BIT | gl.DEPTH_BUFFER_BIT);
// ***** subscene 1 ****
gl.viewport(0, 0, 504, 504);
gl.scissor(0, 0, 504, 504);
gl.clearColor(1, 1, 1, 1);
gl.clear(gl.COLOR_BUFFER_BIT | gl.DEPTH_BUFFER_BIT);
var radius = 1.952887;
var distance = 6.859434;
var t = tan(fov[1]*PI/360);
var near = distance - radius;
var far = distance + radius;
var hlen = t*near;
var aspect = 1;
prMatrix.makeIdentity();
if (aspect > 1)
prMatrix.frustum(-hlen*aspect*zoom[1], hlen*aspect*zoom[1], 
-hlen*zoom[1], hlen*zoom[1], near, far);
else  
prMatrix.frustum(-hlen*zoom[1], hlen*zoom[1], 
-hlen*zoom[1]/aspect, hlen*zoom[1]/aspect, 
near, far);
mvMatrix.makeIdentity();
mvMatrix.translate( -0, -0, -0 );
mvMatrix.scale( 1, 1, 1 );   
mvMatrix.multRight( userMatrix[1] );
mvMatrix.translate(-0, -0, -6.859434);
normMatrix.makeIdentity();
normMatrix.scale( 1, 1, 1 );   
normMatrix.multRight( userMatrix[1] );
// ****** quads object 7 *******
gl.useProgram(prog7);
gl.bindBuffer(gl.ARRAY_BUFFER, buf7);
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, ibuf7);
gl.uniformMatrix4fv( prMatLoc7, false, new Float32Array(prMatrix.getAsArray()) );
gl.uniformMatrix4fv( mvMatLoc7, false, new Float32Array(mvMatrix.getAsArray()) );
gl.uniformMatrix4fv( normMatLoc7, false, new Float32Array(normMatrix.getAsArray()) );
gl.enableVertexAttribArray( posLoc );
gl.disableVertexAttribArray( colLoc );
gl.vertexAttrib4f( colLoc, 0.8039216, 0.5843138, 0.04705882, 1 );
gl.enableVertexAttribArray( normLoc7 );
gl.vertexAttribPointer(normLoc7, 3, gl.FLOAT, false, 24, 12);
gl.vertexAttribPointer(posLoc,  3, gl.FLOAT, false, 24,  0);
gl.drawElements(gl.TRIANGLES, 66, gl.UNSIGNED_SHORT, 0);
// ****** quads object 8 *******
gl.useProgram(prog8);
gl.bindBuffer(gl.ARRAY_BUFFER, buf8);
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, ibuf8);
gl.uniformMatrix4fv( prMatLoc8, false, new Float32Array(prMatrix.getAsArray()) );
gl.uniformMatrix4fv( mvMatLoc8, false, new Float32Array(mvMatrix.getAsArray()) );
gl.uniformMatrix4fv( normMatLoc8, false, new Float32Array(normMatrix.getAsArray()) );
gl.enableVertexAttribArray( posLoc );
gl.disableVertexAttribArray( colLoc );
gl.vertexAttrib4f( colLoc, 0.8039216, 0.5843138, 0.04705882, 1 );
gl.enableVertexAttribArray( normLoc8 );
gl.vertexAttribPointer(normLoc8, 3, gl.FLOAT, false, 24, 12);
gl.vertexAttribPointer(posLoc,  3, gl.FLOAT, false, 24,  0);
gl.drawElements(gl.TRIANGLES, 66, gl.UNSIGNED_SHORT, 0);
// ****** quads object 9 *******
gl.useProgram(prog9);
gl.bindBuffer(gl.ARRAY_BUFFER, buf9);
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, ibuf9);
gl.uniformMatrix4fv( prMatLoc9, false, new Float32Array(prMatrix.getAsArray()) );
gl.uniformMatrix4fv( mvMatLoc9, false, new Float32Array(mvMatrix.getAsArray()) );
gl.uniformMatrix4fv( normMatLoc9, false, new Float32Array(normMatrix.getAsArray()) );
gl.enableVertexAttribArray( posLoc );
gl.disableVertexAttribArray( colLoc );
gl.vertexAttrib4f( colLoc, 0.8039216, 0.5843138, 0.04705882, 1 );
gl.enableVertexAttribArray( normLoc9 );
gl.vertexAttribPointer(normLoc9, 3, gl.FLOAT, false, 24, 12);
gl.vertexAttribPointer(posLoc,  3, gl.FLOAT, false, 24,  0);
gl.drawElements(gl.TRIANGLES, 66, gl.UNSIGNED_SHORT, 0);
// ****** quads object 10 *******
gl.useProgram(prog10);
gl.bindBuffer(gl.ARRAY_BUFFER, buf10);
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, ibuf10);
gl.uniformMatrix4fv( prMatLoc10, false, new Float32Array(prMatrix.getAsArray()) );
gl.uniformMatrix4fv( mvMatLoc10, false, new Float32Array(mvMatrix.getAsArray()) );
gl.uniformMatrix4fv( normMatLoc10, false, new Float32Array(normMatrix.getAsArray()) );
gl.enableVertexAttribArray( posLoc );
gl.disableVertexAttribArray( colLoc );
gl.vertexAttrib4f( colLoc, 0.8039216, 0.5843138, 0.04705882, 1 );
gl.enableVertexAttribArray( normLoc10 );
gl.vertexAttribPointer(normLoc10, 3, gl.FLOAT, false, 24, 12);
gl.vertexAttribPointer(posLoc,  3, gl.FLOAT, false, 24,  0);
gl.drawElements(gl.TRIANGLES, 66, gl.UNSIGNED_SHORT, 0);
// ****** quads object 11 *******
gl.useProgram(prog11);
gl.bindBuffer(gl.ARRAY_BUFFER, buf11);
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, ibuf11);
gl.uniformMatrix4fv( prMatLoc11, false, new Float32Array(prMatrix.getAsArray()) );
gl.uniformMatrix4fv( mvMatLoc11, false, new Float32Array(mvMatrix.getAsArray()) );
gl.uniformMatrix4fv( normMatLoc11, false, new Float32Array(normMatrix.getAsArray()) );
gl.enableVertexAttribArray( posLoc );
gl.disableVertexAttribArray( colLoc );
gl.vertexAttrib4f( colLoc, 0.8039216, 0.5843138, 0.04705882, 1 );
gl.enableVertexAttribArray( normLoc11 );
gl.vertexAttribPointer(normLoc11, 3, gl.FLOAT, false, 24, 12);
gl.vertexAttribPointer(posLoc,  3, gl.FLOAT, false, 24,  0);
gl.drawElements(gl.TRIANGLES, 66, gl.UNSIGNED_SHORT, 0);
// ****** quads object 12 *******
gl.useProgram(prog12);
gl.bindBuffer(gl.ARRAY_BUFFER, buf12);
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, ibuf12);
gl.uniformMatrix4fv( prMatLoc12, false, new Float32Array(prMatrix.getAsArray()) );
gl.uniformMatrix4fv( mvMatLoc12, false, new Float32Array(mvMatrix.getAsArray()) );
gl.uniformMatrix4fv( normMatLoc12, false, new Float32Array(normMatrix.getAsArray()) );
gl.enableVertexAttribArray( posLoc );
gl.disableVertexAttribArray( colLoc );
gl.vertexAttrib4f( colLoc, 0.8039216, 0.5843138, 0.04705882, 1 );
gl.enableVertexAttribArray( normLoc12 );
gl.vertexAttribPointer(normLoc12, 3, gl.FLOAT, false, 24, 12);
gl.vertexAttribPointer(posLoc,  3, gl.FLOAT, false, 24,  0);
gl.drawElements(gl.TRIANGLES, 66, gl.UNSIGNED_SHORT, 0);
// ****** quads object 13 *******
gl.useProgram(prog13);
gl.bindBuffer(gl.ARRAY_BUFFER, buf13);
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, ibuf13);
gl.uniformMatrix4fv( prMatLoc13, false, new Float32Array(prMatrix.getAsArray()) );
gl.uniformMatrix4fv( mvMatLoc13, false, new Float32Array(mvMatrix.getAsArray()) );
gl.uniformMatrix4fv( normMatLoc13, false, new Float32Array(normMatrix.getAsArray()) );
gl.enableVertexAttribArray( posLoc );
gl.disableVertexAttribArray( colLoc );
gl.vertexAttrib4f( colLoc, 0.8039216, 0.5843138, 0.04705882, 1 );
gl.enableVertexAttribArray( normLoc13 );
gl.vertexAttribPointer(normLoc13, 3, gl.FLOAT, false, 24, 12);
gl.vertexAttribPointer(posLoc,  3, gl.FLOAT, false, 24,  0);
gl.drawElements(gl.TRIANGLES, 66, gl.UNSIGNED_SHORT, 0);
// ****** quads object 14 *******
gl.useProgram(prog14);
gl.bindBuffer(gl.ARRAY_BUFFER, buf14);
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, ibuf14);
gl.uniformMatrix4fv( prMatLoc14, false, new Float32Array(prMatrix.getAsArray()) );
gl.uniformMatrix4fv( mvMatLoc14, false, new Float32Array(mvMatrix.getAsArray()) );
gl.uniformMatrix4fv( normMatLoc14, false, new Float32Array(normMatrix.getAsArray()) );
gl.enableVertexAttribArray( posLoc );
gl.disableVertexAttribArray( colLoc );
gl.vertexAttrib4f( colLoc, 0.8039216, 0.5843138, 0.04705882, 1 );
gl.enableVertexAttribArray( normLoc14 );
gl.vertexAttribPointer(normLoc14, 3, gl.FLOAT, false, 24, 12);
gl.vertexAttribPointer(posLoc,  3, gl.FLOAT, false, 24,  0);
gl.drawElements(gl.TRIANGLES, 66, gl.UNSIGNED_SHORT, 0);
// ****** quads object 15 *******
gl.useProgram(prog15);
gl.bindBuffer(gl.ARRAY_BUFFER, buf15);
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, ibuf15);
gl.uniformMatrix4fv( prMatLoc15, false, new Float32Array(prMatrix.getAsArray()) );
gl.uniformMatrix4fv( mvMatLoc15, false, new Float32Array(mvMatrix.getAsArray()) );
gl.uniformMatrix4fv( normMatLoc15, false, new Float32Array(normMatrix.getAsArray()) );
gl.enableVertexAttribArray( posLoc );
gl.disableVertexAttribArray( colLoc );
gl.vertexAttrib4f( colLoc, 0.8039216, 0.5843138, 0.04705882, 1 );
gl.enableVertexAttribArray( normLoc15 );
gl.vertexAttribPointer(normLoc15, 3, gl.FLOAT, false, 24, 12);
gl.vertexAttribPointer(posLoc,  3, gl.FLOAT, false, 24,  0);
gl.drawElements(gl.TRIANGLES, 66, gl.UNSIGNED_SHORT, 0);
// ****** quads object 16 *******
gl.useProgram(prog16);
gl.bindBuffer(gl.ARRAY_BUFFER, buf16);
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, ibuf16);
gl.uniformMatrix4fv( prMatLoc16, false, new Float32Array(prMatrix.getAsArray()) );
gl.uniformMatrix4fv( mvMatLoc16, false, new Float32Array(mvMatrix.getAsArray()) );
gl.uniformMatrix4fv( normMatLoc16, false, new Float32Array(normMatrix.getAsArray()) );
gl.enableVertexAttribArray( posLoc );
gl.disableVertexAttribArray( colLoc );
gl.vertexAttrib4f( colLoc, 0.8039216, 0.5843138, 0.04705882, 1 );
gl.enableVertexAttribArray( normLoc16 );
gl.vertexAttribPointer(normLoc16, 3, gl.FLOAT, false, 24, 12);
gl.vertexAttribPointer(posLoc,  3, gl.FLOAT, false, 24,  0);
gl.drawElements(gl.TRIANGLES, 66, gl.UNSIGNED_SHORT, 0);
// ****** quads object 17 *******
gl.useProgram(prog17);
gl.bindBuffer(gl.ARRAY_BUFFER, buf17);
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, ibuf17);
gl.uniformMatrix4fv( prMatLoc17, false, new Float32Array(prMatrix.getAsArray()) );
gl.uniformMatrix4fv( mvMatLoc17, false, new Float32Array(mvMatrix.getAsArray()) );
gl.uniformMatrix4fv( normMatLoc17, false, new Float32Array(normMatrix.getAsArray()) );
gl.enableVertexAttribArray( posLoc );
gl.disableVertexAttribArray( colLoc );
gl.vertexAttrib4f( colLoc, 0.8039216, 0.5843138, 0.04705882, 1 );
gl.enableVertexAttribArray( normLoc17 );
gl.vertexAttribPointer(normLoc17, 3, gl.FLOAT, false, 24, 12);
gl.vertexAttribPointer(posLoc,  3, gl.FLOAT, false, 24,  0);
gl.drawElements(gl.TRIANGLES, 66, gl.UNSIGNED_SHORT, 0);
// ****** quads object 18 *******
gl.useProgram(prog18);
gl.bindBuffer(gl.ARRAY_BUFFER, buf18);
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, ibuf18);
gl.uniformMatrix4fv( prMatLoc18, false, new Float32Array(prMatrix.getAsArray()) );
gl.uniformMatrix4fv( mvMatLoc18, false, new Float32Array(mvMatrix.getAsArray()) );
gl.uniformMatrix4fv( normMatLoc18, false, new Float32Array(normMatrix.getAsArray()) );
gl.enableVertexAttribArray( posLoc );
gl.disableVertexAttribArray( colLoc );
gl.vertexAttrib4f( colLoc, 0.8039216, 0.5843138, 0.04705882, 1 );
gl.enableVertexAttribArray( normLoc18 );
gl.vertexAttribPointer(normLoc18, 3, gl.FLOAT, false, 24, 12);
gl.vertexAttribPointer(posLoc,  3, gl.FLOAT, false, 24,  0);
gl.drawElements(gl.TRIANGLES, 66, gl.UNSIGNED_SHORT, 0);
// ****** quads object 19 *******
gl.useProgram(prog19);
gl.bindBuffer(gl.ARRAY_BUFFER, buf19);
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, ibuf19);
gl.uniformMatrix4fv( prMatLoc19, false, new Float32Array(prMatrix.getAsArray()) );
gl.uniformMatrix4fv( mvMatLoc19, false, new Float32Array(mvMatrix.getAsArray()) );
gl.uniformMatrix4fv( normMatLoc19, false, new Float32Array(normMatrix.getAsArray()) );
gl.enableVertexAttribArray( posLoc );
gl.disableVertexAttribArray( colLoc );
gl.vertexAttrib4f( colLoc, 0.8039216, 0.5843138, 0.04705882, 1 );
gl.enableVertexAttribArray( normLoc19 );
gl.vertexAttribPointer(normLoc19, 3, gl.FLOAT, false, 24, 12);
gl.vertexAttribPointer(posLoc,  3, gl.FLOAT, false, 24,  0);
gl.drawElements(gl.TRIANGLES, 66, gl.UNSIGNED_SHORT, 0);
// ****** quads object 20 *******
gl.useProgram(prog20);
gl.bindBuffer(gl.ARRAY_BUFFER, buf20);
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, ibuf20);
gl.uniformMatrix4fv( prMatLoc20, false, new Float32Array(prMatrix.getAsArray()) );
gl.uniformMatrix4fv( mvMatLoc20, false, new Float32Array(mvMatrix.getAsArray()) );
gl.uniformMatrix4fv( normMatLoc20, false, new Float32Array(normMatrix.getAsArray()) );
gl.enableVertexAttribArray( posLoc );
gl.disableVertexAttribArray( colLoc );
gl.vertexAttrib4f( colLoc, 0.8039216, 0.5843138, 0.04705882, 1 );
gl.enableVertexAttribArray( normLoc20 );
gl.vertexAttribPointer(normLoc20, 3, gl.FLOAT, false, 24, 12);
gl.vertexAttribPointer(posLoc,  3, gl.FLOAT, false, 24,  0);
gl.drawElements(gl.TRIANGLES, 66, gl.UNSIGNED_SHORT, 0);
// ****** quads object 21 *******
gl.useProgram(prog21);
gl.bindBuffer(gl.ARRAY_BUFFER, buf21);
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, ibuf21);
gl.uniformMatrix4fv( prMatLoc21, false, new Float32Array(prMatrix.getAsArray()) );
gl.uniformMatrix4fv( mvMatLoc21, false, new Float32Array(mvMatrix.getAsArray()) );
gl.uniformMatrix4fv( normMatLoc21, false, new Float32Array(normMatrix.getAsArray()) );
gl.enableVertexAttribArray( posLoc );
gl.disableVertexAttribArray( colLoc );
gl.vertexAttrib4f( colLoc, 0.8039216, 0.5843138, 0.04705882, 1 );
gl.enableVertexAttribArray( normLoc21 );
gl.vertexAttribPointer(normLoc21, 3, gl.FLOAT, false, 24, 12);
gl.vertexAttribPointer(posLoc,  3, gl.FLOAT, false, 24,  0);
gl.drawElements(gl.TRIANGLES, 66, gl.UNSIGNED_SHORT, 0);
// ****** quads object 22 *******
gl.useProgram(prog22);
gl.bindBuffer(gl.ARRAY_BUFFER, buf22);
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, ibuf22);
gl.uniformMatrix4fv( prMatLoc22, false, new Float32Array(prMatrix.getAsArray()) );
gl.uniformMatrix4fv( mvMatLoc22, false, new Float32Array(mvMatrix.getAsArray()) );
gl.uniformMatrix4fv( normMatLoc22, false, new Float32Array(normMatrix.getAsArray()) );
gl.enableVertexAttribArray( posLoc );
gl.disableVertexAttribArray( colLoc );
gl.vertexAttrib4f( colLoc, 0.8039216, 0.5843138, 0.04705882, 1 );
gl.enableVertexAttribArray( normLoc22 );
gl.vertexAttribPointer(normLoc22, 3, gl.FLOAT, false, 24, 12);
gl.vertexAttribPointer(posLoc,  3, gl.FLOAT, false, 24,  0);
gl.drawElements(gl.TRIANGLES, 66, gl.UNSIGNED_SHORT, 0);
// ****** quads object 23 *******
gl.useProgram(prog23);
gl.bindBuffer(gl.ARRAY_BUFFER, buf23);
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, ibuf23);
gl.uniformMatrix4fv( prMatLoc23, false, new Float32Array(prMatrix.getAsArray()) );
gl.uniformMatrix4fv( mvMatLoc23, false, new Float32Array(mvMatrix.getAsArray()) );
gl.uniformMatrix4fv( normMatLoc23, false, new Float32Array(normMatrix.getAsArray()) );
gl.enableVertexAttribArray( posLoc );
gl.disableVertexAttribArray( colLoc );
gl.vertexAttrib4f( colLoc, 0.8039216, 0.5843138, 0.04705882, 1 );
gl.enableVertexAttribArray( normLoc23 );
gl.vertexAttribPointer(normLoc23, 3, gl.FLOAT, false, 24, 12);
gl.vertexAttribPointer(posLoc,  3, gl.FLOAT, false, 24,  0);
gl.drawElements(gl.TRIANGLES, 66, gl.UNSIGNED_SHORT, 0);
// ****** quads object 24 *******
gl.useProgram(prog24);
gl.bindBuffer(gl.ARRAY_BUFFER, buf24);
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, ibuf24);
gl.uniformMatrix4fv( prMatLoc24, false, new Float32Array(prMatrix.getAsArray()) );
gl.uniformMatrix4fv( mvMatLoc24, false, new Float32Array(mvMatrix.getAsArray()) );
gl.uniformMatrix4fv( normMatLoc24, false, new Float32Array(normMatrix.getAsArray()) );
gl.enableVertexAttribArray( posLoc );
gl.disableVertexAttribArray( colLoc );
gl.vertexAttrib4f( colLoc, 0.8039216, 0.5843138, 0.04705882, 1 );
gl.enableVertexAttribArray( normLoc24 );
gl.vertexAttribPointer(normLoc24, 3, gl.FLOAT, false, 24, 12);
gl.vertexAttribPointer(posLoc,  3, gl.FLOAT, false, 24,  0);
gl.drawElements(gl.TRIANGLES, 66, gl.UNSIGNED_SHORT, 0);
// ****** quads object 25 *******
gl.useProgram(prog25);
gl.bindBuffer(gl.ARRAY_BUFFER, buf25);
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, ibuf25);
gl.uniformMatrix4fv( prMatLoc25, false, new Float32Array(prMatrix.getAsArray()) );
gl.uniformMatrix4fv( mvMatLoc25, false, new Float32Array(mvMatrix.getAsArray()) );
gl.uniformMatrix4fv( normMatLoc25, false, new Float32Array(normMatrix.getAsArray()) );
gl.enableVertexAttribArray( posLoc );
gl.disableVertexAttribArray( colLoc );
gl.vertexAttrib4f( colLoc, 0.8039216, 0.5843138, 0.04705882, 1 );
gl.enableVertexAttribArray( normLoc25 );
gl.vertexAttribPointer(normLoc25, 3, gl.FLOAT, false, 24, 12);
gl.vertexAttribPointer(posLoc,  3, gl.FLOAT, false, 24,  0);
gl.drawElements(gl.TRIANGLES, 66, gl.UNSIGNED_SHORT, 0);
// ****** quads object 26 *******
gl.useProgram(prog26);
gl.bindBuffer(gl.ARRAY_BUFFER, buf26);
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, ibuf26);
gl.uniformMatrix4fv( prMatLoc26, false, new Float32Array(prMatrix.getAsArray()) );
gl.uniformMatrix4fv( mvMatLoc26, false, new Float32Array(mvMatrix.getAsArray()) );
gl.uniformMatrix4fv( normMatLoc26, false, new Float32Array(normMatrix.getAsArray()) );
gl.enableVertexAttribArray( posLoc );
gl.disableVertexAttribArray( colLoc );
gl.vertexAttrib4f( colLoc, 0.8039216, 0.5843138, 0.04705882, 1 );
gl.enableVertexAttribArray( normLoc26 );
gl.vertexAttribPointer(normLoc26, 3, gl.FLOAT, false, 24, 12);
gl.vertexAttribPointer(posLoc,  3, gl.FLOAT, false, 24,  0);
gl.drawElements(gl.TRIANGLES, 66, gl.UNSIGNED_SHORT, 0);
// ****** quads object 27 *******
gl.useProgram(prog27);
gl.bindBuffer(gl.ARRAY_BUFFER, buf27);
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, ibuf27);
gl.uniformMatrix4fv( prMatLoc27, false, new Float32Array(prMatrix.getAsArray()) );
gl.uniformMatrix4fv( mvMatLoc27, false, new Float32Array(mvMatrix.getAsArray()) );
gl.uniformMatrix4fv( normMatLoc27, false, new Float32Array(normMatrix.getAsArray()) );
gl.enableVertexAttribArray( posLoc );
gl.disableVertexAttribArray( colLoc );
gl.vertexAttrib4f( colLoc, 0.8039216, 0.5843138, 0.04705882, 1 );
gl.enableVertexAttribArray( normLoc27 );
gl.vertexAttribPointer(normLoc27, 3, gl.FLOAT, false, 24, 12);
gl.vertexAttribPointer(posLoc,  3, gl.FLOAT, false, 24,  0);
gl.drawElements(gl.TRIANGLES, 66, gl.UNSIGNED_SHORT, 0);
// ****** quads object 28 *******
gl.useProgram(prog28);
gl.bindBuffer(gl.ARRAY_BUFFER, buf28);
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, ibuf28);
gl.uniformMatrix4fv( prMatLoc28, false, new Float32Array(prMatrix.getAsArray()) );
gl.uniformMatrix4fv( mvMatLoc28, false, new Float32Array(mvMatrix.getAsArray()) );
gl.uniformMatrix4fv( normMatLoc28, false, new Float32Array(normMatrix.getAsArray()) );
gl.enableVertexAttribArray( posLoc );
gl.disableVertexAttribArray( colLoc );
gl.vertexAttrib4f( colLoc, 0.8039216, 0.5843138, 0.04705882, 1 );
gl.enableVertexAttribArray( normLoc28 );
gl.vertexAttribPointer(normLoc28, 3, gl.FLOAT, false, 24, 12);
gl.vertexAttribPointer(posLoc,  3, gl.FLOAT, false, 24,  0);
gl.drawElements(gl.TRIANGLES, 66, gl.UNSIGNED_SHORT, 0);
// ****** quads object 29 *******
gl.useProgram(prog29);
gl.bindBuffer(gl.ARRAY_BUFFER, buf29);
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, ibuf29);
gl.uniformMatrix4fv( prMatLoc29, false, new Float32Array(prMatrix.getAsArray()) );
gl.uniformMatrix4fv( mvMatLoc29, false, new Float32Array(mvMatrix.getAsArray()) );
gl.uniformMatrix4fv( normMatLoc29, false, new Float32Array(normMatrix.getAsArray()) );
gl.enableVertexAttribArray( posLoc );
gl.disableVertexAttribArray( colLoc );
gl.vertexAttrib4f( colLoc, 0.8039216, 0.5843138, 0.04705882, 1 );
gl.enableVertexAttribArray( normLoc29 );
gl.vertexAttribPointer(normLoc29, 3, gl.FLOAT, false, 24, 12);
gl.vertexAttribPointer(posLoc,  3, gl.FLOAT, false, 24,  0);
gl.drawElements(gl.TRIANGLES, 126, gl.UNSIGNED_SHORT, 0);
// ****** quads object 30 *******
gl.useProgram(prog30);
gl.bindBuffer(gl.ARRAY_BUFFER, buf30);
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, ibuf30);
gl.uniformMatrix4fv( prMatLoc30, false, new Float32Array(prMatrix.getAsArray()) );
gl.uniformMatrix4fv( mvMatLoc30, false, new Float32Array(mvMatrix.getAsArray()) );
gl.uniformMatrix4fv( normMatLoc30, false, new Float32Array(normMatrix.getAsArray()) );
gl.enableVertexAttribArray( posLoc );
gl.disableVertexAttribArray( colLoc );
gl.vertexAttrib4f( colLoc, 0.8039216, 0.5843138, 0.04705882, 1 );
gl.enableVertexAttribArray( normLoc30 );
gl.vertexAttribPointer(normLoc30, 3, gl.FLOAT, false, 24, 12);
gl.vertexAttribPointer(posLoc,  3, gl.FLOAT, false, 24,  0);
gl.drawElements(gl.TRIANGLES, 66, gl.UNSIGNED_SHORT, 0);
// ****** quads object 31 *******
gl.useProgram(prog31);
gl.bindBuffer(gl.ARRAY_BUFFER, buf31);
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, ibuf31);
gl.uniformMatrix4fv( prMatLoc31, false, new Float32Array(prMatrix.getAsArray()) );
gl.uniformMatrix4fv( mvMatLoc31, false, new Float32Array(mvMatrix.getAsArray()) );
gl.uniformMatrix4fv( normMatLoc31, false, new Float32Array(normMatrix.getAsArray()) );
gl.enableVertexAttribArray( posLoc );
gl.disableVertexAttribArray( colLoc );
gl.vertexAttrib4f( colLoc, 0.8039216, 0.5843138, 0.04705882, 1 );
gl.enableVertexAttribArray( normLoc31 );
gl.vertexAttribPointer(normLoc31, 3, gl.FLOAT, false, 24, 12);
gl.vertexAttribPointer(posLoc,  3, gl.FLOAT, false, 24,  0);
gl.drawElements(gl.TRIANGLES, 66, gl.UNSIGNED_SHORT, 0);
// ****** quads object 32 *******
gl.useProgram(prog32);
gl.bindBuffer(gl.ARRAY_BUFFER, buf32);
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, ibuf32);
gl.uniformMatrix4fv( prMatLoc32, false, new Float32Array(prMatrix.getAsArray()) );
gl.uniformMatrix4fv( mvMatLoc32, false, new Float32Array(mvMatrix.getAsArray()) );
gl.uniformMatrix4fv( normMatLoc32, false, new Float32Array(normMatrix.getAsArray()) );
gl.enableVertexAttribArray( posLoc );
gl.disableVertexAttribArray( colLoc );
gl.vertexAttrib4f( colLoc, 0.8039216, 0.5843138, 0.04705882, 1 );
gl.enableVertexAttribArray( normLoc32 );
gl.vertexAttribPointer(normLoc32, 3, gl.FLOAT, false, 24, 12);
gl.vertexAttribPointer(posLoc,  3, gl.FLOAT, false, 24,  0);
gl.drawElements(gl.TRIANGLES, 66, gl.UNSIGNED_SHORT, 0);
// ****** quads object 33 *******
gl.useProgram(prog33);
gl.bindBuffer(gl.ARRAY_BUFFER, buf33);
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, ibuf33);
gl.uniformMatrix4fv( prMatLoc33, false, new Float32Array(prMatrix.getAsArray()) );
gl.uniformMatrix4fv( mvMatLoc33, false, new Float32Array(mvMatrix.getAsArray()) );
gl.uniformMatrix4fv( normMatLoc33, false, new Float32Array(normMatrix.getAsArray()) );
gl.enableVertexAttribArray( posLoc );
gl.disableVertexAttribArray( colLoc );
gl.vertexAttrib4f( colLoc, 0.8039216, 0.5843138, 0.04705882, 1 );
gl.enableVertexAttribArray( normLoc33 );
gl.vertexAttribPointer(normLoc33, 3, gl.FLOAT, false, 24, 12);
gl.vertexAttribPointer(posLoc,  3, gl.FLOAT, false, 24,  0);
gl.drawElements(gl.TRIANGLES, 66, gl.UNSIGNED_SHORT, 0);
// ****** quads object 34 *******
gl.useProgram(prog34);
gl.bindBuffer(gl.ARRAY_BUFFER, buf34);
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, ibuf34);
gl.uniformMatrix4fv( prMatLoc34, false, new Float32Array(prMatrix.getAsArray()) );
gl.uniformMatrix4fv( mvMatLoc34, false, new Float32Array(mvMatrix.getAsArray()) );
gl.uniformMatrix4fv( normMatLoc34, false, new Float32Array(normMatrix.getAsArray()) );
gl.enableVertexAttribArray( posLoc );
gl.disableVertexAttribArray( colLoc );
gl.vertexAttrib4f( colLoc, 0.8039216, 0.5843138, 0.04705882, 1 );
gl.enableVertexAttribArray( normLoc34 );
gl.vertexAttribPointer(normLoc34, 3, gl.FLOAT, false, 24, 12);
gl.vertexAttribPointer(posLoc,  3, gl.FLOAT, false, 24,  0);
gl.drawElements(gl.TRIANGLES, 66, gl.UNSIGNED_SHORT, 0);
// ****** quads object 35 *******
gl.useProgram(prog35);
gl.bindBuffer(gl.ARRAY_BUFFER, buf35);
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, ibuf35);
gl.uniformMatrix4fv( prMatLoc35, false, new Float32Array(prMatrix.getAsArray()) );
gl.uniformMatrix4fv( mvMatLoc35, false, new Float32Array(mvMatrix.getAsArray()) );
gl.uniformMatrix4fv( normMatLoc35, false, new Float32Array(normMatrix.getAsArray()) );
gl.enableVertexAttribArray( posLoc );
gl.disableVertexAttribArray( colLoc );
gl.vertexAttrib4f( colLoc, 0.8039216, 0.5843138, 0.04705882, 1 );
gl.enableVertexAttribArray( normLoc35 );
gl.vertexAttribPointer(normLoc35, 3, gl.FLOAT, false, 24, 12);
gl.vertexAttribPointer(posLoc,  3, gl.FLOAT, false, 24,  0);
gl.drawElements(gl.TRIANGLES, 66, gl.UNSIGNED_SHORT, 0);
// ****** quads object 36 *******
gl.useProgram(prog36);
gl.bindBuffer(gl.ARRAY_BUFFER, buf36);
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, ibuf36);
gl.uniformMatrix4fv( prMatLoc36, false, new Float32Array(prMatrix.getAsArray()) );
gl.uniformMatrix4fv( mvMatLoc36, false, new Float32Array(mvMatrix.getAsArray()) );
gl.uniformMatrix4fv( normMatLoc36, false, new Float32Array(normMatrix.getAsArray()) );
gl.enableVertexAttribArray( posLoc );
gl.disableVertexAttribArray( colLoc );
gl.vertexAttrib4f( colLoc, 0.8039216, 0.5843138, 0.04705882, 1 );
gl.enableVertexAttribArray( normLoc36 );
gl.vertexAttribPointer(normLoc36, 3, gl.FLOAT, false, 24, 12);
gl.vertexAttribPointer(posLoc,  3, gl.FLOAT, false, 24,  0);
gl.drawElements(gl.TRIANGLES, 66, gl.UNSIGNED_SHORT, 0);
// ****** quads object 37 *******
gl.useProgram(prog37);
gl.bindBuffer(gl.ARRAY_BUFFER, buf37);
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, ibuf37);
gl.uniformMatrix4fv( prMatLoc37, false, new Float32Array(prMatrix.getAsArray()) );
gl.uniformMatrix4fv( mvMatLoc37, false, new Float32Array(mvMatrix.getAsArray()) );
gl.uniformMatrix4fv( normMatLoc37, false, new Float32Array(normMatrix.getAsArray()) );
gl.enableVertexAttribArray( posLoc );
gl.disableVertexAttribArray( colLoc );
gl.vertexAttrib4f( colLoc, 0.8039216, 0.5843138, 0.04705882, 1 );
gl.enableVertexAttribArray( normLoc37 );
gl.vertexAttribPointer(normLoc37, 3, gl.FLOAT, false, 24, 12);
gl.vertexAttribPointer(posLoc,  3, gl.FLOAT, false, 24,  0);
gl.drawElements(gl.TRIANGLES, 66, gl.UNSIGNED_SHORT, 0);
// ****** quads object 38 *******
gl.useProgram(prog38);
gl.bindBuffer(gl.ARRAY_BUFFER, buf38);
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, ibuf38);
gl.uniformMatrix4fv( prMatLoc38, false, new Float32Array(prMatrix.getAsArray()) );
gl.uniformMatrix4fv( mvMatLoc38, false, new Float32Array(mvMatrix.getAsArray()) );
gl.uniformMatrix4fv( normMatLoc38, false, new Float32Array(normMatrix.getAsArray()) );
gl.enableVertexAttribArray( posLoc );
gl.disableVertexAttribArray( colLoc );
gl.vertexAttrib4f( colLoc, 0.8039216, 0.5843138, 0.04705882, 1 );
gl.enableVertexAttribArray( normLoc38 );
gl.vertexAttribPointer(normLoc38, 3, gl.FLOAT, false, 24, 12);
gl.vertexAttribPointer(posLoc,  3, gl.FLOAT, false, 24,  0);
gl.drawElements(gl.TRIANGLES, 66, gl.UNSIGNED_SHORT, 0);
// ****** quads object 39 *******
gl.useProgram(prog39);
gl.bindBuffer(gl.ARRAY_BUFFER, buf39);
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, ibuf39);
gl.uniformMatrix4fv( prMatLoc39, false, new Float32Array(prMatrix.getAsArray()) );
gl.uniformMatrix4fv( mvMatLoc39, false, new Float32Array(mvMatrix.getAsArray()) );
gl.uniformMatrix4fv( normMatLoc39, false, new Float32Array(normMatrix.getAsArray()) );
gl.enableVertexAttribArray( posLoc );
gl.disableVertexAttribArray( colLoc );
gl.vertexAttrib4f( colLoc, 0.8039216, 0.5843138, 0.04705882, 1 );
gl.enableVertexAttribArray( normLoc39 );
gl.vertexAttribPointer(normLoc39, 3, gl.FLOAT, false, 24, 12);
gl.vertexAttribPointer(posLoc,  3, gl.FLOAT, false, 24,  0);
gl.drawElements(gl.TRIANGLES, 66, gl.UNSIGNED_SHORT, 0);
// ****** quads object 40 *******
gl.useProgram(prog40);
gl.bindBuffer(gl.ARRAY_BUFFER, buf40);
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, ibuf40);
gl.uniformMatrix4fv( prMatLoc40, false, new Float32Array(prMatrix.getAsArray()) );
gl.uniformMatrix4fv( mvMatLoc40, false, new Float32Array(mvMatrix.getAsArray()) );
gl.uniformMatrix4fv( normMatLoc40, false, new Float32Array(normMatrix.getAsArray()) );
gl.enableVertexAttribArray( posLoc );
gl.disableVertexAttribArray( colLoc );
gl.vertexAttrib4f( colLoc, 0.8039216, 0.5843138, 0.04705882, 1 );
gl.enableVertexAttribArray( normLoc40 );
gl.vertexAttribPointer(normLoc40, 3, gl.FLOAT, false, 24, 12);
gl.vertexAttribPointer(posLoc,  3, gl.FLOAT, false, 24,  0);
gl.drawElements(gl.TRIANGLES, 66, gl.UNSIGNED_SHORT, 0);
// ****** quads object 41 *******
gl.useProgram(prog41);
gl.bindBuffer(gl.ARRAY_BUFFER, buf41);
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, ibuf41);
gl.uniformMatrix4fv( prMatLoc41, false, new Float32Array(prMatrix.getAsArray()) );
gl.uniformMatrix4fv( mvMatLoc41, false, new Float32Array(mvMatrix.getAsArray()) );
gl.uniformMatrix4fv( normMatLoc41, false, new Float32Array(normMatrix.getAsArray()) );
gl.enableVertexAttribArray( posLoc );
gl.disableVertexAttribArray( colLoc );
gl.vertexAttrib4f( colLoc, 0.8039216, 0.5843138, 0.04705882, 1 );
gl.enableVertexAttribArray( normLoc41 );
gl.vertexAttribPointer(normLoc41, 3, gl.FLOAT, false, 24, 12);
gl.vertexAttribPointer(posLoc,  3, gl.FLOAT, false, 24,  0);
gl.drawElements(gl.TRIANGLES, 66, gl.UNSIGNED_SHORT, 0);
// ****** quads object 42 *******
gl.useProgram(prog42);
gl.bindBuffer(gl.ARRAY_BUFFER, buf42);
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, ibuf42);
gl.uniformMatrix4fv( prMatLoc42, false, new Float32Array(prMatrix.getAsArray()) );
gl.uniformMatrix4fv( mvMatLoc42, false, new Float32Array(mvMatrix.getAsArray()) );
gl.uniformMatrix4fv( normMatLoc42, false, new Float32Array(normMatrix.getAsArray()) );
gl.enableVertexAttribArray( posLoc );
gl.disableVertexAttribArray( colLoc );
gl.vertexAttrib4f( colLoc, 0.8039216, 0.5843138, 0.04705882, 1 );
gl.enableVertexAttribArray( normLoc42 );
gl.vertexAttribPointer(normLoc42, 3, gl.FLOAT, false, 24, 12);
gl.vertexAttribPointer(posLoc,  3, gl.FLOAT, false, 24,  0);
gl.drawElements(gl.TRIANGLES, 66, gl.UNSIGNED_SHORT, 0);
// ****** quads object 43 *******
gl.useProgram(prog43);
gl.bindBuffer(gl.ARRAY_BUFFER, buf43);
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, ibuf43);
gl.uniformMatrix4fv( prMatLoc43, false, new Float32Array(prMatrix.getAsArray()) );
gl.uniformMatrix4fv( mvMatLoc43, false, new Float32Array(mvMatrix.getAsArray()) );
gl.uniformMatrix4fv( normMatLoc43, false, new Float32Array(normMatrix.getAsArray()) );
gl.enableVertexAttribArray( posLoc );
gl.disableVertexAttribArray( colLoc );
gl.vertexAttrib4f( colLoc, 0.8039216, 0.5843138, 0.04705882, 1 );
gl.enableVertexAttribArray( normLoc43 );
gl.vertexAttribPointer(normLoc43, 3, gl.FLOAT, false, 24, 12);
gl.vertexAttribPointer(posLoc,  3, gl.FLOAT, false, 24,  0);
gl.drawElements(gl.TRIANGLES, 66, gl.UNSIGNED_SHORT, 0);
// ****** quads object 44 *******
gl.useProgram(prog44);
gl.bindBuffer(gl.ARRAY_BUFFER, buf44);
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, ibuf44);
gl.uniformMatrix4fv( prMatLoc44, false, new Float32Array(prMatrix.getAsArray()) );
gl.uniformMatrix4fv( mvMatLoc44, false, new Float32Array(mvMatrix.getAsArray()) );
gl.uniformMatrix4fv( normMatLoc44, false, new Float32Array(normMatrix.getAsArray()) );
gl.enableVertexAttribArray( posLoc );
gl.disableVertexAttribArray( colLoc );
gl.vertexAttrib4f( colLoc, 0.8039216, 0.5843138, 0.04705882, 1 );
gl.enableVertexAttribArray( normLoc44 );
gl.vertexAttribPointer(normLoc44, 3, gl.FLOAT, false, 24, 12);
gl.vertexAttribPointer(posLoc,  3, gl.FLOAT, false, 24,  0);
gl.drawElements(gl.TRIANGLES, 66, gl.UNSIGNED_SHORT, 0);
// ****** quads object 45 *******
gl.useProgram(prog45);
gl.bindBuffer(gl.ARRAY_BUFFER, buf45);
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, ibuf45);
gl.uniformMatrix4fv( prMatLoc45, false, new Float32Array(prMatrix.getAsArray()) );
gl.uniformMatrix4fv( mvMatLoc45, false, new Float32Array(mvMatrix.getAsArray()) );
gl.uniformMatrix4fv( normMatLoc45, false, new Float32Array(normMatrix.getAsArray()) );
gl.enableVertexAttribArray( posLoc );
gl.disableVertexAttribArray( colLoc );
gl.vertexAttrib4f( colLoc, 0.8039216, 0.5843138, 0.04705882, 1 );
gl.enableVertexAttribArray( normLoc45 );
gl.vertexAttribPointer(normLoc45, 3, gl.FLOAT, false, 24, 12);
gl.vertexAttribPointer(posLoc,  3, gl.FLOAT, false, 24,  0);
gl.drawElements(gl.TRIANGLES, 66, gl.UNSIGNED_SHORT, 0);
// ****** quads object 46 *******
gl.useProgram(prog46);
gl.bindBuffer(gl.ARRAY_BUFFER, buf46);
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, ibuf46);
gl.uniformMatrix4fv( prMatLoc46, false, new Float32Array(prMatrix.getAsArray()) );
gl.uniformMatrix4fv( mvMatLoc46, false, new Float32Array(mvMatrix.getAsArray()) );
gl.uniformMatrix4fv( normMatLoc46, false, new Float32Array(normMatrix.getAsArray()) );
gl.enableVertexAttribArray( posLoc );
gl.disableVertexAttribArray( colLoc );
gl.vertexAttrib4f( colLoc, 0.8039216, 0.5843138, 0.04705882, 1 );
gl.enableVertexAttribArray( normLoc46 );
gl.vertexAttribPointer(normLoc46, 3, gl.FLOAT, false, 24, 12);
gl.vertexAttribPointer(posLoc,  3, gl.FLOAT, false, 24,  0);
gl.drawElements(gl.TRIANGLES, 66, gl.UNSIGNED_SHORT, 0);
// ****** quads object 47 *******
gl.useProgram(prog47);
gl.bindBuffer(gl.ARRAY_BUFFER, buf47);
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, ibuf47);
gl.uniformMatrix4fv( prMatLoc47, false, new Float32Array(prMatrix.getAsArray()) );
gl.uniformMatrix4fv( mvMatLoc47, false, new Float32Array(mvMatrix.getAsArray()) );
gl.uniformMatrix4fv( normMatLoc47, false, new Float32Array(normMatrix.getAsArray()) );
gl.enableVertexAttribArray( posLoc );
gl.disableVertexAttribArray( colLoc );
gl.vertexAttrib4f( colLoc, 0.8039216, 0.5843138, 0.04705882, 1 );
gl.enableVertexAttribArray( normLoc47 );
gl.vertexAttribPointer(normLoc47, 3, gl.FLOAT, false, 24, 12);
gl.vertexAttribPointer(posLoc,  3, gl.FLOAT, false, 24,  0);
gl.drawElements(gl.TRIANGLES, 66, gl.UNSIGNED_SHORT, 0);
// ****** quads object 48 *******
gl.useProgram(prog48);
gl.bindBuffer(gl.ARRAY_BUFFER, buf48);
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, ibuf48);
gl.uniformMatrix4fv( prMatLoc48, false, new Float32Array(prMatrix.getAsArray()) );
gl.uniformMatrix4fv( mvMatLoc48, false, new Float32Array(mvMatrix.getAsArray()) );
gl.uniformMatrix4fv( normMatLoc48, false, new Float32Array(normMatrix.getAsArray()) );
gl.enableVertexAttribArray( posLoc );
gl.disableVertexAttribArray( colLoc );
gl.vertexAttrib4f( colLoc, 0.8039216, 0.5843138, 0.04705882, 1 );
gl.enableVertexAttribArray( normLoc48 );
gl.vertexAttribPointer(normLoc48, 3, gl.FLOAT, false, 24, 12);
gl.vertexAttribPointer(posLoc,  3, gl.FLOAT, false, 24,  0);
gl.drawElements(gl.TRIANGLES, 66, gl.UNSIGNED_SHORT, 0);
// ****** quads object 49 *******
gl.useProgram(prog49);
gl.bindBuffer(gl.ARRAY_BUFFER, buf49);
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, ibuf49);
gl.uniformMatrix4fv( prMatLoc49, false, new Float32Array(prMatrix.getAsArray()) );
gl.uniformMatrix4fv( mvMatLoc49, false, new Float32Array(mvMatrix.getAsArray()) );
gl.uniformMatrix4fv( normMatLoc49, false, new Float32Array(normMatrix.getAsArray()) );
gl.enableVertexAttribArray( posLoc );
gl.disableVertexAttribArray( colLoc );
gl.vertexAttrib4f( colLoc, 0.8039216, 0.5843138, 0.04705882, 1 );
gl.enableVertexAttribArray( normLoc49 );
gl.vertexAttribPointer(normLoc49, 3, gl.FLOAT, false, 24, 12);
gl.vertexAttribPointer(posLoc,  3, gl.FLOAT, false, 24,  0);
gl.drawElements(gl.TRIANGLES, 66, gl.UNSIGNED_SHORT, 0);
// ****** quads object 50 *******
gl.useProgram(prog50);
gl.bindBuffer(gl.ARRAY_BUFFER, buf50);
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, ibuf50);
gl.uniformMatrix4fv( prMatLoc50, false, new Float32Array(prMatrix.getAsArray()) );
gl.uniformMatrix4fv( mvMatLoc50, false, new Float32Array(mvMatrix.getAsArray()) );
gl.uniformMatrix4fv( normMatLoc50, false, new Float32Array(normMatrix.getAsArray()) );
gl.enableVertexAttribArray( posLoc );
gl.disableVertexAttribArray( colLoc );
gl.vertexAttrib4f( colLoc, 0.8039216, 0.5843138, 0.04705882, 1 );
gl.enableVertexAttribArray( normLoc50 );
gl.vertexAttribPointer(normLoc50, 3, gl.FLOAT, false, 24, 12);
gl.vertexAttribPointer(posLoc,  3, gl.FLOAT, false, 24,  0);
gl.drawElements(gl.TRIANGLES, 66, gl.UNSIGNED_SHORT, 0);
// ****** quads object 51 *******
gl.useProgram(prog51);
gl.bindBuffer(gl.ARRAY_BUFFER, buf51);
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, ibuf51);
gl.uniformMatrix4fv( prMatLoc51, false, new Float32Array(prMatrix.getAsArray()) );
gl.uniformMatrix4fv( mvMatLoc51, false, new Float32Array(mvMatrix.getAsArray()) );
gl.uniformMatrix4fv( normMatLoc51, false, new Float32Array(normMatrix.getAsArray()) );
gl.enableVertexAttribArray( posLoc );
gl.disableVertexAttribArray( colLoc );
gl.vertexAttrib4f( colLoc, 0.8039216, 0.5843138, 0.04705882, 1 );
gl.enableVertexAttribArray( normLoc51 );
gl.vertexAttribPointer(normLoc51, 3, gl.FLOAT, false, 24, 12);
gl.vertexAttribPointer(posLoc,  3, gl.FLOAT, false, 24,  0);
gl.drawElements(gl.TRIANGLES, 66, gl.UNSIGNED_SHORT, 0);
// ****** quads object 52 *******
gl.useProgram(prog52);
gl.bindBuffer(gl.ARRAY_BUFFER, buf52);
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, ibuf52);
gl.uniformMatrix4fv( prMatLoc52, false, new Float32Array(prMatrix.getAsArray()) );
gl.uniformMatrix4fv( mvMatLoc52, false, new Float32Array(mvMatrix.getAsArray()) );
gl.uniformMatrix4fv( normMatLoc52, false, new Float32Array(normMatrix.getAsArray()) );
gl.enableVertexAttribArray( posLoc );
gl.disableVertexAttribArray( colLoc );
gl.vertexAttrib4f( colLoc, 0.8039216, 0.5843138, 0.04705882, 1 );
gl.enableVertexAttribArray( normLoc52 );
gl.vertexAttribPointer(normLoc52, 3, gl.FLOAT, false, 24, 12);
gl.vertexAttribPointer(posLoc,  3, gl.FLOAT, false, 24,  0);
gl.drawElements(gl.TRIANGLES, 66, gl.UNSIGNED_SHORT, 0);
// ****** quads object 53 *******
gl.useProgram(prog53);
gl.bindBuffer(gl.ARRAY_BUFFER, buf53);
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, ibuf53);
gl.uniformMatrix4fv( prMatLoc53, false, new Float32Array(prMatrix.getAsArray()) );
gl.uniformMatrix4fv( mvMatLoc53, false, new Float32Array(mvMatrix.getAsArray()) );
gl.uniformMatrix4fv( normMatLoc53, false, new Float32Array(normMatrix.getAsArray()) );
gl.enableVertexAttribArray( posLoc );
gl.disableVertexAttribArray( colLoc );
gl.vertexAttrib4f( colLoc, 0.8039216, 0.5843138, 0.04705882, 1 );
gl.enableVertexAttribArray( normLoc53 );
gl.vertexAttribPointer(normLoc53, 3, gl.FLOAT, false, 24, 12);
gl.vertexAttribPointer(posLoc,  3, gl.FLOAT, false, 24,  0);
gl.drawElements(gl.TRIANGLES, 66, gl.UNSIGNED_SHORT, 0);
// ****** quads object 54 *******
gl.useProgram(prog54);
gl.bindBuffer(gl.ARRAY_BUFFER, buf54);
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, ibuf54);
gl.uniformMatrix4fv( prMatLoc54, false, new Float32Array(prMatrix.getAsArray()) );
gl.uniformMatrix4fv( mvMatLoc54, false, new Float32Array(mvMatrix.getAsArray()) );
gl.uniformMatrix4fv( normMatLoc54, false, new Float32Array(normMatrix.getAsArray()) );
gl.enableVertexAttribArray( posLoc );
gl.disableVertexAttribArray( colLoc );
gl.vertexAttrib4f( colLoc, 0.8039216, 0.5843138, 0.04705882, 1 );
gl.enableVertexAttribArray( normLoc54 );
gl.vertexAttribPointer(normLoc54, 3, gl.FLOAT, false, 24, 12);
gl.vertexAttribPointer(posLoc,  3, gl.FLOAT, false, 24,  0);
gl.drawElements(gl.TRIANGLES, 66, gl.UNSIGNED_SHORT, 0);
// ****** quads object 55 *******
gl.useProgram(prog55);
gl.bindBuffer(gl.ARRAY_BUFFER, buf55);
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, ibuf55);
gl.uniformMatrix4fv( prMatLoc55, false, new Float32Array(prMatrix.getAsArray()) );
gl.uniformMatrix4fv( mvMatLoc55, false, new Float32Array(mvMatrix.getAsArray()) );
gl.uniformMatrix4fv( normMatLoc55, false, new Float32Array(normMatrix.getAsArray()) );
gl.enableVertexAttribArray( posLoc );
gl.disableVertexAttribArray( colLoc );
gl.vertexAttrib4f( colLoc, 0.8039216, 0.5843138, 0.04705882, 1 );
gl.enableVertexAttribArray( normLoc55 );
gl.vertexAttribPointer(normLoc55, 3, gl.FLOAT, false, 24, 12);
gl.vertexAttribPointer(posLoc,  3, gl.FLOAT, false, 24,  0);
gl.drawElements(gl.TRIANGLES, 66, gl.UNSIGNED_SHORT, 0);
// ****** spheres object 56 *******
gl.useProgram(prog56);
gl.bindBuffer(gl.ARRAY_BUFFER, sphereBuf);
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, sphereIbuf);
gl.uniformMatrix4fv( prMatLoc56, false, new Float32Array(prMatrix.getAsArray()) );
gl.uniformMatrix4fv( mvMatLoc56, false, new Float32Array(mvMatrix.getAsArray()) );
gl.uniformMatrix4fv( normMatLoc56, false, new Float32Array(normMatrix.getAsArray()) );
gl.enableVertexAttribArray( posLoc );
gl.vertexAttribPointer(posLoc,  3, gl.FLOAT, false, 12,  0);
gl.enableVertexAttribArray(normLoc56 );
gl.vertexAttribPointer(normLoc56,  3, gl.FLOAT, false, 12,  0);
gl.disableVertexAttribArray( colLoc );
var sphereNorm = new CanvasMatrix4();
sphereNorm.scale(1, 1, 1);
sphereNorm.multRight(normMatrix);
gl.uniformMatrix4fv( normMatLoc56, false, new Float32Array(sphereNorm.getAsArray()) );
for (var i = 0; i < 41; i++) {
var sphereMV = new CanvasMatrix4();
var baseofs = i*8
var ofs = baseofs + 7;	       
var scale = values56[ofs];
sphereMV.scale(1*scale, 1*scale, 1*scale);
sphereMV.translate(values56[baseofs], 
values56[baseofs+1], 
values56[baseofs+2]);
sphereMV.multRight(mvMatrix);
gl.uniformMatrix4fv( mvMatLoc56, false, new Float32Array(sphereMV.getAsArray()) );
ofs = baseofs + 3;       
gl.vertexAttrib4f( colLoc, values56[ofs], 
values56[ofs+1], 
values56[ofs+2],
values56[ofs+3] );
gl.drawElements(gl.TRIANGLES, 384, gl.UNSIGNED_SHORT, 0);
}
// ****** text object 57 *******
gl.useProgram(prog57);
gl.bindBuffer(gl.ARRAY_BUFFER, buf57);
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, ibuf57);
gl.uniformMatrix4fv( prMatLoc57, false, new Float32Array(prMatrix.getAsArray()) );
gl.uniformMatrix4fv( mvMatLoc57, false, new Float32Array(mvMatrix.getAsArray()) );
gl.uniform2f( textScaleLoc57, 0.001488095, 0.001488095);
gl.enableVertexAttribArray( posLoc );
gl.disableVertexAttribArray( colLoc );
gl.vertexAttrib4f( colLoc, 0, 0, 0.5450981, 1 );
gl.enableVertexAttribArray( texLoc57 );
gl.vertexAttribPointer(texLoc57, 2, gl.FLOAT, false, 28, 12);
gl.activeTexture(gl.TEXTURE0);
gl.bindTexture(gl.TEXTURE_2D, texture57);
gl.uniform1i( sampler57, 0);
gl.enableVertexAttribArray( ofsLoc57 );
gl.vertexAttribPointer(ofsLoc57, 2, gl.FLOAT, false, 28, 20);
gl.vertexAttribPointer(posLoc,  3, gl.FLOAT, false, 28,  0);
gl.drawElements(gl.TRIANGLES, 246, gl.UNSIGNED_SHORT, 0);
// ****** text object 58 *******
gl.useProgram(prog58);
gl.bindBuffer(gl.ARRAY_BUFFER, buf58);
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, ibuf58);
gl.uniformMatrix4fv( prMatLoc58, false, new Float32Array(prMatrix.getAsArray()) );
gl.uniformMatrix4fv( mvMatLoc58, false, new Float32Array(mvMatrix.getAsArray()) );
gl.uniform2f( textScaleLoc58, 0.001488095, 0.001488095);
gl.enableVertexAttribArray( posLoc );
gl.enableVertexAttribArray( colLoc );
gl.vertexAttribPointer(colLoc, 4, gl.FLOAT, false, 44, 12);
gl.enableVertexAttribArray( texLoc58 );
gl.vertexAttribPointer(texLoc58, 2, gl.FLOAT, false, 44, 28);
gl.activeTexture(gl.TEXTURE0);
gl.bindTexture(gl.TEXTURE_2D, texture58);
gl.uniform1i( sampler58, 0);
gl.enableVertexAttribArray( ofsLoc58 );
gl.vertexAttribPointer(ofsLoc58, 2, gl.FLOAT, false, 44, 36);
gl.vertexAttribPointer(posLoc,  3, gl.FLOAT, false, 44,  0);
gl.drawElements(gl.TRIANGLES, 12, gl.UNSIGNED_SHORT, 0);
// ****** text object 59 *******
gl.useProgram(prog59);
gl.bindBuffer(gl.ARRAY_BUFFER, buf59);
gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, ibuf59);
gl.uniformMatrix4fv( prMatLoc59, false, new Float32Array(prMatrix.getAsArray()) );
gl.uniformMatrix4fv( mvMatLoc59, false, new Float32Array(mvMatrix.getAsArray()) );
gl.uniform2f( textScaleLoc59, 0.001488095, 0.001488095);
gl.enableVertexAttribArray( posLoc );
gl.enableVertexAttribArray( colLoc );
gl.vertexAttribPointer(colLoc, 4, gl.FLOAT, false, 44, 12);
gl.enableVertexAttribArray( texLoc59 );
gl.vertexAttribPointer(texLoc59, 2, gl.FLOAT, false, 44, 28);
gl.activeTexture(gl.TEXTURE0);
gl.bindTexture(gl.TEXTURE_2D, texture59);
gl.uniform1i( sampler59, 0);
gl.enableVertexAttribArray( ofsLoc59 );
gl.vertexAttribPointer(ofsLoc59, 2, gl.FLOAT, false, 44, 36);
gl.vertexAttribPointer(posLoc,  3, gl.FLOAT, false, 44,  0);
gl.drawElements(gl.TRIANGLES, 6, gl.UNSIGNED_SHORT, 0);
gl.flush ();
}
var vpx0 = {
1: 0
};
var vpy0 = {
1: 0
};
var vpWidths = {
1: 504
};
var vpHeights = {
1: 504
};
var activeModel = {
1: 1
};
var activeProjection = {
1: 1
};
var listeners = {
1: [ 1 ]
};
var whichSubscene = function(coords){
if (0 <= coords.x && coords.x <= 504 && 0 <= coords.y && coords.y <= 504) return(1);
return(1);
}
var translateCoords = function(subsceneid, coords){
return {x:coords.x - vpx0[subsceneid], y:coords.y - vpy0[subsceneid]};
}
var vlen = function(v) {
return sqrt(v[0]*v[0] + v[1]*v[1] + v[2]*v[2])
}
var xprod = function(a, b) {
return [a[1]*b[2] - a[2]*b[1],
a[2]*b[0] - a[0]*b[2],
a[0]*b[1] - a[1]*b[0]];
}
var screenToVector = function(x, y) {
var width = vpWidths[activeSubscene];
var height = vpHeights[activeSubscene];
var radius = max(width, height)/2.0;
var cx = width/2.0;
var cy = height/2.0;
var px = (x-cx)/radius;
var py = (y-cy)/radius;
var plen = sqrt(px*px+py*py);
if (plen > 1.e-6) { 
px = px/plen;
py = py/plen;
}
var angle = (SQRT2 - plen)/SQRT2*PI/2;
var z = sin(angle);
var zlen = sqrt(1.0 - z*z);
px = px * zlen;
py = py * zlen;
return [px, py, z];
}
var rotBase;
var trackballdown = function(x,y) {
rotBase = screenToVector(x, y);
var l = listeners[activeModel[activeSubscene]];
saveMat = new Object();
for (var i = 0; i < l.length; i++) 
saveMat[l[i]] = new CanvasMatrix4(userMatrix[l[i]]);
}
var trackballmove = function(x,y) {
var rotCurrent = screenToVector(x,y);
var dot = rotBase[0]*rotCurrent[0] + 
rotBase[1]*rotCurrent[1] + 
rotBase[2]*rotCurrent[2];
var angle = acos( dot/vlen(rotBase)/vlen(rotCurrent) )*180./PI;
var axis = xprod(rotBase, rotCurrent);
var l = listeners[activeModel[activeSubscene]];
for (i = 0; i < l.length; i++) {
userMatrix[l[i]].load(saveMat[l[i]]);
userMatrix[l[i]].rotate(angle, axis[0], axis[1], axis[2]);
}
drawScene();
}
var y0zoom = 0;
var zoom0 = 0;
var zoomdown = function(x, y) {
y0zoom = y;
zoom0 = new Object();
l = listeners[activeProjection[activeSubscene]];
for (i = 0; i < l.length; i++)
zoom0[l[i]] = log(zoom[l[i]]);
}
var zoommove = function(x, y) {
l = listeners[activeProjection[activeSubscene]];
for (i = 0; i < l.length; i++)
zoom[l[i]] = exp(zoom0[l[i]] + (y-y0zoom)/height);
drawScene();
}
var y0fov = 0;
var fov0 = 1;
var fovdown = function(x, y) {
y0fov = y;
l = listeners[activeProjection[activeSubscene]];
for (i = 0; i < l.length; i++)
fov0 = fov[l[i]];
}
var fovmove = function(x, y) {
l = listeners[activeProjection[activeSubscene]];
for (i = 0; i < l.length; i++)
fov[l[i]] = max(1, min(179, fov0[l[i]] + 180*(y-y0fov)/height));
drawScene();
}
var mousedown = [trackballdown, zoomdown, fovdown];
var mousemove = [trackballmove, zoommove, fovmove];
function relMouseCoords(event){
var totalOffsetX = 0;
var totalOffsetY = 0;
var currentElement = canvas;
do{
totalOffsetX += currentElement.offsetLeft;
totalOffsetY += currentElement.offsetTop;
currentElement = currentElement.offsetParent;
}
while(currentElement)
var canvasX = event.pageX - totalOffsetX;
var canvasY = event.pageY - totalOffsetY;
return {x:canvasX, y:canvasY}
}
canvas.onmousedown = function ( ev ){
if (!ev.which) // Use w3c defns in preference to MS
switch (ev.button) {
case 0: ev.which = 1; break;
case 1: 
case 4: ev.which = 2; break;
case 2: ev.which = 3;
}
drag = ev.which;
var f = mousedown[drag-1];
if (f) {
var coords = relMouseCoords(ev);
coords.y = height-coords.y;
activeSubscene = whichSubscene(coords);
coords = translateCoords(activeSubscene, coords);
f(coords.x, coords.y); 
ev.preventDefault();
}
}    
canvas.onmouseup = function ( ev ){	
drag = 0;
}
canvas.onmouseout = canvas.onmouseup;
canvas.onmousemove = function ( ev ){
if ( drag == 0 ) return;
var f = mousemove[drag-1];
if (f) {
var coords = relMouseCoords(ev);
coords.y = height - coords.y;
coords = translateCoords(activeSubscene, coords);
f(coords.x, coords.y);
}
}
var wheelHandler = function(ev) {
var del = 1.1;
if (ev.shiftKey) del = 1.01;
var ds = ((ev.detail || ev.wheelDelta) > 0) ? del : (1 / del);
l = listeners[activeProjection[activeSubscene]];
for (i = 0; i < l.length; i++)
zoom[l[i]] *= ds;
drawScene();
ev.preventDefault();
};
canvas.addEventListener("DOMMouseScroll", wheelHandler, false);
canvas.addEventListener("mousewheel", wheelHandler, false);
}
</script>
<canvas id="unnamed_chunk_2canvas" width="1" height="1"></canvas> 
<p id="unnamed_chunk_2debug">
You must enable Javascript to view this page properly.</p>
<script>unnamed_chunk_2webGLStart();</script>
