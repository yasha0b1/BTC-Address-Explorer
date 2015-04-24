Visual BTC Address Explorer
========================================================
author: Jacob Govshteyn
date: Fri Apr 24 09:47:32 2015



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
0.0587105, -0.003539644, -0.2458949, -0.8170829, -0.5685644, 0.09544618,
0.06359289, -0.01055612, -0.2458949, -0.8170829, -0.5685644, 0.09544618,
0.06426258, -0.01009011, -0.2373859, -0.8170829, -0.5685644, 0.09544618,
0.0593802, -0.003073638, -0.2373859, -0.8170829, -0.5685644, 0.09544618,
0.5687695, 0.3513833, -0.3054767, -0.8170833, -0.5685648, 0.09544136,
0.5736519, 0.3443668, -0.3054767, -0.8170833, -0.5685648, 0.09544136,
0.5743216, 0.3448328, -0.2969677, -0.8170833, -0.5685648, 0.09544136,
0.5694392, 0.3518493, -0.2969677, -0.8170833, -0.5685648, 0.09544136,
0.0587105, -0.003539644, -0.2458949, 0.07834522, 0.05451626, 0.9954345,
0.06359289, -0.01055612, -0.2458949, 0.07834522, 0.05451626, 0.9954345,
0.5736519, 0.3443668, -0.3054767, 0.07834522, 0.05451626, 0.9954345,
0.5687695, 0.3513833, -0.3054767, 0.07834522, 0.05451626, 0.9954345,
0.06359289, -0.01055612, -0.2458949, -0.5711722, 0.8208303, -4.363352e-08,
0.06426258, -0.01009011, -0.2373859, -0.5711722, 0.8208303, -4.363352e-08,
0.5743216, 0.3448328, -0.2969677, -0.5711722, 0.8208303, -4.363352e-08,
0.5736519, 0.3443668, -0.3054767, -0.5711722, 0.8208303, -4.363352e-08,
0.06426258, -0.01009011, -0.2373859, -0.07834521, -0.05451621, -0.9954345,
0.0593802, -0.003073638, -0.2373859, -0.07834521, -0.05451621, -0.9954345,
0.5694392, 0.3518493, -0.2969677, -0.07834521, -0.05451621, -0.9954345,
0.5743216, 0.3448328, -0.2969677, -0.07834521, -0.05451621, -0.9954345,
0.0593802, -0.003073638, -0.2373859, 0.5711722, -0.8208303, -1.663528e-07,
0.0587105, -0.003539644, -0.2458949, 0.5711722, -0.8208303, -1.663528e-07,
0.5687695, 0.3513833, -0.3054767, 0.5711722, -0.8208303, -1.663528e-07,
0.5694392, 0.3518493, -0.2969677, 0.5711722, -0.8208303, -1.663528e-07,
0.0609994, -0.006240143, -0.242387, -0.8170832, -0.5685639, 0.09544705,
0.06185616, -0.007471389, -0.242387, -0.8170832, -0.5685639, 0.09544705,
0.06197368, -0.007389615, -0.2408938, -0.8170832, -0.5685639, 0.09544705,
0.06111692, -0.006158369, -0.2408938, -0.8170832, -0.5685639, 0.09544705,
0.0609994, -0.006240143, -0.242387, 0.8217021, -0.568931, -0.0335138,
0.06111692, -0.006158369, -0.2408938, 0.8217021, -0.568931, -0.0335138,
0.05985238, -0.007952008, -0.2414495, 0.8217021, -0.568931, -0.0335138,
0.05985238, -0.007952008, -0.2414495, 0.8217021, -0.568931, -0.0335138,
0.0609994, -0.006240143, -0.242387, -0.3602519, -0.2506798, -0.8985422,
0.06185616, -0.007471389, -0.242387, -0.3602519, -0.2506798, -0.8985422,
0.05985238, -0.007952008, -0.2414495, -0.3602519, -0.2506798, -0.8985422,
0.05985238, -0.007952008, -0.2414495, -0.3602519, -0.2506798, -0.8985422,
0.06185616, -0.007471389, -0.242387, 0.2479083, -0.9682036, 0.03351358,
0.06197368, -0.007389615, -0.2408938, 0.2479083, -0.9682036, 0.03351358,
0.05985238, -0.007952008, -0.2414495, 0.2479083, -0.9682036, 0.03351358,
0.05985238, -0.007952008, -0.2414495, 0.2479083, -0.9682036, 0.03351358,
0.06197368, -0.007389615, -0.2408938, -0.2135386, -0.14859, 0.9655684,
0.06111692, -0.006158369, -0.2408938, -0.2135386, -0.14859, 0.9655684,
0.05985238, -0.007952008, -0.2414495, -0.2135386, -0.14859, 0.9655684,
0.05985238, -0.007952008, -0.2414495, -0.2135386, -0.14859, 0.9655684
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
0.8165314, 0.5783418, -0.4519688, 0.6617826, 0.6328655, -0.4019018,
0.8124875, 0.5825705, -0.4519688, 0.6617826, 0.6328655, -0.4019018,
0.814187, 0.5841957, -0.4466111, 0.6617826, 0.6328655, -0.4019018,
0.8182309, 0.5799671, -0.4466111, 0.6617826, 0.6328655, -0.4019018,
0.5727177, 0.3451811, -0.303901, 0.6617832, 0.6328661, -0.4019,
0.5686738, 0.3494098, -0.303901, 0.6617832, 0.6328661, -0.4019,
0.5703734, 0.351035, -0.2985433, 0.6617832, 0.6328661, -0.4019,
0.5744172, 0.3468063, -0.2985433, 0.6617832, 0.6328661, -0.4019,
0.8165314, 0.5783418, -0.4519688, 0.2904611, 0.2777691, 0.9156837,
0.8124875, 0.5825705, -0.4519688, 0.2904611, 0.2777691, 0.9156837,
0.5686738, 0.3494098, -0.303901, 0.2904611, 0.2777691, 0.9156837,
0.5727177, 0.3451811, -0.303901, 0.2904611, 0.2777691, 0.9156837,
0.8124875, 0.5825705, -0.4519688, 0.6911412, -0.7227197, -1.25562e-06,
0.814187, 0.5841957, -0.4466111, 0.6911412, -0.7227197, -1.25562e-06,
0.5703734, 0.351035, -0.2985433, 0.6911412, -0.7227197, -1.25562e-06,
0.5686738, 0.3494098, -0.303901, 0.6911412, -0.7227197, -1.25562e-06,
0.814187, 0.5841957, -0.4466111, -0.2904611, -0.2777692, -0.9156837,
0.8182309, 0.5799671, -0.4466111, -0.2904611, -0.2777692, -0.9156837,
0.5744172, 0.3468063, -0.2985433, -0.2904611, -0.2777692, -0.9156837,
0.5703734, 0.351035, -0.2985433, -0.2904611, -0.2777692, -0.9156837,
0.8182309, 0.5799671, -0.4466111, -0.6911412, 0.7227197, 1.25562e-06,
0.8165314, 0.5783418, -0.4519688, -0.6911412, 0.7227197, 1.25562e-06,
0.5727177, 0.3451811, -0.303901, -0.6911412, 0.7227197, 1.25562e-06,
0.5744172, 0.3468063, -0.2985433, -0.6911412, 0.7227197, 1.25562e-06,
0.8156597, 0.5805184, -0.4499767, 0.6617957, 0.6328685, -0.4018753,
0.814623, 0.5816025, -0.4499767, 0.6617957, 0.6328685, -0.4018753,
0.8150586, 0.5820192, -0.4486032, 0.6617957, 0.6328685, -0.4018753,
0.8160954, 0.5809351, -0.4486032, 0.6617957, 0.6328685, -0.4018753,
0.8156597, 0.5805184, -0.4499767, -0.8795058, 0.4544839, 0.1411166,
0.8160954, 0.5809351, -0.4486032, -0.8795058, 0.4544839, 0.1411166,
0.8166828, 0.5825346, -0.4500937, -0.8795058, 0.4544839, 0.1411166,
0.8166828, 0.5825346, -0.4500937, -0.8795058, 0.4544839, 0.1411166,
0.8156597, 0.5805184, -0.4499767, -0.03959868, -0.03786781, -0.9984978,
0.814623, 0.5816025, -0.4499767, -0.03959868, -0.03786781, -0.9984978,
0.8166828, 0.5825346, -0.4500937, -0.03959868, -0.03786781, -0.9984978,
0.8166828, 0.5825346, -0.4500937, -0.03959868, -0.03786781, -0.9984978,
0.814623, 0.5816025, -0.4499767, -0.4147758, 0.8989149, -0.1411134,
0.8150586, 0.5820192, -0.4486032, -0.4147758, 0.8989149, -0.1411134,
0.8166828, 0.5825346, -0.4500937, -0.4147758, 0.8989149, -0.1411134,
0.8166828, 0.5825346, -0.4500937, -0.4147758, 0.8989149, -0.1411134,
0.8150586, 0.5820192, -0.4486032, 0.5043097, 0.4823205, 0.7162673,
0.8160954, 0.5809351, -0.4486032, 0.5043097, 0.4823205, 0.7162673,
0.8166828, 0.5825346, -0.4500937, 0.5043097, 0.4823205, 0.7162673,
0.8166828, 0.5825346, -0.4500937, 0.5043097, 0.4823205, 0.7162673
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
0.9733314, -0.3398573, -0.02652514, 0.9563309, -0.2922746, 0.002610222,
0.9750414, -0.3342619, -0.02652514, 0.9563309, -0.2922746, 0.002610222,
0.9750268, -0.3342575, -0.0206743, 0.9563309, -0.2922746, 0.002610222,
0.9733167, -0.3398528, -0.0206743, 0.9563309, -0.2922746, 0.002610222,
0.6166222, -0.2308377, -0.02749965, 0.9563311, -0.2922739, 0.002609479,
0.6183323, -0.2252423, -0.02749965, 0.9563311, -0.2922739, 0.002609479,
0.6183177, -0.2252378, -0.02164881, 0.9563311, -0.2922739, 0.002609479,
0.6166075, -0.2308332, -0.02164881, 0.9563311, -0.2922739, 0.002609479,
0.9733314, -0.3398573, -0.02652514, -0.002498542, 0.0007636065, 0.9999966,
0.9750414, -0.3342619, -0.02652514, -0.002498542, 0.0007636065, 0.9999966,
0.6183323, -0.2252423, -0.02749965, -0.002498542, 0.0007636065, 0.9999966,
0.6166222, -0.2308377, -0.02749965, -0.002498542, 0.0007636065, 0.9999966,
0.9750414, -0.3342619, -0.02652514, -0.2922802, -0.9563327, 1.184918e-06,
0.9750268, -0.3342575, -0.0206743, -0.2922802, -0.9563327, 1.184918e-06,
0.6183177, -0.2252378, -0.02164881, -0.2922802, -0.9563327, 1.184918e-06,
0.6183323, -0.2252423, -0.02749965, -0.2922802, -0.9563327, 1.184918e-06,
0.9750268, -0.3342575, -0.0206743, 0.002498541, -0.0007636285, -0.9999966,
0.9733167, -0.3398528, -0.0206743, 0.002498541, -0.0007636285, -0.9999966,
0.6166075, -0.2308332, -0.02164881, 0.002498541, -0.0007636285, -0.9999966,
0.6183177, -0.2252378, -0.02164881, 0.002498541, -0.0007636285, -0.9999966,
0.9733167, -0.3398528, -0.0206743, 0.2922801, 0.9563327, 6.663799e-06,
0.9733314, -0.3398573, -0.02652514, 0.2922801, 0.9563327, 6.663799e-06,
0.6166222, -0.2308377, -0.02749965, 0.2922801, 0.9563327, 6.663799e-06,
0.6166075, -0.2308332, -0.02164881, 0.2922801, 0.9563327, 6.663799e-06,
0.9739618, -0.3377752, -0.02434972, 0.9563351, -0.2922609, 0.002576745,
0.9744002, -0.3363407, -0.02434972, 0.9563351, -0.2922609, 0.002576745,
0.9743965, -0.3363396, -0.02284972, 0.9563351, -0.2922609, 0.002576745,
0.973958, -0.337774, -0.02284972, 0.9563351, -0.2922609, 0.002576745,
0.9739618, -0.3377752, -0.02434972, -0.06212148, 0.9980682, -0.0009288809,
0.973958, -0.337774, -0.02284972, -0.06212148, 0.9980682, -0.0009288809,
0.9760917, -0.3376419, -0.0235945, -0.06212148, 0.9980682, -0.0009288809,
0.9760917, -0.3376419, -0.0235945, -0.06212148, 0.9980682, -0.0009288809,
0.9739618, -0.3377752, -0.02434972, 0.3381327, -0.1033351, -0.9354081,
0.9744002, -0.3363407, -0.02434972, 0.3381327, -0.1033351, -0.9354081,
0.9760917, -0.3376419, -0.0235945, 0.3381327, -0.1033351, -0.9354081,
0.9760917, -0.3376419, -0.0235945, 0.3381327, -0.1033351, -0.9354081,
0.9744002, -0.3363407, -0.02434972, 0.6094612, 0.7928154, 0.0009029379,
0.9743965, -0.3363396, -0.02284972, 0.6094612, 0.7928154, 0.0009029379,
0.9760917, -0.3376419, -0.0235945, 0.6094612, 0.7928154, 0.0009029379,
0.9760917, -0.3376419, -0.0235945, 0.6094612, 0.7928154, 0.0009029379,
0.9743965, -0.3363396, -0.02284972, 0.3334528, -0.1019209, 0.9372414,
0.973958, -0.337774, -0.02284972, 0.3334528, -0.1019209, 0.9372414,
0.9760917, -0.3376419, -0.0235945, 0.3334528, -0.1019209, 0.9372414,
0.9760917, -0.3376419, -0.0235945, 0.3334528, -0.1019209, 0.9372414
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
0.06641228, -0.02688906, -0.2345013, -0.8892738, 0.3167163, -0.3299741,
0.06332213, -0.03556554, -0.2345013, -0.8892738, 0.3167163, -0.3299741,
0.06045912, -0.03454588, -0.2258068, -0.8892738, 0.3167163, -0.3299741,
0.06354927, -0.02586939, -0.2258068, -0.8892738, 0.3167163, -0.3299741,
0.6204465, -0.2242094, -0.02892146, -0.8892745, 0.3167165, -0.3299719,
0.6173564, -0.2328858, -0.02892146, -0.8892745, 0.3167165, -0.3299719,
0.6144934, -0.2318662, -0.02022699, -0.8892745, 0.3167165, -0.3299719,
0.6175835, -0.2231897, -0.02022699, -0.8892745, 0.3167165, -0.3299719,
0.06641228, -0.02688906, -0.2345013, -0.3108476, 0.1107089, 0.9439901,
0.06332213, -0.03556554, -0.2345013, -0.3108476, 0.1107089, 0.9439901,
0.6173564, -0.2328858, -0.02892146, -0.3108476, 0.1107089, 0.9439901,
0.6204465, -0.2242094, -0.02892146, -0.3108476, 0.1107089, 0.9439901,
0.06332213, -0.03556554, -0.2345013, 0.3355081, 0.9420373, 4.057545e-07,
0.06045912, -0.03454588, -0.2258068, 0.3355081, 0.9420373, 4.057545e-07,
0.6144934, -0.2318662, -0.02022699, 0.3355081, 0.9420373, 4.057545e-07,
0.6173564, -0.2328858, -0.02892146, 0.3355081, 0.9420373, 4.057545e-07,
0.06045912, -0.03454588, -0.2258068, 0.3108476, -0.110709, -0.9439901,
0.06354927, -0.02586939, -0.2258068, 0.3108476, -0.110709, -0.9439901,
0.6175835, -0.2231897, -0.02022699, 0.3108476, -0.110709, -0.9439901,
0.6144934, -0.2318662, -0.02022699, 0.3108476, -0.110709, -0.9439901,
0.06354927, -0.02586939, -0.2258068, -0.3355083, -0.9420372, 8.11509e-08,
0.06641228, -0.02688906, -0.2345013, -0.3355083, -0.9420372, 8.11509e-08,
0.6204465, -0.2242094, -0.02892146, -0.3355083, -0.9420372, 8.11509e-08,
0.6175835, -0.2231897, -0.02022699, -0.3355083, -0.9420372, 8.11509e-08,
0.06392047, -0.03009397, -0.2308621, -0.8892742, 0.3167177, -0.3299714,
0.0634172, -0.03150703, -0.2308621, -0.8892742, 0.3167177, -0.3299714,
0.06295093, -0.03134096, -0.2294461, -0.8892742, 0.3167177, -0.3299714,
0.0634542, -0.02992791, -0.2294461, -0.8892742, 0.3167177, -0.3299714,
0.06392047, -0.03009397, -0.2308621, -0.001900932, -0.9932636, 0.1158611,
0.0634542, -0.02992791, -0.2294461, -0.001900932, -0.9932636, 0.1158611,
0.06165715, -0.03008403, -0.230814, -0.001900932, -0.9932636, 0.1158611,
0.06165715, -0.03008403, -0.230814, -0.001900932, -0.9932636, 0.1158611,
0.06392047, -0.03009397, -0.2308621, -0.02119413, 0.007548353, -0.9997469,
0.0634172, -0.03150703, -0.2308621, -0.02119413, 0.007548353, -0.9997469,
0.06165715, -0.03008403, -0.230814, -0.02119413, 0.007548353, -0.9997469,
0.06165715, -0.03008403, -0.230814, -0.02119413, 0.007548353, -0.9997469,
0.0634172, -0.03150703, -0.2308621, -0.6263914, -0.7708502, -0.1158616,
0.06295093, -0.03134096, -0.2294461, -0.6263914, -0.7708502, -0.1158616,
0.06165715, -0.03008403, -0.230814, -0.6263914, -0.7708502, -0.1158616,
0.06165715, -0.03008403, -0.230814, -0.6263914, -0.7708502, -0.1158616,
0.06295093, -0.03134096, -0.2294461, -0.6033002, 0.2148669, 0.7680241,
0.0634542, -0.02992791, -0.2294461, -0.6033002, 0.2148669, 0.7680241,
0.06165715, -0.03008403, -0.230814, -0.6033002, 0.2148669, 0.7680241,
0.06165715, -0.03008403, -0.230814, -0.6033002, 0.2148669, 0.7680241
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
0.0314147, -0.03771744, -0.2605481, 0.4912952, 0.5494932, 0.6757857,
0.02486401, -0.03186055, -0.2605481, 0.4912952, 0.5494932, 0.6757857,
0.020906, -0.03628741, -0.2540711, 0.4912952, 0.5494932, 0.6757857,
0.02745669, -0.04214431, -0.2540711, 0.4912952, 0.5494932, 0.6757857,
-0.2683262, -0.3729652, -0.672848, 0.4912947, 0.5494925, 0.6757866,
-0.2748769, -0.3671083, -0.672848, 0.4912947, 0.5494925, 0.6757866,
-0.2788348, -0.3715352, -0.666371, 0.4912947, 0.5494925, 0.6757866,
-0.2722842, -0.3773921, -0.666371, 0.4912947, 0.5494925, 0.6757866,
0.0314147, -0.03771744, -0.2605481, -0.4504292, -0.5037864, 0.7370976,
0.02486401, -0.03186055, -0.2605481, -0.4504292, -0.5037864, 0.7370976,
-0.2748769, -0.3671083, -0.672848, -0.4504292, -0.5037864, 0.7370976,
-0.2683262, -0.3729652, -0.672848, -0.4504292, -0.5037864, 0.7370976,
0.02486401, -0.03186055, -0.2605481, 0.7454817, -0.666526, 4.34296e-08,
0.020906, -0.03628741, -0.2540711, 0.7454817, -0.666526, 4.34296e-08,
-0.2788348, -0.3715352, -0.666371, 0.7454817, -0.666526, 4.34296e-08,
-0.2748769, -0.3671083, -0.672848, 0.7454817, -0.666526, 4.34296e-08,
0.020906, -0.03628741, -0.2540711, 0.4504293, 0.5037863, -0.7370975,
0.02745669, -0.04214431, -0.2540711, 0.4504293, 0.5037863, -0.7370975,
-0.2722842, -0.3773921, -0.666371, 0.4504293, 0.5037863, -0.7370975,
-0.2788348, -0.3715352, -0.666371, 0.4504293, 0.5037863, -0.7370975,
0.02745669, -0.04214431, -0.2540711, -0.7454817, 0.6665261, -1.737184e-07,
0.0314147, -0.03771744, -0.2605481, -0.7454817, 0.6665261, -1.737184e-07,
-0.2683262, -0.3729652, -0.672848, -0.7454817, 0.6665261, -1.737184e-07,
-0.2722842, -0.3773921, -0.666371, -0.7454817, 0.6665261, -1.737184e-07,
0.02705728, -0.03712448, -0.2578624, 0.4912932, 0.5494906, 0.6757892,
0.02593906, -0.03612469, -0.2578624, 0.4912932, 0.5494906, 0.6757892,
0.02526342, -0.03688037, -0.2567568, 0.4912932, 0.5494906, 0.6757892,
0.02638164, -0.03788016, -0.2567568, 0.4912932, 0.5494906, 0.6757892,
0.02705728, -0.03712448, -0.2578624, -0.8705207, 0.4311492, -0.2372848,
0.02638164, -0.03788016, -0.2567568, -0.8705207, 0.4311492, -0.2372848,
0.02714294, -0.03590344, -0.255958, -0.8705207, 0.4311492, -0.2372848,
0.02714294, -0.03590344, -0.255958, -0.8705207, 0.4311492, -0.2372848,
0.02705728, -0.03712448, -0.2578624, 0.5942553, 0.6646492, -0.4528817,
0.02593906, -0.03612469, -0.2578624, 0.5942553, 0.6646492, -0.4528817,
0.02714294, -0.03590344, -0.255958, 0.5942553, 0.6646492, -0.4528817,
0.02714294, -0.03590344, -0.255958, 0.5942553, 0.6646492, -0.4528817,
0.02593906, -0.03612469, -0.2578624, -0.5255126, 0.8170265, 0.2372849,
0.02526342, -0.03688037, -0.2567568, -0.5255126, 0.8170265, 0.2372849,
0.02714294, -0.03590344, -0.255958, -0.5255126, 0.8170265, 0.2372849,
0.02714294, -0.03590344, -0.255958, -0.5255126, 0.8170265, 0.2372849,
0.02526342, -0.03688037, -0.2567568, -0.2492483, -0.2787736, 0.9274485,
0.02638164, -0.03788016, -0.2567568, -0.2492483, -0.2787736, 0.9274485,
0.02714294, -0.03590344, -0.255958, -0.2492483, -0.2787736, 0.9274485,
0.02714294, -0.03590344, -0.255958, -0.2492483, -0.2787736, 0.9274485
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
-0.4411369, -0.6590284, -0.8236051, -0.4532901, -0.7890795, -0.4145862,
-0.4369016, -0.6614614, -0.8236051, -0.4532901, -0.7890795, -0.4145862,
-0.4379103, -0.6632172, -0.8191603, -0.4532901, -0.7890795, -0.4145862,
-0.4421456, -0.6607842, -0.8191603, -0.4532901, -0.7890795, -0.4145862,
-0.2751938, -0.3701558, -0.671832, -0.4532869, -0.7890837, -0.4145818,
-0.2709585, -0.3725887, -0.671832, -0.4532869, -0.7890837, -0.4145818,
-0.2719672, -0.3743446, -0.6673871, -0.4532869, -0.7890837, -0.4145818,
-0.2762025, -0.3719116, -0.6673871, -0.4532869, -0.7890837, -0.4145818,
-0.4411369, -0.6590284, -0.8236051, -0.2065099, -0.3594888, 0.9100117,
-0.4369016, -0.6614614, -0.8236051, -0.2065099, -0.3594888, 0.9100117,
-0.2709585, -0.3725887, -0.671832, -0.2065099, -0.3594888, 0.9100117,
-0.2751938, -0.3701558, -0.671832, -0.2065099, -0.3594888, 0.9100117,
-0.4369016, -0.6614614, -0.8236051, -0.8671115, 0.498114, -2.506553e-06,
-0.4379103, -0.6632172, -0.8191603, -0.8671115, 0.498114, -2.506553e-06,
-0.2719672, -0.3743446, -0.6673871, -0.8671115, 0.498114, -2.506553e-06,
-0.2709585, -0.3725887, -0.671832, -0.8671115, 0.498114, -2.506553e-06,
-0.4379103, -0.6632172, -0.8191603, 0.206511, 0.3594882, -0.9100118,
-0.4421456, -0.6607842, -0.8191603, 0.206511, 0.3594882, -0.9100118,
-0.2762025, -0.3719116, -0.6673871, 0.206511, 0.3594882, -0.9100118,
-0.2719672, -0.3743446, -0.6673871, 0.206511, 0.3594882, -0.9100118,
-0.4421456, -0.6607842, -0.8191603, 0.8671126, -0.4981122, -2.327517e-06,
-0.4411369, -0.6590284, -0.8236051, 0.8671126, -0.4981122, -2.327517e-06,
-0.2751938, -0.3701558, -0.671832, 0.8671126, -0.4981122, -2.327517e-06,
-0.2762025, -0.3719116, -0.6673871, 0.8671126, -0.4981122, -2.327517e-06,
-0.440019, -0.6604796, -0.8220652, -0.4532802, -0.7890909, -0.4145753,
-0.4387183, -0.6612267, -0.8220652, -0.4532802, -0.7890909, -0.4145753,
-0.4390281, -0.661766, -0.8207002, -0.4532802, -0.7890909, -0.4145753,
-0.4403288, -0.6610188, -0.8207002, -0.4532802, -0.7890909, -0.4145753,
-0.440019, -0.6604796, -0.8220652, 0.9710636, -0.1893314, 0.1455653,
-0.4403288, -0.6610188, -0.8207002, 0.9710636, -0.1893314, 0.1455653,
-0.4404301, -0.662701, -0.8222119, 0.9710636, -0.1893314, 0.1455653,
-0.4404301, -0.662701, -0.8222119, 0.9710636, -0.1893314, 0.1455653,
-0.440019, -0.6604796, -0.8220652, 0.03419276, 0.05952432, -0.9976411,
-0.4387183, -0.6612267, -0.8220652, 0.03419276, 0.05952432, -0.9976411,
-0.4404301, -0.662701, -0.8222119, 0.03419276, 0.05952432, -0.9976411,
-0.4404301, -0.662701, -0.8222119, 0.03419276, 0.05952432, -0.9976411,
-0.4387183, -0.6612267, -0.8220652, 0.6527436, -0.7434621, -0.1455677,
-0.4390281, -0.661766, -0.8207002, 0.6527436, -0.7434621, -0.1455677,
-0.4404301, -0.662701, -0.8222119, 0.6527436, -0.7434621, -0.1455677,
-0.4404301, -0.662701, -0.8222119, 0.6527436, -0.7434621, -0.1455677,
-0.4390281, -0.661766, -0.8207002, -0.3525171, -0.6136778, 0.7064923,
-0.4403288, -0.6610188, -0.8207002, -0.3525171, -0.6136778, 0.7064923,
-0.4404301, -0.662701, -0.8222119, -0.3525171, -0.6136778, 0.7064923,
-0.4404301, -0.662701, -0.8222119, -0.3525171, -0.6136778, 0.7064923
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
0.622976, -0.1925218, -0.9815676, 0.5283529, -0.4008542, -0.7484379,
0.6262118, -0.1882568, -0.9815676, 0.5283529, -0.4008542, -0.7484379,
0.6294039, -0.1906785, -0.978017, 0.5283529, -0.4008542, -0.7484379,
0.6261681, -0.1949436, -0.978017, 0.5283529, -0.4008542, -0.7484379,
0.4355269, -0.05030746, -0.7160408, 0.5283597, -0.4008583, -0.7484307,
0.4387628, -0.04604242, -0.7160408, 0.5283597, -0.4008583, -0.7484307,
0.4419549, -0.04846421, -0.7124903, 0.5283597, -0.4008583, -0.7484307,
0.438719, -0.05272925, -0.7124903, 0.5283597, -0.4008583, -0.7484307,
0.622976, -0.1925218, -0.9815676, 0.5962515, -0.4523679, 0.66321,
0.6262118, -0.1882568, -0.9815676, 0.5962515, -0.4523679, 0.66321,
0.4387628, -0.04604242, -0.7160408, 0.5962515, -0.4523679, 0.66321,
0.4355269, -0.05030746, -0.7160408, 0.5962515, -0.4523679, 0.66321,
0.6262118, -0.1882568, -0.9815676, -0.6044151, -0.7966695, 2.865439e-06,
0.6294039, -0.1906785, -0.978017, -0.6044151, -0.7966695, 2.865439e-06,
0.4419549, -0.04846421, -0.7124903, -0.6044151, -0.7966695, 2.865439e-06,
0.4387628, -0.04604242, -0.7160408, -0.6044151, -0.7966695, 2.865439e-06,
0.6294039, -0.1906785, -0.978017, -0.5962522, 0.4523669, -0.66321,
0.6261681, -0.1949436, -0.978017, -0.5962522, 0.4523669, -0.66321,
0.438719, -0.05272925, -0.7124903, -0.5962522, 0.4523669, -0.66321,
0.4419549, -0.04846421, -0.7124903, -0.5962522, 0.4523669, -0.66321,
0.6261681, -0.1949436, -0.978017, 0.6044164, 0.7966685, -1.425056e-06,
0.622976, -0.1925218, -0.9815676, 0.6044164, 0.7966685, -1.425056e-06,
0.4355269, -0.05030746, -0.7160408, 0.6044164, 0.7966685, -1.425056e-06,
0.438719, -0.05272925, -0.7124903, 0.6044164, 0.7966685, -1.425056e-06,
0.6252895, -0.1918584, -0.9802897, 0.5283636, -0.4008434, -0.748436,
0.6261961, -0.1906634, -0.9802897, 0.5283636, -0.4008434, -0.748436,
0.6270905, -0.1913419, -0.9792949, 0.5283636, -0.4008434, -0.748436,
0.6261839, -0.1925369, -0.9792949, 0.5283636, -0.4008434, -0.748436,
0.6252895, -0.1918584, -0.9802897, 0.3804234, 0.8866889, 0.2627942,
0.6261839, -0.1925369, -0.9792949, 0.3804234, 0.8866889, 0.2627942,
0.6272467, -0.1924019, -0.9812891, 0.3804234, 0.8866889, 0.2627942,
0.6272467, -0.1924019, -0.9812891, 0.3804234, 0.8866889, 0.2627942,
0.6252895, -0.1918584, -0.9802897, -0.3727753, 0.2828063, -0.8837756,
0.6261961, -0.1906634, -0.9802897, -0.3727753, 0.2828063, -0.8837756,
0.6272467, -0.1924019, -0.9812891, -0.3727753, 0.2828063, -0.8837756,
0.6272467, -0.1924019, -0.9812891, -0.3727753, 0.2828063, -0.8837756,
0.6261961, -0.1906634, -0.9802897, 0.7514558, 0.6051909, -0.262789,
0.6270905, -0.1913419, -0.9792949, 0.7514558, 0.6051909, -0.262789,
0.6272467, -0.1924019, -0.9812891, 0.7514558, 0.6051909, -0.262789,
0.6272467, -0.1924019, -0.9812891, 0.7514558, 0.6051909, -0.262789,
0.6270905, -0.1913419, -0.9792949, 0.7438189, -0.5642987, 0.3581903,
0.6261839, -0.1925369, -0.9792949, 0.7438189, -0.5642987, 0.3581903,
0.6272467, -0.1924019, -0.9812891, 0.7438189, -0.5642987, 0.3581903,
0.6272467, -0.1924019, -0.9812891, 0.7438189, -0.5642987, 0.3581903
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
0.05386021, -0.01894178, -0.2624191, -0.6427111, 0.04381091, 0.7648548,
0.05328914, -0.02731947, -0.2624191, -0.6427111, 0.04381091, 0.7648548,
0.05969685, -0.02775626, -0.2570097, -0.6427111, 0.04381091, 0.7648548,
0.06026792, -0.01937857, -0.2570097, -0.6427111, 0.04381091, 0.7648548,
0.4358226, -0.04497859, -0.7169703, -0.6427092, 0.04381078, 0.7648564,
0.4352515, -0.05335629, -0.7169703, -0.6427092, 0.04381078, 0.7648564,
0.4416592, -0.05379307, -0.7115608, -0.6427092, 0.04381078, 0.7648564,
0.4422303, -0.04541538, -0.7115608, -0.6427092, 0.04381078, 0.7648564,
0.05386021, -0.01894178, -0.2624191, 0.7630833, -0.05201618, 0.6442035,
0.05328914, -0.02731947, -0.2624191, 0.7630833, -0.05201618, 0.6442035,
0.4352515, -0.05335629, -0.7169703, 0.7630833, -0.05201618, 0.6442035,
0.4358226, -0.04497859, -0.7169703, 0.7630833, -0.05201618, 0.6442035,
0.05328914, -0.02731947, -0.2624191, 0.06800801, 0.9976847, -7.581564e-08,
0.05969685, -0.02775626, -0.2570097, 0.06800801, 0.9976847, -7.581564e-08,
0.4416592, -0.05379307, -0.7115608, 0.06800801, 0.9976847, -7.581564e-08,
0.4352515, -0.05335629, -0.7169703, 0.06800801, 0.9976847, -7.581564e-08,
0.05969685, -0.02775626, -0.2570097, -0.7630833, 0.05201619, -0.6442035,
0.06026792, -0.01937857, -0.2570097, -0.7630833, 0.05201619, -0.6442035,
0.4422303, -0.04541538, -0.7115608, -0.7630833, 0.05201619, -0.6442035,
0.4416592, -0.05379307, -0.7115608, -0.7630833, 0.05201619, -0.6442035,
0.06026792, -0.01937857, -0.2570097, -0.06800818, -0.9976847, -6.706768e-08,
0.05386021, -0.01894178, -0.2624191, -0.06800818, -0.9976847, -6.706768e-08,
0.4358226, -0.04497859, -0.7169703, -0.06800818, -0.9976847, -6.706768e-08,
0.4422303, -0.04541538, -0.7115608, -0.06800818, -0.9976847, -6.706768e-08,
0.05625722, -0.02256174, -0.2601976, -0.6427141, 0.04381011, 0.7648525,
0.05615521, -0.02405827, -0.2601976, -0.6427141, 0.04381011, 0.7648525,
0.05729984, -0.0241363, -0.2592312, -0.6427141, 0.04381011, 0.7648525,
0.05740185, -0.02263977, -0.2592312, -0.6427141, 0.04381011, 0.7648525,
0.05625722, -0.02256174, -0.2601976, 0.1619948, -0.949544, -0.2685585,
0.05740185, -0.02263977, -0.2592312, 0.1619948, -0.949544, -0.2685585,
0.05549311, -0.0232614, -0.2581847, 0.1619948, -0.949544, -0.2685585,
0.05549311, -0.0232614, -0.2581847, 0.1619948, -0.949544, -0.2685585,
0.05625722, -0.02256174, -0.2601976, -0.9401679, 0.06408581, -0.3346303,
0.05615521, -0.02405827, -0.2601976, -0.9401679, 0.06408581, -0.3346303,
0.05549311, -0.0232614, -0.2581847, -0.9401679, 0.06408581, -0.3346303,
0.05549311, -0.0232614, -0.2581847, -0.9401679, 0.06408581, -0.3346303,
0.05615521, -0.02405827, -0.2601976, -0.2893511, -0.9187773, 0.2685593,
0.05729984, -0.0241363, -0.2592312, -0.2893511, -0.9187773, 0.2685593,
0.05549311, -0.0232614, -0.2581847, -0.2893511, -0.9187773, 0.2685593,
0.05549311, -0.0232614, -0.2581847, -0.2893511, -0.9187773, 0.2685593,
0.05729984, -0.0241363, -0.2592312, 0.4888197, -0.03332002, 0.8717483,
0.05740185, -0.02263977, -0.2592312, 0.4888197, -0.03332002, 0.8717483,
0.05549311, -0.0232614, -0.2581847, 0.4888197, -0.03332002, 0.8717483,
0.05549311, -0.0232614, -0.2581847, 0.4888197, -0.03332002, 0.8717483
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
0.01184595, -0.02334707, -0.2408678, 0.9896685, -0.1114048, -0.09025013,
0.0127987, -0.01488333, -0.2408678, 0.9896685, -0.1114048, -0.09025013,
0.01356255, -0.01496931, -0.2323854, 0.9896685, -0.1114048, -0.09025013,
0.01260981, -0.02343305, -0.2323854, 0.9896685, -0.1114048, -0.09025013,
-0.6231453, 0.0481325, -0.1829615, 0.9896685, -0.111402, -0.09025469,
-0.6221926, 0.05659624, -0.1829615, 0.9896685, -0.111402, -0.09025469,
-0.6214287, 0.05651025, -0.1744791, 0.9896685, -0.111402, -0.09025469,
-0.6223814, 0.04804652, -0.1744791, 0.9896685, -0.111402, -0.09025469,
0.01184595, -0.02334707, -0.2408678, 0.08968369, -0.01009549, 0.9959192,
0.0127987, -0.01488333, -0.2408678, 0.08968369, -0.01009549, 0.9959192,
-0.6221926, 0.05659624, -0.1829615, 0.08968369, -0.01009549, 0.9959192,
-0.6231453, 0.0481325, -0.1829615, 0.08968369, -0.01009549, 0.9959192,
0.0127987, -0.01488333, -0.2408678, -0.1118613, -0.9937239, 9.319948e-09,
0.01356255, -0.01496931, -0.2323854, -0.1118613, -0.9937239, 9.319948e-09,
-0.6214287, 0.05651025, -0.1744791, -0.1118613, -0.9937239, 9.319948e-09,
-0.6221926, 0.05659624, -0.1829615, -0.1118613, -0.9937239, 9.319948e-09,
0.01356255, -0.01496931, -0.2323854, -0.08968369, 0.0100955, -0.9959192,
0.01260981, -0.02343305, -0.2323854, -0.08968369, 0.0100955, -0.9959192,
-0.6223814, 0.04804652, -0.1744791, -0.08968369, 0.0100955, -0.9959192,
-0.6214287, 0.05651025, -0.1744791, -0.08968369, 0.0100955, -0.9959192,
0.01260981, -0.02343305, -0.2323854, 0.1118613, 0.9937239, 2.662842e-09,
0.01184595, -0.02334707, -0.2408678, 0.1118613, 0.9937239, 2.662842e-09,
-0.6231453, 0.0481325, -0.1829615, 0.1118613, 0.9937239, 2.662842e-09,
-0.6223814, 0.04804652, -0.1744791, 0.1118613, 0.9937239, 2.662842e-09,
0.01255309, -0.01989591, -0.2373735, 0.9896685, -0.1114047, -0.09025075,
0.01272089, -0.01840533, -0.2373735, 0.9896685, -0.1114047, -0.09025075,
0.01285541, -0.01842047, -0.2358797, 0.9896685, -0.1114047, -0.09025075,
0.01268762, -0.01991105, -0.2358797, 0.9896685, -0.1114047, -0.09025075,
0.01255309, -0.01989591, -0.2373735, -0.2427569, 0.9695695, 0.03168918,
0.01268762, -0.01991105, -0.2358797, -0.2427569, 0.9695695, 0.03168918,
0.01468359, -0.019381, -0.2368071, -0.2427569, 0.9695695, 0.03168918,
0.01468359, -0.019381, -0.2368071, -0.2427569, 0.9695695, 0.03168918,
0.01255309, -0.01989591, -0.2373735, 0.2635219, -0.02966404, -0.9641971,
0.01272089, -0.01840533, -0.2373735, 0.2635219, -0.02966404, -0.9641971,
0.01468359, -0.019381, -0.2368071, 0.2635219, -0.02966404, -0.9641971,
0.01468359, -0.019381, -0.2368071, 0.2635219, -0.02966404, -0.9641971,
0.01272089, -0.01840533, -0.2373735, 0.4522349, 0.8913358, -0.03168914,
0.01285541, -0.01842047, -0.2358797, 0.4522349, 0.8913358, -0.03168914,
0.01468359, -0.019381, -0.2368071, 0.4522349, 0.8913358, -0.03168914,
0.01468359, -0.019381, -0.2368071, 0.4522349, 0.8913358, -0.03168914,
0.01285541, -0.01842047, -0.2358797, 0.4314671, -0.04856924, 0.9008203,
0.01268762, -0.01991105, -0.2358797, 0.4314671, -0.04856924, 0.9008203,
0.01468359, -0.019381, -0.2368071, 0.4314671, -0.04856924, 0.9008203,
0.01468359, -0.019381, -0.2368071, 0.4314671, -0.04856924, 0.9008203
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
-0.9732531, 0.1637335, -0.2571456, -0.9361849, 0.2887479, -0.2004554,
-0.9750349, 0.1579566, -0.2571456, -0.9361849, 0.2887479, -0.2004554,
-0.9761929, 0.1583138, -0.2512229, -0.9361849, 0.2887479, -0.2004554,
-0.9744111, 0.1640906, -0.2512229, -0.9361849, 0.2887479, -0.2004554,
-0.6208171, 0.05503123, -0.1816816, -0.936185, 0.2887479, -0.2004549,
-0.6225989, 0.04925436, -0.1816816, -0.936185, 0.2887479, -0.2004549,
-0.6237569, 0.04961153, -0.175759, -0.936185, 0.2887479, -0.2004549,
-0.6219751, 0.0553884, -0.175759, -0.936185, 0.2887479, -0.2004549,
-0.9732531, 0.1637335, -0.2571456, -0.1915525, 0.05908063, 0.9797025,
-0.9750349, 0.1579566, -0.2571456, -0.1915525, 0.05908063, 0.9797025,
-0.6225989, 0.04925436, -0.1816816, -0.1915525, 0.05908063, 0.9797025,
-0.6208171, 0.05503123, -0.1816816, -0.1915525, 0.05908063, 0.9797025,
-0.9750349, 0.1579566, -0.2571456, 0.2947308, 0.9555804, -4.603735e-07,
-0.9761929, 0.1583138, -0.2512229, 0.2947308, 0.9555804, -4.603735e-07,
-0.6237569, 0.04961153, -0.175759, 0.2947308, 0.9555804, -4.603735e-07,
-0.6225989, 0.04925436, -0.1816816, 0.2947308, 0.9555804, -4.603735e-07,
-0.9761929, 0.1583138, -0.2512229, 0.1915526, -0.05908065, -0.9797025,
-0.9744111, 0.1640906, -0.2512229, 0.1915526, -0.05908065, -0.9797025,
-0.6219751, 0.0553884, -0.175759, 0.1915526, -0.05908065, -0.9797025,
-0.6237569, 0.04961153, -0.175759, 0.1915526, -0.05908065, -0.9797025,
-0.9744111, 0.1640906, -0.2512229, -0.2947308, -0.9555804, 4.603735e-07,
-0.9732531, 0.1637335, -0.2571456, -0.2947308, -0.9555804, 4.603735e-07,
-0.6208171, 0.05503123, -0.1816816, -0.2947308, -0.9555804, 4.603735e-07,
-0.6219751, 0.0553884, -0.175759, -0.2947308, -0.9555804, 4.603735e-07,
-0.9743583, 0.161696, -0.254919, -0.9361898, 0.2887442, -0.2004379,
-0.9748004, 0.1602626, -0.254919, -0.9361898, 0.2887442, -0.2004379,
-0.9750877, 0.1603512, -0.2534495, -0.9361898, 0.2887442, -0.2004379,
-0.9746456, 0.1617846, -0.2534495, -0.9361898, 0.2887442, -0.2004379,
-0.9743583, 0.161696, -0.254919, 0.05275171, -0.9961237, 0.07039136,
-0.9746456, 0.1617846, -0.2534495, 0.05275171, -0.9961237, 0.07039136,
-0.9765954, 0.1616011, -0.2545851, 0.05275171, -0.9961237, 0.07039136,
-0.9765954, 0.1616011, -0.2545851, 0.05275171, -0.9961237, 0.07039136,
-0.9743583, 0.161696, -0.254919, -0.1493652, 0.04606795, -0.9877083,
-0.9748004, 0.1602626, -0.254919, -0.1493652, 0.04606795, -0.9877083,
-0.9765954, 0.1616011, -0.2545851, -0.1493652, 0.04606795, -0.9877083,
-0.9765954, 0.1616011, -0.2545851, -0.1493652, 0.04606795, -0.9877083,
-0.9748004, 0.1602626, -0.254919, -0.6046793, -0.7933547, -0.07036447,
-0.9750877, 0.1603512, -0.2534495, -0.6046793, -0.7933547, -0.07036447,
-0.9765954, 0.1616011, -0.2545851, -0.6046793, -0.7933547, -0.07036447,
-0.9765954, 0.1616011, -0.2545851, -0.6046793, -0.7933547, -0.07036447,
-0.9750877, 0.1603512, -0.2534495, -0.5080622, 0.156699, 0.8469464,
-0.9746456, 0.1617846, -0.2534495, -0.5080622, 0.156699, 0.8469464,
-0.9765954, 0.1616011, -0.2545851, -0.5080622, 0.156699, 0.8469464,
-0.9765954, 0.1616011, -0.2545851, -0.5080622, 0.156699, 0.8469464
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
0.02648233, -0.04428326, -0.2286884, 0.5474697, 0.6576599, -0.5174556,
0.02002215, -0.03890548, -0.2286884, 0.5474697, 0.6576599, -0.5174556,
0.02280492, -0.03556262, -0.2214957, 0.5474697, 0.6576599, -0.5174556,
0.0292651, -0.0409404, -0.2214957, 0.5474697, 0.6576599, -0.5174556,
-0.3137807, -0.4530317, 0.09292039, 0.5474682, 0.6576608, -0.5174562,
-0.3202409, -0.4476539, 0.09292039, 0.5474682, 0.6576608, -0.5174562,
-0.3174581, -0.4443111, 0.1001132, 0.5474682, 0.6576608, -0.5174562,
-0.3109979, -0.4496889, 0.1001132, 0.5474682, 0.6576608, -0.5174562,
0.02648233, -0.04428326, -0.2286884, 0.33106, 0.3976931, 0.85571,
0.02002215, -0.03890548, -0.2286884, 0.33106, 0.3976931, 0.85571,
-0.3202409, -0.4476539, 0.09292039, 0.33106, 0.3976931, 0.85571,
-0.3137807, -0.4530317, 0.09292039, 0.33106, 0.3976931, 0.85571,
0.02002215, -0.03890548, -0.2286884, 0.7685546, -0.6397841, -1.782688e-07,
0.02280492, -0.03556262, -0.2214957, 0.7685546, -0.6397841, -1.782688e-07,
-0.3174581, -0.4443111, 0.1001132, 0.7685546, -0.6397841, -1.782688e-07,
-0.3202409, -0.4476539, 0.09292039, 0.7685546, -0.6397841, -1.782688e-07,
0.02280492, -0.03556262, -0.2214957, -0.3310599, -0.3976931, -0.85571,
0.0292651, -0.0409404, -0.2214957, -0.3310599, -0.3976931, -0.85571,
-0.3109979, -0.4496889, 0.1001132, -0.3310599, -0.3976931, -0.85571,
-0.3174581, -0.4443111, 0.1001132, -0.3310599, -0.3976931, -0.85571,
0.0292651, -0.0409404, -0.2214957, -0.7685548, 0.639784, -2.228361e-07,
0.02648233, -0.04428326, -0.2286884, -0.7685548, 0.639784, -2.228361e-07,
-0.3137807, -0.4530317, 0.09292039, -0.7685548, 0.639784, -2.228361e-07,
-0.3109979, -0.4496889, 0.1001132, -0.7685548, 0.639784, -2.228361e-07,
0.02497175, -0.04070105, -0.2257338, 0.5474681, 0.6576583, -0.5174593,
0.02381891, -0.03974137, -0.2257338, 0.5474681, 0.6576583, -0.5174593,
0.0243155, -0.03914483, -0.2244503, 0.5474681, 0.6576583, -0.5174593,
0.02546834, -0.0401045, -0.2244503, 0.5474681, 0.6576583, -0.5174593,
0.02497175, -0.04070105, -0.2257338, -0.9118493, 0.3681293, 0.1816915,
0.02546834, -0.0401045, -0.2244503, -0.9118493, 0.3681293, 0.1816915,
0.02573856, -0.03860762, -0.226127, -0.9118493, 0.3681293, 0.1816915,
0.02573856, -0.03860762, -0.226127, -0.9118493, 0.3681293, 0.1816915,
0.02497175, -0.04070105, -0.2257338, -0.1177541, -0.1414548, -0.9829164,
0.02381891, -0.03974137, -0.2257338, -0.1177541, -0.1414548, -0.9829164,
0.02573856, -0.03860762, -0.226127, -0.1177541, -0.1414548, -0.9829164,
0.02573856, -0.03860762, -0.226127, -0.1177541, -0.1414548, -0.9829164,
0.02381891, -0.03974137, -0.2257338, -0.5273914, 0.8299675, -0.1816927,
0.0243155, -0.03914483, -0.2244503, -0.5273914, 0.8299675, -0.1816927,
0.02573856, -0.03860762, -0.226127, -0.5273914, 0.8299675, -0.1816927,
0.02573856, -0.03860762, -0.226127, -0.5273914, 0.8299675, -0.1816927,
0.0243155, -0.03914483, -0.2244503, 0.5022108, 0.603292, 0.6195346,
0.02546834, -0.0401045, -0.2244503, 0.5022108, 0.603292, 0.6195346,
0.02573856, -0.03860762, -0.226127, 0.5022108, 0.603292, 0.6195346,
0.02573856, -0.03860762, -0.226127, 0.5022108, 0.603292, 0.6195346
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
-0.3966975, -0.7447105, 0.2909661, -0.2152494, -0.8128815, 0.5411944,
-0.3916768, -0.74604, 0.2909661, -0.2152494, -0.8128815, 0.5411944,
-0.3909573, -0.7433228, 0.2953336, -0.2152494, -0.8128815, 0.5411944,
-0.395978, -0.7419932, 0.2953336, -0.2152494, -0.8128815, 0.5411944,
-0.3184896, -0.4493652, 0.09433306, -0.2152541, -0.8128807, 0.5411938,
-0.3134688, -0.4506947, 0.09433306, -0.2152541, -0.8128807, 0.5411938,
-0.3127493, -0.4479775, 0.09870051, -0.2152541, -0.8128807, 0.5411938,
-0.31777, -0.446648, 0.09870051, -0.2152541, -0.8128807, 0.5411938,
-0.3966975, -0.7447105, 0.2909661, 0.1385327, 0.5231636, 0.8408974,
-0.3916768, -0.74604, 0.2909661, 0.1385327, 0.5231636, 0.8408974,
-0.3134688, -0.4506947, 0.09433306, 0.1385327, 0.5231636, 0.8408974,
-0.3184896, -0.4493652, 0.09433306, 0.1385327, 0.5231636, 0.8408974,
-0.3916768, -0.74604, 0.2909661, -0.9666823, 0.2559791, -2.004963e-07,
-0.3909573, -0.7433228, 0.2953336, -0.9666823, 0.2559791, -2.004963e-07,
-0.3127493, -0.4479775, 0.09870051, -0.9666823, 0.2559791, -2.004963e-07,
-0.3134688, -0.4506947, 0.09433306, -0.9666823, 0.2559791, -2.004963e-07,
-0.3909573, -0.7433228, 0.2953336, -0.1385385, -0.5231621, -0.8408975,
-0.395978, -0.7419932, 0.2953336, -0.1385385, -0.5231621, -0.8408975,
-0.31777, -0.446648, 0.09870051, -0.1385385, -0.5231621, -0.8408975,
-0.3127493, -0.4479775, 0.09870051, -0.1385385, -0.5231621, -0.8408975,
-0.395978, -0.7419932, 0.2953336, 0.9666827, -0.2559776, 2.668127e-06,
-0.3966975, -0.7447105, 0.2909661, 0.9666827, -0.2559776, 2.668127e-06,
-0.3184896, -0.4493652, 0.09433306, 0.9666827, -0.2559776, 2.668127e-06,
-0.31777, -0.446648, 0.09870051, 0.9666827, -0.2559776, 2.668127e-06,
-0.3946563, -0.744217, 0.2925192, -0.2152527, -0.8128782, 0.541198,
-0.3932063, -0.744601, 0.2925192, -0.2152527, -0.8128782, 0.541198,
-0.3929985, -0.7438163, 0.2937805, -0.2152527, -0.8128782, 0.541198,
-0.3944485, -0.7434323, 0.2937805, -0.2152527, -0.8128782, 0.541198,
-0.3946563, -0.744217, 0.2925192, 0.9807112, 0.04574387, -0.1900347,
-0.3944485, -0.7434323, 0.2937805, 0.9807112, 0.04574387, -0.1900347,
-0.3942579, -0.7456424, 0.2942322, 0.9807112, 0.04574387, -0.1900347,
-0.3942579, -0.7456424, 0.2942322, 0.9807112, 0.04574387, -0.1900347,
-0.3946563, -0.744217, 0.2925192, -0.2052983, -0.7752862, -0.597314,
-0.3932063, -0.744601, 0.2925192, -0.2052983, -0.7752862, -0.597314,
-0.3942579, -0.7456424, 0.2942322, -0.2052983, -0.7752862, -0.597314,
-0.3942579, -0.7456424, 0.2942322, -0.2052983, -0.7752862, -0.597314,
-0.3932063, -0.744601, 0.2925192, 0.8295473, -0.5251098, 0.1900283,
-0.3929985, -0.7438163, 0.2937805, 0.8295473, -0.5251098, 0.1900283,
-0.3942579, -0.7456424, 0.2942322, 0.8295473, -0.5251098, 0.1900283,
-0.3942579, -0.7456424, 0.2942322, 0.8295473, -0.5251098, 0.1900283,
-0.3929985, -0.7438163, 0.2937805, 0.05413483, 0.2044342, 0.9773824,
-0.3944485, -0.7434323, 0.2937805, 0.05413483, 0.2044342, 0.9773824,
-0.3942579, -0.7456424, 0.2942322, 0.05413483, 0.2044342, 0.9773824,
-0.3942579, -0.7456424, 0.2942322, 0.05413483, 0.2044342, 0.9773824
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
0.05472521, -0.003057502, -0.2519594, -0.7101, -0.6229849, 0.3280974,
0.06036256, -0.009483151, -0.2519594, -0.7101, -0.6229849, 0.3280974,
0.0624708, -0.007633553, -0.2438845, -0.7101, -0.6229849, 0.3280974,
0.05683345, -0.001207903, -0.2438845, -0.7101, -0.6229849, 0.3280974,
0.4935592, 0.3819403, -0.4547198, -0.7100983, -0.6229865, 0.3280977,
0.4991966, 0.3755147, -0.4547198, -0.7100983, -0.6229865, 0.3280977,
0.5013048, 0.3773643, -0.4466449, -0.7100983, -0.6229865, 0.3280977,
0.4956675, 0.38379, -0.4466449, -0.7100983, -0.6229865, 0.3280977,
0.05472521, -0.003057502, -0.2519594, 0.2466344, 0.2163773, 0.944644,
0.06036256, -0.009483151, -0.2519594, 0.2466344, 0.2163773, 0.944644,
0.4991966, 0.3755147, -0.4547198, 0.2466344, 0.2163773, 0.944644,
0.4935592, 0.3819403, -0.4547198, 0.2466344, 0.2163773, 0.944644,
0.06036256, -0.009483151, -0.2519594, -0.6594918, 0.7517118, 1.54263e-07,
0.0624708, -0.007633553, -0.2438845, -0.6594918, 0.7517118, 1.54263e-07,
0.5013048, 0.3773643, -0.4466449, -0.6594918, 0.7517118, 1.54263e-07,
0.4991966, 0.3755147, -0.4547198, -0.6594918, 0.7517118, 1.54263e-07,
0.0624708, -0.007633553, -0.2438845, -0.2466344, -0.2163773, -0.944644,
0.05683345, -0.001207903, -0.2438845, -0.2466344, -0.2163773, -0.944644,
0.4956675, 0.38379, -0.4466449, -0.2466344, -0.2163773, -0.944644,
0.5013048, 0.3773643, -0.4466449, -0.2466344, -0.2163773, -0.944644,
0.05683345, -0.001207903, -0.2438845, 0.6594917, -0.7517118, -1.322255e-07,
0.05472521, -0.003057502, -0.2519594, 0.6594917, -0.7517118, -1.322255e-07,
0.4935592, 0.3819403, -0.4547198, 0.6594917, -0.7517118, -1.322255e-07,
0.4956675, 0.38379, -0.4466449, 0.6594917, -0.7517118, -1.322255e-07,
0.05791841, -0.004944026, -0.2486304, -0.7100995, -0.6229855, 0.3280969,
0.05890765, -0.006071594, -0.2486304, -0.7100995, -0.6229855, 0.3280969,
0.0592776, -0.005747028, -0.2472135, -0.7100995, -0.6229855, 0.3280969,
0.05828836, -0.00461946, -0.2472135, -0.7100995, -0.6229855, 0.3280969,
0.05791841, -0.004944026, -0.2486304, 0.866834, -0.4851052, -0.1152022,
0.05828836, -0.00461946, -0.2472135, 0.866834, -0.4851052, -0.1152022,
0.0571778, -0.006591497, -0.2472658, 0.866834, -0.4851052, -0.1152022,
0.0571778, -0.006591497, -0.2472658, 0.866834, -0.4851052, -0.1152022,
0.05791841, -0.004944026, -0.2486304, -0.4802634, -0.4213454, -0.7692952,
0.05890765, -0.006071594, -0.2486304, -0.4802634, -0.4213454, -0.7692952,
0.0571778, -0.006591497, -0.2472658, -0.4802634, -0.4213454, -0.7692952,
0.0571778, -0.006591497, -0.2472658, -0.4802634, -0.4213454, -0.7692952,
0.05890765, -0.006071594, -0.2486304, 0.3681683, -0.9225942, 0.115203,
0.0592776, -0.005747028, -0.2472135, 0.3681683, -0.9225942, 0.115203,
0.0571778, -0.006591497, -0.2472658, 0.3681683, -0.9225942, 0.115203,
0.0571778, -0.006591497, -0.2472658, 0.3681683, -0.9225942, 0.115203,
0.0592776, -0.005747028, -0.2472135, -0.01840148, -0.01614402, 0.9997004,
0.05828836, -0.00461946, -0.2472135, -0.01840148, -0.01614402, 0.9997004,
0.0571778, -0.006591497, -0.2472658, -0.01840148, -0.01614402, 0.9997004,
0.0571778, -0.006591497, -0.2472658, -0.01840148, -0.01614402, 0.9997004
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
0.8121479, 0.5811359, -0.4624288, 0.8377137, 0.5455996, -0.02359612,
0.8089547, 0.5860387, -0.4624288, 0.8377137, 0.5455996, -0.02359612,
0.8090703, 0.586114, -0.4565794, 0.8377137, 0.5455996, -0.02359612,
0.8122635, 0.5812112, -0.4565794, 0.8377137, 0.5455996, -0.02359612,
0.4989708, 0.3771632, -0.4536071, 0.8377115, 0.5456032, -0.023596,
0.4957775, 0.3820661, -0.4536071, 0.8377115, 0.5456032, -0.023596,
0.4958932, 0.3821414, -0.4477576, 0.8377115, 0.5456032, -0.023596,
0.4990865, 0.3772386, -0.4477576, 0.8377115, 0.5456032, -0.023596,
0.8121479, 0.5811359, -0.4624288, 0.0197731, 0.01287814, 0.9997215,
0.8089547, 0.5860387, -0.4624288, 0.0197731, 0.01287814, 0.9997215,
0.4957775, 0.3820661, -0.4536071, 0.0197731, 0.01287814, 0.9997215,
0.4989708, 0.3771632, -0.4536071, 0.0197731, 0.01287814, 0.9997215,
0.8089547, 0.5860387, -0.4624288, 0.5457546, -0.8379451, -1.499336e-06,
0.8090703, 0.586114, -0.4565794, 0.5457546, -0.8379451, -1.499336e-06,
0.4958932, 0.3821414, -0.4477576, 0.5457546, -0.8379451, -1.499336e-06,
0.4957775, 0.3820661, -0.4536071, 0.5457546, -0.8379451, -1.499336e-06,
0.8090703, 0.586114, -0.4565794, -0.01977317, -0.01287818, -0.9997216,
0.8122635, 0.5812112, -0.4565794, -0.01977317, -0.01287818, -0.9997216,
0.4990865, 0.3772386, -0.4477576, -0.01977317, -0.01287818, -0.9997216,
0.4958932, 0.3821414, -0.4477576, -0.01977317, -0.01287818, -0.9997216,
0.8122635, 0.5812112, -0.4565794, -0.5457546, 0.837945, 1.500167e-06,
0.8121479, 0.5811359, -0.4624288, -0.5457546, 0.837945, 1.500167e-06,
0.4989708, 0.3771632, -0.4536071, -0.5457546, 0.837945, 1.500167e-06,
0.4990865, 0.3772386, -0.4477576, -0.5457546, 0.837945, 1.500167e-06,
0.8110036, 0.5829868, -0.4602539, 0.8377238, 0.5455851, -0.02357526,
0.810185, 0.5842438, -0.4602539, 0.8377238, 0.5455851, -0.02357526,
0.8102146, 0.5842631, -0.4587543, 0.8377238, 0.5455851, -0.02357526,
0.8110332, 0.5830061, -0.4587543, 0.8377238, 0.5455851, -0.02357526,
0.8110036, 0.5829868, -0.4602539, -0.805141, 0.5930254, 0.008300176,
0.8110332, 0.5830061, -0.4587543, -0.805141, 0.5930254, 0.008300176,
0.8122845, 0.5847161, -0.4595513, -0.805141, 0.5930254, 0.008300176,
0.8122845, 0.5847161, -0.4595513, -0.805141, 0.5930254, 0.008300176,
0.8110036, 0.5829868, -0.4602539, 0.2756276, 0.1795082, -0.944355,
0.810185, 0.5842438, -0.4602539, 0.2756276, 0.1795082, -0.944355,
0.8122845, 0.5847161, -0.4595513, 0.2756276, 0.1795082, -0.944355,
0.8122845, 0.5847161, -0.4595513, 0.2756276, 0.1795082, -0.944355,
0.810185, 0.5842438, -0.4602539, -0.2168477, 0.9761702, -0.008287692,
0.8102146, 0.5842631, -0.4587543, -0.2168477, 0.9761702, -0.008287692,
0.8122845, 0.5847161, -0.4595513, -0.2168477, 0.9761702, -0.008287692,
0.8122845, 0.5847161, -0.4595513, -0.2168477, 0.9761702, -0.008287692,
0.8102146, 0.5842631, -0.4587543, 0.312647, 0.2036327, 0.9277853,
0.8110332, 0.5830061, -0.4587543, 0.312647, 0.2036327, 0.9277853,
0.8122845, 0.5847161, -0.4595513, 0.312647, 0.2036327, 0.9277853,
0.8122845, 0.5847161, -0.4595513, 0.312647, 0.2036327, 0.9277853
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
0.03447573, -0.04690765, -0.2277635, 0.2982666, 0.7810373, -0.548651,
0.02662322, -0.04390889, -0.2277635, 0.2982666, 0.7810373, -0.548651,
0.02826849, -0.0396006, -0.220736, 0.2982666, 0.7810373, -0.548651,
0.036121, -0.04259936, -0.220736, 0.2982666, 0.7810373, -0.548651,
-0.1495889, -0.5288969, 0.1108169, 0.2982677, 0.781037, -0.5486506,
-0.1574414, -0.5258982, 0.1108169, 0.2982677, 0.781037, -0.5486506,
-0.1557962, -0.5215899, 0.1178445, 0.2982677, 0.781037, -0.5486506,
-0.1479436, -0.5245886, 0.1178445, 0.2982677, 0.781037, -0.5486506,
0.03447573, -0.04690765, -0.2277635, 0.1957347, 0.5125484, 0.8360514,
0.02662322, -0.04390889, -0.2277635, 0.1957347, 0.5125484, 0.8360514,
-0.1574414, -0.5258982, 0.1108169, 0.1957347, 0.5125484, 0.8360514,
-0.1495889, -0.5288969, 0.1108169, 0.1957347, 0.5125484, 0.8360514,
0.02662322, -0.04390889, -0.2277635, 0.9341975, -0.3567562, 2.244266e-07,
0.02826849, -0.0396006, -0.220736, 0.9341975, -0.3567562, 2.244266e-07,
-0.1557962, -0.5215899, 0.1178445, 0.9341975, -0.3567562, 2.244266e-07,
-0.1574414, -0.5258982, 0.1108169, 0.9341975, -0.3567562, 2.244266e-07,
0.02826849, -0.0396006, -0.220736, -0.1957349, -0.5125483, -0.8360515,
0.036121, -0.04259936, -0.220736, -0.1957349, -0.5125483, -0.8360515,
-0.1479436, -0.5245886, 0.1178445, -0.1957349, -0.5125483, -0.8360515,
-0.1557962, -0.5215899, 0.1178445, -0.1957349, -0.5125483, -0.8360515,
0.036121, -0.04259936, -0.220736, -0.9341974, 0.3567563, -8.977067e-08,
0.03447573, -0.04690765, -0.2277635, -0.9341974, 0.3567563, -8.977067e-08,
-0.1495889, -0.5288969, 0.1108169, -0.9341974, 0.3567563, -8.977067e-08,
-0.1479436, -0.5245886, 0.1178445, -0.9341974, 0.3567563, -8.977067e-08,
0.03192595, -0.0439061, -0.2248768, 0.2982662, 0.7810373, -0.548651,
0.03052466, -0.04337097, -0.2248768, 0.2982662, 0.7810373, -0.548651,
0.03081826, -0.04260214, -0.2236227, 0.2982662, 0.7810373, -0.548651,
0.03221956, -0.04313728, -0.2236227, 0.2982662, 0.7810373, -0.548651,
0.03192595, -0.0439061, -0.2248768, -0.9794449, 0.05980003, 0.1926434,
0.03221956, -0.04313728, -0.2236227, -0.9794449, 0.05980003, 0.1926434,
0.03196864, -0.04169205, -0.2253471, -0.9794449, 0.05980003, 0.1926434,
0.03196864, -0.04169205, -0.2253471, -0.9794449, 0.05980003, 0.1926434,
0.03192595, -0.0439061, -0.2248768, -0.0785439, -0.2056744, -0.9754634,
0.03052466, -0.04337097, -0.2248768, -0.0785439, -0.2056744, -0.9754634,
0.03196864, -0.04169205, -0.2253471, -0.0785439, -0.2056744, -0.9754634,
0.03196864, -0.04169205, -0.2253471, -0.0785439, -0.2056744, -0.9754634,
0.03052466, -0.04337097, -0.2248768, -0.7699886, 0.6082811, -0.1926436,
0.03081826, -0.04260214, -0.2236227, -0.7699886, 0.6082811, -0.1926436,
0.03196864, -0.04169205, -0.2253471, -0.7699886, 0.6082811, -0.1926436,
0.03196864, -0.04169205, -0.2253471, -0.7699886, 0.6082811, -0.1926436,
0.03081826, -0.04260214, -0.2236227, 0.2880009, 0.7541556, 0.5901734,
0.03221956, -0.04313728, -0.2236227, 0.2880009, 0.7541556, 0.5901734,
0.03196864, -0.04169205, -0.2253471, 0.2880009, 0.7541556, 0.5901734,
0.03196864, -0.04169205, -0.2253471, 0.2880009, 0.7541556, 0.5901734
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
-0.385499, -0.7485541, 0.2922888, -0.6245412, -0.6087968, 0.489198,
-0.3818736, -0.7522733, 0.2922888, -0.6245412, -0.6087968, 0.489198,
-0.3800542, -0.7504997, 0.2968187, -0.6245412, -0.6087968, 0.489198,
-0.3836796, -0.7467806, 0.2968187, -0.6245412, -0.6087968, 0.489198,
-0.1554149, -0.5242706, 0.1120658, -0.6245414, -0.608797, 0.4891977,
-0.1517895, -0.5279897, 0.1120658, -0.6245414, -0.608797, 0.4891977,
-0.1499701, -0.5262162, 0.1165956, -0.6245414, -0.608797, 0.4891977,
-0.1535955, -0.5224971, 0.1165956, -0.6245414, -0.608797, 0.4891977,
-0.385499, -0.7485541, 0.2922888, 0.3503028, 0.3414718, 0.8721725,
-0.3818736, -0.7522733, 0.2922888, 0.3503028, 0.3414718, 0.8721725,
-0.1517895, -0.5279897, 0.1120658, 0.3503028, 0.3414718, 0.8721725,
-0.1554149, -0.5242706, 0.1120658, 0.3503028, 0.3414718, 0.8721725,
-0.3818736, -0.7522733, 0.2922888, -0.698023, 0.7160754, -2.889967e-07,
-0.3800542, -0.7504997, 0.2968187, -0.698023, 0.7160754, -2.889967e-07,
-0.1499701, -0.5262162, 0.1165956, -0.698023, 0.7160754, -2.889967e-07,
-0.1517895, -0.5279897, 0.1120658, -0.698023, 0.7160754, -2.889967e-07,
-0.3800542, -0.7504997, 0.2968187, -0.3503028, -0.3414719, -0.8721725,
-0.3836796, -0.7467806, 0.2968187, -0.3503028, -0.3414719, -0.8721725,
-0.1535955, -0.5224971, 0.1165956, -0.3503028, -0.3414719, -0.8721725,
-0.1499701, -0.5262162, 0.1165956, -0.3503028, -0.3414719, -0.8721725,
-0.3836796, -0.7467806, 0.2968187, 0.698023, -0.7160754, 3.042071e-07,
-0.385499, -0.7485541, 0.2922888, 0.698023, -0.7160754, 3.042071e-07,
-0.1554149, -0.5242706, 0.1120658, 0.698023, -0.7160754, 3.042071e-07,
-0.1535955, -0.5224971, 0.1165956, 0.698023, -0.7160754, 3.042071e-07,
-0.3835628, -0.7492459, 0.2938996, -0.6245458, -0.608777, 0.489217,
-0.3825158, -0.7503201, 0.2938996, -0.6245458, -0.608777, 0.489217,
-0.3819903, -0.7498078, 0.2952079, -0.6245458, -0.608777, 0.489217,
-0.3830374, -0.7487338, 0.2952079, -0.6245458, -0.608777, 0.489217,
-0.3835628, -0.7492459, 0.2938996, 0.8728696, -0.4567209, -0.17177,
-0.3830374, -0.7487338, 0.2952079, 0.8728696, -0.4567209, -0.17177,
-0.3840257, -0.7507445, 0.2955321, 0.8728696, -0.4567209, -0.17177,
-0.3840257, -0.7507445, 0.2955321, 0.8728696, -0.4567209, -0.17177,
-0.3835628, -0.7492459, 0.2938996, -0.5472943, -0.5334759, -0.6448817,
-0.3825158, -0.7503201, 0.2938996, -0.5472943, -0.5334759, -0.6448817,
-0.3840257, -0.7507445, 0.2955321, -0.5472943, -0.5334759, -0.6448817,
-0.3840257, -0.7507445, 0.2955321, -0.5472943, -0.5334759, -0.6448817,
-0.3825158, -0.7503201, 0.2938996, 0.4343001, -0.8842375, 0.1717776,
-0.3819903, -0.7498078, 0.2952079, 0.4343001, -0.8842375, 0.1717776,
-0.3840257, -0.7507445, 0.2955321, 0.4343001, -0.8842375, 0.1717776,
-0.3840257, -0.7507445, 0.2955321, 0.4343001, -0.8842375, 0.1717776,
-0.3819903, -0.7498078, 0.2952079, 0.1086978, 0.1059623, 0.9884112,
-0.3830374, -0.7487338, 0.2952079, 0.1086978, 0.1059623, 0.9884112,
-0.3840257, -0.7507445, 0.2955321, 0.1086978, 0.1059623, 0.9884112,
-0.3840257, -0.7507445, 0.2955321, 0.1086978, 0.1059623, 0.9884112
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
-0.2951072, 0.03743043, -0.557683, -0.726088, 0.1196609, -0.6771097,
-0.2965399, 0.02873724, -0.557683, -0.726088, 0.1196609, -0.6771097,
-0.3024261, 0.02970731, -0.5511996, -0.726088, 0.1196609, -0.6771097,
-0.3009934, 0.0384005, -0.5511996, -0.726088, 0.1196609, -0.6771097,
0.04308475, -0.01830456, -0.2423051, -0.7260898, 0.1196615, -0.6771077,
0.04165209, -0.02699775, -0.2423051, -0.7260898, 0.1196615, -0.6771077,
0.03576586, -0.02602768, -0.2358216, -0.7260898, 0.1196615, -0.6771077,
0.03719852, -0.01733449, -0.2358216, -0.7260898, 0.1196615, -0.6771077,
-0.2951072, 0.03743043, -0.557683, -0.6680962, 0.1101037, 0.7358835,
-0.2965399, 0.02873724, -0.557683, -0.6680962, 0.1101037, 0.7358835,
0.04165209, -0.02699775, -0.2423051, -0.6680962, 0.1101037, 0.7358835,
0.04308475, -0.01830456, -0.2423051, -0.6680962, 0.1101037, 0.7358835,
-0.2965399, 0.02873724, -0.557683, 0.1626094, 0.9866905, -4.964528e-08,
-0.3024261, 0.02970731, -0.5511996, 0.1626094, 0.9866905, -4.964528e-08,
0.03576586, -0.02602768, -0.2358216, 0.1626094, 0.9866905, -4.964528e-08,
0.04165209, -0.02699775, -0.2423051, 0.1626094, 0.9866905, -4.964528e-08,
-0.3024261, 0.02970731, -0.5511996, 0.6680963, -0.1101037, -0.7358835,
-0.3009934, 0.0384005, -0.5511996, 0.6680963, -0.1101037, -0.7358835,
0.03719852, -0.01733449, -0.2358216, 0.6680963, -0.1101037, -0.7358835,
0.03576586, -0.02602768, -0.2358216, 0.6680963, -0.1101037, -0.7358835,
-0.3009934, 0.0384005, -0.5511996, -0.1626093, -0.9866905, -9.929057e-08,
-0.2951072, 0.03743043, -0.557683, -0.1626093, -0.9866905, -9.929057e-08,
0.04308475, -0.01830456, -0.2423051, -0.1626093, -0.9866905, -9.929057e-08,
0.03719852, -0.01733449, -0.2358216, -0.1626093, -0.9866905, -9.929057e-08,
-0.2981436, 0.03422631, -0.5549932, -0.7260897, 0.1196705, -0.6771062,
-0.2983876, 0.03274627, -0.5549932, -0.7260897, 0.1196705, -0.6771062,
-0.2993897, 0.03291143, -0.5538893, -0.7260897, 0.1196705, -0.6771062,
-0.2991458, 0.03439147, -0.5538893, -0.7260897, 0.1196705, -0.6771062,
-0.2981436, 0.03422631, -0.5549932, 0.1026873, -0.9658834, 0.237749,
-0.2991458, 0.03439147, -0.5538893, 0.1026873, -0.9658834, 0.237749,
-0.3002189, 0.03380819, -0.5557955, 0.1026873, -0.9658834, 0.237749,
-0.3002189, 0.03380819, -0.5557955, 0.1026873, -0.9658834, 0.237749,
-0.2981436, 0.03422631, -0.5549932, 0.3706227, -0.06108417, -0.9267727,
-0.2983876, 0.03274627, -0.5549932, 0.3706227, -0.06108417, -0.9267727,
-0.3002189, 0.03380819, -0.5557955, 0.3706227, -0.06108417, -0.9267727,
-0.3002189, 0.03380819, -0.5557955, 0.3706227, -0.06108417, -0.9267727,
-0.2983876, 0.03274627, -0.5549932, -0.4072, -0.8818534, -0.2377452,
-0.2993897, 0.03291143, -0.5538893, -0.4072, -0.8818534, -0.2377452,
-0.3002189, 0.03380819, -0.5557955, -0.4072, -0.8818534, -0.2377452,
-0.3002189, 0.03380819, -0.5557955, -0.4072, -0.8818534, -0.2377452,
-0.2993897, 0.03291143, -0.5538893, -0.8805079, 0.1451028, 0.4512772,
-0.2991458, 0.03439147, -0.5538893, -0.8805079, 0.1451028, 0.4512772,
-0.3002189, 0.03380819, -0.5557955, -0.8805079, 0.1451028, 0.4512772,
-0.3002189, 0.03380819, -0.5557955, -0.8805079, 0.1451028, 0.4512772
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
-0.287046, 0.02493442, 0.08597257, -0.6995826, 0.09138301, 0.7086841,
-0.2881904, 0.0161734, 0.08597257, -0.6995826, 0.09138301, 0.7086841,
-0.2819816, 0.01536238, 0.09220622, -0.6995826, 0.09138301, 0.7086841,
-0.2808372, 0.0241234, 0.09220622, -0.6995826, 0.09138301, 0.7086841,
0.03689311, -0.0173801, -0.2421802, -0.6995835, 0.09138313, 0.7086834,
0.03574871, -0.02614112, -0.2421802, -0.6995835, 0.09138313, 0.7086834,
0.0419575, -0.02695214, -0.2359465, -0.6995835, 0.09138313, 0.7086834,
0.0431019, -0.01819112, -0.2359465, -0.6995835, 0.09138313, 0.7086834,
-0.287046, 0.02493442, 0.08597257, 0.7027135, -0.09179198, 0.7055267,
-0.2881904, 0.0161734, 0.08597257, 0.7027135, -0.09179198, 0.7055267,
0.03574871, -0.02614112, -0.2421802, 0.7027135, -0.09179198, 0.7055267,
0.03689311, -0.0173801, -0.2421802, 0.7027135, -0.09179198, 0.7055267,
-0.2881904, 0.0161734, 0.08597257, 0.1295245, 0.9915762, -1.067059e-07,
-0.2819816, 0.01536238, 0.09220622, 0.1295245, 0.9915762, -1.067059e-07,
0.0419575, -0.02695214, -0.2359465, 0.1295245, 0.9915762, -1.067059e-07,
0.03574871, -0.02614112, -0.2421802, 0.1295245, 0.9915762, -1.067059e-07,
-0.2819816, 0.01536238, 0.09220622, -0.7027135, 0.09179198, -0.7055266,
-0.2808372, 0.0241234, 0.09220622, -0.7027135, 0.09179198, -0.7055266,
0.0431019, -0.01819112, -0.2359465, -0.7027135, 0.09179198, -0.7055266,
0.0419575, -0.02695214, -0.2359465, -0.7027135, 0.09179198, -0.7055266,
-0.2808372, 0.0241234, 0.09220622, -0.1295245, -0.9915762, 9.959213e-08,
-0.287046, 0.02493442, 0.08597257, -0.1295245, -0.9915762, 9.959213e-08,
0.03689311, -0.0173801, -0.2421802, -0.1295245, -0.9915762, 9.959213e-08,
0.0431019, -0.01819112, -0.2359465, -0.1295245, -0.9915762, 9.959213e-08,
-0.2849437, 0.02096093, 0.08856025, -0.6995902, 0.09138139, 0.7086769,
-0.285138, 0.01947356, 0.08856025, -0.6995902, 0.09138139, 0.7086769,
-0.2840839, 0.01933587, 0.08961854, -0.6995902, 0.09138139, 0.7086769,
-0.2838896, 0.02082324, 0.08961854, -0.6995902, 0.09138139, 0.7086769,
-0.2849437, 0.02096093, 0.08856025, 0.1243614, -0.9605288, -0.2488346,
-0.2838896, 0.02082324, 0.08961854, 0.1243614, -0.9605288, -0.2488346,
-0.285913, 0.02033117, 0.09050676, 0.1243614, -0.9605288, -0.2488346,
-0.285913, 0.02033117, 0.09050676, 0.1243614, -0.9605288, -0.2488346,
-0.2849437, 0.02096093, 0.08856025, -0.9036084, 0.1180305, -0.4117775,
-0.285138, 0.01947356, 0.08856025, -0.9036084, 0.1180305, -0.4117775,
-0.285913, 0.02033117, 0.09050676, -0.9036084, 0.1180305, -0.4117775,
-0.285913, 0.02033117, 0.09050676, -0.9036084, 0.1180305, -0.4117775,
-0.285138, 0.01947356, 0.08856025, -0.3669209, -0.8963551, 0.2488307,
-0.2840839, 0.01933587, 0.08961854, -0.3669209, -0.8963551, 0.2488307,
-0.285913, 0.02033117, 0.09050676, -0.3669209, -0.8963551, 0.2488307,
-0.285913, 0.02033117, 0.09050676, -0.3669209, -0.8963551, 0.2488307,
-0.2840839, 0.01933587, 0.08961854, 0.4123279, -0.053867, 0.9094416,
-0.2838896, 0.02082324, 0.08961854, 0.4123279, -0.053867, 0.9094416,
-0.285913, 0.02033117, 0.09050676, 0.4123279, -0.053867, 0.9094416,
-0.285913, 0.02033117, 0.09050676, 0.4123279, -0.053867, 0.9094416
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
-0.1386048, 0.3414703, -0.007575545, -0.3881728, 0.771102, 0.5047016,
-0.1466227, 0.3374341, -0.007575545, -0.3881728, 0.771102, 0.5047016,
-0.1445856, 0.3333874, 0.0001738321, -0.3881728, 0.771102, 0.5047016,
-0.1365677, 0.3374236, 0.0001738321, -0.3881728, 0.771102, 0.5047016,
0.04241572, -0.01812468, -0.242938, -0.388173, 0.771101, 0.5047029,
0.0343978, -0.0221609, -0.242938, -0.388173, 0.771101, 0.5047029,
0.0364349, -0.02620756, -0.2351887, -0.388173, 0.771101, 0.5047029,
0.04445281, -0.02217134, -0.2351887, -0.388173, 0.771101, 0.5047029,
-0.1386048, 0.3414703, -0.007575545, 0.226935, -0.4508045, 0.8632935,
-0.1466227, 0.3374341, -0.007575545, 0.226935, -0.4508045, 0.8632935,
0.0343978, -0.0221609, -0.242938, 0.226935, -0.4508045, 0.8632935,
0.04241572, -0.01812468, -0.242938, 0.226935, -0.4508045, 0.8632935,
-0.1466227, 0.3374341, -0.007575545, 0.8932086, 0.4496425, -5.144836e-07,
-0.1445856, 0.3333874, 0.0001738321, 0.8932086, 0.4496425, -5.144836e-07,
0.0364349, -0.02620756, -0.2351887, 0.8932086, 0.4496425, -5.144836e-07,
0.0343978, -0.0221609, -0.242938, 0.8932086, 0.4496425, -5.144836e-07,
-0.1445856, 0.3333874, 0.0001738321, -0.2269351, 0.4508045, -0.8632935,
-0.1365677, 0.3374236, 0.0001738321, -0.2269351, 0.4508045, -0.8632935,
0.04445281, -0.02217134, -0.2351887, -0.2269351, 0.4508045, -0.8632935,
0.0364349, -0.02620756, -0.2351887, -0.2269351, 0.4508045, -0.8632935,
-0.1365677, 0.3374236, 0.0001738321, -0.8932086, -0.4496425, 5.005787e-07,
-0.1386048, 0.3414703, -0.007575545, -0.8932086, -0.4496425, 5.005787e-07,
0.04241572, -0.01812468, -0.242938, -0.8932086, -0.4496425, 5.005787e-07,
0.04445281, -0.02217134, -0.2351887, -0.8932086, -0.4496425, 5.005787e-07,
-0.1410955, 0.3381042, -0.004348327, -0.388184, 0.7711024, 0.5046923,
-0.1424353, 0.3374297, -0.004348327, -0.388184, 0.7711024, 0.5046923,
-0.1420949, 0.3367535, -0.003053386, -0.388184, 0.7711024, 0.5046923,
-0.1407551, 0.337428, -0.003053386, -0.388184, 0.7711024, 0.5046923,
-0.1410955, 0.3381042, -0.004348327, -0.7000389, -0.6917653, -0.1772183,
-0.1407551, 0.337428, -0.003053386, -0.7000389, -0.6917653, -0.1772183,
-0.1423715, 0.338971, -0.002691452, -0.7000389, -0.6917653, -0.1772183,
-0.1423715, 0.338971, -0.002691452, -0.7000389, -0.6917653, -0.1772183,
-0.1410955, 0.3381042, -0.004348327, -0.3487898, 0.6928481, -0.6311156,
-0.1424353, 0.3374297, -0.004348327, -0.3487898, 0.6928481, -0.6311156,
-0.1423715, 0.338971, -0.002691452, -0.3487898, 0.6928481, -0.6311156,
-0.1423715, 0.338971, -0.002691452, -0.3487898, 0.6928481, -0.6311156,
-0.1424353, 0.3374297, -0.004348327, -0.9726339, -0.1502614, 0.1772144,
-0.1420949, 0.3367535, -0.003053386, -0.9726339, -0.1502614, 0.1772144,
-0.1423715, 0.338971, -0.002691452, -0.9726339, -0.1502614, 0.1772144,
-0.1423715, 0.338971, -0.002691452, -0.9726339, -0.1502614, 0.1772144,
-0.1420949, 0.3367535, -0.003053386, 0.07618846, -0.1513501, 0.9855397,
-0.1407551, 0.337428, -0.003053386, 0.07618846, -0.1513501, 0.9855397,
-0.1423715, 0.338971, -0.002691452, 0.07618846, -0.1513501, 0.9855397,
-0.1423715, 0.338971, -0.002691452, 0.07618846, -0.1513501, 0.9855397
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
0.02487686, -0.04386431, -0.6691775, -0.02853004, -0.06396993, -0.997544,
0.03300299, -0.0474885, -0.6691775, -0.02853004, -0.06396993, -0.997544,
0.02938771, -0.05559467, -0.6685543, -0.02853004, -0.06396993, -0.997544,
0.02126157, -0.05197048, -0.6685543, -0.02853004, -0.06396993, -0.997544,
0.03716988, -0.01630094, -0.239375, -0.02853071, -0.06397147, -0.9975438,
0.04529601, -0.01992513, -0.239375, -0.02853071, -0.06397147, -0.9975438,
0.04168073, -0.0280313, -0.2387517, -0.02853071, -0.06397147, -0.9975438,
0.0335546, -0.02440711, -0.2387517, -0.02853071, -0.06397147, -0.9975438,
0.02487686, -0.04386431, -0.6691775, -0.4063174, -0.9110432, 0.07004679,
0.03300299, -0.0474885, -0.6691775, -0.4063174, -0.9110432, 0.07004679,
0.04529601, -0.01992513, -0.239375, -0.4063174, -0.9110432, 0.07004679,
0.03716988, -0.01630094, -0.239375, -0.4063174, -0.9110432, 0.07004679,
0.03300299, -0.0474885, -0.6691775, -0.9132863, 0.407318, -1.138748e-08,
0.02938771, -0.05559467, -0.6685543, -0.9132863, 0.407318, -1.138748e-08,
0.04168073, -0.0280313, -0.2387517, -0.9132863, 0.407318, -1.138748e-08,
0.04529601, -0.01992513, -0.239375, -0.9132863, 0.407318, -1.138748e-08,
0.02938771, -0.05559467, -0.6685543, 0.4063174, 0.9110432, -0.07004678,
0.02126157, -0.05197048, -0.6685543, 0.4063174, 0.9110432, -0.07004678,
0.0335546, -0.02440711, -0.2387517, 0.4063174, 0.9110432, -0.07004678,
0.04168073, -0.0280313, -0.2387517, 0.4063174, 0.9110432, -0.07004678,
0.02126157, -0.05197048, -0.6685543, 0.9132864, -0.407318, 1.138748e-08,
0.02487686, -0.04386431, -0.6691775, 0.9132864, -0.407318, 1.138748e-08,
0.03716988, -0.01630094, -0.239375, 0.9132864, -0.407318, 1.138748e-08,
0.0335546, -0.02440711, -0.2387517, 0.9132864, -0.407318, 1.138748e-08,
0.02675205, -0.04874072, -0.6689184, -0.02853483, -0.06398058, -0.997543,
0.02812198, -0.0493517, -0.6689184, -0.02853483, -0.06398058, -0.997543,
0.02751251, -0.05071826, -0.6688133, -0.02853483, -0.06398058, -0.997543,
0.02614258, -0.05010728, -0.6688133, -0.02853483, -0.06398058, -0.997543,
0.02675205, -0.04874072, -0.6689184, 0.8651573, -0.3589199, 0.350256,
0.02614258, -0.05010728, -0.6688133, 0.8651573, -0.3589199, 0.350256,
0.02707522, -0.04985743, -0.670861, 0.8651573, -0.3589199, 0.350256,
0.02707522, -0.04985743, -0.670861, 0.8651573, -0.3589199, 0.350256,
0.02675205, -0.04874072, -0.6689184, 0.3704301, 0.8305756, -0.4158435,
0.02812198, -0.0493517, -0.6689184, 0.3704301, 0.8305756, -0.4158435,
0.02707522, -0.04985743, -0.670861, 0.3704301, 0.8305756, -0.4158435,
0.02707522, -0.04985743, -0.670861, 0.3704301, 0.8305756, -0.4158435,
0.02812198, -0.0493517, -0.6689184, 0.8451189, -0.4038495, -0.3502564,
0.02751251, -0.05071826, -0.6688133, 0.8451189, -0.4038495, -0.3502564,
0.02707522, -0.04985743, -0.670861, 0.8451189, -0.4038495, -0.3502564,
0.02707522, -0.04985743, -0.670861, 0.8451189, -0.4038495, -0.3502564,
0.02751251, -0.05071826, -0.6688133, -0.3904659, -0.8754997, -0.2846694,
0.02614258, -0.05010728, -0.6688133, -0.3904659, -0.8754997, -0.2846694,
0.02707522, -0.04985743, -0.670861, -0.3904659, -0.8754997, -0.2846694,
0.02707522, -0.04985743, -0.670861, -0.3904659, -0.8754997, -0.2846694
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
0.1445495, 0.4434509, -0.190814, 0.2109905, 0.9714298, 0.1086606,
0.136922, 0.4451075, -0.190814, 0.2109905, 0.9714298, 0.1086606,
0.136742, 0.4442787, -0.1830549, 0.2109905, 0.9714298, 0.1086606,
0.1443695, 0.442622, -0.1830549, 0.2109905, 0.9714298, 0.1086606,
0.04332904, -0.02258005, -0.2429429, 0.2109915, 0.9714295, 0.1086613,
0.03570158, -0.02092339, -0.2429429, 0.2109915, 0.9714295, 0.1086613,
0.03552157, -0.0217522, -0.2351838, 0.2109915, 0.9714295, 0.1086613,
0.04314903, -0.02340886, -0.2351838, 0.2109915, 0.9714295, 0.1086613,
0.1445495, 0.4434509, -0.190814, -0.02306307, -0.1061857, 0.9940789,
0.136922, 0.4451075, -0.190814, -0.02306307, -0.1061857, 0.9940789,
0.03570158, -0.02092339, -0.2429429, -0.02306307, -0.1061857, 0.9940789,
0.04332904, -0.02258005, -0.2429429, -0.02306307, -0.1061857, 0.9940789,
0.136922, 0.4451075, -0.190814, 0.9772157, -0.2122483, 9.501807e-07,
0.136742, 0.4442787, -0.1830549, 0.9772157, -0.2122483, 9.501807e-07,
0.03552157, -0.0217522, -0.2351838, 0.9772157, -0.2122483, 9.501807e-07,
0.03570158, -0.02092339, -0.2429429, 0.9772157, -0.2122483, 9.501807e-07,
0.136742, 0.4442787, -0.1830549, 0.02306347, 0.1061856, -0.9940789,
0.1443695, 0.442622, -0.1830549, 0.02306347, 0.1061856, -0.9940789,
0.04314903, -0.02340886, -0.2351838, 0.02306347, 0.1061856, -0.9940789,
0.03552157, -0.0217522, -0.2351838, 0.02306347, 0.1061856, -0.9940789,
0.1443695, 0.442622, -0.1830549, -0.9772158, 0.2122482, -1.437901e-07,
0.1445495, 0.4434509, -0.190814, -0.9772158, 0.2122482, -1.437901e-07,
0.04332904, -0.02258005, -0.2429429, -0.9772158, 0.2122482, -1.437901e-07,
0.04314903, -0.02340886, -0.2351838, -0.9772158, 0.2122482, -1.437901e-07,
0.141396, 0.4437852, -0.18768, 0.2109949, 0.9714299, 0.1086508,
0.1399301, 0.4441036, -0.18768, 0.2109949, 0.9714299, 0.1086508,
0.1398955, 0.4439443, -0.1861889, 0.2109949, 0.9714299, 0.1086508,
0.1413614, 0.443626, -0.1861889, 0.2109949, 0.9714299, 0.1086508,
0.141396, 0.4437852, -0.18768, -0.9890795, -0.1423609, -0.03814651,
0.1413614, 0.443626, -0.1861889, -0.9890795, -0.1423609, -0.03814651,
0.1410677, 0.4458076, -0.1867171, -0.9890795, -0.1423609, -0.03814651,
0.1410677, 0.4458076, -0.1867171, -0.9890795, -0.1423609, -0.03814651,
0.141396, 0.4437852, -0.18768, 0.0956801, 0.4405154, -0.8926318,
0.1399301, 0.4441036, -0.18768, 0.0956801, 0.4405154, -0.8926318,
0.1410677, 0.4458076, -0.1867171, 0.0956801, 0.4405154, -0.8926318,
0.1410677, 0.4458076, -0.1867171, 0.0956801, 0.4405154, -0.8926318,
0.1399301, 0.4441036, -0.18768, -0.8409117, 0.5398257, 0.03815346,
0.1398955, 0.4439443, -0.1861889, -0.8409117, 0.5398257, 0.03815346,
0.1410677, 0.4458076, -0.1867171, -0.8409117, 0.5398257, 0.03815346,
0.1410677, 0.4458076, -0.1867171, -0.8409117, 0.5398257, 0.03815346,
0.1398955, 0.4439443, -0.1861889, 0.05248988, 0.2416657, 0.9689389,
0.1413614, 0.443626, -0.1861889, 0.05248988, 0.2416657, 0.9689389,
0.1410677, 0.4458076, -0.1867171, 0.05248988, 0.2416657, 0.9689389,
0.1410677, 0.4458076, -0.1867171, 0.05248988, 0.2416657, 0.9689389
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
0.226466, -0.304464, 0.07144263, 0.4112949, -0.6038852, 0.6827585,
0.2336078, -0.2995999, 0.07144263, 0.4112949, -0.6038852, 0.6827585,
0.2302867, -0.2947237, 0.07775611, 0.4112949, -0.6038852, 0.6827585,
0.2231449, -0.2995879, 0.07775611, 0.4112949, -0.6038852, 0.6827585,
0.03751491, -0.0270363, -0.2422201, 0.4112953, -0.6038853, 0.6827581,
0.04465677, -0.02217211, -0.2422201, 0.4112953, -0.6038853, 0.6827581,
0.0413357, -0.01729594, -0.2359066, 0.4112953, -0.6038853, 0.6827581,
0.03419384, -0.02216013, -0.2359066, 0.4112953, -0.6038853, 0.6827581,
0.226466, -0.304464, 0.07144263, -0.3843391, 0.5643073, 0.730644,
0.2336078, -0.2995999, 0.07144263, -0.3843391, 0.5643073, 0.730644,
0.04465677, -0.02217211, -0.2422201, -0.3843391, 0.5643073, 0.730644,
0.03751491, -0.0270363, -0.2422201, -0.3843391, 0.5643073, 0.730644,
0.2336078, -0.2995999, 0.07144263, -0.8265105, -0.5629213, 2.052814e-07,
0.2302867, -0.2947237, 0.07775611, -0.8265105, -0.5629213, 2.052814e-07,
0.0413357, -0.01729594, -0.2359066, -0.8265105, -0.5629213, 2.052814e-07,
0.04465677, -0.02217211, -0.2422201, -0.8265105, -0.5629213, 2.052814e-07,
0.2302867, -0.2947237, 0.07775611, 0.3843391, -0.5643073, -0.730644,
0.2231449, -0.2995879, 0.07775611, 0.3843391, -0.5643073, -0.730644,
0.03419384, -0.02216013, -0.2359066, 0.3843391, -0.5643073, -0.730644,
0.0413357, -0.01729594, -0.2359066, 0.3843391, -0.5643073, -0.730644,
0.2231449, -0.2995879, 0.07775611, 0.8265105, 0.5629213, -2.052814e-07,
0.226466, -0.304464, 0.07144263, 0.8265105, 0.5629213, -2.052814e-07,
0.03751491, -0.0270363, -0.2422201, 0.8265105, 0.5629213, -2.052814e-07,
0.03419384, -0.02216013, -0.2359066, 0.8265105, 0.5629213, -2.052814e-07,
0.2280447, -0.3004393, 0.07405139, 0.411302, -0.603888, 0.6827517,
0.2292845, -0.2995949, 0.07405139, 0.411302, -0.603888, 0.6827517,
0.228708, -0.2987485, 0.07514735, 0.411302, -0.603888, 0.6827517,
0.2274682, -0.2995928, 0.07514735, 0.411302, -0.603888, 0.6827517,
0.2280447, -0.3004393, 0.07405139, 0.6294724, 0.7391146, -0.239738,
0.2274682, -0.2995928, 0.07514735, 0.6294724, 0.7391146, -0.239738,
0.2291989, -0.3008016, 0.07596488, 0.6294724, 0.7391146, -0.239738,
0.2291989, -0.3008016, 0.07596488, 0.6294724, 0.7391146, -0.239738,
0.2280447, -0.3004393, 0.07405139, 0.5042882, -0.7404135, -0.4443886,
0.2292845, -0.2995949, 0.07405139, 0.5042882, -0.7404135, -0.4443886,
0.2291989, -0.3008016, 0.07596488, 0.5042882, -0.7404135, -0.4443886,
0.2291989, -0.3008016, 0.07596488, 0.5042882, -0.7404135, -0.4443886,
0.2292845, -0.2995949, 0.07405139, 0.9183031, 0.3150376, 0.2397302,
0.228708, -0.2987485, 0.07514735, 0.9183031, 0.3150376, 0.2397302,
0.2291989, -0.3008016, 0.07596488, 0.9183031, 0.3150376, 0.2397302,
0.2291989, -0.3008016, 0.07596488, 0.9183031, 0.3150376, 0.2397302,
0.228708, -0.2987485, 0.07514735, -0.2154477, 0.3163428, 0.9238558,
0.2274682, -0.2995928, 0.07514735, -0.2154477, 0.3163428, 0.9238558,
0.2291989, -0.3008016, 0.07596488, -0.2154477, 0.3163428, 0.9238558,
0.2291989, -0.3008016, 0.07596488, -0.2154477, 0.3163428, 0.9238558
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
0.03792531, -0.02676851, -0.2120633, 0, -0, 1,
0.04713007, -0.02676851, -0.2120633, 0, -0, 1,
0.04713007, -0.01756374, -0.2120633, 0, -0, 1,
0.03792531, -0.01756374, -0.2120633, 0, -0, 1,
0.03792531, -0.02676851, -0.2008586, 0, -0, 1,
0.04713007, -0.02676851, -0.2008586, 0, -0, 1,
0.04713007, -0.01756374, -0.2008586, 0, -0, 1,
0.03792531, -0.01756374, -0.2008586, 0, -0, 1,
0.03792531, -0.02676851, -0.2120633, 0, -0.9999999, 0,
0.04713007, -0.02676851, -0.2120633, 0, -0.9999999, 0,
0.04713007, -0.02676851, -0.2008586, 0, -0.9999999, 0,
0.03792531, -0.02676851, -0.2008586, 0, -0.9999999, 0,
0.04713007, -0.02676851, -0.2120633, 1, 0, -0,
0.04713007, -0.01756374, -0.2120633, 1, 0, -0,
0.04713007, -0.01756374, -0.2008586, 1, 0, -0,
0.04713007, -0.02676851, -0.2008586, 1, 0, -0,
0.04713007, -0.01756374, -0.2120633, 0, 0.9999999, 0,
0.03792531, -0.01756374, -0.2120633, 0, 0.9999999, 0,
0.03792531, -0.01756374, -0.2008586, 0, 0.9999999, 0,
0.04713007, -0.01756374, -0.2008586, 0, 0.9999999, 0,
0.03792531, -0.02676851, -0.2120633, 1, 0, -0,
0.03792531, -0.01756374, -0.2120633, 1, 0, -0,
0.03792531, -0.01756374, -0.1916538, 1, 0, -0,
0.03792531, -0.02676851, -0.1916538, 1, 0, -0,
0.04092531, -0.02676851, -0.2390634, 0, 0, -1,
0.03172053, -0.02676851, -0.2390634, 0, 0, -1,
0.03172053, -0.01756374, -0.2390634, 0, 0, -1,
0.04092531, -0.01756374, -0.2390634, 0, 0, -1,
0.04092531, -0.02676851, -0.2008586, 0, 0, -1,
0.03172053, -0.02676851, -0.2008586, 0, 0, -1,
0.03172053, -0.01756374, -0.2008586, 0, 0, -1,
0.04092531, -0.01756374, -0.2008586, 0, 0, -1,
0.04092531, -0.02676851, -0.2390634, 0, 0.9999999, 0,
0.03172053, -0.02676851, -0.2390634, 0, 0.9999999, 0,
0.03172053, -0.02676851, -0.2008586, 0, 0.9999999, 0,
0.04092531, -0.02676851, -0.2008586, 0, 0.9999999, 0,
0.03172053, -0.02676851, -0.2390634, 0.9999999, 0, -0,
0.03172053, -0.01756374, -0.2390634, 0.9999999, 0, -0,
0.03172053, -0.01756374, -0.2008586, 0.9999999, 0, -0,
0.03172053, -0.02676851, -0.2008586, 0.9999999, 0, -0,
0.03172053, -0.01756374, -0.2390634, 0, -0.9999999, 0,
0.04092531, -0.01756374, -0.2390634, 0, -0.9999999, 0,
0.04092531, -0.01756374, -0.2008586, 0, -0.9999999, 0,
0.03172053, -0.01756374, -0.2008586, 0, -0.9999999, 0,
0.04092531, -0.02676851, -0.2390634, 1, 0, -0,
0.04092531, -0.01756374, -0.2390634, 1, 0, -0,
0.04092531, -0.01756374, -0.1916538, 1, 0, -0,
0.04092531, -0.02676851, -0.1916538, 1, 0, -0,
0.03792531, -0.02676851, -0.2008586, 0, -1, 0,
0.04092531, -0.02676851, -0.2008586, 0, -1, 0,
0.04092531, -0.02676851, -0.1916538, 0, -1, 0,
0.03792531, -0.02676851, -0.1916538, 0, -1, 0,
0.03792531, -0.02676851, -0.1916538, 0, 0, -0.9999999,
0.03792531, -0.01756374, -0.1916538, 0, 0, -0.9999999,
0.04092531, -0.01756374, -0.1916538, 0, 0, -0.9999999,
0.04092531, -0.02676851, -0.1916538, 0, 0, -0.9999999,
0.03792531, -0.01756374, -0.2008586, 0, -1, 0,
0.04092531, -0.01756374, -0.2008586, 0, -1, 0,
0.04092531, -0.01756374, -0.1916538, 0, -1, 0,
0.03792531, -0.01756374, -0.1916538, 0, -1, 0,
0.04713007, -0.02676851, -0.2008586, 0, 0, 1,
0.04713007, -0.01756374, -0.2008586, 0, 0, 1,
0.03172053, -0.01756374, -0.2008586, 0, 0, 1,
0.03172053, -0.02676851, -0.2008586, 0, 0, 1,
0.04177769, -0.02291612, -0.2120633, 0, -0, 1,
0.04327769, -0.02291612, -0.2120633, 0, -0, 1,
0.04327769, -0.02141612, -0.2120633, 0, -0, 1,
0.04177769, -0.02141612, -0.2120633, 0, -0, 1,
0.04177769, -0.02291612, -0.2120633, 0, 0.9363292, 0.3511235,
0.04327769, -0.02291612, -0.2120633, 0, 0.9363292, 0.3511235,
0.04252769, -0.02216612, -0.2140633, 0, 0.9363292, 0.3511235,
0.04252769, -0.02216612, -0.2140633, 0, 0.9363292, 0.3511235,
0.04327769, -0.02291612, -0.2120633, -0.9363298, 0, 0.3511219,
0.04327769, -0.02141612, -0.2120633, -0.9363298, 0, 0.3511219,
0.04252769, -0.02216612, -0.2140633, -0.9363298, 0, 0.3511219,
0.04252769, -0.02216612, -0.2140633, -0.9363298, 0, 0.3511219,
0.04327769, -0.02141612, -0.2120633, 0, -0.9363295, 0.3511227,
0.04177769, -0.02141612, -0.2120633, 0, -0.9363295, 0.3511227,
0.04252769, -0.02216612, -0.2140633, 0, -0.9363295, 0.3511227,
0.04252769, -0.02216612, -0.2140633, 0, -0.9363295, 0.3511227,
0.04177769, -0.02291612, -0.2120633, -0.9363292, -0, -0.3511234,
0.04177769, -0.02141612, -0.2120633, -0.9363292, -0, -0.3511234,
0.04252769, -0.02216612, -0.2140633, -0.9363292, -0, -0.3511234,
0.04252769, -0.02216612, -0.2140633, -0.9363292, -0, -0.3511234
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
0.3555377, 0.1477879, 0.03241763, 0.6939858, 0.3825559, 0.6099464,
0.3519012, 0.1543848, 0.03241763, 0.6939858, 0.3825559, 0.6099464,
0.3478774, 0.1521667, 0.03838695, 0.6939858, 0.3825559, 0.6099464,
0.3515139, 0.1455698, 0.03838695, 0.6939858, 0.3825559, 0.6099464,
0.04325543, -0.02435554, -0.242048, 0.6939867, 0.3825555, 0.6099458,
0.03961894, -0.01775864, -0.242048, 0.6939867, 0.3825555, 0.6099458,
0.03559518, -0.0199767, -0.2360787, 0.6939867, 0.3825555, 0.6099458,
0.03923168, -0.02657361, -0.2360787, 0.6939867, 0.3825555, 0.6099458,
0.3555377, 0.1477879, 0.03241763, -0.5341637, -0.2944548, 0.7924427,
0.3519012, 0.1543848, 0.03241763, -0.5341637, -0.2944548, 0.7924427,
0.03961894, -0.01775864, -0.242048, -0.5341637, -0.2944548, 0.7924427,
0.04325543, -0.02435554, -0.242048, -0.5341637, -0.2944548, 0.7924427,
0.3519012, 0.1543848, 0.03241763, 0.4827542, -0.8757559, 2.575833e-07,
0.3478774, 0.1521667, 0.03838695, 0.4827542, -0.8757559, 2.575833e-07,
0.03559518, -0.0199767, -0.2360787, 0.4827542, -0.8757559, 2.575833e-07,
0.03961894, -0.01775864, -0.242048, 0.4827542, -0.8757559, 2.575833e-07,
0.3478774, 0.1521667, 0.03838695, 0.5341637, 0.2944548, -0.7924427,
0.3515139, 0.1455698, 0.03838695, 0.5341637, 0.2944548, -0.7924427,
0.03923168, -0.02657361, -0.2360787, 0.5341637, 0.2944548, -0.7924427,
0.03559518, -0.0199767, -0.2360787, 0.5341637, 0.2944548, -0.7924427,
0.3515139, 0.1455698, 0.03838695, -0.4827542, 0.8757559, -2.232389e-07,
0.3555377, 0.1477879, 0.03241763, -0.4827542, 0.8757559, -2.232389e-07,
0.04325543, -0.02435554, -0.242048, -0.4827542, 0.8757559, -2.232389e-07,
0.03923168, -0.02657361, -0.2360787, -0.4827542, 0.8757559, -2.232389e-07,
0.3524702, 0.1495413, 0.03480795, 0.6939867, 0.3825602, 0.6099427,
0.3517461, 0.150855, 0.03480795, 0.6939867, 0.3825602, 0.6099427,
0.3509449, 0.1504133, 0.03599662, 0.6939867, 0.3825602, 0.6099427,
0.351669, 0.1490997, 0.03599662, 0.6939867, 0.3825602, 0.6099427,
0.3524702, 0.1495413, 0.03480795, -0.695686, 0.6856766, -0.2141693,
0.351669, 0.1490997, 0.03599662, -0.695686, 0.6856766, -0.2141693,
0.3530955, 0.1507424, 0.03662218, -0.695686, 0.6856766, -0.2141693,
0.3530955, 0.1507424, 0.03662218, -0.695686, 0.6856766, -0.2141693,
0.3524702, 0.1495413, 0.03480795, 0.7438262, 0.4100342, -0.5278205,
0.3517461, 0.150855, 0.03480795, 0.7438262, 0.4100342, -0.5278205,
0.3530955, 0.1507424, 0.03662218, 0.7438262, 0.4100342, -0.5278205,
0.3530955, 0.1507424, 0.03662218, 0.7438262, 0.4100342, -0.5278205,
0.3517461, 0.150855, 0.03480795, -0.2083444, 0.9543188, 0.2141693,
0.3509449, 0.1504133, 0.03599662, -0.2083444, 0.9543188, 0.2141693,
0.3530955, 0.1507424, 0.03662218, -0.2083444, 0.9543188, 0.2141693,
0.3530955, 0.1507424, 0.03662218, -0.2083444, 0.9543188, 0.2141693,
0.3509449, 0.1504133, 0.03599662, -0.2564788, -0.1413781, 0.9561542,
0.351669, 0.1490997, 0.03599662, -0.2564788, -0.1413781, 0.9561542,
0.3530955, 0.1507424, 0.03662218, -0.2564788, -0.1413781, 0.9561542,
0.3530955, 0.1507424, 0.03662218, -0.2564788, -0.1413781, 0.9561542
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
0.05675428, -0.06113633, 0.1948644, 0.04337231, -0.07631362, 0.9961401,
0.06403986, -0.05699562, 0.1948644, 0.04337231, -0.07631362, 0.9961401,
0.05991514, -0.04973816, 0.1956, 0.04337231, -0.07631362, 0.9961401,
0.05262956, -0.05387887, 0.1956, 0.04337231, -0.07631362, 0.9961401,
0.03784488, -0.0278652, -0.2394311, 0.04337317, -0.07631513, 0.9961399,
0.04513046, -0.0237245, -0.2394311, 0.04337317, -0.07631513, 0.9961399,
0.04100573, -0.01646704, -0.2386955, 0.04337317, -0.07631513, 0.9961399,
0.03372015, -0.02060775, -0.2386955, 0.04337317, -0.07631513, 0.9961399,
0.05675428, -0.06113633, 0.1948644, -0.4922081, 0.8660405, 0.08777779,
0.06403986, -0.05699562, 0.1948644, -0.4922081, 0.8660405, 0.08777779,
0.04513046, -0.0237245, -0.2394311, -0.4922081, 0.8660405, 0.08777779,
0.03784488, -0.0278652, -0.2394311, -0.4922081, 0.8660405, 0.08777779,
0.06403986, -0.05699562, 0.1948644, -0.8693964, -0.4941151, 7.965975e-09,
0.05991514, -0.04973816, 0.1956, -0.8693964, -0.4941151, 7.965975e-09,
0.04100573, -0.01646704, -0.2386955, -0.8693964, -0.4941151, 7.965975e-09,
0.04513046, -0.0237245, -0.2394311, -0.8693964, -0.4941151, 7.965975e-09,
0.05991514, -0.04973816, 0.1956, 0.4922081, -0.8660405, -0.0877778,
0.05262956, -0.05387887, 0.1956, 0.4922081, -0.8660405, -0.0877778,
0.03372015, -0.02060775, -0.2386955, 0.4922081, -0.8660405, -0.0877778,
0.04100573, -0.01646704, -0.2386955, 0.4922081, -0.8660405, -0.0877778,
0.05262956, -0.05387887, 0.1956, 0.8693964, 0.4941151, -1.194896e-08,
0.05675428, -0.06113633, 0.1948644, 0.8693964, 0.4941151, -1.194896e-08,
0.03784488, -0.0278652, -0.2394311, 0.8693964, 0.4941151, -1.194896e-08,
0.03372015, -0.02060775, -0.2386955, 0.8693964, 0.4941151, -1.194896e-08,
0.05805182, -0.05645736, 0.1951664, 0.04337235, -0.07631369, 0.9961401,
0.05935591, -0.05571619, 0.1951664, 0.04337235, -0.07631369, 0.9961401,
0.0586176, -0.05441713, 0.195298, 0.04337235, -0.07631369, 0.9961401,
0.05731351, -0.0551583, 0.195298, 0.04337235, -0.07631369, 0.9961401,
0.05805182, -0.05645736, 0.1951664, 0.7988128, 0.48945, -0.3497668,
0.05731351, -0.0551583, 0.195298, 0.7988128, 0.48945, -0.3497668,
0.05842146, -0.05558987, 0.1972245, 0.7988128, 0.48945, -0.3497668,
0.05842146, -0.05558987, 0.1972245, 0.7988128, 0.48945, -0.3497668,
0.05805182, -0.05645736, 0.1951664, 0.4760979, -0.8376947, 0.267579,
0.05935591, -0.05571619, 0.1951664, 0.4760979, -0.8376947, 0.267579,
0.05842146, -0.05558987, 0.1972245, 0.4760979, -0.8376947, 0.267579,
0.05842146, -0.05558987, 0.1972245, 0.4760979, -0.8376947, 0.267579,
0.05935591, -0.05571619, 0.1951664, 0.8292705, 0.4358589, 0.3497676,
0.0586176, -0.05441713, 0.195298, 0.8292705, 0.4358589, 0.3497676,
0.05842146, -0.05558987, 0.1972245, 0.8292705, 0.4358589, 0.3497676,
0.05842146, -0.05558987, 0.1972245, 0.8292705, 0.4358589, 0.3497676,
0.0586176, -0.05441713, 0.195298, -0.4456401, 0.784104, 0.4319557,
0.05731351, -0.0551583, 0.195298, -0.4456401, 0.784104, 0.4319557,
0.05842146, -0.05558987, 0.1972245, -0.4456401, 0.784104, 0.4319557,
0.05842146, -0.05558987, 0.1972245, -0.4456401, 0.784104, 0.4319557
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
-0.2205241, 0.397395, -0.2898998, -0.5318899, 0.8416207, -0.09363678,
-0.2279622, 0.3926943, -0.2898998, -0.5318899, 0.8416207, -0.09363678,
-0.2284023, 0.3933907, -0.2811395, -0.5318899, 0.8416207, -0.09363678,
-0.2209643, 0.3980914, -0.2811395, -0.5318899, 0.8416207, -0.09363678,
0.04336441, -0.02016401, -0.2434435, -0.5318875, 0.8416222, -0.09363627,
0.03592636, -0.0248647, -0.2434435, -0.5318875, 0.8416222, -0.09363627,
0.0354862, -0.02416823, -0.2346832, -0.5318875, 0.8416222, -0.09363627,
0.04292425, -0.01946754, -0.2346832, -0.5318875, 0.8416222, -0.09363627,
-0.2205241, 0.397395, -0.2898998, -0.05002395, 0.07915395, 0.9956064,
-0.2279622, 0.3926943, -0.2898998, -0.05002395, 0.07915395, 0.9956064,
0.03592636, -0.0248647, -0.2434435, -0.05002395, 0.07915395, 0.9956064,
0.04336441, -0.02016401, -0.2434435, -0.05002395, 0.07915395, 0.9956064,
-0.2279622, 0.3926943, -0.2898998, 0.8453363, 0.5342346, -9.966915e-07,
-0.2284023, 0.3933907, -0.2811395, 0.8453363, 0.5342346, -9.966915e-07,
0.0354862, -0.02416823, -0.2346832, 0.8453363, 0.5342346, -9.966915e-07,
0.03592636, -0.0248647, -0.2434435, 0.8453363, 0.5342346, -9.966915e-07,
-0.2284023, 0.3933907, -0.2811395, 0.0500237, -0.07915406, -0.9956065,
-0.2209643, 0.3980914, -0.2811395, 0.0500237, -0.07915406, -0.9956065,
0.04292425, -0.01946754, -0.2346832, 0.0500237, -0.07915406, -0.9956065,
0.0354862, -0.02416823, -0.2346832, 0.0500237, -0.07915406, -0.9956065,
-0.2209643, 0.3980914, -0.2811395, -0.8453362, -0.5342347, -8.066869e-07,
-0.2205241, 0.397395, -0.2898998, -0.8453362, -0.5342347, -8.066869e-07,
0.04336441, -0.02016401, -0.2434435, -0.8453362, -0.5342347, -8.066869e-07,
0.04292425, -0.01946754, -0.2346832, -0.8453362, -0.5342347, -8.066869e-07,
-0.2237917, 0.3957342, -0.2862663, -0.5318903, 0.8416206, -0.09363501,
-0.2250597, 0.3949328, -0.2862663, -0.5318903, 0.8416206, -0.09363501,
-0.2251347, 0.3950515, -0.2847729, -0.5318903, 0.8416206, -0.09363501,
-0.2238667, 0.3958529, -0.2847729, -0.5318903, 0.8416206, -0.09363501,
-0.2237917, 0.3957342, -0.2862663, -0.6047577, -0.7957305, 0.03288191,
-0.2238667, 0.3958529, -0.2847729, -0.6047577, -0.7957305, 0.03288191,
-0.225527, 0.3970761, -0.2857069, -0.6047577, -0.7957305, 0.03288191,
-0.225527, 0.3970761, -0.2857069, -0.6047577, -0.7957305, 0.03288191,
-0.2237917, 0.3957342, -0.2862663, -0.1399171, 0.2213936, -0.9650949,
-0.2250597, 0.3949328, -0.2862663, -0.1399171, 0.2213936, -0.9650949,
-0.225527, 0.3970761, -0.2857069, -0.1399171, 0.2213936, -0.9650949,
-0.225527, 0.3970761, -0.2857069, -0.1399171, 0.2213936, -0.9650949,
-0.2250597, 0.3949328, -0.2862663, -0.9782716, -0.2047048, -0.03287278,
-0.2251347, 0.3950515, -0.2847729, -0.9782716, -0.2047048, -0.03287278,
-0.225527, 0.3970761, -0.2857069, -0.9782716, -0.2047048, -0.03287278,
-0.225527, 0.3970761, -0.2857069, -0.9782716, -0.2047048, -0.03287278,
-0.2251347, 0.3950515, -0.2847729, -0.2335971, 0.3696254, 0.8993384,
-0.2238667, 0.3958529, -0.2847729, -0.2335971, 0.3696254, 0.8993384,
-0.225527, 0.3970761, -0.2857069, -0.2335971, 0.3696254, 0.8993384,
-0.225527, 0.3970761, -0.2857069, -0.2335971, 0.3696254, 0.8993384
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
-0.3480691, -0.290525, -0.243125, -0.8165388, -0.5772895, 0.001085092,
-0.3427902, -0.2979916, -0.243125, -0.8165388, -0.5772895, 0.001085092,
-0.3427821, -0.2979859, -0.2339808, -0.8165388, -0.5772895, 0.001085092,
-0.3480611, -0.2905193, -0.2339808, -0.8165388, -0.5772895, 0.001085092,
0.03678181, -0.01843567, -0.2436355, -0.8165374, -0.5772915, 0.001083076,
0.04206071, -0.02590229, -0.2436355, -0.8165374, -0.5772915, 0.001083076,
0.0420688, -0.02589657, -0.2344912, -0.8165374, -0.5772915, 0.001083076,
0.0367899, -0.01842995, -0.2344912, -0.8165374, -0.5772915, 0.001083076,
-0.3480691, -0.290525, -0.243125, 0.000884362, 0.0006252402, 0.9999993,
-0.3427902, -0.2979916, -0.243125, 0.000884362, 0.0006252402, 0.9999993,
0.04206071, -0.02590229, -0.2436355, 0.000884362, 0.0006252402, 0.9999993,
0.03678181, -0.01843567, -0.2436355, 0.000884362, 0.0006252402, 0.9999993,
-0.3427902, -0.2979916, -0.243125, -0.5772917, 0.816538, 8.084939e-07,
-0.3427821, -0.2979859, -0.2339808, -0.5772917, 0.816538, 8.084939e-07,
0.0420688, -0.02589657, -0.2344912, -0.5772917, 0.816538, 8.084939e-07,
0.04206071, -0.02590229, -0.2436355, -0.5772917, 0.816538, 8.084939e-07,
-0.3427821, -0.2979859, -0.2339808, -0.0008843592, -0.0006252442, -0.9999995,
-0.3480611, -0.2905193, -0.2339808, -0.0008843592, -0.0006252442, -0.9999995,
0.0367899, -0.01842995, -0.2344912, -0.0008843592, -0.0006252442, -0.9999995,
0.0420688, -0.02589657, -0.2344912, -0.0008843592, -0.0006252442, -0.9999995,
-0.3480611, -0.2905193, -0.2339808, 0.5772917, -0.8165381, -1.588183e-06,
-0.3480691, -0.290525, -0.243125, 0.5772917, -0.8165381, -1.588183e-06,
0.03678181, -0.01843567, -0.2436355, 0.5772917, -0.8165381, -1.588183e-06,
0.0367899, -0.01842995, -0.2344912, 0.5772917, -0.8165381, -1.588183e-06,
-0.3458593, -0.2936435, -0.2393029, -0.8165333, -0.5772974, 0.001069384,
-0.3449933, -0.2948683, -0.2393029, -0.8165333, -0.5772974, 0.001069384,
-0.344992, -0.2948674, -0.2378029, -0.8165333, -0.5772974, 0.001069384,
-0.3458579, -0.2936426, -0.2378029, -0.8165333, -0.5772974, 0.001069384,
-0.3458593, -0.2936435, -0.2393029, 0.8272388, -0.5618503, -0.0003659596,
-0.3458579, -0.2936426, -0.2378029, 0.8272388, -0.5618503, -0.0003659596,
-0.3470587, -0.29541, -0.2385507, 0.8272388, -0.5618503, -0.0003659596,
-0.3470587, -0.29541, -0.2385507, 0.8272388, -0.5618503, -0.0003659596,
-0.3458593, -0.2936435, -0.2393029, -0.2875313, -0.2032876, -0.9359487,
-0.3449933, -0.2948683, -0.2393029, -0.2875313, -0.2032876, -0.9359487,
-0.3470587, -0.29541, -0.2385507, -0.2875313, -0.2032876, -0.9359487,
-0.3470587, -0.29541, -0.2385507, -0.2875313, -0.2032876, -0.9359487,
-0.3449933, -0.2948683, -0.2393029, 0.2538292, -0.967249, 0.0003738462,
-0.344992, -0.2948674, -0.2378029, 0.2538292, -0.967249, 0.0003738462,
-0.3470587, -0.29541, -0.2385507, 0.2538292, -0.967249, 0.0003738462,
-0.3470587, -0.29541, -0.2385507, 0.2538292, -0.967249, 0.0003738462,
-0.344992, -0.2948674, -0.2378029, -0.2858777, -0.2021135, 0.9367092,
-0.3458579, -0.2936426, -0.2378029, -0.2858777, -0.2021135, 0.9367092,
-0.3470587, -0.29541, -0.2385507, -0.2858777, -0.2021135, 0.9367092,
-0.3470587, -0.29541, -0.2385507, -0.2858777, -0.2021135, 0.9367092
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
0.1409414, 0.9758797, 0.7374396, 0.08890405, 0.9304895, 0.3553664,
0.1332214, 0.9766173, 0.7374396, 0.08890405, 0.9304895, 0.3553664,
0.1329593, 0.9738739, 0.7446885, 0.08890405, 0.9304895, 0.3553664,
0.1406793, 0.9731363, 0.7446885, 0.08890405, 0.9304895, 0.3553664,
0.1009169, 0.5569547, 0.5774468, 0.08889684, 0.9304892, 0.3553689,
0.09319694, 0.5576923, 0.5774468, 0.08889684, 0.9304892, 0.3553689,
0.09293484, 0.5549489, 0.5846956, 0.08889684, 0.9304892, 0.3553689,
0.1006548, 0.5542113, 0.5846956, 0.08889684, 0.9304892, 0.3553689,
0.1409414, 0.9758797, 0.7374396, -0.03379969, -0.353755, 0.9347272,
0.1332214, 0.9766173, 0.7374396, -0.03379969, -0.353755, 0.9347272,
0.09319694, 0.5576923, 0.5774468, -0.03379969, -0.353755, 0.9347272,
0.1009169, 0.5569547, 0.5774468, -0.03379969, -0.353755, 0.9347272,
0.1332214, 0.9766173, 0.7374396, 0.995467, -0.09510798, 2.584031e-07,
0.1329593, 0.9738739, 0.7446885, 0.995467, -0.09510798, 2.584031e-07,
0.09293484, 0.5549489, 0.5846956, 0.995467, -0.09510798, 2.584031e-07,
0.09319694, 0.5576923, 0.5774468, 0.995467, -0.09510798, 2.584031e-07,
0.1329593, 0.9738739, 0.7446885, 0.03379699, 0.3537554, -0.9347272,
0.1406793, 0.9731363, 0.7446885, 0.03379699, 0.3537554, -0.9347272,
0.1006548, 0.5542113, 0.5846956, 0.03379699, 0.3537554, -0.9347272,
0.09293484, 0.5549489, 0.5846956, 0.03379699, 0.3537554, -0.9347272,
0.1406793, 0.9731363, 0.7446885, -0.995467, 0.09510826, -9.315042e-07,
0.1409414, 0.9758797, 0.7374396, -0.995467, 0.09510826, -9.315042e-07,
0.1009169, 0.5569547, 0.5774468, -0.995467, 0.09510826, -9.315042e-07,
0.1006548, 0.5542113, 0.5846956, -0.995467, 0.09510826, -9.315042e-07,
0.1377223, 0.9750708, 0.740363, 0.08888325, 0.9304976, 0.3553504,
0.1362291, 0.9752134, 0.740363, 0.08888325, 0.9304976, 0.3553504,
0.1361784, 0.9746828, 0.7417651, 0.08888325, 0.9304976, 0.3553504,
0.1376716, 0.9745401, 0.7417651, 0.08888325, 0.9304976, 0.3553504,
0.1377223, 0.9750708, 0.740363, -0.9632982, -0.2376636, -0.1247904,
0.1376716, 0.9745401, 0.7417651, -0.9632982, -0.2376636, -0.1247904,
0.1371282, 0.9767377, 0.7417747, -0.9632982, -0.2376636, -0.1247904,
0.1371282, 0.9767377, 0.7417747, -0.9632982, -0.2376636, -0.1247904,
0.1377223, 0.9750708, 0.740363, 0.06284817, 0.6579426, -0.750441,
0.1362291, 0.9752134, 0.740363, 0.06284817, 0.6579426, -0.750441,
0.1371282, 0.9767377, 0.7417747, 0.06284817, 0.6579426, -0.750441,
0.1371282, 0.9767377, 0.7417747, 0.06284817, 0.6579426, -0.750441,
0.1362291, 0.9752134, 0.740363, -0.9008667, 0.4157798, 0.1247655,
0.1361784, 0.9746828, 0.7417651, -0.9008667, 0.4157798, 0.1247655,
0.1371282, 0.9767377, 0.7417747, -0.9008667, 0.4157798, 0.1247655,
0.1371282, 0.9767377, 0.7417747, -0.9008667, 0.4157798, 0.1247655,
0.1361784, 0.9746828, 0.7417651, -0.0004300408, -0.004500115, 0.9999897,
0.1376716, 0.9745401, 0.7417651, -0.0004300408, -0.004500115, 0.9999897,
0.1371282, 0.9767377, 0.7417747, -0.0004300408, -0.004500115, 0.9999897,
0.1371282, 0.9767377, 0.7417747, -0.0004300408, -0.004500115, 0.9999897
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
-0.05233551, 0.6090142, 0.9715833, -0.3479125, 0.1124107, 0.9307635,
-0.0551653, 0.600256, 0.9715833, -0.3479125, 0.1124107, 0.9307635,
-0.0470134, 0.5976221, 0.9749485, -0.3479125, 0.1124107, 0.9307635,
-0.04418361, 0.6063804, 0.9749485, -0.3479125, 0.1124107, 0.9307635,
0.09426482, 0.5616479, 0.5793886, -0.3479179, 0.1124118, 0.9307614,
0.09143502, 0.5528896, 0.5793886, -0.3479179, 0.1124118, 0.9307614,
0.09958693, 0.5502557, 0.5827538, -0.3479179, 0.1124118, 0.9307614,
0.1024167, 0.559014, 0.5827538, -0.3479179, 0.1124118, 0.9307614,
-0.05233551, 0.6090142, 0.9715833, 0.8856804, -0.2861638, 0.3656234,
-0.0551653, 0.600256, 0.9715833, 0.8856804, -0.2861638, 0.3656234,
0.09143502, 0.5528896, 0.5793886, 0.8856804, -0.2861638, 0.3656234,
0.09426482, 0.5616479, 0.5793886, 0.8856804, -0.2861638, 0.3656234,
-0.0551653, 0.600256, 0.9715833, 0.3074494, 0.9515645, 4.502539e-08,
-0.0470134, 0.5976221, 0.9749485, 0.3074494, 0.9515645, 4.502539e-08,
0.09958693, 0.5502557, 0.5827538, 0.3074494, 0.9515645, 4.502539e-08,
0.09143502, 0.5528896, 0.5793886, 0.3074494, 0.9515645, 4.502539e-08,
-0.0470134, 0.5976221, 0.9749485, -0.885681, 0.286162, -0.3656234,
-0.04418361, 0.6063804, 0.9749485, -0.885681, 0.286162, -0.3656234,
0.1024167, 0.559014, 0.5827538, -0.885681, 0.286162, -0.3656234,
0.09958693, 0.5502557, 0.5827538, -0.885681, 0.286162, -0.3656234,
-0.04418361, 0.6063804, 0.9749485, -0.3074439, -0.9515663, 2.08618e-06,
-0.05233551, 0.6090142, 0.9715833, -0.3074439, -0.9515663, 2.08618e-06,
0.09426482, 0.5616479, 0.5793886, -0.3074439, -0.9515663, 2.08618e-06,
0.1024167, 0.559014, 0.5827538, -0.3074439, -0.9515663, 2.08618e-06,
-0.05010813, 0.6042464, 0.9729917, -0.3479097, 0.1124083, 0.9307648,
-0.0505693, 0.6028191, 0.9729917, -0.3479097, 0.1124083, 0.9307648,
-0.04924078, 0.6023899, 0.9735401, -0.3479097, 0.1124083, 0.9307648,
-0.04877961, 0.6038172, 0.9735401, -0.3479097, 0.1124083, 0.9307648,
-0.05010813, 0.6042464, 0.9729917, -0.1657003, -0.9304534, -0.3268026,
-0.04877961, 0.6038172, 0.9735401, -0.1657003, -0.9304534, -0.3268026,
-0.05037028, 0.603543, 0.9751275, -0.1657003, -0.9304534, -0.3268026,
-0.05037028, 0.603543, 0.9751275, -0.1657003, -0.9304534, -0.3268026,
-0.05010813, 0.6042464, 0.9729917, -0.9514503, 0.3074101, -0.01553369,
-0.0505693, 0.6028191, 0.9729917, -0.9514503, 0.3074101, -0.01553369,
-0.05037028, 0.603543, 0.9751275, -0.9514503, 0.3074101, -0.01553369,
-0.05037028, 0.603543, 0.9751275, -0.9514503, 0.3074101, -0.01553369,
-0.0505693, 0.6028191, 0.9729917, -0.4100173, -0.8515125, 0.3268215,
-0.04924078, 0.6023899, 0.9735401, -0.4100173, -0.8515125, 0.3268215,
-0.05037028, 0.603543, 0.9751275, -0.4100173, -0.8515125, 0.3268215,
-0.05037028, 0.603543, 0.9751275, -0.4100173, -0.8515125, 0.3268215,
-0.04924078, 0.6023899, 0.9735401, 0.7071332, -0.228474, 0.6691504,
-0.04877961, 0.6038172, 0.9735401, 0.7071332, -0.228474, 0.6691504,
-0.05037028, 0.603543, 0.9751275, 0.7071332, -0.228474, 0.6691504,
-0.05037028, 0.603543, 0.9751275, 0.7071332, -0.228474, 0.6691504
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
-0.1060417, 0.8574262, 0.8354464, -0.4631479, 0.6677927, 0.5827066,
-0.1143054, 0.8516948, 0.8354464, -0.4631479, 0.6677927, 0.5827066,
-0.1109657, 0.8468795, 0.8436193, -0.4631479, 0.6677927, 0.5827066,
-0.102702, 0.8526108, 0.8436193, -0.4631479, 0.6677927, 0.5827066,
0.09938791, 0.5612251, 0.5769848, -0.4631435, 0.6677932, 0.5827096,
0.09112414, 0.5554938, 0.5769848, -0.4631435, 0.6677932, 0.5827096,
0.09446383, 0.5506784, 0.5851577, -0.4631435, 0.6677932, 0.5827096,
0.1027276, 0.5564098, 0.5851577, -0.4631435, 0.6677932, 0.5827096,
-0.1060417, 0.8574262, 0.8354464, 0.3320855, -0.4788195, 0.8126815,
-0.1143054, 0.8516948, 0.8354464, 0.3320855, -0.4788195, 0.8126815,
0.09112414, 0.5554938, 0.5769848, 0.3320855, -0.4788195, 0.8126815,
0.09938791, 0.5612251, 0.5769848, 0.3320855, -0.4788195, 0.8126815,
-0.1143054, 0.8516948, 0.8354464, 0.8217143, 0.5698996, -1.670276e-06,
-0.1109657, 0.8468795, 0.8436193, 0.8217143, 0.5698996, -1.670276e-06,
0.09446383, 0.5506784, 0.5851577, 0.8217143, 0.5698996, -1.670276e-06,
0.09112414, 0.5554938, 0.5769848, 0.8217143, 0.5698996, -1.670276e-06,
-0.1109657, 0.8468795, 0.8436193, -0.3320831, 0.4788211, -0.8126814,
-0.102702, 0.8526108, 0.8436193, -0.3320831, 0.4788211, -0.8126814,
0.1027276, 0.5564098, 0.5851577, -0.3320831, 0.4788211, -0.8126814,
0.09446383, 0.5506784, 0.5851577, -0.3320831, 0.4788211, -0.8126814,
-0.102702, 0.8526108, 0.8436193, -0.8217155, -0.5698979, -1.096116e-06,
-0.1060417, 0.8574262, 0.8354464, -0.8217155, -0.5698979, -1.096116e-06,
0.09938791, 0.5612251, 0.5769848, -0.8217155, -0.5698979, -1.096116e-06,
0.1027276, 0.5564098, 0.5851577, -0.8217155, -0.5698979, -1.096116e-06,
-0.1081365, 0.8529394, 0.8389233, -0.4631472, 0.6677924, 0.5827075,
-0.109369, 0.8520845, 0.8389233, -0.4631472, 0.6677924, 0.5827075,
-0.1088709, 0.8513663, 0.8401424, -0.4631472, 0.6677924, 0.5827075,
-0.1076383, 0.8522211, 0.8401424, -0.4631472, 0.6677924, 0.5827075,
-0.1081365, 0.8529394, 0.8389233, -0.6067706, -0.7680926, -0.204605,
-0.1076383, 0.8522211, 0.8401424, -0.6067706, -0.7680926, -0.204605,
-0.10943, 0.8534884, 0.8406983, -0.6067706, -0.7680926, -0.204605,
-0.10943, 0.8534884, 0.8406983, -0.6067706, -0.7680926, -0.204605,
-0.1081365, 0.8529394, 0.8389233, -0.4735691, 0.6828192, -0.5563185,
-0.109369, 0.8520845, 0.8389233, -0.4735691, 0.6828192, -0.5563185,
-0.10943, 0.8534884, 0.8406983, -0.4735691, 0.6828192, -0.5563185,
-0.10943, 0.8534884, 0.8406983, -0.4735691, 0.6828192, -0.5563185,
-0.109369, 0.8520845, 0.8389233, -0.9320164, -0.2991394, 0.2045992,
-0.1088709, 0.8513663, 0.8401424, -0.9320164, -0.2991394, 0.2045992,
-0.10943, 0.8534884, 0.8406983, -0.9320164, -0.2991394, 0.2045992,
-0.10943, 0.8534884, 0.8406983, -0.9320164, -0.2991394, 0.2045992,
-0.1088709, 0.8513663, 0.8401424, 0.1483273, -0.2138668, 0.9655361,
-0.1076383, 0.8522211, 0.8401424, 0.1483273, -0.2138668, 0.9655361,
-0.10943, 0.8534884, 0.8406983, 0.1483273, -0.2138668, 0.9655361,
-0.10943, 0.8534884, 0.8406983, 0.1483273, -0.2138668, 0.9655361
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
0.03749983, -0.003178102, -0.2192251, -0.05721102, -0.5752068, -0.8160049,
0.04505321, -0.003929373, -0.2192251, -0.05721102, -0.5752068, -0.8160049,
0.04444017, -0.01009297, -0.2148373, -0.05721102, -0.5752068, -0.8160049,
0.03688679, -0.009341696, -0.2148373, -0.05721102, -0.5752068, -0.8160049,
0.0934557, 0.5594093, 0.5788773, -0.05721436, -0.5752064, -0.8160051,
0.1010091, 0.5586579, 0.5788773, -0.05721436, -0.5752064, -0.8160051,
0.100396, 0.5524943, 0.5832651, -0.05721436, -0.5752064, -0.8160051,
0.09284266, 0.5532457, 0.5832651, -0.05721436, -0.5752064, -0.8160051,
0.03749983, -0.003178102, -0.2192251, -0.0807627, -0.8119984, 0.5780451,
0.04505321, -0.003929373, -0.2192251, -0.0807627, -0.8119984, 0.5780451,
0.1010091, 0.5586579, 0.5788773, -0.0807627, -0.8119984, 0.5780451,
0.0934557, 0.5594093, 0.5788773, -0.0807627, -0.8119984, 0.5780451,
0.04505321, -0.003929373, -0.2192251, -0.9950901, 0.0989733, 1.56807e-08,
0.04444017, -0.01009297, -0.2148373, -0.9950901, 0.0989733, 1.56807e-08,
0.100396, 0.5524943, 0.5832651, -0.9950901, 0.0989733, 1.56807e-08,
0.1010091, 0.5586579, 0.5788773, -0.9950901, 0.0989733, 1.56807e-08,
0.04444017, -0.01009297, -0.2148373, 0.08076271, 0.8119983, -0.5780451,
0.03688679, -0.009341696, -0.2148373, 0.08076271, 0.8119983, -0.5780451,
0.09284266, 0.5532457, 0.5832651, 0.08076271, 0.8119983, -0.5780451,
0.100396, 0.5524943, 0.5832651, 0.08076271, 0.8119983, -0.5780451,
0.03688679, -0.009341696, -0.2148373, 0.9950902, -0.09897331, 0,
0.03749983, -0.003178102, -0.2192251, 0.9950902, -0.09897331, 0,
0.0934557, 0.5594093, 0.5788773, 0.9950902, -0.09897331, 0,
0.09284266, 0.5532457, 0.5832651, 0.9950902, -0.09897331, 0,
0.04028426, -0.005952306, -0.2174647, -0.05721124, -0.5752075, -0.8160044,
0.04177689, -0.006100766, -0.2174647, -0.05721124, -0.5752075, -0.8160044,
0.04165575, -0.007318764, -0.2165977, -0.05721124, -0.5752075, -0.8160044,
0.04016311, -0.007170304, -0.2165977, -0.05721124, -0.5752075, -0.8160044,
0.04028426, -0.005952306, -0.2174647, 0.9518209, 0.1092965, 0.286516,
0.04016311, -0.007170304, -0.2165977, 0.9518209, 0.1092965, 0.286516,
0.04085558, -0.007785948, -0.2186632, 0.9518209, 0.1092965, 0.286516,
0.04085558, -0.007785948, -0.2186632, 0.9518209, 0.1092965, 0.286516,
0.04028426, -0.005952306, -0.2174647, 0.05553278, 0.5583322, -0.8277568,
0.04177689, -0.006100766, -0.2174647, 0.05553278, 0.5583322, -0.8277568,
0.04085558, -0.007785948, -0.2186632, 0.05553278, 0.5583322, -0.8277568,
0.04085558, -0.007785948, -0.2186632, 0.05553278, 0.5583322, -0.8277568,
0.04177689, -0.006100766, -0.2174647, 0.911644, -0.2946395, -0.2865183,
0.04165575, -0.007318764, -0.2165977, 0.911644, -0.2946395, -0.2865183,
0.04085558, -0.007785948, -0.2186632, 0.911644, -0.2946395, -0.2865183,
0.04085558, -0.007785948, -0.2186632, 0.911644, -0.2946395, -0.2865183,
0.04165575, -0.007318764, -0.2165977, -0.09570858, -0.9622667, 0.2547208,
0.04016311, -0.007170304, -0.2165977, -0.09570858, -0.9622667, 0.2547208,
0.04085558, -0.007785948, -0.2186632, -0.09570858, -0.9622667, 0.2547208,
0.04085558, -0.007785948, -0.2186632, -0.09570858, -0.9622667, 0.2547208
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
0.363558, 0.8032936, 0.8350827, 0.5924311, 0.5601665, 0.5789983,
0.3587962, 0.8083296, 0.8350827, 0.5924311, 0.5601665, 0.5789983,
0.3558803, 0.8055726, 0.8407336, 0.5924311, 0.5601665, 0.5789983,
0.3606421, 0.8005365, 0.8407336, 0.5924311, 0.5601665, 0.5789983,
0.1007647, 0.5548123, 0.5782458, 0.5924292, 0.5601647, 0.5790017,
0.09600292, 0.5598484, 0.5782458, 0.5924292, 0.5601647, 0.5790017,
0.09308704, 0.5570913, 0.5838966, 0.5924292, 0.5601647, 0.5790017,
0.09784883, 0.5520552, 0.5838966, 0.5924292, 0.5601647, 0.5790017,
0.363558, 0.8032936, 0.8350827, -0.4207119, -0.3977993, 0.8153265,
0.3587962, 0.8083296, 0.8350827, -0.4207119, -0.3977993, 0.8153265,
0.09600292, 0.5598484, 0.5782458, -0.4207119, -0.3977993, 0.8153265,
0.1007647, 0.5548123, 0.5782458, -0.4207119, -0.3977993, 0.8153265,
0.3587962, 0.8083296, 0.8350827, 0.6870431, -0.7266166, 1.192766e-06,
0.3558803, 0.8055726, 0.8407336, 0.6870431, -0.7266166, 1.192766e-06,
0.09308704, 0.5570913, 0.5838966, 0.6870431, -0.7266166, 1.192766e-06,
0.09600292, 0.5598484, 0.5782458, 0.6870431, -0.7266166, 1.192766e-06,
0.3558803, 0.8055726, 0.8407336, 0.4207119, 0.3977993, -0.8153264,
0.3606421, 0.8005365, 0.8407336, 0.4207119, 0.3977993, -0.8153264,
0.09784883, 0.5520552, 0.5838966, 0.4207119, 0.3977993, -0.8153264,
0.09308704, 0.5570913, 0.5838966, 0.4207119, 0.3977993, -0.8153264,
0.3606421, 0.8005365, 0.8407336, -0.6870431, 0.7266167, -1.192766e-06,
0.363558, 0.8032936, 0.8350827, -0.6870431, 0.7266167, -1.192766e-06,
0.1007647, 0.5548123, 0.5782458, -0.6870431, 0.7266167, -1.192766e-06,
0.09784883, 0.5520552, 0.5838966, -0.6870431, 0.7266167, -1.192766e-06,
0.36055, 0.8041865, 0.8372966, 0.5924376, 0.5601687, 0.5789893,
0.3595194, 0.8052764, 0.8372966, 0.5924376, 0.5601687, 0.5789893,
0.3588884, 0.8046797, 0.8385196, 0.5924376, 0.5601687, 0.5789893,
0.3599189, 0.8035898, 0.8385196, 0.5924376, 0.5601687, 0.5789893,
0.36055, 0.8041865, 0.8372966, -0.8513147, 0.4836708, -0.203288,
0.3599189, 0.8035898, 0.8385196, -0.8513147, 0.4836708, -0.203288,
0.360904, 0.8055534, 0.8390661, -0.8513147, 0.4836708, -0.203288,
0.360904, 0.8055534, 0.8390661, -0.8513147, 0.4836708, -0.203288,
0.36055, 0.8041865, 0.8372966, 0.6019498, 0.5691629, -0.5600982,
0.3595194, 0.8052764, 0.8372966, 0.6019498, 0.5691629, -0.5600982,
0.360904, 0.8055534, 0.8390661, 0.6019498, 0.5691629, -0.5600982,
0.360904, 0.8055534, 0.8390661, 0.6019498, 0.5691629, -0.5600982,
0.3595194, 0.8052764, 0.8372966, -0.435272, 0.8770432, 0.2033061,
0.3588884, 0.8046797, 0.8385196, -0.435272, 0.8770432, 0.2033061,
0.360904, 0.8055534, 0.8390661, -0.435272, 0.8770432, 0.2033061,
0.360904, 0.8055534, 0.8390661, -0.435272, 0.8770432, 0.2033061,
0.3588884, 0.8046797, 0.8385196, -0.1859131, -0.1757868, 0.9667137,
0.3599189, 0.8035898, 0.8385196, -0.1859131, -0.1757868, 0.9667137,
0.360904, 0.8055534, 0.8390661, -0.1859131, -0.1757868, 0.9667137,
0.360904, 0.8055534, 0.8390661, -0.1859131, -0.1757868, 0.9667137
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
0.252777, 0.5727141, 0.973259, 0.3581837, 0.04857593, 0.9323865,
0.2516121, 0.5813034, 0.973259, 0.3581837, 0.04857593, 0.9323865,
0.2436036, 0.5802172, 0.9763921, 0.3581837, 0.04857593, 0.9323865,
0.2447684, 0.571628, 0.9763921, 0.3581837, 0.04857593, 0.9323865,
0.1015126, 0.5522002, 0.5795047, 0.3581842, 0.04857567, 0.9323865,
0.1003477, 0.5607895, 0.5795047, 0.3581842, 0.04857567, 0.9323865,
0.0923392, 0.5597034, 0.5826378, 0.3581842, 0.04857567, 0.9323865,
0.09350403, 0.5511141, 0.5826378, 0.3581842, 0.04857567, 0.9323865,
0.252777, 0.5727141, 0.973259, -0.9239284, -0.1253007, 0.3614636,
0.2516121, 0.5813034, 0.973259, -0.9239284, -0.1253007, 0.3614636,
0.1003477, 0.5607895, 0.5795047, -0.9239284, -0.1253007, 0.3614636,
0.1015126, 0.5522002, 0.5795047, -0.9239284, -0.1253007, 0.3614636,
0.2516121, 0.5813034, 0.973259, 0.1343894, -0.9909286, -1.482812e-06,
0.2436036, 0.5802172, 0.9763921, 0.1343894, -0.9909286, -1.482812e-06,
0.0923392, 0.5597034, 0.5826378, 0.1343894, -0.9909286, -1.482812e-06,
0.1003477, 0.5607895, 0.5795047, 0.1343894, -0.9909286, -1.482812e-06,
0.2436036, 0.5802172, 0.9763921, 0.9239287, 0.1252991, -0.3614636,
0.2447684, 0.571628, 0.9763921, 0.9239287, 0.1252991, -0.3614636,
0.09350403, 0.5511141, 0.5826378, 0.9239287, 0.1252991, -0.3614636,
0.0923392, 0.5597034, 0.5826378, 0.9239287, 0.1252991, -0.3614636,
0.2447684, 0.571628, 0.9763921, -0.1343892, 0.9909286, 1.26814e-06,
0.252777, 0.5727141, 0.973259, -0.1343892, 0.9909286, 1.26814e-06,
0.1015126, 0.5522002, 0.5795047, -0.1343892, 0.9909286, 1.26814e-06,
0.09350403, 0.5511141, 0.5826378, -0.1343892, 0.9909286, 1.26814e-06,
0.248984, 0.5758165, 0.9745545, 0.3581692, 0.04857554, 0.9323922,
0.2487824, 0.5773028, 0.9745545, 0.3581692, 0.04857554, 0.9323922,
0.2473965, 0.5771149, 0.9750966, 0.3581692, 0.04857554, 0.9323922,
0.2475981, 0.5756285, 0.9750966, 0.3581692, 0.04857554, 0.9323922,
0.248984, 0.5758165, 0.9745545, -0.2516153, 0.9107755, -0.3273798,
0.2475981, 0.5756285, 0.9750966, -0.2516153, 0.9107755, -0.3273798,
0.2489066, 0.5765628, 0.9766904, -0.2516153, 0.9107755, -0.3273798,
0.2489066, 0.5765628, 0.9766904, -0.2516153, 0.9107755, -0.3273798,
0.248984, 0.5758165, 0.9745545, 0.9908676, 0.1343832, -0.01106772,
0.2487824, 0.5773028, 0.9745545, 0.9908676, 0.1343832, -0.01106772,
0.2489066, 0.5765628, 0.9766904, 0.9908676, 0.1343832, -0.01106772,
0.2489066, 0.5765628, 0.9766904, 0.9908676, 0.1343832, -0.01106772,
0.2487824, 0.5773028, 0.9745545, -6.40471e-05, 0.9448959, 0.3273711,
0.2473965, 0.5771149, 0.9750966, -6.40471e-05, 0.9448959, 0.3273711,
0.2489066, 0.5765628, 0.9766904, -6.40471e-05, 0.9448959, 0.3273711,
0.2489066, 0.5765628, 0.9766904, -6.40471e-05, 0.9448959, 0.3273711,
0.2473965, 0.5771149, 0.9750966, -0.7393418, -0.1002594, 0.6658241,
0.2475981, 0.5756285, 0.9750966, -0.7393418, -0.1002594, 0.6658241,
0.2489066, 0.5765628, 0.9766904, -0.7393418, -0.1002594, 0.6658241,
0.2489066, 0.5765628, 0.9766904, -0.7393418, -0.1002594, 0.6658241
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
0.03336925, -0.003758312, -0.2588054, 0.07648554, -0.792022, 0.6056824,
0.04184701, -0.002939615, -0.2588054, 0.07648554, -0.792022, 0.6056824,
0.04135114, 0.002195219, -0.2520282, 0.07648554, -0.792022, 0.6056824,
0.03287338, 0.001376522, -0.2520282, 0.07648554, -0.792022, 0.6056824,
-0.01366088, 0.4832473, -0.6312338, 0.07648578, -0.7920215, 0.605683,
-0.005183124, 0.484066, -0.6312338, 0.07648578, -0.7920215, 0.605683,
-0.005678994, 0.4892009, -0.6244566, 0.07648578, -0.7920215, 0.605683,
-0.01415675, 0.4883822, -0.6244566, 0.07648578, -0.7920215, 0.605683,
0.03336925, -0.003758312, -0.2588054, -0.05821998, 0.6028787, 0.7957058,
0.04184701, -0.002939615, -0.2588054, -0.05821998, 0.6028787, 0.7957058,
-0.005183124, 0.484066, -0.6312338, -0.05821998, 0.6028787, 0.7957058,
-0.01366088, 0.4832473, -0.6312338, -0.05821998, 0.6028787, 0.7957058,
0.04184701, -0.002939615, -0.2588054, -0.9953694, -0.09612273, 1.167011e-07,
0.04135114, 0.002195219, -0.2520282, -0.9953694, -0.09612273, 1.167011e-07,
-0.005678994, 0.4892009, -0.6244566, -0.9953694, -0.09612273, 1.167011e-07,
-0.005183124, 0.484066, -0.6312338, -0.9953694, -0.09612273, 1.167011e-07,
0.04135114, 0.002195219, -0.2520282, 0.05822, -0.6028787, -0.7957057,
0.03287338, 0.001376522, -0.2520282, 0.05822, -0.6028787, -0.7957057,
-0.01415675, 0.4883822, -0.6244566, 0.05822, -0.6028787, -0.7957057,
-0.005678994, 0.4892009, -0.6244566, 0.05822, -0.6028787, -0.7957057,
0.03287338, 0.001376522, -0.2520282, 0.9953694, 0.09612274, -1.111439e-07,
0.03336925, -0.003758312, -0.2588054, 0.9953694, 0.09612274, -1.111439e-07,
-0.01366088, 0.4832473, -0.6312338, 0.9953694, 0.09612274, -1.111439e-07,
-0.01415675, 0.4883822, -0.6244566, 0.9953694, 0.09612274, -1.111439e-07,
0.03665733, -0.001305798, -0.2560136, 0.07648529, -0.79202, 0.605685,
0.03815039, -0.001161614, -0.2560136, 0.07648529, -0.79202, 0.605685,
0.03806306, -0.0002572954, -0.25482, 0.07648529, -0.79202, 0.605685,
0.03657001, -0.0004014797, -0.25482, 0.07648529, -0.79202, 0.605685,
0.03665733, -0.001305798, -0.2560136, 0.9051377, 0.368099, -0.2126713,
0.03657001, -0.0004014797, -0.25482, 0.9051377, 0.368099, -0.2126713,
0.03751317, -0.002365589, -0.2542054, 0.9051377, 0.368099, -0.2126713,
0.03751317, -0.002365589, -0.2542054, 0.9051377, 0.368099, -0.2126713,
0.03665733, -0.001305798, -0.2560136, 0.08136873, -0.8425888, -0.5323749,
0.03815039, -0.001161614, -0.2560136, 0.08136873, -0.8425888, -0.5323749,
0.03751317, -0.002365589, -0.2542054, 0.08136873, -0.8425888, -0.5323749,
0.03751317, -0.002365589, -0.2542054, 0.08136873, -0.8425888, -0.5323749,
0.03815039, -0.001161614, -0.2560136, 0.958849, -0.1880959, 0.2126702,
0.03806306, -0.0002572954, -0.25482, 0.958849, -0.1880959, 0.2126702,
0.03751317, -0.002365589, -0.2542054, 0.958849, -0.1880959, 0.2126702,
0.03751317, -0.002365589, -0.2542054, 0.958849, -0.1880959, 0.2126702,
0.03806306, -0.0002572954, -0.25482, -0.02765705, 0.2863941, 0.9577126,
0.03657001, -0.0004014797, -0.25482, -0.02765705, 0.2863941, 0.9577126,
0.03751317, -0.002365589, -0.2542054, -0.02765705, 0.2863941, 0.9577126,
0.03751317, -0.002365589, -0.2542054, -0.02765705, 0.2863941, 0.9577126
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
-0.121636, 0.6826862, -0.9042152, -0.3221257, 0.5512938, -0.7696169,
-0.1258535, 0.6802219, -0.9042152, -0.3221257, 0.5512938, -0.7696169,
-0.12775, 0.6834677, -0.9010963, -0.3221257, 0.5512938, -0.7696169,
-0.1235326, 0.685932, -0.9010963, -0.3221257, 0.5512938, -0.7696169,
-0.006612927, 0.4858333, -0.6294046, -0.322127, 0.5512956, -0.7696151,
-0.01083038, 0.4833691, -0.6294046, -0.322127, 0.5512956, -0.7696151,
-0.01272694, 0.4866149, -0.6262857, -0.322127, 0.5512956, -0.7696151,
-0.008509493, 0.4890791, -0.6262857, -0.322127, 0.5512956, -0.7696151,
-0.121636, 0.6826862, -0.9042152, -0.3882711, 0.6644967, 0.6385058,
-0.1258535, 0.6802219, -0.9042152, -0.3882711, 0.6644967, 0.6385058,
-0.01083038, 0.4833691, -0.6294046, -0.3882711, 0.6644967, 0.6385058,
-0.006612927, 0.4858333, -0.6294046, -0.3882711, 0.6644967, 0.6385058,
-0.1258535, 0.6802219, -0.9042152, 0.8634124, 0.5044988, -1.251468e-06,
-0.12775, 0.6834677, -0.9010963, 0.8634124, 0.5044988, -1.251468e-06,
-0.01272694, 0.4866149, -0.6262857, 0.8634124, 0.5044988, -1.251468e-06,
-0.01083038, 0.4833691, -0.6294046, 0.8634124, 0.5044988, -1.251468e-06,
-0.12775, 0.6834677, -0.9010963, 0.3882711, -0.6644967, -0.6385059,
-0.1235326, 0.685932, -0.9010963, 0.3882711, -0.6644967, -0.6385059,
-0.008509493, 0.4890791, -0.6262857, 0.3882711, -0.6644967, -0.6385059,
-0.01272694, 0.4866149, -0.6262857, 0.3882711, -0.6644967, -0.6385059,
-0.1235326, 0.685932, -0.9010963, -0.8634124, -0.5044988, 1.301527e-06,
-0.121636, 0.6826862, -0.9042152, -0.8634124, -0.5044988, 1.301527e-06,
-0.006612927, 0.4858333, -0.6294046, -0.8634124, -0.5044988, 1.301527e-06,
-0.008509493, 0.4890791, -0.6262857, -0.8634124, -0.5044988, 1.301527e-06,
-0.1237543, 0.6829569, -0.9031346, -0.3221331, 0.5512663, -0.7696334,
-0.1250494, 0.6822001, -0.9031346, -0.3221331, 0.5512663, -0.7696334,
-0.1256318, 0.6831969, -0.9021769, -0.3221331, 0.5512663, -0.7696334,
-0.1243367, 0.6839536, -0.9021769, -0.3221331, 0.5512663, -0.7696334,
-0.1237543, 0.6829569, -0.9031346, -0.6953242, -0.665958, 0.2702298,
-0.1243367, 0.6839536, -0.9021769, -0.6953242, -0.665958, 0.2702298,
-0.1253373, 0.6841795, -0.904195, -0.6953242, -0.665958, 0.2702298,
-0.1253373, 0.6841795, -0.904195, -0.6953242, -0.665958, 0.2702298,
-0.1237543, 0.6829569, -0.9031346, 0.2504598, -0.4286119, -0.8680792,
-0.1250494, 0.6822001, -0.9031346, 0.2504598, -0.4286119, -0.8680792,
-0.1253373, 0.6841795, -0.904195, 0.2504598, -0.4286119, -0.8680792,
-0.1253373, 0.6841795, -0.904195, 0.2504598, -0.4286119, -0.8680792,
-0.1250494, 0.6822001, -0.9031346, -0.9215422, -0.2788095, -0.270232,
-0.1256318, 0.6831969, -0.9021769, -0.9215422, -0.2788095, -0.270232,
-0.1253373, 0.6841795, -0.904195, -0.9215422, -0.2788095, -0.270232,
-0.1253373, 0.6841795, -0.904195, -0.9215422, -0.2788095, -0.270232,
-0.1256318, 0.6831969, -0.9021769, -0.4766508, 0.8157614, 0.327624,
-0.1243367, 0.6839536, -0.9021769, -0.4766508, 0.8157614, 0.327624,
-0.1253373, 0.6841795, -0.904195, -0.4766508, 0.8157614, 0.327624,
-0.1253373, 0.6841795, -0.904195, -0.4766508, 0.8157614, 0.327624
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
0.3540999, -0.9762741, -0.3291757, 0.3485094, -0.8921796, -0.2873271,
0.3611254, -0.9735297, -0.3291757, 0.3485094, -0.8921796, -0.2873271,
0.361914, -0.9755483, -0.3219512, 0.3485094, -0.8921796, -0.2873271,
0.3548884, -0.9782927, -0.3219512, 0.3485094, -0.8921796, -0.2873271,
0.225118, -0.6460857, -0.222838, 0.348516, -0.8921772, -0.2873265,
0.2321436, -0.6433413, -0.222838, 0.348516, -0.8921772, -0.2873265,
0.2329321, -0.6453599, -0.2156135, 0.348516, -0.8921772, -0.2873265,
0.2259066, -0.6481044, -0.2156135, 0.348516, -0.8921772, -0.2873265,
0.3540999, -0.9762741, -0.3291757, 0.1045447, -0.2676332, 0.9578323,
0.3611254, -0.9735297, -0.3291757, 0.1045447, -0.2676332, 0.9578323,
0.2321436, -0.6433413, -0.222838, 0.1045447, -0.2676332, 0.9578323,
0.225118, -0.6460857, -0.222838, 0.1045447, -0.2676332, 0.9578323,
0.3611254, -0.9735297, -0.3291757, -0.9314554, -0.3638554, -1.04261e-08,
0.361914, -0.9755483, -0.3219512, -0.9314554, -0.3638554, -1.04261e-08,
0.2329321, -0.6453599, -0.2156135, -0.9314554, -0.3638554, -1.04261e-08,
0.2321436, -0.6433413, -0.222838, -0.9314554, -0.3638554, -1.04261e-08,
0.361914, -0.9755483, -0.3219512, -0.1045448, 0.2676333, -0.9578323,
0.3548884, -0.9782927, -0.3219512, -0.1045448, 0.2676333, -0.9578323,
0.2259066, -0.6481044, -0.2156135, -0.1045448, 0.2676333, -0.9578323,
0.2329321, -0.6453599, -0.2156135, -0.1045448, 0.2676333, -0.9578323,
0.3548884, -0.9782927, -0.3219512, 0.9314554, 0.3638555, 3.127829e-08,
0.3540999, -0.9762741, -0.3291757, 0.9314554, 0.3638555, 3.127829e-08,
0.225118, -0.6460857, -0.222838, 0.9314554, 0.3638555, 3.127829e-08,
0.2259066, -0.6481044, -0.2156135, 0.9314554, 0.3638555, 3.127829e-08,
0.3572299, -0.9759834, -0.3262819, 0.3485208, -0.8921783, -0.2873171,
0.3586271, -0.9754376, -0.3262819, 0.3485208, -0.8921783, -0.2873171,
0.3587839, -0.975839, -0.3248451, 0.3485208, -0.8921783, -0.2873171,
0.3573867, -0.9763848, -0.3248451, 0.3485208, -0.8921783, -0.2873171,
0.3572299, -0.9759834, -0.3262819, 0.7497699, 0.653963, 0.1008835,
0.3573867, -0.9763848, -0.3248451, 0.7497699, 0.653963, 0.1008835,
0.3587039, -0.9776955, -0.3261381, 0.7497699, 0.653963, 0.1008835,
0.3587039, -0.9776955, -0.3261381, 0.7497699, 0.653963, 0.1008835,
0.3572299, -0.9759834, -0.3262819, 0.02448562, -0.06268074, -0.9977332,
0.3586271, -0.9754376, -0.3262819, 0.02448562, -0.06268074, -0.9977332,
0.3587039, -0.9776955, -0.3261381, 0.02448562, -0.06268074, -0.9977332,
0.3587039, -0.9776955, -0.3261381, 0.02448562, -0.06268074, -0.9977332,
0.3586271, -0.9754376, -0.3262819, 0.9945199, 0.02741785, -0.1008887,
0.3587839, -0.975839, -0.3248451, 0.9945199, 0.02741785, -0.1008887,
0.3587039, -0.9776955, -0.3261381, 0.9945199, 0.02741785, -0.1008887,
0.3587039, -0.9776955, -0.3261381, 0.9945199, 0.02741785, -0.1008887,
0.3587839, -0.975839, -0.3248451, 0.2202673, -0.5638622, 0.7959534,
0.3573867, -0.9763848, -0.3248451, 0.2202673, -0.5638622, 0.7959534,
0.3587039, -0.9776955, -0.3261381, 0.2202673, -0.5638622, 0.7959534,
0.3587039, -0.9776955, -0.3261381, 0.2202673, -0.5638622, 0.7959534
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
0.05122105, -0.04691687, -0.2423253, -0.2907762, 0.9563072, -0.03042336,
0.04340381, -0.04929379, -0.2423253, -0.2907762, 0.9563072, -0.03042336,
0.04333149, -0.04905596, -0.2341585, -0.2907762, 0.9563072, -0.03042336,
0.05114873, -0.04667904, -0.2341585, -0.2907762, 0.9563072, -0.03042336,
0.2329699, -0.6446533, -0.2233091, -0.2907821, 0.9563056, -0.03042293,
0.2251526, -0.6470302, -0.2233091, -0.2907821, 0.9563056, -0.03042293,
0.2250803, -0.6467924, -0.2151423, -0.2907821, 0.9563056, -0.03042293,
0.2328975, -0.6444154, -0.2151423, -0.2907821, 0.9563056, -0.03042293,
0.05122105, -0.04691687, -0.2423253, -0.008850562, 0.0291078, 0.9995371,
0.04340381, -0.04929379, -0.2423253, -0.008850562, 0.0291078, 0.9995371,
0.2251526, -0.6470302, -0.2233091, -0.008850562, 0.0291078, 0.9995371,
0.2329699, -0.6446533, -0.2233091, -0.008850562, 0.0291078, 0.9995371,
0.04340381, -0.04929379, -0.2423253, 0.95675, 0.2909112, 1.709638e-07,
0.04333149, -0.04905596, -0.2341585, 0.95675, 0.2909112, 1.709638e-07,
0.2250803, -0.6467924, -0.2151423, 0.95675, 0.2909112, 1.709638e-07,
0.2251526, -0.6470302, -0.2233091, 0.95675, 0.2909112, 1.709638e-07,
0.04333149, -0.04905596, -0.2341585, 0.008850572, -0.0291078, -0.9995371,
0.05114873, -0.04667904, -0.2341585, 0.008850572, -0.0291078, -0.9995371,
0.2328975, -0.6444154, -0.2151423, 0.008850572, -0.0291078, -0.9995371,
0.2250803, -0.6467924, -0.2151423, 0.008850572, -0.0291078, -0.9995371,
0.05114873, -0.04667904, -0.2341585, -0.95675, -0.2909112, 3.989156e-07,
0.05122105, -0.04691687, -0.2423253, -0.95675, -0.2909112, 3.989156e-07,
0.2329699, -0.6446533, -0.2233091, -0.95675, -0.2909112, 3.989156e-07,
0.2328975, -0.6444154, -0.2151423, -0.95675, -0.2909112, 3.989156e-07,
0.04800047, -0.04779006, -0.2389916, -0.2907761, 0.9563074, -0.03042291,
0.04656535, -0.04822643, -0.2389916, -0.2907761, 0.9563074, -0.03042291,
0.04655207, -0.04818277, -0.2374922, -0.2907761, 0.9563074, -0.03042291,
0.04798719, -0.0477464, -0.2374922, -0.2907761, 0.9563074, -0.03042291,
0.04800047, -0.04779006, -0.2389916, -0.793735, -0.60817, 0.0106813,
0.04798719, -0.0477464, -0.2374922, -0.793735, -0.60817, 0.0106813,
0.04669472, -0.0460738, -0.2383028, -0.793735, -0.60817, 0.0106813,
0.04669472, -0.0460738, -0.2383028, -0.793735, -0.60817, 0.0106813,
0.04800047, -0.04779006, -0.2389916, -0.09381146, 0.308528, -0.946578,
0.04656535, -0.04822643, -0.2389916, -0.09381146, 0.308528, -0.946578,
0.04669472, -0.0460738, -0.2383028, -0.09381146, 0.308528, -0.946578,
0.04669472, -0.0460738, -0.2383028, -0.09381146, 0.308528, -0.946578,
0.04656535, -0.04822643, -0.2389916, -0.9979314, 0.06339367, -0.01068309,
0.04655207, -0.04818277, -0.2374922, -0.9979314, 0.06339367, -0.01068309,
0.04669472, -0.0460738, -0.2383028, -0.9979314, 0.06339367, -0.01068309,
0.04669472, -0.0460738, -0.2383028, -0.9979314, 0.06339367, -0.01068309,
0.04655207, -0.04818277, -0.2374922, -0.1103859, 0.3630382, 0.9252126,
0.04798719, -0.0477464, -0.2374922, -0.1103859, 0.3630382, 0.9252126,
0.04669472, -0.0460738, -0.2383028, -0.1103859, 0.3630382, 0.9252126,
0.04669472, -0.0460738, -0.2383028, -0.1103859, 0.3630382, 0.9252126
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
0.03195801, -0.04270487, -0.2560929, 0.4568461, 0.7432396, 0.4887601,
0.02447193, -0.03810341, -0.2560929, 0.4568461, 0.7432396, 0.4887601,
0.02222292, -0.04176231, -0.2484268, 0.4568461, 0.7432396, 0.4887601,
0.029709, -0.04636376, -0.2484268, 0.4568461, 0.7432396, 0.4887601,
-0.2506584, -0.5024915, -0.5584525, 0.4568452, 0.7432393, 0.4887615,
-0.2581445, -0.4978901, -0.5584525, 0.4568452, 0.7432393, 0.4887615,
-0.2603935, -0.501549, -0.5507864, 0.4568452, 0.7432393, 0.4887615,
-0.2529074, -0.5061504, -0.5507864, 0.4568452, 0.7432393, 0.4887615,
0.03195801, -0.04270487, -0.2560929, -0.2559419, -0.41639, 0.872418,
0.02447193, -0.03810341, -0.2560929, -0.2559419, -0.41639, 0.872418,
-0.2581445, -0.4978901, -0.5584525, -0.2559419, -0.41639, 0.872418,
-0.2506584, -0.5024915, -0.5584525, -0.2559419, -0.41639, 0.872418,
0.02447193, -0.03810341, -0.2560929, 0.8519306, -0.5236549, 4.283138e-08,
0.02222292, -0.04176231, -0.2484268, 0.8519306, -0.5236549, 4.283138e-08,
-0.2603935, -0.501549, -0.5507864, 0.8519306, -0.5236549, 4.283138e-08,
-0.2581445, -0.4978901, -0.5584525, 0.8519306, -0.5236549, 4.283138e-08,
0.02222292, -0.04176231, -0.2484268, 0.2559419, 0.41639, -0.8724179,
0.029709, -0.04636376, -0.2484268, 0.2559419, 0.41639, -0.8724179,
-0.2529074, -0.5061504, -0.5507864, 0.2559419, 0.41639, -0.8724179,
-0.2603935, -0.501549, -0.5507864, 0.2559419, 0.41639, -0.8724179,
0.029709, -0.04636376, -0.2484268, -0.8519304, 0.5236549, -1.713255e-07,
0.03195801, -0.04270487, -0.2560929, -0.8519304, 0.5236549, -1.713255e-07,
-0.2506584, -0.5024915, -0.5584525, -0.8519304, 0.5236549, -1.713255e-07,
-0.2529074, -0.5061504, -0.5507864, -0.8519304, 0.5236549, -1.713255e-07,
0.02792137, -0.04231403, -0.2529142, 0.4568449, 0.7432387, 0.4887626,
0.02664347, -0.04152855, -0.2529142, 0.4568449, 0.7432387, 0.4887626,
0.02625956, -0.04215314, -0.2516056, 0.4568449, 0.7432387, 0.4887626,
0.02753746, -0.04293862, -0.2516056, 0.4568449, 0.7432387, 0.4887626,
0.02792137, -0.04231403, -0.2529142, -0.9580967, 0.2293444, -0.1716153,
0.02753746, -0.04293862, -0.2516056, -0.9580967, 0.2293444, -0.1716153,
0.02800416, -0.04074711, -0.2512824, -0.9580967, 0.2293444, -0.1716153,
0.02800416, -0.04074711, -0.2512824, -0.9580967, 0.2293444, -0.1716153,
0.02792137, -0.04231403, -0.2529142, 0.4000537, 0.6508455, -0.6452575,
0.02664347, -0.04152855, -0.2529142, 0.4000537, 0.6508455, -0.6452575,
0.02800416, -0.04074711, -0.2512824, 0.4000537, 0.6508455, -0.6452575,
0.02800416, -0.04074711, -0.2512824, 0.4000537, 0.6508455, -0.6452575,
0.02664347, -0.04152855, -0.2529142, -0.6372786, 0.7512814, 0.1716168,
0.02625956, -0.04215314, -0.2516056, -0.6372786, 0.7512814, 0.1716168,
0.02800416, -0.04074711, -0.2512824, -0.6372786, 0.7512814, 0.1716168,
0.02800416, -0.04074711, -0.2512824, -0.6372786, 0.7512814, 0.1716168,
0.02625956, -0.04215314, -0.2516056, -0.07923602, -0.1289087, 0.9884859,
0.02753746, -0.04293862, -0.2516056, -0.07923602, -0.1289087, 0.9884859,
0.02800416, -0.04074711, -0.2512824, -0.07923602, -0.1289087, 0.9884859,
0.02800416, -0.04074711, -0.2512824, -0.07923602, -0.1289087, 0.9884859
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
-0.4383598, -0.6667891, -0.8147797, -0.509544, -0.4684517, -0.7217464,
-0.4350541, -0.6703848, -0.8147797, -0.509544, -0.4684517, -0.7217464,
-0.4376493, -0.6727707, -0.8113989, -0.509544, -0.4684517, -0.7217464,
-0.440955, -0.669175, -0.8113989, -0.509544, -0.4684517, -0.7217464,
-0.2558812, -0.4990295, -0.5563099, -0.5095461, -0.4684495, -0.7217464,
-0.2525755, -0.5026252, -0.5563099, -0.5095461, -0.4684495, -0.7217464,
-0.2551707, -0.5050111, -0.5529291, -0.5095461, -0.4684495, -0.7217464,
-0.2584764, -0.5014153, -0.5529291, -0.5095461, -0.4684495, -0.7217464,
-0.4383598, -0.6667891, -0.8147797, -0.5313254, -0.4884766, 0.6921589,
-0.4350541, -0.6703848, -0.8147797, -0.5313254, -0.4884766, 0.6921589,
-0.2525755, -0.5026252, -0.5563099, -0.5313254, -0.4884766, 0.6921589,
-0.2558812, -0.4990295, -0.5563099, -0.5313254, -0.4884766, 0.6921589,
-0.4350541, -0.6703848, -0.8147797, -0.6767954, 0.7361712, 3.294413e-06,
-0.4376493, -0.6727707, -0.8113989, -0.6767954, 0.7361712, 3.294413e-06,
-0.2551707, -0.5050111, -0.5529291, -0.6767954, 0.7361712, 3.294413e-06,
-0.2525755, -0.5026252, -0.5563099, -0.6767954, 0.7361712, 3.294413e-06,
-0.4376493, -0.6727707, -0.8113989, 0.5313294, 0.4884722, -0.6921589,
-0.440955, -0.669175, -0.8113989, 0.5313294, 0.4884722, -0.6921589,
-0.2584764, -0.5014153, -0.5529291, 0.5313294, 0.4884722, -0.6921589,
-0.2551707, -0.5050111, -0.5529291, 0.5313294, 0.4884722, -0.6921589,
-0.440955, -0.669175, -0.8113989, 0.6767906, -0.7361755, 2.878469e-06,
-0.4383598, -0.6667891, -0.8147797, 0.6767906, -0.7361755, 2.878469e-06,
-0.2558812, -0.4990295, -0.5563099, 0.6767906, -0.7361755, 2.878469e-06,
-0.2584764, -0.5014153, -0.5529291, 0.6767906, -0.7361755, 2.878469e-06,
-0.4381136, -0.6688614, -0.8136084, -0.5095447, -0.4684533, -0.7217449,
-0.4370984, -0.6699657, -0.8136084, -0.5095447, -0.4684533, -0.7217449,
-0.4378954, -0.6706984, -0.8125702, -0.5095447, -0.4684533, -0.7217449,
-0.4389106, -0.6695941, -0.8125702, -0.5095447, -0.4684533, -0.7217449,
-0.4381136, -0.6688614, -0.8136084, 0.8126043, -0.52483, 0.2534317,
-0.4389106, -0.6695941, -0.8125702, 0.8126043, -0.52483, 0.2534317,
-0.4390236, -0.6707168, -0.8145328, 0.8126043, -0.52483, 0.2534317,
-0.4390236, -0.6707168, -0.8145328, 0.8126043, -0.52483, 0.2534317,
-0.4381136, -0.6688614, -0.8136084, 0.3185908, 0.2928986, -0.9015044,
-0.4370984, -0.6699657, -0.8136084, 0.3185908, 0.2928986, -0.9015044,
-0.4390236, -0.6707168, -0.8145328, 0.3185908, 0.2928986, -0.9015044,
-0.4390236, -0.6707168, -0.8145328, 0.3185908, 0.2928986, -0.9015044,
-0.4370984, -0.6699657, -0.8136084, 0.4547933, -0.8537816, -0.2534168,
-0.4378954, -0.6706984, -0.8125702, 0.4547933, -0.8537816, -0.2534168,
-0.4390236, -0.6707168, -0.8145328, 0.4547933, -0.8537816, -0.2534168,
-0.4390236, -0.6707168, -0.8145328, 0.4547933, -0.8537816, -0.2534168,
-0.4378954, -0.6706984, -0.8125702, -0.6764255, -0.6218426, 0.394665,
-0.4389106, -0.6695941, -0.8125702, -0.6764255, -0.6218426, 0.394665,
-0.4390236, -0.6707168, -0.8145328, -0.6764255, -0.6218426, 0.394665,
-0.4390236, -0.6707168, -0.8145328, -0.6764255, -0.6218426, 0.394665
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
0.3565374, -0.9756722, -0.3401947, 0.2730906, -0.9549891, 0.1158329,
0.3637893, -0.9735984, -0.3401947, 0.2730906, -0.9549891, 0.1158329,
0.3635491, -0.9727584, -0.3327029, 0.2730906, -0.9549891, 0.1158329,
0.3562972, -0.9748322, -0.3327029, 0.2730906, -0.9549891, 0.1158329,
0.2538822, -0.6166937, -0.383736, 0.2730979, -0.9549871, 0.115833,
0.2611341, -0.6146199, -0.383736, 0.2730979, -0.9549871, 0.115833,
0.2608939, -0.6137798, -0.3762442, 0.2730979, -0.9549871, 0.115833,
0.253642, -0.6158537, -0.3762442, 0.2730979, -0.9549871, 0.115833,
0.3565374, -0.9756722, -0.3401947, -0.03184719, 0.1113686, 0.9932688,
0.3637893, -0.9735984, -0.3401947, -0.03184719, 0.1113686, 0.9932688,
0.2611341, -0.6146199, -0.383736, -0.03184719, 0.1113686, 0.9932688,
0.2538822, -0.6166937, -0.383736, -0.03184719, 0.1113686, 0.9932688,
0.3637893, -0.9735984, -0.3401947, -0.9614604, -0.2749436, 7.519139e-07,
0.3635491, -0.9727584, -0.3327029, -0.9614604, -0.2749436, 7.519139e-07,
0.2608939, -0.6137798, -0.3762442, -0.9614604, -0.2749436, 7.519139e-07,
0.2611341, -0.6146199, -0.383736, -0.9614604, -0.2749436, 7.519139e-07,
0.3635491, -0.9727584, -0.3327029, 0.0318472, -0.1113686, -0.9932688,
0.3562972, -0.9748322, -0.3327029, 0.0318472, -0.1113686, -0.9932688,
0.253642, -0.6158537, -0.3762442, 0.0318472, -0.1113686, -0.9932688,
0.2608939, -0.6137798, -0.3762442, 0.0318472, -0.1113686, -0.9932688,
0.3562972, -0.9748322, -0.3327029, 0.9614604, 0.2749436, -7.570466e-07,
0.3565374, -0.9756722, -0.3401947, 0.9614604, 0.2749436, -7.570466e-07,
0.2538822, -0.6166937, -0.383736, 0.9614604, 0.2749436, -7.570466e-07,
0.253642, -0.6158537, -0.3762442, 0.9614604, 0.2749436, -7.570466e-07,
0.359346, -0.9745051, -0.3371938, 0.2731229, -0.9549831, 0.115807,
0.3607882, -0.9740926, -0.3371938, 0.2731229, -0.9549831, 0.115807,
0.3607405, -0.9739256, -0.3357039, 0.2731229, -0.9549831, 0.115807,
0.3592983, -0.974338, -0.3357039, 0.2731229, -0.9549831, 0.115807,
0.359346, -0.9745051, -0.3371938, 0.8043502, 0.5927613, -0.04067863,
0.3592983, -0.974338, -0.3357039, 0.8043502, 0.5927613, -0.04067863,
0.3605894, -0.9761253, -0.3362172, 0.8043502, 0.5927613, -0.04067863,
0.3605894, -0.9761253, -0.3362172, 0.8043502, 0.5927613, -0.04067863,
0.359346, -0.9745051, -0.3371938, 0.1257221, -0.4395912, -0.8893557,
0.3607882, -0.9740926, -0.3371938, 0.1257221, -0.4395912, -0.8893557,
0.3605894, -0.9761253, -0.3362172, 0.1257221, -0.4395912, -0.8893557,
0.3605894, -0.9761253, -0.3362172, 0.1257221, -0.4395912, -0.8893557,
0.3607882, -0.9740926, -0.3371938, 0.9961333, -0.07787379, 0.04066982,
0.3607405, -0.9739256, -0.3357039, 0.9961333, -0.07787379, 0.04066982,
0.3605894, -0.9761253, -0.3362172, 0.9961333, -0.07787379, 0.04066982,
0.3605894, -0.9761253, -0.3362172, 0.9961333, -0.07787379, 0.04066982,
0.3607405, -0.9739256, -0.3357039, 0.06606751, -0.2310405, 0.9706984,
0.3592983, -0.974338, -0.3357039, 0.06606751, -0.2310405, 0.9706984,
0.3605894, -0.9761253, -0.3362172, 0.06606751, -0.2310405, 0.9706984,
0.3605894, -0.9761253, -0.3362172, 0.06606751, -0.2310405, 0.9706984
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
0.05204355, -0.04465707, -0.2489282, -0.3366845, 0.9161088, 0.2176881,
0.04437446, -0.04747558, -0.2489282, -0.3366845, 0.9161088, 0.2176881,
0.04498801, -0.04914505, -0.2409536, -0.3366845, 0.9161088, 0.2176881,
0.05265711, -0.04632654, -0.2409536, -0.3366845, 0.9161088, 0.2176881,
0.2609158, -0.6129928, -0.3839775, -0.336686, 0.9161087, 0.2176868,
0.2532468, -0.6158113, -0.3839775, -0.336686, 0.9161087, 0.2176868,
0.2538603, -0.6174808, -0.3760028, -0.336686, 0.9161087, 0.2176868,
0.2615294, -0.6146622, -0.3760028, -0.336686, 0.9161087, 0.2176868,
0.05204355, -0.04465707, -0.2489282, 0.07509299, -0.2043259, 0.9760184,
0.04437446, -0.04747558, -0.2489282, 0.07509299, -0.2043259, 0.9760184,
0.2532468, -0.6158113, -0.3839775, 0.07509299, -0.2043259, 0.9760184,
0.2609158, -0.6129928, -0.3839775, 0.07509299, -0.2043259, 0.9760184,
0.04437446, -0.04747558, -0.2489282, 0.9386185, 0.344957, 1.320582e-07,
0.04498801, -0.04914505, -0.2409536, 0.9386185, 0.344957, 1.320582e-07,
0.2538603, -0.6174808, -0.3760028, 0.9386185, 0.344957, 1.320582e-07,
0.2532468, -0.6158113, -0.3839775, 0.9386185, 0.344957, 1.320582e-07,
0.04498801, -0.04914505, -0.2409536, -0.07509298, 0.2043259, -0.9760184,
0.05265711, -0.04632654, -0.2409536, -0.07509298, 0.2043259, -0.9760184,
0.2615294, -0.6146622, -0.3760028, -0.07509298, 0.2043259, -0.9760184,
0.2538603, -0.6174808, -0.3760028, -0.07509298, 0.2043259, -0.9760184,
0.05265711, -0.04632654, -0.2409536, -0.9386185, -0.344957, -1.320582e-07,
0.05204355, -0.04465707, -0.2489282, -0.9386185, -0.344957, -1.320582e-07,
0.2609158, -0.6129928, -0.3839775, -0.9386185, -0.344957, -1.320582e-07,
0.2615294, -0.6146622, -0.3760028, -0.9386185, -0.344957, -1.320582e-07,
0.04916343, -0.0464891, -0.2456729, -0.3366849, 0.9161088, 0.217687,
0.0477555, -0.04700654, -0.2456729, -0.3366849, 0.9161088, 0.217687,
0.04786814, -0.04731302, -0.2442089, -0.3366849, 0.9161088, 0.217687,
0.04927607, -0.04679559, -0.2442089, -0.3366849, 0.9161088, 0.217687,
0.04916343, -0.0464891, -0.2456729, -0.7606381, -0.6446608, -0.07643364,
0.04927607, -0.04679559, -0.2442089, -0.7606381, -0.6446608, -0.07643364,
0.04784242, -0.04506885, -0.2445055, -0.7606381, -0.6446608, -0.07643364,
0.04784242, -0.04506885, -0.2445055, -0.7606381, -0.6446608, -0.07643364,
0.04916343, -0.0464891, -0.2456729, -0.1885295, 0.5129827, -0.8374398,
0.0477555, -0.04700654, -0.2456729, -0.1885295, 0.5129827, -0.8374398,
0.04784242, -0.04506885, -0.2445055, -0.1885295, 0.5129827, -0.8374398,
0.04784242, -0.04506885, -0.2445055, -0.1885295, 0.5129827, -0.8374398,
0.0477555, -0.04700654, -0.2456729, -0.9970738, -0.001325433, 0.07643456,
0.04786814, -0.04731302, -0.2442089, -0.9970738, -0.001325433, 0.07643456,
0.04784242, -0.04506885, -0.2445055, -0.9970738, -0.001325433, 0.07643456,
0.04784242, -0.04506885, -0.2445055, -0.9970738, -0.001325433, 0.07643456,
0.04786814, -0.04731302, -0.2442089, -0.04790595, 0.1303509, 0.9903098,
0.04927607, -0.04679559, -0.2442089, -0.04790595, 0.1303509, 0.9903098,
0.04784242, -0.04506885, -0.2445055, -0.04790595, 0.1303509, 0.9903098,
0.04784242, -0.04506885, -0.2445055, -0.04790595, 0.1303509, 0.9903098
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
0.9770847, -0.3392243, -0.03724902, 0.8509989, -0.3290708, 0.409284,
0.9791949, -0.3337672, -0.03724902, 0.8509989, -0.3290708, 0.409284,
0.9769614, -0.3329036, -0.03191065, 0.8509989, -0.3290708, 0.409284,
0.9748512, -0.3383607, -0.03191065, 0.8509989, -0.3290708, 0.409284,
0.660684, -0.2168753, -0.1894203, 0.8509951, -0.3290786, 0.4092855,
0.6627942, -0.2114182, -0.1894203, 0.8509951, -0.3290786, 0.4092855,
0.6605607, -0.2105546, -0.184082, 0.8509951, -0.3290786, 0.4092855,
0.6584505, -0.2160117, -0.184082, 0.8509951, -0.3290786, 0.4092855,
0.9770847, -0.3392243, -0.03724902, -0.3817373, 0.1476131, 0.9124073,
0.9791949, -0.3337672, -0.03724902, -0.3817373, 0.1476131, 0.9124073,
0.6627942, -0.2114182, -0.1894203, -0.3817373, 0.1476131, 0.9124073,
0.660684, -0.2168753, -0.1894203, -0.3817373, 0.1476131, 0.9124073,
0.9791949, -0.3337672, -0.03724902, -0.3606623, -0.9326965, -4.803037e-06,
0.9769614, -0.3329036, -0.03191065, -0.3606623, -0.9326965, -4.803037e-06,
0.6605607, -0.2105546, -0.184082, -0.3606623, -0.9326965, -4.803037e-06,
0.6627942, -0.2114182, -0.1894203, -0.3606623, -0.9326965, -4.803037e-06,
0.9769614, -0.3329036, -0.03191065, 0.3817372, -0.1476131, -0.9124073,
0.9748512, -0.3383607, -0.03191065, 0.3817372, -0.1476131, -0.9124073,
0.6584505, -0.2160117, -0.184082, 0.3817372, -0.1476131, -0.9124073,
0.6605607, -0.2105546, -0.184082, 0.3817372, -0.1476131, -0.9124073,
0.9748512, -0.3383607, -0.03191065, 0.3606622, 0.9326965, 4.74952e-06,
0.9770847, -0.3392243, -0.03724902, 0.3606622, 0.9326965, 4.74952e-06,
0.660684, -0.2168753, -0.1894203, 0.3606622, 0.9326965, 4.74952e-06,
0.6584505, -0.2160117, -0.184082, 0.3606622, 0.9326965, 4.74952e-06,
0.9770389, -0.3368742, -0.03526414, 0.8509989, -0.3290587, 0.4092938,
0.9775798, -0.3354751, -0.03526414, 0.8509989, -0.3290587, 0.4092938,
0.9770072, -0.3352537, -0.03389553, 0.8509989, -0.3290587, 0.4092938,
0.9764662, -0.3366528, -0.03389553, 0.8509989, -0.3290587, 0.4092938,
0.9770389, -0.3368742, -0.03526414, 0.03890239, 0.9888545, -0.1437127,
0.9764662, -0.3366528, -0.03389553, 0.03890239, 0.9888545, -0.1437127,
0.978725, -0.3367221, -0.03376127, 0.03890239, 0.9888545, -0.1437127,
0.978725, -0.3367221, -0.03376127, 0.03890239, 0.9888545, -0.1437127,
0.9770389, -0.3368742, -0.03526414, 0.6562449, -0.2537525, -0.7105998,
0.9775798, -0.3354751, -0.03526414, 0.6562449, -0.2537525, -0.7105998,
0.978725, -0.3367221, -0.03376127, 0.6562449, -0.2537525, -0.7105998,
0.978725, -0.3367221, -0.03376127, 0.6562449, -0.2537525, -0.7105998,
0.9775798, -0.3354751, -0.03526414, 0.6365079, 0.7577629, 0.143712,
0.9770072, -0.3352537, -0.03389553, 0.6365079, 0.7577629, 0.143712,
0.978725, -0.3367221, -0.03376127, 0.6365079, 0.7577629, 0.143712,
0.978725, -0.3367221, -0.03376127, 0.6365079, 0.7577629, 0.143712,
0.9770072, -0.3352537, -0.03389553, -0.05862547, 0.02266891, 0.9980226,
0.9764662, -0.3366528, -0.03389553, -0.05862547, 0.02266891, 0.9980226,
0.978725, -0.3367221, -0.03376127, -0.05862547, 0.02266891, 0.9980226,
0.978725, -0.3367221, -0.03376127, -0.05862547, 0.02266891, 0.9980226
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
0.06685337, -0.02580455, -0.2414879, -0.9525217, 0.2937145, -0.08021373,
0.06413941, -0.03460596, -0.2414879, -0.9525217, 0.2937145, -0.08021373,
0.06343342, -0.03438826, -0.2323072, -0.9525217, 0.2937145, -0.08021373,
0.06614737, -0.02558685, -0.2323072, -0.9525217, 0.2937145, -0.08021373,
0.6623324, -0.2094231, -0.1913415, -0.9525212, 0.2937171, -0.08020976,
0.6596184, -0.2182245, -0.1913415, -0.9525212, 0.2937171, -0.08020976,
0.6589124, -0.2180068, -0.1821608, -0.9525212, 0.2937171, -0.08020976,
0.6616263, -0.2092054, -0.1821608, -0.9525212, 0.2937171, -0.08020976,
0.06685337, -0.02580455, -0.2414879, -0.07665228, 0.02363609, 0.9967777,
0.06413941, -0.03460596, -0.2414879, -0.07665228, 0.02363609, 0.9967777,
0.6596184, -0.2182245, -0.1913415, -0.07665228, 0.02363609, 0.9967777,
0.6623324, -0.2094231, -0.1913415, -0.07665228, 0.02363609, 0.9967777,
0.06413941, -0.03460596, -0.2414879, 0.2946637, 0.955601, 1.794366e-07,
0.06343342, -0.03438826, -0.2323072, 0.2946637, 0.955601, 1.794366e-07,
0.6589124, -0.2180068, -0.1821608, 0.2946637, 0.955601, 1.794366e-07,
0.6596184, -0.2182245, -0.1913415, 0.2946637, 0.955601, 1.794366e-07,
0.06343342, -0.03438826, -0.2323072, 0.07665228, -0.02363609, -0.9967777,
0.06614737, -0.02558685, -0.2323072, 0.07665228, -0.02363609, -0.9967777,
0.6616263, -0.2092054, -0.1821608, 0.07665228, -0.02363609, -0.9967777,
0.6589124, -0.2180068, -0.1821608, 0.07665228, -0.02363609, -0.9967777,
0.06614737, -0.02558685, -0.2323072, -0.2946637, -0.955601, -1.794366e-07,
0.06685337, -0.02580455, -0.2414879, -0.2946637, -0.955601, -1.794366e-07,
0.6623324, -0.2094231, -0.1913415, -0.2946637, -0.955601, -1.794366e-07,
0.6616263, -0.2092054, -0.1821608, -0.2946637, -0.955601, -1.794366e-07,
0.06542188, -0.02939743, -0.2376452, -0.9525213, 0.2937161, -0.08021285,
0.06497988, -0.03083083, -0.2376452, -0.9525213, 0.2937161, -0.08021285,
0.0648649, -0.03079538, -0.23615, -0.9525213, 0.2937161, -0.08021285,
0.0653069, -0.02936198, -0.23615, -0.9525213, 0.2937161, -0.08021285,
0.06542188, -0.02939743, -0.2376452, 0.05855025, -0.9978871, 0.02816449,
0.0653069, -0.02936198, -0.23615, 0.05855025, -0.9978871, 0.02816449,
0.06323835, -0.02950898, -0.237058, 0.05855025, -0.9978871, 0.02816449,
0.06323835, -0.02950898, -0.237058, 0.05855025, -0.9978871, 0.02816449,
0.06542188, -0.02939743, -0.2376452, -0.2626853, 0.0810007, -0.9614756,
0.06497988, -0.03083083, -0.2376452, -0.2626853, 0.0810007, -0.9614756,
0.06323835, -0.02950898, -0.237058, -0.2626853, 0.0810007, -0.9614756,
0.06323835, -0.02950898, -0.237058, -0.2626853, 0.0810007, -0.9614756,
0.06497988, -0.03083083, -0.2376452, -0.6103563, -0.791626, -0.02816485,
0.0648649, -0.03079538, -0.23615, -0.6103563, -0.791626, -0.02816485,
0.06323835, -0.02950898, -0.237058, -0.6103563, -0.791626, -0.02816485,
0.06323835, -0.02950898, -0.237058, -0.6103563, -0.791626, -0.02816485,
0.0648649, -0.03079538, -0.23615, -0.4062218, 0.1252611, 0.9051483,
0.0653069, -0.02936198, -0.23615, -0.4062218, 0.1252611, 0.9051483,
0.06323835, -0.02950898, -0.237058, -0.4062218, 0.1252611, 0.9051483,
0.06323835, -0.02950898, -0.237058, -0.4062218, 0.1252611, 0.9051483
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
0.01291619, -0.0195875, -0.2465392, 0.9599939, -0.2528612, 0.1203038,
0.01508561, -0.01135123, -0.2465392, 0.9599939, -0.2528612, 0.1203038,
0.01409475, -0.01109024, -0.2380839, 0.9599939, -0.2528612, 0.1203038,
0.01192533, -0.01932651, -0.2380839, 0.9599939, -0.2528612, 0.1203038,
-0.6038997, 0.142881, -0.3238369, 0.9599935, -0.2528618, 0.1203053,
-0.6017303, 0.1511173, -0.3238369, 0.9599935, -0.2528618, 0.1203053,
-0.6027212, 0.1513782, -0.3153816, 0.9599935, -0.2528618, 0.1203053,
-0.6048905, 0.143142, -0.3153816, 0.9599935, -0.2528618, 0.1203053,
0.01291619, -0.0195875, -0.2465392, -0.1163358, 0.03064271, 0.9927372,
0.01508561, -0.01135123, -0.2465392, -0.1163358, 0.03064271, 0.9927372,
-0.6017303, 0.1511173, -0.3238369, -0.1163358, 0.03064271, 0.9927372,
-0.6038997, 0.142881, -0.3238369, -0.1163358, 0.03064271, 0.9927372,
0.01508561, -0.01135123, -0.2465392, -0.254711, -0.9670172, 1.329555e-08,
0.01409475, -0.01109024, -0.2380839, -0.254711, -0.9670172, 1.329555e-08,
-0.6027212, 0.1513782, -0.3153816, -0.254711, -0.9670172, 1.329555e-08,
-0.6017303, 0.1511173, -0.3238369, -0.254711, -0.9670172, 1.329555e-08,
0.01409475, -0.01109024, -0.2380839, 0.1163358, -0.0306427, -0.9927371,
0.01192533, -0.01932651, -0.2380839, 0.1163358, -0.0306427, -0.9927371,
-0.6048905, 0.143142, -0.3153816, 0.1163358, -0.0306427, -0.9927371,
-0.6027212, 0.1513782, -0.3153816, 0.1163358, -0.0306427, -0.9927371,
0.01192533, -0.01932651, -0.2380839, 0.254711, 0.9670172, -4.254577e-08,
0.01291619, -0.0195875, -0.2465392, 0.254711, 0.9670172, -4.254577e-08,
-0.6038997, 0.142881, -0.3238369, 0.254711, 0.9670172, -4.254577e-08,
-0.6048905, 0.143142, -0.3153816, 0.254711, 0.9670172, -4.254577e-08,
0.01340169, -0.01608712, -0.2430561, 0.9599938, -0.2528611, 0.1203041,
0.01378376, -0.01463659, -0.2430561, 0.9599938, -0.2528611, 0.1203041,
0.01360925, -0.01459063, -0.241567, 0.9599938, -0.2528611, 0.1203041,
0.01322719, -0.01604115, -0.241567, 0.9599938, -0.2528611, 0.1203041,
0.01340169, -0.01608712, -0.2430561, -0.09858336, 0.9942318, -0.0422419,
0.01322719, -0.01604115, -0.241567, -0.09858336, 0.9942318, -0.0422419,
0.01542546, -0.01584459, -0.2420709, -0.09858336, 0.9942318, -0.0422419,
0.01542546, -0.01584459, -0.2420709, -0.09858336, 0.9942318, -0.0422419,
0.01340169, -0.01608712, -0.2430561, 0.4460051, -0.1174771, -0.8872871,
0.01378376, -0.01463659, -0.2430561, 0.4460051, -0.1174771, -0.8872871,
0.01542546, -0.01584459, -0.2420709, 0.4460051, -0.1174771, -0.8872871,
0.01542546, -0.01584459, -0.2420709, 0.4460051, -0.1174771, -0.8872871,
0.01378376, -0.01463659, -0.2430561, 0.5755699, 0.8166609, 0.04224134,
0.01360925, -0.01459063, -0.241567, 0.5755699, 0.8166609, 0.04224134,
0.01542546, -0.01584459, -0.2420709, 0.5755699, 0.8166609, 0.04224134,
0.01542546, -0.01584459, -0.2420709, 0.5755699, 0.8166609, 0.04224134,
0.01360925, -0.01459063, -0.241567, 0.2281465, -0.06009349, 0.9717705,
0.01322719, -0.01604115, -0.241567, 0.2281465, -0.06009349, 0.9717705,
0.01542546, -0.01584459, -0.2420709, 0.2281465, -0.06009349, 0.9717705,
0.01542546, -0.01584459, -0.2420709, 0.2281465, -0.06009349, 0.9717705
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
-0.9736285, 0.1704051, -0.2666182, -0.9873068, 0.05398923, 0.149367,
-0.9739586, 0.1643687, -0.2666182, -0.9873068, 0.05398923, 0.149367,
-0.9730569, 0.1643194, -0.2606406, -0.9873068, 0.05398923, 0.149367,
-0.9727269, 0.1703558, -0.2606406, -0.9873068, 0.05398923, 0.149367,
-0.6035962, 0.1501725, -0.322598, -0.9873087, 0.05397959, 0.1493573,
-0.6039262, 0.1441361, -0.322598, -0.9873087, 0.05397959, 0.1493573,
-0.6030247, 0.1440868, -0.3166204, -0.9873087, 0.05397959, 0.1493573,
-0.6026946, 0.1501231, -0.3166204, -0.9873087, 0.05397959, 0.1493573,
-0.9736285, 0.1704051, -0.2666182, 0.1491407, -0.008155511, 0.9887823,
-0.9739586, 0.1643687, -0.2666182, 0.1491407, -0.008155511, 0.9887823,
-0.6039262, 0.1441361, -0.322598, 0.1491407, -0.008155511, 0.9887823,
-0.6035962, 0.1501725, -0.322598, 0.1491407, -0.008155511, 0.9887823,
-0.9739586, 0.1643687, -0.2666182, 0.05459635, 0.9985086, -1.120733e-06,
-0.9730569, 0.1643194, -0.2606406, 0.05459635, 0.9985086, -1.120733e-06,
-0.6030247, 0.1440868, -0.3166204, 0.05459635, 0.9985086, -1.120733e-06,
-0.6039262, 0.1441361, -0.322598, 0.05459635, 0.9985086, -1.120733e-06,
-0.9730569, 0.1643194, -0.2606406, -0.1491408, 0.008154063, -0.9887823,
-0.9727269, 0.1703558, -0.2606406, -0.1491408, 0.008154063, -0.9887823,
-0.6026946, 0.1501231, -0.3166204, -0.1491408, 0.008154063, -0.9887823,
-0.6030247, 0.1440868, -0.3166204, -0.1491408, 0.008154063, -0.9887823,
-0.9727269, 0.1703558, -0.2606406, -0.0545968, -0.9985086, -1.845679e-06,
-0.9736285, 0.1704051, -0.2666182, -0.0545968, -0.9985086, -1.845679e-06,
-0.6035962, 0.1501725, -0.322598, -0.0545968, -0.9985086, -1.845679e-06,
-0.6026946, 0.1501231, -0.3166204, -0.0545968, -0.9985086, -1.845679e-06,
-0.9734136, 0.1681173, -0.264371, -0.987309, 0.05398555, 0.149354,
-0.9734955, 0.1666195, -0.264371, -0.987309, 0.05398555, 0.149354,
-0.9732718, 0.1666073, -0.2628878, -0.987309, 0.05398555, 0.149354,
-0.9731899, 0.168105, -0.2628878, -0.987309, 0.05398555, 0.149354,
-0.9734136, 0.1681173, -0.264371, 0.2955505, -0.9538865, -0.05244384,
-0.9731899, 0.168105, -0.2628878, 0.2955505, -0.9538865, -0.05244384,
-0.9753173, 0.1674702, -0.2633307, 0.2955505, -0.9538865, -0.05244384,
-0.9753173, 0.1674702, -0.2633307, 0.2955505, -0.9538865, -0.05244384,
-0.9734136, 0.1681173, -0.264371, -0.4863093, 0.02659115, -0.873382,
-0.9734955, 0.1666195, -0.264371, -0.4863093, 0.02659115, -0.873382,
-0.9753173, 0.1674702, -0.2633307, -0.4863093, 0.02659115, -0.873382,
-0.9753173, 0.1674702, -0.2633307, -0.4863093, 0.02659115, -0.873382,
-0.9734955, 0.1666195, -0.264371, -0.3977846, -0.915979, 0.0524396,
-0.9732718, 0.1666073, -0.2628878, -0.3977846, -0.915979, 0.0524396,
-0.9753173, 0.1674702, -0.2633307, -0.3977846, -0.915979, 0.0524396,
-0.9753173, 0.1674702, -0.2633307, -0.3977846, -0.915979, 0.0524396,
-0.9732718, 0.1666073, -0.2628878, -0.2070242, 0.01131998, 0.9782704,
-0.9731899, 0.168105, -0.2628878, -0.2070242, 0.01131998, 0.9782704,
-0.9753173, 0.1674702, -0.2633307, -0.2070242, 0.01131998, 0.9782704,
-0.9753173, 0.1674702, -0.2633307, -0.2070242, 0.01131998, 0.9782704
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
0.02980369, -0.009835806, -0.2618813, 0.2542508, -0.6241034, 0.7388176,
0.03769146, -0.006622443, -0.2618813, 0.2542508, -0.6241034, 0.7388176,
0.03531737, -0.000794825, -0.2561415, 0.2542508, -0.6241034, 0.7388176,
0.0274296, -0.004008188, -0.2561415, 0.2542508, -0.6241034, 0.7388176,
-0.1248185, 0.3697117, -0.7111914, 0.2542512, -0.6241018, 0.7388189,
-0.1169308, 0.3729251, -0.7111914, 0.2542512, -0.6241018, 0.7388189,
-0.1193048, 0.3787527, -0.7054517, 0.2542512, -0.6241018, 0.7388189,
-0.1271926, 0.3755393, -0.7054517, 0.2542512, -0.6241018, 0.7388189,
0.02980369, -0.009835806, -0.2618813, -0.2787407, 0.6842181, 0.673906,
0.03769146, -0.006622443, -0.2618813, -0.2787407, 0.6842181, 0.673906,
-0.1169308, 0.3729251, -0.7111914, -0.2787407, 0.6842181, 0.673906,
-0.1248185, 0.3697117, -0.7111914, -0.2787407, 0.6842181, 0.673906,
0.03769146, -0.006622443, -0.2618813, -0.9260994, -0.3772795, 1.011387e-07,
0.03531737, -0.000794825, -0.2561415, -0.9260994, -0.3772795, 1.011387e-07,
-0.1193048, 0.3787527, -0.7054517, -0.9260994, -0.3772795, 1.011387e-07,
-0.1169308, 0.3729251, -0.7111914, -0.9260994, -0.3772795, 1.011387e-07,
0.03531737, -0.000794825, -0.2561415, 0.2787406, -0.6842181, -0.6739059,
0.0274296, -0.004008188, -0.2561415, 0.2787406, -0.6842181, -0.6739059,
-0.1271926, 0.3755393, -0.7054517, 0.2787406, -0.6842181, -0.6739059,
-0.1193048, 0.3787527, -0.7054517, 0.2787406, -0.6842181, -0.6739059,
0.0274296, -0.004008188, -0.2561415, 0.9260994, 0.3772797, 4.495052e-08,
0.02980369, -0.009835806, -0.2618813, 0.9260994, 0.3772797, 4.495052e-08,
-0.1248185, 0.3697117, -0.7111914, 0.9260994, 0.3772797, 4.495052e-08,
-0.1271926, 0.3755393, -0.7054517, 0.9260994, 0.3772797, 4.495052e-08,
0.03207501, -0.006111439, -0.2595168, 0.2542517, -0.6241058, 0.7388152,
0.03346416, -0.005545519, -0.2595168, 0.2542517, -0.6241058, 0.7388152,
0.03304605, -0.004519192, -0.258506, 0.2542517, -0.6241058, 0.7388152,
0.0316569, -0.005085112, -0.258506, 0.2542517, -0.6241058, 0.7388152,
0.03207501, -0.006111439, -0.2595168, 0.777861, 0.5723956, -0.259414,
0.0316569, -0.005085112, -0.258506, 0.777861, 0.5723956, -0.259414,
0.03306903, -0.006563523, -0.2575338, 0.777861, 0.5723956, -0.259414,
0.03306903, -0.006563523, -0.2575338, 0.777861, 0.5723956, -0.259414,
0.03207501, -0.006111439, -0.2595168, 0.3502668, -0.8597918, -0.3715795,
0.03346416, -0.005545519, -0.2595168, 0.3502668, -0.8597918, -0.3715795,
0.03306903, -0.006563523, -0.2575338, 0.3502668, -0.8597918, -0.3715795,
0.03306903, -0.006563523, -0.2575338, 0.3502668, -0.8597918, -0.3715795,
0.03346416, -0.005545519, -0.2595168, 0.9564076, 0.1341202, 0.2594154,
0.03304605, -0.004519192, -0.258506, 0.9564076, 0.1341202, 0.2594154,
0.03306903, -0.006563523, -0.2575338, 0.9564076, 0.1341202, 0.2594154,
0.03306903, -0.006563523, -0.2575338, 0.9564076, 0.1341202, 0.2594154,
0.03304605, -0.004519192, -0.258506, -0.1717205, 0.4215182, 0.8904126,
0.0316569, -0.005085112, -0.258506, -0.1717205, 0.4215182, 0.8904126,
0.03306903, -0.006563523, -0.2575338, -0.1717205, 0.4215182, 0.8904126,
0.03306903, -0.006563523, -0.2575338, -0.1717205, 0.4215182, 0.8904126
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
-0.1301157, 0.6742185, -0.9105334, -0.02913349, 0.8325359, -0.5532046,
-0.1349974, 0.6740477, -0.9105334, -0.02913349, 0.8325359, -0.5532046,
-0.1350919, 0.6767483, -0.9064643, -0.02913349, 0.8325359, -0.5532046,
-0.1302102, 0.6769191, -0.9064643, -0.02913349, 0.8325359, -0.5532046,
-0.1195736, 0.3729673, -0.7103561, -0.02913354, 0.8325358, -0.5532047,
-0.1244553, 0.3727965, -0.7103561, -0.02913354, 0.8325358, -0.5532047,
-0.1245498, 0.3754971, -0.706287, -0.02913354, 0.8325358, -0.5532047,
-0.1196681, 0.3756679, -0.706287, -0.02913354, 0.8325358, -0.5532047,
-0.1301157, 0.6742185, -0.9105334, -0.01934692, 0.552869, 0.8330436,
-0.1349974, 0.6740477, -0.9105334, -0.01934692, 0.552869, 0.8330436,
-0.1244553, 0.3727965, -0.7103561, -0.01934692, 0.552869, 0.8330436,
-0.1195736, 0.3729673, -0.7103561, -0.01934692, 0.552869, 0.8330436,
-0.1349974, 0.6740477, -0.9105334, 0.9993882, 0.03497286, -2.963881e-07,
-0.1350919, 0.6767483, -0.9064643, 0.9993882, 0.03497286, -2.963881e-07,
-0.1245498, 0.3754971, -0.706287, 0.9993882, 0.03497286, -2.963881e-07,
-0.1244553, 0.3727965, -0.7103561, 0.9993882, 0.03497286, -2.963881e-07,
-0.1350919, 0.6767483, -0.9064643, 0.01934692, -0.552869, -0.8330436,
-0.1302102, 0.6769191, -0.9064643, 0.01934692, -0.552869, -0.8330436,
-0.1196681, 0.3756679, -0.706287, 0.01934692, -0.552869, -0.8330436,
-0.1245498, 0.3754971, -0.706287, 0.01934692, -0.552869, -0.8330436,
-0.1302102, 0.6769191, -0.9064643, -0.9993882, -0.03497286, 2.963881e-07,
-0.1301157, 0.6742185, -0.9105334, -0.9993882, -0.03497286, 2.963881e-07,
-0.1195736, 0.3729673, -0.7103561, -0.9993882, -0.03497286, 2.963881e-07,
-0.1196681, 0.3756679, -0.706287, -0.9993882, -0.03497286, 2.963881e-07,
-0.1318398, 0.675095, -0.9091236, -0.02912936, 0.8325205, -0.5532279,
-0.1333388, 0.6750425, -0.9091236, -0.02912936, 0.8325205, -0.5532279,
-0.1333679, 0.6758718, -0.907874, -0.02912936, 0.8325205, -0.5532279,
-0.1318688, 0.6759243, -0.907874, -0.02912936, 0.8325205, -0.5532279,
-0.1318398, 0.675095, -0.9091236, -0.9255277, -0.3250638, 0.1942475,
-0.1318688, 0.6759243, -0.907874, -0.9255277, -0.3250638, 0.1942475,
-0.1326621, 0.6771485, -0.9096053, -0.9255277, -0.3250638, 0.1942475,
-0.1326621, 0.6771485, -0.9096053, -0.9255277, -0.3250638, 0.1942475,
-0.1318398, 0.675095, -0.9091236, 0.007885178, -0.2253593, -0.9742438,
-0.1333388, 0.6750425, -0.9091236, 0.007885178, -0.2253593, -0.9742438,
-0.1326621, 0.6771485, -0.9096053, 0.007885178, -0.2253593, -0.9742438,
-0.1326621, 0.6771485, -0.9096053, 0.007885178, -0.2253593, -0.9742438,
-0.1333388, 0.6750425, -0.9091236, -0.9459862, 0.2595739, -0.1942458,
-0.1333679, 0.6758718, -0.907874, -0.9459862, 0.2595739, -0.1942458,
-0.1326621, 0.6771485, -0.9096053, -0.9459862, 0.2595739, -0.1942458,
-0.1326621, 0.6771485, -0.9096053, -0.9459862, 0.2595739, -0.1942458,
-0.1333679, 0.6758718, -0.907874, -0.02834165, 0.8099995, 0.5857453,
-0.1318688, 0.6759243, -0.907874, -0.02834165, 0.8099995, 0.5857453,
-0.1326621, 0.6771485, -0.9096053, -0.02834165, 0.8099995, 0.5857453,
-0.1326621, 0.6771485, -0.9096053, -0.02834165, 0.8099995, 0.5857453
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
0.6213596, -0.2068359, -0.9810474, 0.6405784, 0.05786057, -0.7657098,
0.620878, -0.201504, -0.9810474, 0.6405784, 0.05786057, -0.7657098,
0.6249607, -0.2011352, -0.977604, 0.6405784, 0.05786057, -0.7657098,
0.6254424, -0.2064671, -0.977604, 0.6405784, 0.05786057, -0.7657098,
0.3940232, -0.2273712, -0.7092984, 0.6405719, 0.05785998, -0.7657153,
0.3935416, -0.2220393, -0.7092984, 0.6405719, 0.05785998, -0.7657153,
0.3976243, -0.2216706, -0.7058551, 0.6405719, 0.05785998, -0.7657153,
0.3981059, -0.2270024, -0.7058551, 0.6405719, 0.05785998, -0.7657153,
0.6213596, -0.2068359, -0.9810474, 0.7626101, 0.06888314, 0.6431803,
0.620878, -0.201504, -0.9810474, 0.7626101, 0.06888314, 0.6431803,
0.3935416, -0.2220393, -0.7092984, 0.7626101, 0.06888314, 0.6431803,
0.3940232, -0.2273712, -0.7092984, 0.7626101, 0.06888314, 0.6431803,
0.620878, -0.201504, -0.9810474, 0.08996379, -0.995945, 7.659025e-09,
0.6249607, -0.2011352, -0.977604, 0.08996379, -0.995945, 7.659025e-09,
0.3976243, -0.2216706, -0.7058551, 0.08996379, -0.995945, 7.659025e-09,
0.3935416, -0.2220393, -0.7092984, 0.08996379, -0.995945, 7.659025e-09,
0.6249607, -0.2011352, -0.977604, -0.7626092, -0.06889159, -0.6431804,
0.6254424, -0.2064671, -0.977604, -0.7626092, -0.06889159, -0.6431804,
0.3981059, -0.2270024, -0.7058551, -0.7626092, -0.06889159, -0.6431804,
0.3976243, -0.2216706, -0.7058551, -0.7626092, -0.06889159, -0.6431804,
0.6254424, -0.2064671, -0.977604, -0.08996304, 0.9959452, 6.356937e-07,
0.6213596, -0.2068359, -0.9810474, -0.08996304, 0.9959452, 6.356937e-07,
0.3940232, -0.2273712, -0.7092984, -0.08996304, 0.9959452, 6.356937e-07,
0.3981059, -0.2270024, -0.7058551, -0.08996304, 0.9959452, 6.356937e-07,
0.6226557, -0.2047842, -0.9798081, 0.640563, 0.05786126, -0.7657226,
0.6225207, -0.2032903, -0.9798081, 0.640563, 0.05786126, -0.7657226,
0.6236647, -0.2031869, -0.9788433, 0.640563, 0.05786126, -0.7657226,
0.6237996, -0.2046809, -0.9788433, 0.640563, 0.05786126, -0.7657226,
0.6226557, -0.2047842, -0.9798081, -0.3091557, 0.9122156, 0.2688596,
0.6237996, -0.2046809, -0.9788433, -0.3091557, 0.9122156, 0.2688596,
0.6244413, -0.2038698, -0.9808571, -0.3091557, 0.9122156, 0.2688596,
0.6244413, -0.2038698, -0.9808571, -0.3091557, 0.9122156, 0.2688596,
0.6226557, -0.2047842, -0.9798081, -0.4891318, -0.04418267, -0.8710901,
0.6225207, -0.2032903, -0.9798081, -0.4891318, -0.04418267, -0.8710901,
0.6244413, -0.2038698, -0.9808571, -0.4891318, -0.04418267, -0.8710901,
0.6244413, -0.2038698, -0.9808571, -0.4891318, -0.04418267, -0.8710901,
0.6225207, -0.2032903, -0.9798081, 0.1406877, 0.9528478, -0.2688645,
0.6236647, -0.2031869, -0.9788433, 0.1406877, 0.9528478, -0.2688645,
0.6244413, -0.2038698, -0.9808571, 0.1406877, 0.9528478, -0.2688645,
0.6244413, -0.2038698, -0.9808571, 0.1406877, 0.9528478, -0.2688645,
0.6236647, -0.2031869, -0.9788433, 0.9389749, 0.08481728, 0.333365,
0.6237996, -0.2046809, -0.9788433, 0.9389749, 0.08481728, 0.333365,
0.6244413, -0.2038698, -0.9808571, 0.9389749, 0.08481728, 0.333365,
0.6244413, -0.2038698, -0.9808571, 0.9389749, 0.08481728, 0.333365
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
0.05420918, -0.02573195, -0.2621497, -0.5725538, 0.3250827, 0.7526642,
0.05006316, -0.03303416, -0.2621497, -0.5725538, 0.3250827, 0.7526642,
0.05555928, -0.03615473, -0.2566209, -0.5725538, 0.3250827, 0.7526642,
0.05970531, -0.02885252, -0.2566209, -0.5725538, 0.3250827, 0.7526642,
0.3951487, -0.2193095, -0.7103411, -0.572556, 0.3250844, 0.7526618,
0.3910027, -0.2266117, -0.7103411, -0.572556, 0.3250844, 0.7526618,
0.3964988, -0.2297323, -0.7048123, -0.572556, 0.3250844, 0.7526618,
0.4006448, -0.2224301, -0.7048123, -0.572556, 0.3250844, 0.7526618,
0.05420918, -0.02573195, -0.2621497, 0.6545235, -0.3716232, 0.6584035,
0.05006316, -0.03303416, -0.2621497, 0.6545235, -0.3716232, 0.6584035,
0.3910027, -0.2266117, -0.7103411, 0.6545235, -0.3716232, 0.6584035,
0.3951487, -0.2193095, -0.7103411, 0.6545235, -0.3716232, 0.6584035,
0.05006316, -0.03303416, -0.2621497, 0.4937429, 0.8696079, -2.095363e-07,
0.05555928, -0.03615473, -0.2566209, 0.4937429, 0.8696079, -2.095363e-07,
0.3964988, -0.2297323, -0.7048123, 0.4937429, 0.8696079, -2.095363e-07,
0.3910027, -0.2266117, -0.7103411, 0.4937429, 0.8696079, -2.095363e-07,
0.05555928, -0.03615473, -0.2566209, -0.6545234, 0.3716234, -0.6584035,
0.05970531, -0.02885252, -0.2566209, -0.6545234, 0.3716234, -0.6584035,
0.4006448, -0.2224301, -0.7048123, -0.6545234, 0.3716234, -0.6584035,
0.3964988, -0.2297323, -0.7048123, -0.6545234, 0.3716234, -0.6584035,
0.05970531, -0.02885252, -0.2566209, -0.4937432, -0.8696078, -6.984543e-08,
0.05420918, -0.02573195, -0.2621497, -0.4937432, -0.8696078, -6.984543e-08,
0.3951487, -0.2193095, -0.7103411, -0.4937432, -0.8696078, -6.984543e-08,
0.4006448, -0.2224301, -0.7048123, -0.4937432, -0.8696078, -6.984543e-08,
0.05476364, -0.03001242, -0.2598791, -0.572557, 0.3250845, 0.752661,
0.05402303, -0.03131683, -0.2598791, -0.572557, 0.3250845, 0.752661,
0.05500482, -0.03187427, -0.2588915, -0.572557, 0.3250845, 0.752661,
0.05574543, -0.03056985, -0.2588915, -0.572557, 0.3250845, 0.752661,
0.05476364, -0.03001242, -0.2598791, -0.2612686, -0.9283839, -0.2642766,
0.05574543, -0.03056985, -0.2588915, -0.2612686, -0.9283839, -0.2642766,
0.05373913, -0.03029318, -0.25788, -0.2612686, -0.9283839, -0.2642766,
0.05373913, -0.03029318, -0.25788, -0.2612686, -0.9283839, -0.2642766,
0.05476364, -0.03001242, -0.2598791, -0.8138867, 0.4621059, -0.3522023,
0.05402303, -0.03131683, -0.2598791, -0.8138867, 0.4621059, -0.3522023,
0.05373913, -0.03029318, -0.25788, -0.8138867, 0.4621059, -0.3522023,
0.05373913, -0.03029318, -0.25788, -0.8138867, 0.4621059, -0.3522023,
0.05402303, -0.03131683, -0.2598791, -0.6633455, -0.7000934, 0.2642764,
0.05500482, -0.03187427, -0.2588915, -0.6633455, -0.7000934, 0.2642764,
0.05373913, -0.03029318, -0.25788, -0.6633455, -0.7000934, 0.2642764,
0.05373913, -0.03029318, -0.25788, -0.6633455, -0.7000934, 0.2642764,
0.05500482, -0.03187427, -0.2588915, 0.4118108, -0.2338162, 0.8807622,
0.05574543, -0.03056985, -0.2588915, 0.4118108, -0.2338162, 0.8807622,
0.05373913, -0.03029318, -0.25788, 0.4118108, -0.2338162, 0.8807622,
0.05373913, -0.03029318, -0.25788, 0.4118108, -0.2338162, 0.8807622
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
0.5715455, 0.3481081, -0.3012221, 0.7450981, 0.7450981, 0.7450981, 1, 0.025,
0.6174699, -0.2280378, -0.02457423, 0.7450981, 0.7450981, 0.7450981, 1, 0.025,
-0.2735805, -0.3722502, -0.6696095, 0.7450981, 0.7450981, 0.7450981, 1, 0.025,
0.4387409, -0.04938583, -0.7142656, 0.7450981, 0.7450981, 0.7450981, 1, 0.025,
-0.622287, 0.05232138, -0.1787203, 0.7450981, 0.7450981, 0.7450981, 1, 0.025,
-0.3156194, -0.4486714, 0.09651678, 0.7450981, 0.7450981, 0.7450981, 1, 0.025,
0.497432, 0.3796523, -0.4506823, 0.7450981, 0.7450981, 0.7450981, 1, 0.025,
-0.1526925, -0.5252434, 0.1143307, 0.7450981, 0.7450981, 0.7450981, 1, 0.025,
0.03942531, -0.02216612, -0.2390634, 1, 1, 0, 1, 0.025,
0.09692587, 0.5559518, 0.5810712, 0.7450981, 0.7450981, 0.7450981, 1, 0.025,
-0.009669936, 0.4862241, -0.6278452, 0.7450981, 0.7450981, 0.7450981, 1, 0.025,
0.2290251, -0.6457228, -0.2192257, 0.7450981, 0.7450981, 0.7450981, 1, 0.025,
-0.2555259, -0.5020202, -0.5546195, 0.7450981, 0.7450981, 0.7450981, 1, 0.025,
0.2573881, -0.6152368, -0.3799901, 0.7450981, 0.7450981, 0.7450981, 1, 0.025,
0.6606224, -0.2137149, -0.1867511, 0.7450981, 0.7450981, 0.7450981, 1, 0.025,
-0.6033104, 0.1471296, -0.3196092, 0.7450981, 0.7450981, 0.7450981, 1, 0.025,
-0.1220617, 0.3742322, -0.7083216, 0.7450981, 0.7450981, 0.7450981, 1, 0.025,
0.3958237, -0.2245209, -0.7075767, 0.7450981, 0.7450981, 0.7450981, 1, 0.025,
0.8332273, 0.5983562, -0.4601412, 0.7450981, 0.7450981, 0.7450981, 1, 0.025,
1, -0.3449489, -0.02352918, 0.7450981, 0.7450981, 0.7450981, 1, 0.025,
-0.4517624, -0.682428, -0.8325764, 0.7450981, 0.7450981, 0.7450981, 1, 0.025,
0.6404557, -0.2024233, -1, 0.7450981, 0.7450981, 0.7450981, 1, 0.025,
-1, 0.1688198, -0.2595966, 0.7450981, 0.7450981, 0.7450981, 1, 0.025,
-0.3996392, -0.7659644, 0.3077621, 0.7450981, 0.7450981, 0.7450981, 1, 0.025,
-0.3183711, 0.03679973, -0.5727232, 0.7450981, 0.7450981, 0.7450981, 1, 0.025,
-0.3034026, 0.02261574, 0.1082238, 0.7450981, 0.7450981, 0.7450981, 1, 0.025,
-0.1520758, 0.3582486, 0.0099261, 0.7450981, 0.7450981, 0.7450981, 1, 0.025,
0.02636194, -0.05145675, -0.6957996, 0.7450981, 0.7450981, 0.7450981, 1, 0.025,
0.1463425, 0.4700934, -0.1840006, 0.7450981, 0.7450981, 0.7450981, 1, 0.025,
0.2394813, -0.3158988, 0.09303385, 0.7450981, 0.7450981, 0.7450981, 1, 0.025,
0.3704452, 0.1603063, 0.05187084, 0.7450981, 0.7450981, 0.7450981, 1, 0.025,
0.05950576, -0.05749771, 0.222128, 0.7450981, 0.7450981, 0.7450981, 1, 0.025,
-0.2388242, 0.4181167, -0.2880478, 0.7450981, 0.7450981, 0.7450981, 1, 0.025,
-0.3674721, -0.3098423, -0.2385236, 0.7450981, 0.7450981, 0.7450981, 1, 0.025,
0.1393507, 1, 0.7506589, 0.7450981, 0.7450981, 0.7450981, 1, 0.025,
-0.05906814, 0.6063532, 0.9983965, 0.7450981, 0.7450981, 0.7450981, 1, 0.025,
-0.1210086, 0.8701832, 0.855266, 0.7450981, 0.7450981, 0.7450981, 1, 0.025,
0.3757148, 0.8195575, 0.8535411, 0.7450981, 0.7450981, 0.7450981, 1, 0.025,
0.2578613, 0.5777772, 1, 0.7450981, 0.7450981, 0.7450981, 1, 0.025,
-0.1333904, 0.6979618, -0.9234354, 0.7450981, 0.7450981, 0.7450981, 1, 0.025,
0.3674168, -1, -0.3333213, 0.7450981, 0.7450981, 0.7450981, 1, 0.025
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
0.5715455, 0.3481081, -0.3012221, 0, -0.5, 0, 0.5,
0.5715455, 0.3481081, -0.3012221, 1, -0.5, 0, 0.5,
0.5715455, 0.3481081, -0.3012221, 1, 1.5, 0, 0.5,
0.5715455, 0.3481081, -0.3012221, 0, 1.5, 0, 0.5,
0.6174699, -0.2280378, -0.02457423, 0, -0.5, 0, 0.5,
0.6174699, -0.2280378, -0.02457423, 1, -0.5, 0, 0.5,
0.6174699, -0.2280378, -0.02457423, 1, 1.5, 0, 0.5,
0.6174699, -0.2280378, -0.02457423, 0, 1.5, 0, 0.5,
-0.2735805, -0.3722502, -0.6696095, 0, -0.5, 0, 0.5,
-0.2735805, -0.3722502, -0.6696095, 1, -0.5, 0, 0.5,
-0.2735805, -0.3722502, -0.6696095, 1, 1.5, 0, 0.5,
-0.2735805, -0.3722502, -0.6696095, 0, 1.5, 0, 0.5,
0.4387409, -0.04938583, -0.7142656, 0, -0.5, 0, 0.5,
0.4387409, -0.04938583, -0.7142656, 1, -0.5, 0, 0.5,
0.4387409, -0.04938583, -0.7142656, 1, 1.5, 0, 0.5,
0.4387409, -0.04938583, -0.7142656, 0, 1.5, 0, 0.5,
-0.622287, 0.05232138, -0.1787203, 0, -0.5, 0, 0.5,
-0.622287, 0.05232138, -0.1787203, 1, -0.5, 0, 0.5,
-0.622287, 0.05232138, -0.1787203, 1, 1.5, 0, 0.5,
-0.622287, 0.05232138, -0.1787203, 0, 1.5, 0, 0.5,
-0.3156194, -0.4486714, 0.09651678, 0, -0.5, 0, 0.5,
-0.3156194, -0.4486714, 0.09651678, 1, -0.5, 0, 0.5,
-0.3156194, -0.4486714, 0.09651678, 1, 1.5, 0, 0.5,
-0.3156194, -0.4486714, 0.09651678, 0, 1.5, 0, 0.5,
0.497432, 0.3796523, -0.4506823, 0, -0.5, 0, 0.5,
0.497432, 0.3796523, -0.4506823, 1, -0.5, 0, 0.5,
0.497432, 0.3796523, -0.4506823, 1, 1.5, 0, 0.5,
0.497432, 0.3796523, -0.4506823, 0, 1.5, 0, 0.5,
-0.1526925, -0.5252434, 0.1143307, 0, -0.5, 0, 0.5,
-0.1526925, -0.5252434, 0.1143307, 1, -0.5, 0, 0.5,
-0.1526925, -0.5252434, 0.1143307, 1, 1.5, 0, 0.5,
-0.1526925, -0.5252434, 0.1143307, 0, 1.5, 0, 0.5,
0.03942531, -0.02216612, -0.2390634, 0, -0.5, 0, 0.5,
0.03942531, -0.02216612, -0.2390634, 1, -0.5, 0, 0.5,
0.03942531, -0.02216612, -0.2390634, 1, 1.5, 0, 0.5,
0.03942531, -0.02216612, -0.2390634, 0, 1.5, 0, 0.5,
0.09692587, 0.5559518, 0.5810712, 0, -0.5, 0, 0.5,
0.09692587, 0.5559518, 0.5810712, 1, -0.5, 0, 0.5,
0.09692587, 0.5559518, 0.5810712, 1, 1.5, 0, 0.5,
0.09692587, 0.5559518, 0.5810712, 0, 1.5, 0, 0.5,
-0.009669936, 0.4862241, -0.6278452, 0, -0.5, 0, 0.5,
-0.009669936, 0.4862241, -0.6278452, 1, -0.5, 0, 0.5,
-0.009669936, 0.4862241, -0.6278452, 1, 1.5, 0, 0.5,
-0.009669936, 0.4862241, -0.6278452, 0, 1.5, 0, 0.5,
0.2290251, -0.6457228, -0.2192257, 0, -0.5, 0, 0.5,
0.2290251, -0.6457228, -0.2192257, 1, -0.5, 0, 0.5,
0.2290251, -0.6457228, -0.2192257, 1, 1.5, 0, 0.5,
0.2290251, -0.6457228, -0.2192257, 0, 1.5, 0, 0.5,
-0.2555259, -0.5020202, -0.5546195, 0, -0.5, 0, 0.5,
-0.2555259, -0.5020202, -0.5546195, 1, -0.5, 0, 0.5,
-0.2555259, -0.5020202, -0.5546195, 1, 1.5, 0, 0.5,
-0.2555259, -0.5020202, -0.5546195, 0, 1.5, 0, 0.5,
0.2573881, -0.6152368, -0.3799901, 0, -0.5, 0, 0.5,
0.2573881, -0.6152368, -0.3799901, 1, -0.5, 0, 0.5,
0.2573881, -0.6152368, -0.3799901, 1, 1.5, 0, 0.5,
0.2573881, -0.6152368, -0.3799901, 0, 1.5, 0, 0.5,
0.6606224, -0.2137149, -0.1867511, 0, -0.5, 0, 0.5,
0.6606224, -0.2137149, -0.1867511, 1, -0.5, 0, 0.5,
0.6606224, -0.2137149, -0.1867511, 1, 1.5, 0, 0.5,
0.6606224, -0.2137149, -0.1867511, 0, 1.5, 0, 0.5,
-0.6033104, 0.1471296, -0.3196092, 0, -0.5, 0, 0.5,
-0.6033104, 0.1471296, -0.3196092, 1, -0.5, 0, 0.5,
-0.6033104, 0.1471296, -0.3196092, 1, 1.5, 0, 0.5,
-0.6033104, 0.1471296, -0.3196092, 0, 1.5, 0, 0.5,
-0.1220617, 0.3742322, -0.7083216, 0, -0.5, 0, 0.5,
-0.1220617, 0.3742322, -0.7083216, 1, -0.5, 0, 0.5,
-0.1220617, 0.3742322, -0.7083216, 1, 1.5, 0, 0.5,
-0.1220617, 0.3742322, -0.7083216, 0, 1.5, 0, 0.5,
0.3958237, -0.2245209, -0.7075767, 0, -0.5, 0, 0.5,
0.3958237, -0.2245209, -0.7075767, 1, -0.5, 0, 0.5,
0.3958237, -0.2245209, -0.7075767, 1, 1.5, 0, 0.5,
0.3958237, -0.2245209, -0.7075767, 0, 1.5, 0, 0.5,
0.8332273, 0.5983562, -0.4601412, 0, -0.5, 0, 0.5,
0.8332273, 0.5983562, -0.4601412, 1, -0.5, 0, 0.5,
0.8332273, 0.5983562, -0.4601412, 1, 1.5, 0, 0.5,
0.8332273, 0.5983562, -0.4601412, 0, 1.5, 0, 0.5,
1, -0.3449489, -0.02352918, 0, -0.5, 0, 0.5,
1, -0.3449489, -0.02352918, 1, -0.5, 0, 0.5,
1, -0.3449489, -0.02352918, 1, 1.5, 0, 0.5,
1, -0.3449489, -0.02352918, 0, 1.5, 0, 0.5,
-0.4517624, -0.682428, -0.8325764, 0, -0.5, 0, 0.5,
-0.4517624, -0.682428, -0.8325764, 1, -0.5, 0, 0.5,
-0.4517624, -0.682428, -0.8325764, 1, 1.5, 0, 0.5,
-0.4517624, -0.682428, -0.8325764, 0, 1.5, 0, 0.5,
0.6404557, -0.2024233, -1, 0, -0.5, 0, 0.5,
0.6404557, -0.2024233, -1, 1, -0.5, 0, 0.5,
0.6404557, -0.2024233, -1, 1, 1.5, 0, 0.5,
0.6404557, -0.2024233, -1, 0, 1.5, 0, 0.5,
-1, 0.1688198, -0.2595966, 0, -0.5, 0, 0.5,
-1, 0.1688198, -0.2595966, 1, -0.5, 0, 0.5,
-1, 0.1688198, -0.2595966, 1, 1.5, 0, 0.5,
-1, 0.1688198, -0.2595966, 0, 1.5, 0, 0.5,
-0.3996392, -0.7659644, 0.3077621, 0, -0.5, 0, 0.5,
-0.3996392, -0.7659644, 0.3077621, 1, -0.5, 0, 0.5,
-0.3996392, -0.7659644, 0.3077621, 1, 1.5, 0, 0.5,
-0.3996392, -0.7659644, 0.3077621, 0, 1.5, 0, 0.5,
-0.3183711, 0.03679973, -0.5727232, 0, -0.5, 0, 0.5,
-0.3183711, 0.03679973, -0.5727232, 1, -0.5, 0, 0.5,
-0.3183711, 0.03679973, -0.5727232, 1, 1.5, 0, 0.5,
-0.3183711, 0.03679973, -0.5727232, 0, 1.5, 0, 0.5,
-0.3034026, 0.02261574, 0.1082238, 0, -0.5, 0, 0.5,
-0.3034026, 0.02261574, 0.1082238, 1, -0.5, 0, 0.5,
-0.3034026, 0.02261574, 0.1082238, 1, 1.5, 0, 0.5,
-0.3034026, 0.02261574, 0.1082238, 0, 1.5, 0, 0.5,
-0.1520758, 0.3582486, 0.0099261, 0, -0.5, 0, 0.5,
-0.1520758, 0.3582486, 0.0099261, 1, -0.5, 0, 0.5,
-0.1520758, 0.3582486, 0.0099261, 1, 1.5, 0, 0.5,
-0.1520758, 0.3582486, 0.0099261, 0, 1.5, 0, 0.5,
0.02636194, -0.05145675, -0.6957996, 0, -0.5, 0, 0.5,
0.02636194, -0.05145675, -0.6957996, 1, -0.5, 0, 0.5,
0.02636194, -0.05145675, -0.6957996, 1, 1.5, 0, 0.5,
0.02636194, -0.05145675, -0.6957996, 0, 1.5, 0, 0.5,
0.1463425, 0.4700934, -0.1840006, 0, -0.5, 0, 0.5,
0.1463425, 0.4700934, -0.1840006, 1, -0.5, 0, 0.5,
0.1463425, 0.4700934, -0.1840006, 1, 1.5, 0, 0.5,
0.1463425, 0.4700934, -0.1840006, 0, 1.5, 0, 0.5,
0.2394813, -0.3158988, 0.09303385, 0, -0.5, 0, 0.5,
0.2394813, -0.3158988, 0.09303385, 1, -0.5, 0, 0.5,
0.2394813, -0.3158988, 0.09303385, 1, 1.5, 0, 0.5,
0.2394813, -0.3158988, 0.09303385, 0, 1.5, 0, 0.5,
0.3704452, 0.1603063, 0.05187084, 0, -0.5, 0, 0.5,
0.3704452, 0.1603063, 0.05187084, 1, -0.5, 0, 0.5,
0.3704452, 0.1603063, 0.05187084, 1, 1.5, 0, 0.5,
0.3704452, 0.1603063, 0.05187084, 0, 1.5, 0, 0.5,
0.05950576, -0.05749771, 0.222128, 0, -0.5, 0, 0.5,
0.05950576, -0.05749771, 0.222128, 1, -0.5, 0, 0.5,
0.05950576, -0.05749771, 0.222128, 1, 1.5, 0, 0.5,
0.05950576, -0.05749771, 0.222128, 0, 1.5, 0, 0.5,
-0.2388242, 0.4181167, -0.2880478, 0, -0.5, 0, 0.5,
-0.2388242, 0.4181167, -0.2880478, 1, -0.5, 0, 0.5,
-0.2388242, 0.4181167, -0.2880478, 1, 1.5, 0, 0.5,
-0.2388242, 0.4181167, -0.2880478, 0, 1.5, 0, 0.5,
-0.3674721, -0.3098423, -0.2385236, 0, -0.5, 0, 0.5,
-0.3674721, -0.3098423, -0.2385236, 1, -0.5, 0, 0.5,
-0.3674721, -0.3098423, -0.2385236, 1, 1.5, 0, 0.5,
-0.3674721, -0.3098423, -0.2385236, 0, 1.5, 0, 0.5,
0.1393507, 1, 0.7506589, 0, -0.5, 0, 0.5,
0.1393507, 1, 0.7506589, 1, -0.5, 0, 0.5,
0.1393507, 1, 0.7506589, 1, 1.5, 0, 0.5,
0.1393507, 1, 0.7506589, 0, 1.5, 0, 0.5,
-0.05906814, 0.6063532, 0.9983965, 0, -0.5, 0, 0.5,
-0.05906814, 0.6063532, 0.9983965, 1, -0.5, 0, 0.5,
-0.05906814, 0.6063532, 0.9983965, 1, 1.5, 0, 0.5,
-0.05906814, 0.6063532, 0.9983965, 0, 1.5, 0, 0.5,
-0.1210086, 0.8701832, 0.855266, 0, -0.5, 0, 0.5,
-0.1210086, 0.8701832, 0.855266, 1, -0.5, 0, 0.5,
-0.1210086, 0.8701832, 0.855266, 1, 1.5, 0, 0.5,
-0.1210086, 0.8701832, 0.855266, 0, 1.5, 0, 0.5,
0.3757148, 0.8195575, 0.8535411, 0, -0.5, 0, 0.5,
0.3757148, 0.8195575, 0.8535411, 1, -0.5, 0, 0.5,
0.3757148, 0.8195575, 0.8535411, 1, 1.5, 0, 0.5,
0.3757148, 0.8195575, 0.8535411, 0, 1.5, 0, 0.5,
0.2578613, 0.5777772, 1, 0, -0.5, 0, 0.5,
0.2578613, 0.5777772, 1, 1, -0.5, 0, 0.5,
0.2578613, 0.5777772, 1, 1, 1.5, 0, 0.5,
0.2578613, 0.5777772, 1, 0, 1.5, 0, 0.5,
-0.1333904, 0.6979618, -0.9234354, 0, -0.5, 0, 0.5,
-0.1333904, 0.6979618, -0.9234354, 1, -0.5, 0, 0.5,
-0.1333904, 0.6979618, -0.9234354, 1, 1.5, 0, 0.5,
-0.1333904, 0.6979618, -0.9234354, 0, 1.5, 0, 0.5,
0.3674168, -1, -0.3333213, 0, -0.5, 0, 0.5,
0.3674168, -1, -0.3333213, 1, -0.5, 0, 0.5,
0.3674168, -1, -0.3333213, 1, 1.5, 0, 0.5,
0.3674168, -1, -0.3333213, 0, 1.5, 0, 0.5
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
0.5715455, 0.3481081, -0.3012221, 0, 0, 0.5450981, 1, 0, -0.5, 0, 0.5,
0.5715455, 0.3481081, -0.3012221, 0, 0, 0.5450981, 1, 1, -0.5, 0, 0.5,
0.5715455, 0.3481081, -0.3012221, 0, 0, 0.5450981, 1, 1, 1.5, 0, 0.5,
0.5715455, 0.3481081, -0.3012221, 0, 0, 0.5450981, 1, 0, 1.5, 0, 0.5
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
