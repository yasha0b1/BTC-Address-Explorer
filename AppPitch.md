Visual BTC Address Explorer
========================================================
author: Jacob Govshteyn
date: Fri Apr 24 00:31:29 2015



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

<script type="text/javascript">

</script>

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
0.0736523, 0.1958218, -0.1133365, -0.7740722, -0.3382225, -0.5351802,
0.07707482, 0.1879889, -0.1133365, -0.7740722, -0.3382225, -0.5351802,
0.07288278, 0.1861572, -0.1061157, -0.7740722, -0.3382225, -0.5351802,
0.06946027, 0.1939902, -0.1061157, -0.7740722, -0.3382225, -0.5351802,
0.5930003, 0.4227448, 0.2457311, -0.7740702, -0.3382254, -0.5351812,
0.5964229, 0.4149119, 0.2457311, -0.7740702, -0.3382254, -0.5351812,
0.5922308, 0.4130802, 0.2529519, -0.7740702, -0.3382254, -0.5351812,
0.5888083, 0.4209132, 0.2529519, -0.7740702, -0.3382254, -0.5351812,
0.0736523, 0.1958218, -0.1133365, -0.4904097, -0.2142793, 0.8447383,
0.07707482, 0.1879889, -0.1133365, -0.4904097, -0.2142793, 0.8447383,
0.5964229, 0.4149119, 0.2457311, -0.4904097, -0.2142793, 0.8447383,
0.5930003, 0.4227448, 0.2457311, -0.4904097, -0.2142793, 0.8447383,
0.07707482, 0.1879889, -0.1133365, -0.4003869, 0.9163461, 3.146294e-07,
0.07288278, 0.1861572, -0.1061157, -0.4003869, 0.9163461, 3.146294e-07,
0.5922308, 0.4130802, 0.2529519, -0.4003869, 0.9163461, 3.146294e-07,
0.5964229, 0.4149119, 0.2457311, -0.4003869, 0.9163461, 3.146294e-07,
0.07288278, 0.1861572, -0.1061157, 0.4904099, 0.2142785, -0.8447382,
0.06946027, 0.1939902, -0.1061157, 0.4904099, 0.2142785, -0.8447382,
0.5888083, 0.4209132, 0.2529519, 0.4904099, 0.2142785, -0.8447382,
0.5922308, 0.4130802, 0.2529519, 0.4904099, 0.2142785, -0.8447382,
0.06946027, 0.1939902, -0.1061157, 0.4003862, -0.9163465, 7.307527e-07,
0.0736523, 0.1958218, -0.1133365, 0.4003862, -0.9163465, 7.307527e-07,
0.5930003, 0.4227448, 0.2457311, 0.4003862, -0.9163465, 7.307527e-07,
0.5888083, 0.4209132, 0.2529519, 0.4003862, -0.9163465, 7.307527e-07,
0.07333506, 0.1918375, -0.1103597, -0.7740736, -0.3382219, -0.5351785,
0.07393564, 0.190463, -0.1103597, -0.7740736, -0.3382219, -0.5351785,
0.07320002, 0.1901416, -0.1090926, -0.7740736, -0.3382219, -0.5351785,
0.07259944, 0.1915161, -0.1090926, -0.7740736, -0.3382219, -0.5351785,
0.07333506, 0.1918375, -0.1103597, 0.646689, -0.7392433, 0.1879165,
0.07259944, 0.1915161, -0.1090926, 0.646689, -0.7392433, 0.1879165,
0.07171939, 0.1903131, -0.1107965, 0.646689, -0.7392433, 0.1879165,
0.07171939, 0.1903131, -0.1107965, 0.646689, -0.7392433, 0.1879165,
0.07333506, 0.1918375, -0.1103597, 0.1873894, 0.0818775, -0.9788674,
0.07393564, 0.190463, -0.1103597, 0.1873894, 0.0818775, -0.9788674,
0.07171939, 0.1903131, -0.1107965, 0.1873894, 0.0818775, -0.9788674,
0.07171939, 0.1903131, -0.1107965, 0.1873894, 0.0818775, -0.9788674,
0.07393564, 0.190463, -0.1103597, 0.1031036, -0.9767593, -0.1879117,
0.07320002, 0.1901416, -0.1090926, 0.1031036, -0.9767593, -0.1879117,
0.07171939, 0.1903131, -0.1107965, 0.1031036, -0.9767593, -0.1879117,
0.07171939, 0.1903131, -0.1107965, 0.1031036, -0.9767593, -0.1879117,
0.07320002, 0.1901416, -0.1090926, -0.7309774, -0.3193955, 0.603041,
0.07259944, 0.1915161, -0.1090926, -0.7309774, -0.3193955, 0.603041,
0.07171939, 0.1903131, -0.1107965, -0.7309774, -0.3193955, 0.603041,
0.07171939, 0.1903131, -0.1107965, -0.7309774, -0.3193955, 0.603041
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
0.9440936, 0.5739314, 0.3132476, 0.8974146, 0.4065599, 0.1713359,
0.9416791, 0.5792611, 0.3132476, 0.8974146, 0.4065599, 0.1713359,
0.9407659, 0.5788473, 0.3190121, 0.8974146, 0.4065599, 0.1713359,
0.9431804, 0.5735177, 0.3190121, 0.8974146, 0.4065599, 0.1713359,
0.5942794, 0.4154546, 0.2464593, 0.8974131, 0.4065638, 0.1713343,
0.5918649, 0.4207842, 0.2464593, 0.8974131, 0.4065638, 0.1713343,
0.5909517, 0.4203705, 0.2522238, 0.8974131, 0.4065638, 0.1713343,
0.5933662, 0.4150409, 0.2522238, 0.8974131, 0.4065638, 0.1713343,
0.9440936, 0.5739314, 0.3132476, -0.15607, -0.07070514, 0.9852121,
0.9416791, 0.5792611, 0.3132476, -0.15607, -0.07070514, 0.9852121,
0.5918649, 0.4207842, 0.2464593, -0.15607, -0.07070514, 0.9852121,
0.5942794, 0.4154546, 0.2464593, -0.15607, -0.07070514, 0.9852121,
0.9416791, 0.5792611, 0.3132476, 0.4126606, -0.9108849, -5.091507e-06,
0.9407659, 0.5788473, 0.3190121, 0.4126606, -0.9108849, -5.091507e-06,
0.5909517, 0.4203705, 0.2522238, 0.4126606, -0.9108849, -5.091507e-06,
0.5918649, 0.4207842, 0.2464593, 0.4126606, -0.9108849, -5.091507e-06,
0.9407659, 0.5788473, 0.3190121, 0.1560704, 0.07070436, -0.985212,
0.9431804, 0.5735177, 0.3190121, 0.1560704, 0.07070436, -0.985212,
0.5933662, 0.4150409, 0.2522238, 0.1560704, 0.07070436, -0.985212,
0.5909517, 0.4203705, 0.2522238, 0.1560704, 0.07070436, -0.985212,
0.9431804, 0.5735177, 0.3190121, -0.4126584, 0.9108859, -8.179582e-06,
0.9440936, 0.5739314, 0.3132476, -0.4126584, 0.9108859, -8.179582e-06,
0.5942794, 0.4154546, 0.2464593, -0.4126584, 0.9108859, -8.179582e-06,
0.5933662, 0.4150409, 0.2522238, -0.4126584, 0.9108859, -8.179582e-06,
0.9428563, 0.5757592, 0.3153909, 0.8974156, 0.406546, 0.1713635,
0.9422373, 0.5771256, 0.3153909, 0.8974156, 0.406546, 0.1713635,
0.9420032, 0.5770195, 0.3168688, 0.8974156, 0.406546, 0.1713635,
0.9426222, 0.5756532, 0.3168688, 0.8974156, 0.406546, 0.1713635,
0.9428563, 0.5757592, 0.3153909, -0.7014843, 0.7101394, -0.06018079,
0.9426222, 0.5756532, 0.3168688, -0.7014843, 0.7101394, -0.06018079,
0.9442246, 0.5772025, 0.3164725, -0.7014843, 0.7101394, -0.06018079,
0.9442246, 0.5772025, 0.3164725, -0.7014843, 0.7101394, -0.06018079,
0.9428563, 0.5757592, 0.3153909, 0.4612384, 0.2089496, -0.862322,
0.9422373, 0.5771256, 0.3153909, 0.4612384, 0.2089496, -0.862322,
0.9442246, 0.5772025, 0.3164725, 0.4612384, 0.2089496, -0.862322,
0.9442246, 0.5772025, 0.3164725, 0.4612384, 0.2089496, -0.862322,
0.9422373, 0.5771256, 0.3153909, -0.07127953, 0.9956388, 0.06018719,
0.9420032, 0.5770195, 0.3168688, -0.07127953, 0.9956388, 0.06018719,
0.9442246, 0.5772025, 0.3164725, -0.07127953, 0.9956388, 0.06018719,
0.9442246, 0.5772025, 0.3164725, -0.07127953, 0.9956388, 0.06018719,
0.9420032, 0.5770195, 0.3168688, 0.1689644, 0.07654735, 0.9826452,
0.9426222, 0.5756532, 0.3168688, 0.1689644, 0.07654735, 0.9826452,
0.9442246, 0.5772025, 0.3164725, 0.1689644, 0.07654735, 0.9826452,
0.9442246, 0.5772025, 0.3164725, 0.1689644, 0.07654735, 0.9826452
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
0.05253427, 0.5107263, 0.9744697, -0.1723777, 0.4051205, 0.897866,
0.04715049, 0.5084355, 0.9744697, -0.1723777, 0.4051205, 0.897866,
0.04920725, 0.5036017, 0.9770457, -0.1723777, 0.4051205, 0.897866,
0.05459104, 0.5058924, 0.9770457, -0.1723777, 0.4051205, 0.897866,
0.1238553, 0.3431045, 0.602977, -0.1723783, 0.4051271, 0.8978629,
0.1184715, 0.3408138, 0.602977, -0.1723783, 0.4051271, 0.8978629,
0.1205283, 0.3359799, 0.605553, -0.1723783, 0.4051271, 0.8978629,
0.1259121, 0.3382706, 0.605553, -0.1723783, 0.4051271, 0.8978629,
0.05253427, 0.5107263, 0.9744697, 0.351539, -0.8261836, 0.4402737,
0.04715049, 0.5084355, 0.9744697, 0.351539, -0.8261836, 0.4402737,
0.1184715, 0.3408138, 0.602977, 0.351539, -0.8261836, 0.4402737,
0.1238553, 0.3431045, 0.602977, 0.351539, -0.8261836, 0.4402737,
0.04715049, 0.5084355, 0.9744697, 0.9201686, 0.3915222, -6.492131e-07,
0.04920725, 0.5036017, 0.9770457, 0.9201686, 0.3915222, -6.492131e-07,
0.1205283, 0.3359799, 0.605553, 0.9201686, 0.3915222, -6.492131e-07,
0.1184715, 0.3408138, 0.602977, 0.9201686, 0.3915222, -6.492131e-07,
0.04920725, 0.5036017, 0.9770457, -0.351531, 0.826187, -0.4402738,
0.05459104, 0.5058924, 0.9770457, -0.351531, 0.826187, -0.4402738,
0.1259121, 0.3382706, 0.605553, -0.351531, 0.826187, -0.4402738,
0.1205283, 0.3359799, 0.605553, -0.351531, 0.826187, -0.4402738,
0.05459104, 0.5058924, 0.9770457, -0.9201699, -0.3915194, -8.415652e-07,
0.05253427, 0.5107263, 0.9744697, -0.9201699, -0.3915194, -8.415652e-07,
0.1238553, 0.3431045, 0.602977, -0.9201699, -0.3915194, -8.415652e-07,
0.1259121, 0.3382706, 0.605553, -0.9201699, -0.3915194, -8.415652e-07,
0.05129724, 0.5080773, 0.9754274, -0.1723828, 0.4051391, 0.8978566,
0.04991698, 0.50749, 0.9754274, -0.1723828, 0.4051391, 0.8978566,
0.05044428, 0.5062507, 0.9760879, -0.1723828, 0.4051391, 0.8978566,
0.05182454, 0.506838, 0.9760879, -0.1723828, 0.4051391, 0.8978566,
0.05129724, 0.5080773, 0.9754274, -0.8010654, -0.5088344, -0.315249,
0.05182454, 0.506838, 0.9760879, -0.8010654, -0.5088344, -0.315249,
0.05052601, 0.5079743, 0.9775534, -0.8010654, -0.5088344, -0.315249,
0.05052601, 0.5079743, 0.9775534, -0.8010654, -0.5088344, -0.315249,
0.05129724, 0.5080773, 0.9754274, -0.3896768, 0.91583, -0.09699167,
0.04991698, 0.50749, 0.9754274, -0.3896768, 0.91583, -0.09699167,
0.05052601, 0.5079743, 0.9775534, -0.3896768, 0.91583, -0.09699167,
0.05052601, 0.5079743, 0.9775534, -0.3896768, 0.91583, -0.09699167,
0.04991698, 0.50749, 0.9754274, -0.9221056, -0.2243492, 0.3152597,
0.05044428, 0.5062507, 0.9760879, -0.9221056, -0.2243492, 0.3152597,
0.05052601, 0.5079743, 0.9775534, -0.9221056, -0.2243492, 0.3152597,
0.05052601, 0.5079743, 0.9775534, -0.9221056, -0.2243492, 0.3152597,
0.05044428, 0.5062507, 0.9760879, 0.2686045, -0.6313464, 0.7274981,
0.05182454, 0.506838, 0.9760879, 0.2686045, -0.6313464, 0.7274981,
0.05052601, 0.5079743, 0.9775534, 0.2686045, -0.6313464, 0.7274981,
0.05052601, 0.5079743, 0.9775534, 0.2686045, -0.6313464, 0.7274981
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
0.05248965, 0.1935071, -0.09896311, -0.09327576, -0.2106458, -0.9731023,
0.06091127, 0.189778, -0.09896311, -0.09327576, -0.2106458, -0.9731023,
0.05728241, 0.1815829, -0.09684129, -0.09327576, -0.2106458, -0.9731023,
0.04886079, 0.185312, -0.09684129, -0.09327576, -0.2106458, -0.9731023,
0.1197954, 0.3455043, 0.6032041, -0.09327508, -0.2106443, -0.9731026,
0.1282171, 0.3417752, 0.6032041, -0.09327508, -0.2106443, -0.9731026,
0.1245882, 0.3335801, 0.6053259, -0.09327508, -0.2106443, -0.9731026,
0.1161666, 0.3373092, 0.6053259, -0.09327508, -0.2106443, -0.9731026,
0.05248965, 0.1935071, -0.09896311, -0.3939984, -0.8897713, 0.2303741,
0.06091127, 0.189778, -0.09896311, -0.3939984, -0.8897713, 0.2303741,
0.1282171, 0.3417752, 0.6032041, -0.3939984, -0.8897713, 0.2303741,
0.1197954, 0.3455043, 0.6032041, -0.3939984, -0.8897713, 0.2303741,
0.06091127, 0.189778, -0.09896311, -0.9143656, 0.4048893, 7.006676e-08,
0.05728241, 0.1815829, -0.09684129, -0.9143656, 0.4048893, 7.006676e-08,
0.1245882, 0.3335801, 0.6053259, -0.9143656, 0.4048893, 7.006676e-08,
0.1282171, 0.3417752, 0.6032041, -0.9143656, 0.4048893, 7.006676e-08,
0.05728241, 0.1815829, -0.09684129, 0.3939997, 0.8897708, -0.2303741,
0.04886079, 0.185312, -0.09684129, 0.3939997, 0.8897708, -0.2303741,
0.1161666, 0.3373092, 0.6053259, 0.3939997, 0.8897708, -0.2303741,
0.1245882, 0.3335801, 0.6053259, 0.3939997, 0.8897708, -0.2303741,
0.04886079, 0.185312, -0.09684129, 0.9143654, -0.4048899, 7.006686e-08,
0.05248965, 0.1935071, -0.09896311, 0.9143654, -0.4048899, 7.006686e-08,
0.1197954, 0.3455043, 0.6032041, 0.9143654, -0.4048899, 7.006686e-08,
0.1161666, 0.3373092, 0.6053259, 0.9143654, -0.4048899, 7.006686e-08,
0.05449576, 0.188516, -0.09807498, -0.09327644, -0.2106444, -0.9731025,
0.0558673, 0.1879086, -0.09807498, -0.09327644, -0.2106444, -0.9731025,
0.0552763, 0.186574, -0.09772942, -0.09327644, -0.2106444, -0.9731025,
0.05390476, 0.1871813, -0.09772942, -0.09327644, -0.2106444, -0.9731025,
0.05449576, 0.188516, -0.09807498, 0.8888993, -0.3051464, 0.3416778,
0.05390476, 0.1871813, -0.09772942, 0.8888993, -0.3051464, 0.3416778,
0.05469948, 0.1871237, -0.0998484, 0.8888993, -0.3051464, 0.3416778,
0.05469948, 0.1871237, -0.0998484, 0.8888993, -0.3051464, 0.3416778,
0.05449576, 0.188516, -0.09807498, 0.3361649, 0.7591546, -0.5573846,
0.0558673, 0.1879086, -0.09807498, 0.3361649, 0.7591546, -0.5573846,
0.05469948, 0.1871237, -0.0998484, 0.3361649, 0.7591546, -0.5573846,
0.05469948, 0.1871237, -0.0998484, 0.3361649, 0.7591546, -0.5573846,
0.0558673, 0.1879086, -0.09807498, 0.8233951, -0.4530735, -0.3416797,
0.0552763, 0.186574, -0.09772942, 0.8233951, -0.4530735, -0.3416797,
0.05469948, 0.1871237, -0.0998484, 0.8233951, -0.4530735, -0.3416797,
0.05469948, 0.1871237, -0.0998484, 0.8233951, -0.4530735, -0.3416797,
0.0552763, 0.186574, -0.09772942, -0.4016599, -0.9070831, -0.1259749,
0.05390476, 0.1871813, -0.09772942, -0.4016599, -0.9070831, -0.1259749,
0.05469948, 0.1871237, -0.0998484, -0.4016599, -0.9070831, -0.1259749,
0.05469948, 0.1871237, -0.0998484, -0.4016599, -0.9070831, -0.1259749
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
0.0358814, 0.2041244, -0.1241521, 0.4540297, -0.8762321, -0.1614753,
0.04368341, 0.2081671, -0.1241521, 0.4540297, -0.8762321, -0.1614753,
0.0443362, 0.2069073, -0.1154802, 0.4540297, -0.8762321, -0.1614753,
0.03653419, 0.2028646, -0.1154802, 0.4540297, -0.8762321, -0.1614753,
-0.2325706, 0.7222115, -0.02867791, 0.4540281, -0.8762324, -0.1614781,
-0.2247686, 0.7262542, -0.02867791, 0.4540281, -0.8762324, -0.1614781,
-0.2241158, 0.7249943, -0.02000603, 0.4540281, -0.8762324, -0.1614781,
-0.2319178, 0.7209516, -0.02000603, 0.4540281, -0.8762324, -0.1614781,
0.0358814, 0.2041244, -0.1241521, 0.07428891, -0.1433702, 0.986877,
0.04368341, 0.2081671, -0.1241521, 0.07428891, -0.1433702, 0.986877,
-0.2247686, 0.7262542, -0.02867791, 0.07428891, -0.1433702, 0.986877,
-0.2325706, 0.7222115, -0.02867791, 0.07428891, -0.1433702, 0.986877,
0.04368341, 0.2081671, -0.1241521, -0.8878847, -0.4600662, -5.265564e-07,
0.0443362, 0.2069073, -0.1154802, -0.8878847, -0.4600662, -5.265564e-07,
-0.2241158, 0.7249943, -0.02000603, -0.8878847, -0.4600662, -5.265564e-07,
-0.2247686, 0.7262542, -0.02867791, -0.8878847, -0.4600662, -5.265564e-07,
0.0443362, 0.2069073, -0.1154802, -0.07428868, 0.1433704, -0.986877,
0.03653419, 0.2028646, -0.1154802, -0.07428868, 0.1433704, -0.986877,
-0.2319178, 0.7209516, -0.02000603, -0.07428868, 0.1433704, -0.986877,
-0.2241158, 0.7249943, -0.02000603, -0.07428868, 0.1433704, -0.986877,
0.03653419, 0.2028646, -0.1154802, 0.8878846, 0.4600662, 1.232366e-07,
0.0358814, 0.2041244, -0.1241521, 0.8878846, 0.4600662, 1.232366e-07,
-0.2325706, 0.7222115, -0.02867791, 0.8878846, 0.4600662, 1.232366e-07,
-0.2319178, 0.7209516, -0.02000603, 0.8878846, 0.4600662, 1.232366e-07,
0.03938717, 0.2052783, -0.1205563, 0.4540311, -0.8762318, -0.161473,
0.040719, 0.2059684, -0.1205563, 0.4540311, -0.8762318, -0.161473,
0.04083043, 0.2057534, -0.119076, 0.4540311, -0.8762318, -0.161473,
0.0394986, 0.2050633, -0.119076, 0.4540311, -0.8762318, -0.161473,
0.03938717, 0.2052783, -0.1205563, 0.6719315, 0.7384399, 0.0566974,
0.0394986, 0.2050633, -0.119076, 0.6719315, 0.7384399, 0.0566974,
0.04101686, 0.2037634, -0.1201391, 0.6719315, 0.7384399, 0.0566974,
0.04101686, 0.2037634, -0.1201391, 0.6719315, 0.7384399, 0.0566974,
0.03938717, 0.2052783, -0.1205563, 0.08986196, -0.1734241, -0.9807389,
0.040719, 0.2059684, -0.1205563, 0.08986196, -0.1734241, -0.9807389,
0.04101686, 0.2037634, -0.1201391, 0.08986196, -0.1734241, -0.9807389,
0.04101686, 0.2037634, -0.1201391, 0.08986196, -0.1734241, -0.9807389,
0.040719, 0.2059684, -0.1205563, 0.9907722, 0.1231083, -0.05669821,
0.04083043, 0.2057534, -0.119076, 0.9907722, 0.1231083, -0.05669821,
0.04101686, 0.2037634, -0.1201391, 0.9907722, 0.1231083, -0.05669821,
0.04101686, 0.2037634, -0.1201391, 0.9907722, 0.1231083, -0.05669821,
0.04083043, 0.2057534, -0.119076, 0.2289798, -0.4419079, 0.8673441,
0.0394986, 0.2050633, -0.119076, 0.2289798, -0.4419079, 0.8673441,
0.04101686, 0.2037634, -0.1201391, 0.2289798, -0.4419079, 0.8673441,
0.04101686, 0.2037634, -0.1201391, 0.2289798, -0.4419079, 0.8673441
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
-0.4849712, 0.9826034, -0.06565995, -0.7045972, 0.7016486, -0.1059807,
-0.4884177, 0.9791424, -0.06565995, -0.7045972, 0.7016486, -0.1059807,
-0.4887845, 0.9795076, -0.06080309, -0.7045972, 0.7016486, -0.1059807,
-0.485338, 0.9829686, -0.06080309, -0.7045972, 0.7016486, -0.1059807,
-0.2264365, 0.7251508, -0.0267704, -0.7045971, 0.7016485, -0.1059827,
-0.229883, 0.7216898, -0.0267704, -0.7045971, 0.7016485, -0.1059827,
-0.2302498, 0.722055, -0.02191354, -0.7045971, 0.7016485, -0.1059827,
-0.2268033, 0.725516, -0.02191354, -0.7045971, 0.7016485, -0.1059827,
-0.4849712, 0.9826034, -0.06565995, -0.07510149, 0.0747872, 0.9943675,
-0.4884177, 0.9791424, -0.06565995, -0.07510149, 0.0747872, 0.9943675,
-0.229883, 0.7216898, -0.0267704, -0.07510149, 0.0747872, 0.9943675,
-0.2264365, 0.7251508, -0.0267704, -0.07510149, 0.0747872, 0.9943675,
-0.4884177, 0.9791424, -0.06565995, 0.7056222, 0.7085882, 2.094852e-06,
-0.4887845, 0.9795076, -0.06080309, 0.7056222, 0.7085882, 2.094852e-06,
-0.2302498, 0.722055, -0.02191354, 0.7056222, 0.7085882, 2.094852e-06,
-0.229883, 0.7216898, -0.0267704, 0.7056222, 0.7085882, 2.094852e-06,
-0.4887845, 0.9795076, -0.06080309, 0.0751015, -0.07478721, -0.9943674,
-0.485338, 0.9829686, -0.06080309, 0.0751015, -0.07478721, -0.9943674,
-0.2268033, 0.725516, -0.02191354, 0.0751015, -0.07478721, -0.9943674,
-0.2302498, 0.722055, -0.02191354, 0.0751015, -0.07478721, -0.9943674,
-0.485338, 0.9829686, -0.06080309, -0.7056222, -0.7085883, -2.086732e-06,
-0.4849712, 0.9826034, -0.06565995, -0.7056222, -0.7085883, -2.086732e-06,
-0.2264365, 0.7251508, -0.0267704, -0.7056222, -0.7085883, -2.086732e-06,
-0.2268033, 0.725516, -0.02191354, -0.7056222, -0.7085883, -2.086732e-06,
-0.4862923, 0.9815308, -0.06397729, -0.7045944, 0.7016507, -0.1059856,
-0.4873508, 0.980468, -0.06397729, -0.7045944, 0.7016507, -0.1059856,
-0.4874634, 0.9805802, -0.06248574, -0.7045944, 0.7016507, -0.1059856,
-0.486405, 0.981643, -0.06248574, -0.7045944, 0.7016507, -0.1059856,
-0.4862923, 0.9815308, -0.06397729, -0.4133117, -0.9098291, 0.03720976,
-0.486405, 0.981643, -0.06248574, -0.4133117, -0.9098291, 0.03720976,
-0.4882871, 0.9824588, -0.06344349, -0.4133117, -0.9098291, 0.03720976,
-0.4882871, 0.9824588, -0.06344349, -0.4133117, -0.9098291, 0.03720976,
-0.4862923, 0.9815308, -0.06397729, -0.1770797, 0.1763399, -0.9682701,
-0.4873508, 0.980468, -0.06397729, -0.1770797, 0.1763399, -0.9682701,
-0.4882871, 0.9824588, -0.06344349, -0.1770797, 0.1763399, -0.9682701,
-0.4882871, 0.9824588, -0.06344349, -0.1770797, 0.1763399, -0.9682701,
-0.4873508, 0.980468, -0.06397729, -0.9080983, -0.4171, -0.03721713,
-0.4874634, 0.9805802, -0.06248574, -0.9080983, -0.4171, -0.03721713,
-0.4882871, 0.9824588, -0.06344349, -0.9080983, -0.4171, -0.03721713,
-0.4882871, 0.9824588, -0.06344349, -0.9080983, -0.4171, -0.03721713,
-0.4874634, 0.9805802, -0.06248574, -0.3177148, 0.3163874, 0.8938435,
-0.486405, 0.981643, -0.06248574, -0.3177148, 0.3163874, 0.8938435,
-0.4882871, 0.9824588, -0.06344349, -0.3177148, 0.3163874, 0.8938435,
-0.4882871, 0.9824588, -0.06344349, -0.3177148, 0.3163874, 0.8938435
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
0.9795941, -0.2278969, 0.2003844, 0.7618027, -0.3593603, 0.5389962,
0.9818782, -0.223055, 0.2003844, 0.7618027, -0.3593603, 0.5389962,
0.9792684, -0.2218239, 0.2048938, 0.7618027, -0.3593603, 0.5389962,
0.9769844, -0.2266659, 0.2048938, 0.7618027, -0.3593603, 0.5389962,
0.6721755, -0.08288185, -0.01712085, 0.7618024, -0.3593602, 0.5389965,
0.6744596, -0.07803993, -0.01712085, 0.7618024, -0.3593602, 0.5389965,
0.6718498, -0.07680885, -0.01261147, 0.7618024, -0.3593602, 0.5389965,
0.6695658, -0.08165078, -0.01261147, 0.7618024, -0.3593602, 0.5389965,
0.9795941, -0.2278969, 0.2003844, -0.4874781, 0.2299549, 0.8423098,
0.9818782, -0.223055, 0.2003844, -0.4874781, 0.2299549, 0.8423098,
0.6744596, -0.07803993, -0.01712085, -0.4874781, 0.2299549, 0.8423098,
0.6721755, -0.08288185, -0.01712085, -0.4874781, 0.2299549, 0.8423098,
0.9818782, -0.223055, 0.2003844, -0.4266329, -0.9044249, -1.724358e-06,
0.9792684, -0.2218239, 0.2048938, -0.4266329, -0.9044249, -1.724358e-06,
0.6718498, -0.07680885, -0.01261147, -0.4266329, -0.9044249, -1.724358e-06,
0.6744596, -0.07803993, -0.01712085, -0.4266329, -0.9044249, -1.724358e-06,
0.9792684, -0.2218239, 0.2048938, 0.4874804, -0.22995, -0.8423098,
0.9769844, -0.2266659, 0.2048938, 0.4874804, -0.22995, -0.8423098,
0.6695658, -0.08165078, -0.01261147, 0.4874804, -0.22995, -0.8423098,
0.6718498, -0.07680885, -0.01261147, 0.4874804, -0.22995, -0.8423098,
0.9769844, -0.2266659, 0.2048938, 0.4266352, 0.9044238, -2.276704e-06,
0.9795941, -0.2278969, 0.2003844, 0.4266352, 0.9044238, -2.276704e-06,
0.6721755, -0.08288185, -0.01712085, 0.4266352, 0.9044238, -2.276704e-06,
0.6695658, -0.08165078, -0.01261147, 0.4266352, 0.9044238, -2.276704e-06,
0.9794769, -0.2257112, 0.2020073, 0.7617975, -0.3593691, 0.5389975,
0.9801168, -0.2243546, 0.2020073, 0.7617975, -0.3593691, 0.5389975,
0.9793856, -0.2240097, 0.2032708, 0.7617975, -0.3593691, 0.5389975,
0.9787456, -0.2253663, 0.2032708, 0.7617975, -0.3593691, 0.5389975,
0.9794769, -0.2257112, 0.2020073, 0.13198, 0.9730179, -0.1892546,
0.9787456, -0.2253663, 0.2032708, 0.13198, 0.9730179, -0.1892546,
0.9809549, -0.2255792, 0.2037171, 0.13198, 0.9730179, -0.1892546,
0.9809549, -0.2255792, 0.2037171, 0.13198, 0.9730179, -0.1892546,
0.9794769, -0.2257112, 0.2020073, 0.72392, -0.3415008, -0.5994306,
0.9801168, -0.2243546, 0.2020073, 0.72392, -0.3415008, -0.5994306,
0.9809549, -0.2255792, 0.2037171, 0.72392, -0.3415008, -0.5994306,
0.9809549, -0.2255792, 0.2037171, 0.72392, -0.3415008, -0.5994306,
0.9801168, -0.2243546, 0.2020073, 0.666951, 0.7206665, 0.1892515,
0.9793856, -0.2240097, 0.2032708, 0.666951, 0.7206665, 0.1892515,
0.9809549, -0.2255792, 0.2037171, 0.666951, 0.7206665, 0.1892515,
0.9809549, -0.2255792, 0.2037171, 0.666951, 0.7206665, 0.1892515,
0.9793856, -0.2240097, 0.2032708, -0.1889507, 0.0891353, 0.9779328,
0.9787456, -0.2253663, 0.2032708, -0.1889507, 0.0891353, 0.9779328,
0.9809549, -0.2255792, 0.2037171, -0.1889507, 0.0891353, 0.9779328,
0.9809549, -0.2255792, 0.2037171, -0.1889507, 0.0891353, 0.9779328
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
0.0791721, 0.1750945, -0.1239893, -0.9092816, 0.3840286, -0.1604034,
0.07590505, 0.167359, -0.1239893, -0.9092816, 0.3840286, -0.1604034,
0.07466425, 0.167883, -0.1157009, -0.9092816, 0.3840286, -0.1604034,
0.07793129, 0.1756185, -0.1157009, -0.9092816, 0.3840286, -0.1604034,
0.6742666, -0.07623962, -0.01901037, -0.9092805, 0.384029, -0.1604082,
0.6709996, -0.08397514, -0.01901037, -0.9092805, 0.384029, -0.1604082,
0.6697587, -0.08345109, -0.01072196, -0.9092805, 0.384029, -0.1604082,
0.6730258, -0.07571557, -0.01072196, -0.9092805, 0.384029, -0.1604082,
0.0791721, 0.1750945, -0.1239893, -0.1477654, 0.06240768, 0.9870515,
0.07590505, 0.167359, -0.1239893, -0.1477654, 0.06240768, 0.9870515,
0.6709996, -0.08397514, -0.01901037, -0.1477654, 0.06240768, 0.9870515,
0.6742666, -0.07623962, -0.01901037, -0.1477654, 0.06240768, 0.9870515,
0.07590505, 0.167359, -0.1239893, 0.3890666, 0.9212097, 1.588739e-07,
0.07466425, 0.167883, -0.1157009, 0.3890666, 0.9212097, 1.588739e-07,
0.6697587, -0.08345109, -0.01072196, 0.3890666, 0.9212097, 1.588739e-07,
0.6709996, -0.08397514, -0.01901037, 0.3890666, 0.9212097, 1.588739e-07,
0.07466425, 0.167883, -0.1157009, 0.1477654, -0.06240769, -0.9870515,
0.07793129, 0.1756185, -0.1157009, 0.1477654, -0.06240769, -0.9870515,
0.6730258, -0.07571557, -0.01072196, 0.1477654, -0.06240769, -0.9870515,
0.6697587, -0.08345109, -0.01072196, 0.1477654, -0.06240769, -0.9870515,
0.07793129, 0.1756185, -0.1157009, -0.3890665, -0.9212097, -1.535781e-07,
0.0791721, 0.1750945, -0.1239893, -0.3890665, -0.9212097, -1.535781e-07,
0.6742666, -0.07623962, -0.01901037, -0.3890665, -0.9212097, -1.535781e-07,
0.6730258, -0.07571557, -0.01072196, -0.3890665, -0.9212097, -1.535781e-07,
0.0773208, 0.1721329, -0.1205853, -0.9092805, 0.3840311, -0.1604031,
0.0767372, 0.1707511, -0.1205853, -0.9092805, 0.3840311, -0.1604031,
0.07651555, 0.1708447, -0.1191048, -0.9092805, 0.3840311, -0.1604031,
0.07709914, 0.1722265, -0.1191048, -0.9092805, 0.3840311, -0.1604031,
0.0773208, 0.1721329, -0.1205853, -0.04502772, -0.9973969, 0.05631933,
0.07709914, 0.1722265, -0.1191048, -0.04502772, -0.9973969, 0.05631933,
0.07509961, 0.1722568, -0.1201659, -0.04502772, -0.9973969, 0.05631933,
0.07509961, 0.1722568, -0.1201659, -0.04502772, -0.9973969, 0.05631933,
0.0773208, 0.1721329, -0.1205853, -0.180913, 0.0764079, -0.9805265,
0.0767372, 0.1707511, -0.1205853, -0.180913, 0.0764079, -0.9805265,
0.07509961, 0.1722568, -0.1201659, -0.180913, 0.0764079, -0.9805265,
0.07509961, 0.1722568, -0.1201659, -0.180913, 0.0764079, -0.9805265,
0.0767372, 0.1707511, -0.1205853, -0.6835665, -0.7277119, -0.05632298,
0.07651555, 0.1708447, -0.1191048, -0.6835665, -0.7277119, -0.05632298,
0.07509961, 0.1722568, -0.1201659, -0.6835665, -0.7277119, -0.05632298,
0.07509961, 0.1722568, -0.1201659, -0.6835665, -0.7277119, -0.05632298,
0.07651555, 0.1708447, -0.1191048, -0.457625, 0.1932737, 0.8678851,
0.07709914, 0.1722265, -0.1191048, -0.457625, 0.1932737, 0.8678851,
0.07509961, 0.1722568, -0.1201659, -0.457625, 0.1932737, 0.8678851,
0.07509961, 0.1722568, -0.1201659, -0.457625, 0.1932737, 0.8678851
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
0.05890835, 0.1704864, -0.1485314, -0.1116867, 0.5764891, 0.8094358,
0.05054664, 0.1688665, -0.1485314, -0.1116867, 0.5764891, 0.8094358,
0.0518579, 0.1620982, -0.14353, -0.1116867, 0.5764891, 0.8094358,
0.06021962, 0.1637182, -0.14353, -0.1116867, 0.5764891, 0.8094358,
0.1327375, -0.2105936, -0.6835966, -0.1116867, 0.5764891, 0.8094358,
0.1243758, -0.2122136, -0.6835966, -0.1116867, 0.5764891, 0.8094358,
0.125687, -0.2189818, -0.6785952, -0.1116867, 0.5764891, 0.8094358,
0.1340487, -0.2173619, -0.6785952, -0.1116867, 0.5764891, 0.8094358,
0.05890835, 0.1704864, -0.1485314, 0.1539541, -0.7946594, 0.587209,
0.05054664, 0.1688665, -0.1485314, 0.1539541, -0.7946594, 0.587209,
0.1243758, -0.2122136, -0.6835966, 0.1539541, -0.7946594, 0.587209,
0.1327375, -0.2105936, -0.6835966, 0.1539541, -0.7946594, 0.587209,
0.05054664, 0.1688665, -0.1485314, 0.9817454, 0.1901999, 2.067707e-08,
0.0518579, 0.1620982, -0.14353, 0.9817454, 0.1901999, 2.067707e-08,
0.125687, -0.2189818, -0.6785952, 0.9817454, 0.1901999, 2.067707e-08,
0.1243758, -0.2122136, -0.6835966, 0.9817454, 0.1901999, 2.067707e-08,
0.0518579, 0.1620982, -0.14353, -0.1539541, 0.7946594, -0.587209,
0.06021962, 0.1637182, -0.14353, -0.1539541, 0.7946594, -0.587209,
0.1340487, -0.2173619, -0.6785952, -0.1539541, 0.7946594, -0.587209,
0.125687, -0.2189818, -0.6785952, -0.1539541, 0.7946594, -0.587209,
0.06021962, 0.1637182, -0.14353, -0.9817454, -0.1901999, -2.067707e-08,
0.05890835, 0.1704864, -0.1485314, -0.9817454, -0.1901999, -2.067707e-08,
0.1327375, -0.2105936, -0.6835966, -0.9817454, -0.1901999, -2.067707e-08,
0.1340487, -0.2173619, -0.6785952, -0.9817454, -0.1901999, -2.067707e-08,
0.05600397, 0.167031, -0.1464711, -0.1116858, 0.5764876, 0.809437,
0.05453135, 0.1667457, -0.1464711, -0.1116858, 0.5764876, 0.809437,
0.05476229, 0.1655537, -0.1455903, -0.1116858, 0.5764876, 0.809437,
0.0562349, 0.165839, -0.1455903, -0.1116858, 0.5764876, 0.809437,
0.05600397, 0.167031, -0.1464711, -0.880022, -0.3805065, -0.2842111,
0.0562349, 0.165839, -0.1455903, -0.880022, -0.3805065, -0.2842111,
0.05515976, 0.1674453, -0.1444118, -0.880022, -0.3805065, -0.2842111,
0.05515976, 0.1674453, -0.1444118, -0.880022, -0.3805065, -0.2842111,
0.05600397, 0.167031, -0.1464711, -0.1833665, 0.9464816, -0.2656112,
0.05453135, 0.1667457, -0.1464711, -0.1833665, 0.9464816, -0.2656112,
0.05515976, 0.1674453, -0.1444118, -0.1833665, 0.9464816, -0.2656112,
0.05515976, 0.1674453, -0.1444118, -0.1833665, 0.9464816, -0.2656112,
0.05453135, 0.1667457, -0.1464711, -0.9584529, 0.02432854, 0.2842114,
0.05476229, 0.1655537, -0.1455903, -0.9584529, 0.02432854, 0.2842114,
0.05515976, 0.1674453, -0.1444118, -0.9584529, 0.02432854, 0.2842114,
0.05515976, 0.1674453, -0.1444118, -0.9584529, 0.02432854, 0.2842114,
0.05476229, 0.1655537, -0.1455903, 0.1049357, -0.5416458, 0.8340313,
0.0562349, 0.165839, -0.1455903, 0.1049357, -0.5416458, 0.8340313,
0.05515976, 0.1674453, -0.1444118, 0.1049357, -0.5416458, 0.8340313,
0.05515976, 0.1674453, -0.1444118, 0.1049357, -0.5416458, 0.8340313
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
0.2809532, -0.4693187, -0.9054282, 0.4177718, -0.6847907, -0.5971001,
0.286114, -0.4661702, -0.9054282, 0.4177718, -0.6847907, -0.5971001,
0.287994, -0.4692518, -0.9005787, 0.4177718, -0.6847907, -0.5971001,
0.2828332, -0.4724002, -0.9005787, 0.4177718, -0.6847907, -0.5971001,
0.1256919, -0.2148212, -0.6835206, 0.4177685, -0.6847904, -0.5971026,
0.1308527, -0.2116727, -0.6835206, 0.4177685, -0.6847904, -0.5971026,
0.1327326, -0.2147543, -0.6786712, 0.4177685, -0.6847904, -0.5971026,
0.1275718, -0.2179027, -0.6786712, 0.4177685, -0.6847904, -0.5971026,
0.2809532, -0.4693187, -0.9054282, 0.3109721, -0.5097299, 0.8021669,
0.286114, -0.4661702, -0.9054282, 0.3109721, -0.5097299, 0.8021669,
0.1308527, -0.2116727, -0.6835206, 0.3109721, -0.5097299, 0.8021669,
0.1256919, -0.2148212, -0.6835206, 0.3109721, -0.5097299, 0.8021669,
0.286114, -0.4661702, -0.9054282, -0.8536765, -0.5208037, 1.1788e-06,
0.287994, -0.4692518, -0.9005787, -0.8536765, -0.5208037, 1.1788e-06,
0.1327326, -0.2147543, -0.6786712, -0.8536765, -0.5208037, 1.1788e-06,
0.1308527, -0.2116727, -0.6835206, -0.8536765, -0.5208037, 1.1788e-06,
0.287994, -0.4692518, -0.9005787, -0.3109707, 0.5097306, -0.8021671,
0.2828332, -0.4724002, -0.9005787, -0.3109707, 0.5097306, -0.8021671,
0.1275718, -0.2179027, -0.6786712, -0.3109707, 0.5097306, -0.8021671,
0.1327326, -0.2147543, -0.6786712, -0.3109707, 0.5097306, -0.8021671,
0.2828332, -0.4724002, -0.9005787, 0.8536779, 0.5208015, 2.202157e-06,
0.2809532, -0.4693187, -0.9054282, 0.8536779, 0.5208015, 2.202157e-06,
0.1256919, -0.2148212, -0.6835206, 0.8536779, 0.5208015, 2.202157e-06,
0.1275718, -0.2179027, -0.6786712, 0.8536779, 0.5208015, 2.202157e-06,
0.2836001, -0.4692935, -0.9036051, 0.4177707, -0.6847883, -0.5971036,
0.2848806, -0.4685123, -0.9036051, 0.4177707, -0.6847883, -0.5971036,
0.2853471, -0.4692769, -0.9024019, 0.4177707, -0.6847883, -0.5971036,
0.2840666, -0.4700581, -0.9024019, 0.4177707, -0.6847883, -0.5971036,
0.2836001, -0.4692935, -0.9036051, 0.6526382, 0.728085, 0.2096561,
0.2840666, -0.4700581, -0.9024019, 0.6526382, 0.728085, 0.2096561,
0.2853091, -0.4706548, -0.9041977, 0.6526382, 0.728085, 0.2096561,
0.2853091, -0.4706548, -0.9041977, 0.6526382, 0.728085, 0.2096561,
0.2836001, -0.4692935, -0.9036051, -0.1444864, 0.2368347, -0.960746,
0.2848806, -0.4685123, -0.9036051, -0.1444864, 0.2368347, -0.960746,
0.2853091, -0.4706548, -0.9041977, -0.1444864, 0.2368347, -0.960746,
0.2853091, -0.4706548, -0.9041977, -0.1444864, 0.2368347, -0.960746,
0.2848806, -0.4685123, -0.9036051, 0.9460161, 0.2471889, -0.2096453,
0.2853471, -0.4692769, -0.9024019, 0.9460161, 0.2471889, -0.2096453,
0.2853091, -0.4706548, -0.9041977, 0.9460161, 0.2471889, -0.2096453,
0.2853091, -0.4706548, -0.9041977, 0.9460161, 0.2471889, -0.2096453,
0.2853471, -0.4692769, -0.9024019, 0.437871, -0.717719, 0.541432,
0.2840666, -0.4700581, -0.9024019, 0.437871, -0.717719, 0.541432,
0.2853091, -0.4706548, -0.9041977, 0.437871, -0.717719, 0.541432,
0.2853091, -0.4706548, -0.9041977, 0.437871, -0.717719, 0.541432
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
0.05476335, 0.2009565, -0.1440208, -0.267428, -0.7443729, 0.6118753,
0.06267395, 0.1981145, -0.1440208, -0.267428, -0.7443729, 0.6118753,
0.0644129, 0.2029548, -0.1373724, -0.267428, -0.7443729, 0.6118753,
0.05650231, 0.2057968, -0.1373724, -0.267428, -0.7443729, 0.6118753,
0.2201465, 0.6612926, -0.5224177, -0.2674274, -0.7443698, 0.6118792,
0.2280571, 0.6584506, -0.5224177, -0.2674274, -0.7443698, 0.6118792,
0.229796, 0.6632909, -0.5157692, -0.2674274, -0.7443698, 0.6118792,
0.2218854, 0.6661329, -0.5157692, -0.2674274, -0.7443698, 0.6118792,
0.05476335, 0.2009565, -0.1440208, 0.20688, 0.5758403, 0.7909542,
0.06267395, 0.1981145, -0.1440208, 0.20688, 0.5758403, 0.7909542,
0.2280571, 0.6584506, -0.5224177, 0.20688, 0.5758403, 0.7909542,
0.2201465, 0.6612926, -0.5224177, 0.20688, 0.5758403, 0.7909542,
0.06267395, 0.1981145, -0.1440208, -0.9411075, 0.3381076, -3.919165e-07,
0.0644129, 0.2029548, -0.1373724, -0.9411075, 0.3381076, -3.919165e-07,
0.229796, 0.6632909, -0.5157692, -0.9411075, 0.3381076, -3.919165e-07,
0.2280571, 0.6584506, -0.5224177, -0.9411075, 0.3381076, -3.919165e-07,
0.0644129, 0.2029548, -0.1373724, -0.2068801, -0.5758404, -0.7909542,
0.05650231, 0.2057968, -0.1373724, -0.2068801, -0.5758404, -0.7909542,
0.2218854, 0.6661329, -0.5157692, -0.2068801, -0.5758404, -0.7909542,
0.229796, 0.6632909, -0.5157692, -0.2068801, -0.5758404, -0.7909542,
0.05650231, 0.2057968, -0.1373724, 0.9411074, -0.3381078, 6.718568e-08,
0.05476335, 0.2009565, -0.1440208, 0.9411074, -0.3381078, 6.718568e-08,
0.2201465, 0.6612926, -0.5224177, 0.9411074, -0.3381078, 6.718568e-08,
0.2218854, 0.6661329, -0.5157692, 0.9411074, -0.3381078, 6.718568e-08,
0.05872714, 0.2017773, -0.1412898, -0.2674273, -0.7443727, 0.6118757,
0.0601388, 0.2012701, -0.1412898, -0.2674273, -0.7443727, 0.6118757,
0.06044912, 0.2021339, -0.1401034, -0.2674273, -0.7443727, 0.6118757,
0.05903746, 0.2026411, -0.1401034, -0.2674273, -0.7443727, 0.6118757,
0.05872714, 0.2017773, -0.1412898, 0.9750864, -0.05521364, -0.2148443,
0.05903746, 0.2026411, -0.1401034, 0.9750864, -0.05521364, -0.2148443,
0.05905327, 0.2004669, -0.1394728, 0.9750864, -0.05521364, -0.2148443,
0.05905327, 0.2004669, -0.1394728, 0.9750864, -0.05521364, -0.2148443,
0.05872714, 0.2017773, -0.1412898, -0.2876075, -0.8005435, -0.525749,
0.0601388, 0.2012701, -0.1412898, -0.2876075, -0.8005435, -0.525749,
0.05905327, 0.2004669, -0.1394728, -0.2876075, -0.8005435, -0.525749,
0.05905327, 0.2004669, -0.1394728, -0.2876075, -0.8005435, -0.525749,
0.0601388, 0.2012701, -0.1412898, 0.7872842, -0.577949, 0.2148455,
0.06044912, 0.2021339, -0.1401034, 0.7872842, -0.577949, 0.2148455,
0.05905327, 0.2004669, -0.1394728, 0.7872842, -0.577949, 0.2148455,
0.05905327, 0.2004669, -0.1394728, 0.7872842, -0.577949, 0.2148455,
0.06044912, 0.2021339, -0.1401034, 0.09980655, 0.2778074, 0.955438,
0.05903746, 0.2026411, -0.1401034, 0.09980655, 0.2778074, 0.955438,
0.05905327, 0.2004669, -0.1394728, 0.09980655, 0.2778074, 0.955438,
0.05905327, 0.2004669, -0.1394728, 0.09980655, 0.2778074, 0.955438
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
0.446902, 0.9185884, -0.6531786, 0.6050099, 0.709601, -0.36115,
0.4429497, 0.9219581, -0.6531786, 0.6050099, 0.709601, -0.36115,
0.4441667, 0.9233855, -0.6483353, 0.6050099, 0.709601, -0.36115,
0.448119, 0.9200158, -0.6483353, 0.6050099, 0.709601, -0.36115,
0.2263389, 0.6598932, -0.5215151, 0.6050031, 0.709603, -0.3611577,
0.2223866, 0.6632629, -0.5215151, 0.6050031, 0.709603, -0.3611577,
0.2236036, 0.6646903, -0.5166718, 0.6050031, 0.709603, -0.3611577,
0.2275559, 0.6613206, -0.5166718, 0.6050031, 0.709603, -0.3611577,
0.446902, 0.9185884, -0.6531786, 0.2343161, 0.2748235, 0.9325063,
0.4429497, 0.9219581, -0.6531786, 0.2343161, 0.2748235, 0.9325063,
0.2223866, 0.6632629, -0.5215151, 0.2343161, 0.2748235, 0.9325063,
0.2263389, 0.6598932, -0.5215151, 0.2343161, 0.2748235, 0.9325063,
0.4429497, 0.9219581, -0.6531786, 0.7609619, -0.6487964, -2.643761e-06,
0.4441667, 0.9233855, -0.6483353, 0.7609619, -0.6487964, -2.643761e-06,
0.2236036, 0.6646903, -0.5166718, 0.7609619, -0.6487964, -2.643761e-06,
0.2223866, 0.6632629, -0.5215151, 0.7609619, -0.6487964, -2.643761e-06,
0.4441667, 0.9233855, -0.6483353, -0.2343137, -0.2748256, -0.9325063,
0.448119, 0.9200158, -0.6483353, -0.2343137, -0.2748256, -0.9325063,
0.2275559, 0.6613206, -0.5166718, -0.2343137, -0.2748256, -0.9325063,
0.2236036, 0.6646903, -0.5166718, -0.2343137, -0.2748256, -0.9325063,
0.448119, 0.9200158, -0.6483353, -0.7609637, 0.6487944, -4.319155e-06,
0.446902, 0.9185884, -0.6531786, -0.7609637, 0.6487944, -4.319155e-06,
0.2263389, 0.6598932, -0.5215151, -0.7609637, 0.6487944, -4.319155e-06,
0.2275559, 0.6613206, -0.5166718, -0.7609637, 0.6487944, -4.319155e-06,
0.4459293, 0.9202942, -0.6514564, 0.6050268, 0.7095947, -0.3611342,
0.4447879, 0.9212674, -0.6514564, 0.6050268, 0.7095947, -0.3611342,
0.4451394, 0.9216797, -0.6500576, 0.6050268, 0.7095947, -0.3611342,
0.4462808, 0.9207065, -0.6500576, 0.6050268, 0.7095947, -0.3611342,
0.4459293, 0.9202942, -0.6514564, -0.9249463, 0.3583216, 0.1268066,
0.4462808, 0.9207065, -0.6500576, -0.9249463, 0.3583216, 0.1268066,
0.4467444, 0.9224062, -0.6514792, -0.9249463, 0.3583216, 0.1268066,
0.4467444, 0.9224062, -0.6514792, -0.9249463, 0.3583216, 0.1268066,
0.4459293, 0.9202942, -0.6514564, -0.006952224, -0.008153791, -0.9999426,
0.4447879, 0.9212674, -0.6514564, -0.006952224, -0.008153791, -0.9999426,
0.4467444, 0.9224062, -0.6514792, -0.006952224, -0.008153791, -0.9999426,
0.4467444, 0.9224062, -0.6514792, -0.006952224, -0.008153791, -0.9999426,
0.4447879, 0.9212674, -0.6514564, -0.5000863, 0.8566417, -0.1268014,
0.4451394, 0.9216797, -0.6500576, -0.5000863, 0.8566417, -0.1268014,
0.4467444, 0.9224062, -0.6514792, -0.5000863, 0.8566417, -0.1268014,
0.4467444, 0.9224062, -0.6514792, -0.5000863, 0.8566417, -0.1268014,
0.4451394, 0.9216797, -0.6500576, 0.4318158, 0.5064917, 0.7463252,
0.4462808, 0.9207065, -0.6500576, 0.4318158, 0.5064917, 0.7463252,
0.4467444, 0.9224062, -0.6514792, 0.4318158, 0.5064917, 0.7463252,
0.4467444, 0.9224062, -0.6514792, 0.4318158, 0.5064917, 0.7463252
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
0.0755547, 0.196669, -0.1212583, -0.8844079, -0.3869967, -0.2608761,
0.07898141, 0.1888379, -0.1212583, -0.8844079, -0.3869967, -0.2608761,
0.07693847, 0.1879439, -0.1130063, -0.8844079, -0.3869967, -0.2608761,
0.07351175, 0.195775, -0.1130063, -0.8844079, -0.3869967, -0.2608761,
0.6538448, 0.4497159, 0.04932143, -0.8844094, -0.3869931, -0.2608761,
0.6572714, 0.4418848, 0.04932143, -0.8844094, -0.3869931, -0.2608761,
0.6552285, 0.4409909, 0.05757346, -0.8844094, -0.3869931, -0.2608761,
0.6518018, 0.448822, 0.05757346, -0.8844094, -0.3869931, -0.2608761,
0.0755547, 0.196669, -0.1212583, -0.2389967, -0.1045795, 0.9653723,
0.07898141, 0.1888379, -0.1212583, -0.2389967, -0.1045795, 0.9653723,
0.6572714, 0.4418848, 0.04932143, -0.2389967, -0.1045795, 0.9653723,
0.6538448, 0.4497159, 0.04932143, -0.2389967, -0.1045795, 0.9653723,
0.07898141, 0.1888379, -0.1212583, -0.4008788, 0.9161311, 1.041409e-07,
0.07693847, 0.1879439, -0.1130063, -0.4008788, 0.9161311, 1.041409e-07,
0.6552285, 0.4409909, 0.05757346, -0.4008788, 0.9161311, 1.041409e-07,
0.6572714, 0.4418848, 0.04932143, -0.4008788, 0.9161311, 1.041409e-07,
0.07693847, 0.1879439, -0.1130063, 0.2389967, 0.1045795, -0.9653723,
0.07351175, 0.195775, -0.1130063, 0.2389967, 0.1045795, -0.9653723,
0.6518018, 0.448822, 0.05757346, 0.2389967, 0.1045795, -0.9653723,
0.6552285, 0.4409909, 0.05757346, 0.2389967, 0.1045795, -0.9653723,
0.07351175, 0.195775, -0.1130063, 0.4008787, -0.9161311, -1.24969e-07,
0.0755547, 0.196669, -0.1212583, 0.4008787, -0.9161311, -1.24969e-07,
0.6538448, 0.4497159, 0.04932143, 0.4008787, -0.9161311, -1.24969e-07,
0.6518018, 0.448822, 0.05757346, 0.4008787, -0.9161311, -1.24969e-07,
0.07612517, 0.193072, -0.1178563, -0.8844078, -0.3869985, -0.2608733,
0.07672649, 0.1916978, -0.1178563, -0.8844078, -0.3869985, -0.2608733,
0.076368, 0.1915409, -0.1164083, -0.8844078, -0.3869985, -0.2608733,
0.07576668, 0.1929151, -0.1164083, -0.8844078, -0.3869985, -0.2608733,
0.07612517, 0.193072, -0.1178563, 0.685892, -0.7219159, 0.09159385,
0.07576668, 0.1929151, -0.1164083, 0.685892, -0.7219159, 0.09159385,
0.07447777, 0.1915325, -0.1176541, 0.685892, -0.7219159, 0.09159385,
0.07447777, 0.1915325, -0.1176541, 0.685892, -0.7219159, 0.09159385,
0.07612517, 0.193072, -0.1178563, -0.08675625, -0.03796274, -0.995506,
0.07672649, 0.1916978, -0.1178563, -0.08675625, -0.03796274, -0.995506,
0.07447777, 0.1915325, -0.1176541, -0.08675625, -0.03796274, -0.995506,
0.07447777, 0.1915325, -0.1176541, -0.08675625, -0.03796274, -0.995506,
0.07672649, 0.1916978, -0.1178563, 0.06481753, -0.9936845, -0.09159668,
0.076368, 0.1915409, -0.1164083, 0.06481753, -0.9936845, -0.09159668,
0.07447777, 0.1915325, -0.1176541, 0.06481753, -0.9936845, -0.09159668,
0.07447777, 0.1915325, -0.1176541, 0.06481753, -0.9936845, -0.09159668,
0.076368, 0.1915409, -0.1164083, -0.5343153, -0.2338078, 0.8123061,
0.07576668, 0.1929151, -0.1164083, -0.5343153, -0.2338078, 0.8123061,
0.07447777, 0.1915325, -0.1176541, -0.5343153, -0.2338078, 0.8123061,
0.07447777, 0.1915325, -0.1176541, -0.5343153, -0.2338078, 0.8123061
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
0.9501261, 0.5766296, 0.3018491, 0.7178694, 0.3266169, 0.6148047,
0.947703, 0.5819553, 0.3018491, 0.7178694, 0.3266169, 0.6148047,
0.9444287, 0.5804656, 0.3064637, 0.7178694, 0.3266169, 0.6148047,
0.9468519, 0.5751399, 0.3064637, 0.7178694, 0.3266169, 0.6148047,
0.6573853, 0.4434354, 0.05114014, 0.717871, 0.3266194, 0.6148016,
0.6549622, 0.4487611, 0.05114014, 0.717871, 0.3266194, 0.6148016,
0.6516879, 0.4472714, 0.05575475, 0.717871, 0.3266194, 0.6148016,
0.6541111, 0.4419457, 0.05575475, 0.717871, 0.3266194, 0.6148016,
0.9501261, 0.5766296, 0.3018491, -0.5596005, -0.2546076, 0.788684,
0.947703, 0.5819553, 0.3018491, -0.5596005, -0.2546076, 0.788684,
0.6549622, 0.4487611, 0.05114014, -0.5596005, -0.2546076, 0.788684,
0.6573853, 0.4434354, 0.05114014, -0.5596005, -0.2546076, 0.788684,
0.947703, 0.5819553, 0.3018491, 0.4141384, -0.9102139, -2.439555e-07,
0.9444287, 0.5804656, 0.3064637, 0.4141384, -0.9102139, -2.439555e-07,
0.6516879, 0.4472714, 0.05575475, 0.4141384, -0.9102139, -2.439555e-07,
0.6549622, 0.4487611, 0.05114014, 0.4141384, -0.9102139, -2.439555e-07,
0.9444287, 0.5804656, 0.3064637, 0.559597, 0.2546151, -0.788684,
0.9468519, 0.5751399, 0.3064637, 0.559597, 0.2546151, -0.788684,
0.6541111, 0.4419457, 0.05575475, 0.559597, 0.2546151, -0.788684,
0.6516879, 0.4472714, 0.05575475, 0.559597, 0.2546151, -0.788684,
0.9468519, 0.5751399, 0.3064637, -0.4141355, 0.9102151, -3.744747e-06,
0.9501261, 0.5766296, 0.3018491, -0.4141355, 0.9102151, -3.744747e-06,
0.6573853, 0.4434354, 0.05114014, -0.4141355, 0.9102151, -3.744747e-06,
0.6541111, 0.4419457, 0.05575475, -0.4141355, 0.9102151, -3.744747e-06,
0.9480078, 0.5780559, 0.3035649, 0.7178749, 0.326643, 0.6147845,
0.9473865, 0.5794212, 0.3035649, 0.7178749, 0.326643, 0.6147845,
0.9465472, 0.5790393, 0.3047479, 0.7178749, 0.326643, 0.6147845,
0.9471684, 0.577674, 0.3047479, 0.7178749, 0.326643, 0.6147845,
0.9480078, 0.5780559, 0.3035649, -0.6398171, 0.7375827, -0.2158833,
0.9471684, 0.577674, 0.3047479, -0.6398171, 0.7375827, -0.2158833,
0.9487132, 0.5792008, 0.305386, -0.6398171, 0.7375827, -0.2158833,
0.9487132, 0.5792008, 0.305386, -0.6398171, 0.7375827, -0.2158833,
0.9480078, 0.5780559, 0.3035649, 0.776026, 0.3531025, -0.5225919,
0.9473865, 0.5794212, 0.3035649, 0.776026, 0.3531025, -0.5225919,
0.9487132, 0.5792008, 0.305386, 0.776026, 0.3531025, -0.5225919,
0.9487132, 0.5792008, 0.305386, 0.776026, 0.3531025, -0.5225919,
0.9473865, 0.5794212, 0.3035649, -0.1357093, 0.9669396, 0.2158954,
0.9465472, 0.5790393, 0.3047479, -0.1357093, 0.9669396, 0.2158954,
0.9487132, 0.5792008, 0.305386, -0.1357093, 0.9669396, 0.2158954,
0.9487132, 0.5792008, 0.305386, -0.1357093, 0.9669396, 0.2158954,
0.9465472, 0.5790393, 0.3047479, -0.2719142, -0.1237182, 0.9543356,
0.9471684, 0.577674, 0.3047479, -0.2719142, -0.1237182, 0.9543356,
0.9487132, 0.5792008, 0.305386, -0.2719142, -0.1237182, 0.9543356,
0.9487132, 0.5792008, 0.305386, -0.2719142, -0.1237182, 0.9543356
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
0.06208313, 0.2025746, -0.1396918, -0.5257027, -0.7313567, 0.4344583,
0.06890845, 0.1976685, -0.1396918, -0.5257027, -0.7313567, 0.4344583,
0.07103994, 0.2006338, -0.1321209, -0.5257027, -0.7313567, 0.4344583,
0.06421461, 0.2055399, -0.1321209, -0.5257027, -0.7313567, 0.4344583,
0.3831067, 0.6491828, -0.4049965, -0.5257021, -0.7313557, 0.4344606,
0.389932, 0.6442767, -0.4049965, -0.5257021, -0.7313557, 0.4344606,
0.3920635, 0.6472421, -0.3974257, -0.5257021, -0.7313557, 0.4344606,
0.3852382, 0.6521481, -0.3974257, -0.5257021, -0.7313557, 0.4344606,
0.06208313, 0.2025746, -0.1396918, 0.2535781, 0.3527775, 0.900692,
0.06890845, 0.1976685, -0.1396918, 0.2535781, 0.3527775, 0.900692,
0.389932, 0.6442767, -0.4049965, 0.2535781, 0.3527775, 0.900692,
0.3831067, 0.6491828, -0.4049965, 0.2535781, 0.3527775, 0.900692,
0.06890845, 0.1976685, -0.1396918, -0.8119947, 0.5836649, 4.1958e-07,
0.07103994, 0.2006338, -0.1321209, -0.8119947, 0.5836649, 4.1958e-07,
0.3920635, 0.6472421, -0.3974257, -0.8119947, 0.5836649, 4.1958e-07,
0.389932, 0.6442767, -0.4049965, -0.8119947, 0.5836649, 4.1958e-07,
0.07103994, 0.2006338, -0.1321209, -0.2535779, -0.3527776, -0.900692,
0.06421461, 0.2055399, -0.1321209, -0.2535779, -0.3527776, -0.900692,
0.3852382, 0.6521481, -0.3974257, -0.2535779, -0.3527776, -0.900692,
0.3920635, 0.6472421, -0.3974257, -0.2535779, -0.3527776, -0.900692,
0.06421461, 0.2055399, -0.1321209, 0.8119949, -0.5836647, 2.3814e-07,
0.06208313, 0.2025746, -0.1396918, 0.8119949, -0.5836647, 2.3814e-07,
0.3831067, 0.6491828, -0.4049965, 0.8119949, -0.5836647, 2.3814e-07,
0.3852382, 0.6521481, -0.3974257, 0.8119949, -0.5836647, 2.3814e-07,
0.06576236, 0.2017774, -0.1365818, -0.5257036, -0.7313538, 0.4344622,
0.06698035, 0.2009019, -0.1365818, -0.5257036, -0.7313538, 0.4344622,
0.06736071, 0.201431, -0.1352308, -0.5257036, -0.7313538, 0.4344622,
0.06614272, 0.2023065, -0.1352308, -0.5257036, -0.7313538, 0.4344622,
0.06576236, 0.2017774, -0.1365818, 0.9448807, -0.2897055, -0.1525489,
0.06614272, 0.2023065, -0.1352308, 0.9448807, -0.2897055, -0.1525489,
0.06551013, 0.2001415, -0.1350374, 0.9448807, -0.2897055, -0.1525489,
0.06551013, 0.2001415, -0.1350374, 0.9448807, -0.2897055, -0.1525489,
0.06576236, 0.2017774, -0.1365818, -0.4220207, -0.5871111, -0.6907961,
0.06698035, 0.2009019, -0.1365818, -0.4220207, -0.5871111, -0.6907961,
0.06551013, 0.2001415, -0.1350374, -0.4220207, -0.5871111, -0.6907961,
0.06551013, 0.2001415, -0.1350374, -0.4220207, -0.5871111, -0.6907961,
0.06698035, 0.2009019, -0.1365818, 0.5757077, -0.8032987, 0.1525514,
0.06736071, 0.201431, -0.1352308, 0.5757077, -0.8032987, 0.1525514,
0.06551013, 0.2001415, -0.1350374, 0.5757077, -0.8032987, 0.1525514,
0.06551013, 0.2001415, -0.1350374, 0.5757077, -0.8032987, 0.1525514,
0.06736071, 0.201431, -0.1352308, 0.05284762, 0.07352111, 0.9958925,
0.06614272, 0.2023065, -0.1352308, 0.05284762, 0.07352111, 0.9958925,
0.06551013, 0.2001415, -0.1350374, 0.05284762, 0.07352111, 0.9958925,
0.06551013, 0.2001415, -0.1350374, 0.05284762, 0.07352111, 0.9958925
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
0.4589223, 0.9180328, -0.6448621, 0.1868982, 0.734494, -0.6523707,
0.4538889, 0.9193136, -0.6448621, 0.1868982, 0.734494, -0.6523707,
0.4547244, 0.9225972, -0.6409258, 0.1868982, 0.734494, -0.6523707,
0.4597578, 0.9213164, -0.6409258, 0.1868982, 0.734494, -0.6523707,
0.389684, 0.6459302, -0.4031793, 0.1868957, 0.7344884, -0.652378,
0.3846506, 0.647211, -0.4031793, 0.1868957, 0.7344884, -0.652378,
0.3854862, 0.6504947, -0.3992429, 0.1868957, 0.7344884, -0.652378,
0.3905196, 0.6492139, -0.3992429, 0.1868957, 0.7344884, -0.652378,
0.4589223, 0.9180328, -0.6448621, 0.1608762, 0.6322297, 0.7578948,
0.4538889, 0.9193136, -0.6448621, 0.1608762, 0.6322297, 0.7578948,
0.3846506, 0.647211, -0.4031793, 0.1608762, 0.6322297, 0.7578948,
0.389684, 0.6459302, -0.4031793, 0.1608762, 0.6322297, 0.7578948,
0.4538889, 0.9193136, -0.6448621, 0.9691179, -0.2465983, 5.294064e-08,
0.4547244, 0.9225972, -0.6409258, 0.9691179, -0.2465983, 5.294064e-08,
0.3854862, 0.6504947, -0.3992429, 0.9691179, -0.2465983, 5.294064e-08,
0.3846506, 0.647211, -0.4031793, 0.9691179, -0.2465983, 5.294064e-08,
0.4547244, 0.9225972, -0.6409258, -0.1608753, -0.63223, -0.7578946,
0.4597578, 0.9213164, -0.6409258, -0.1608753, -0.63223, -0.7578946,
0.3905196, 0.6492139, -0.3992429, -0.1608753, -0.63223, -0.7578946,
0.3854862, 0.6504947, -0.3992429, -0.1608753, -0.63223, -0.7578946,
0.4597578, 0.9213164, -0.6409258, -0.9691169, 0.2466017, 4.189869e-06,
0.4589223, 0.9180328, -0.6448621, -0.9691169, 0.2466017, 4.189869e-06,
0.389684, 0.6459302, -0.4031793, -0.9691169, 0.2466017, 4.189869e-06,
0.3905196, 0.6492139, -0.3992429, -0.9691169, 0.2466017, 4.189869e-06,
0.4574295, 0.9196559, -0.6434624, 0.1869035, 0.7344983, -0.6523644,
0.4559759, 0.9200258, -0.6434624, 0.1869035, 0.7344983, -0.6523644,
0.4562172, 0.9209741, -0.6423255, 0.1869035, 0.7344983, -0.6523644,
0.4576708, 0.9206042, -0.6423255, 0.1869035, 0.7344983, -0.6523644,
0.4574295, 0.9196559, -0.6434624, -0.9730381, -0.02699556, 0.2290591,
0.4576708, 0.9206042, -0.6423255, -0.9730381, -0.02699556, 0.2290591,
0.4571972, 0.921784, -0.6441987, -0.9730381, -0.02699556, 0.2290591,
0.4571972, 0.921784, -0.6441987, -0.9730381, -0.02699556, 0.2290591,
0.4574295, 0.9196559, -0.6434624, -0.08500855, -0.3340688, -0.9387074,
0.4559759, 0.9200258, -0.6434624, -0.08500855, -0.3340688, -0.9387074,
0.4571972, 0.921784, -0.6441987, -0.08500855, -0.3340688, -0.9387074,
0.4571972, 0.921784, -0.6441987, -0.08500855, -0.3340688, -0.9387074,
0.4559759, 0.9200258, -0.6434624, -0.8417801, 0.4888091, -0.2290676,
0.4562172, 0.9209741, -0.6423255, -0.8417801, 0.4888091, -0.2290676,
0.4571972, 0.921784, -0.6441987, -0.8417801, 0.4888091, -0.2290676,
0.4571972, 0.921784, -0.6441987, -0.8417801, 0.4888091, -0.2290676,
0.4562172, 0.9209741, -0.6423255, 0.2162604, 0.8498659, 0.4805821,
0.4576708, 0.9206042, -0.6423255, 0.2162604, 0.8498659, 0.4805821,
0.4571972, 0.921784, -0.6441987, 0.2162604, 0.8498659, 0.4805821,
0.4571972, 0.921784, -0.6441987, 0.2162604, 0.8498659, 0.4805821
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
-0.3808591, -0.01318047, 7.943906e-05, -0.8763626, -0.4043518, 0.2617024,
-0.3771679, -0.02118043, 7.943906e-05, -0.8763626, -0.4043518, 0.2617024,
-0.3750743, -0.02021445, 0.008582842, -0.8763626, -0.4043518, 0.2617024,
-0.3787655, -0.01221449, 0.008582842, -0.8763626, -0.4043518, 0.2617024,
0.0494752, 0.1853745, -0.1284277, -0.8763634, -0.404351, 0.2617011,
0.05316636, 0.1773746, -0.1284277, -0.8763634, -0.404351, 0.2617011,
0.05525995, 0.1783406, -0.1199243, -0.8763634, -0.404351, 0.2617011,
0.05156879, 0.1863405, -0.1199243, -0.8763634, -0.404351, 0.2617011,
-0.3808591, -0.01318047, 7.943906e-05, 0.2376265, 0.1096404, 0.965149,
-0.3771679, -0.02118043, 7.943906e-05, 0.2376265, 0.1096404, 0.965149,
0.05316636, 0.1773746, -0.1284277, 0.2376265, 0.1096404, 0.965149,
0.0494752, 0.1853745, -0.1284277, 0.2376265, 0.1096404, 0.965149,
-0.3771679, -0.02118043, 7.943906e-05, -0.4189523, 0.9080083, 6.323502e-07,
-0.3750743, -0.02021445, 0.008582842, -0.4189523, 0.9080083, 6.323502e-07,
0.05525995, 0.1783406, -0.1199243, -0.4189523, 0.9080083, 6.323502e-07,
0.05316636, 0.1773746, -0.1284277, -0.4189523, 0.9080083, 6.323502e-07,
-0.3750743, -0.02021445, 0.008582842, -0.2376266, -0.1096404, -0.965149,
-0.3787655, -0.01221449, 0.008582842, -0.2376266, -0.1096404, -0.965149,
0.05156879, 0.1863405, -0.1199243, -0.2376266, -0.1096404, -0.965149,
0.05525995, 0.1783406, -0.1199243, -0.2376266, -0.1096404, -0.965149,
-0.3787655, -0.01221449, 0.008582842, 0.4189523, -0.9080083, -6.256231e-07,
-0.3808591, -0.01318047, 7.943906e-05, 0.4189523, -0.9080083, -6.256231e-07,
0.0494752, 0.1853745, -0.1284277, 0.4189523, -0.9080083, -6.256231e-07,
0.05156879, 0.1863405, -0.1199243, 0.4189523, -0.9080083, -6.256231e-07,
-0.3784592, -0.01609869, 0.003607279, -0.8763604, -0.404359, 0.2616986,
-0.3778307, -0.0174607, 0.003607279, -0.8763604, -0.404359, 0.2616986,
-0.3774743, -0.01729624, 0.005055002, -0.8763604, -0.404359, 0.2616986,
-0.3781027, -0.01593423, 0.005055002, -0.8763604, -0.404359, 0.2616986,
-0.3784592, -0.01609869, 0.003607279, 0.6999923, -0.7082141, -0.09188849,
-0.3781027, -0.01593423, 0.005055002, 0.6999923, -0.7082141, -0.09188849,
-0.3797194, -0.01750616, 0.004854542, 0.6999923, -0.7082141, -0.09188849,
-0.3797194, -0.01750616, 0.004854542, 0.6999923, -0.7082141, -0.09188849,
-0.3784592, -0.01609869, 0.003607279, -0.5302073, -0.2446415, -0.8118072,
-0.3778307, -0.0174607, 0.003607279, -0.5302073, -0.2446415, -0.8118072,
-0.3797194, -0.01750616, 0.004854542, -0.5302073, -0.2446415, -0.8118072,
-0.3797194, -0.01750616, 0.004854542, -0.5302073, -0.2446415, -0.8118072,
-0.3778307, -0.0174607, 0.003607279, 0.08456601, -0.9921718, 0.09188953,
-0.3774743, -0.01729624, 0.005055002, 0.08456601, -0.9921718, 0.09188953,
-0.3797194, -0.01750616, 0.004854542, 0.08456601, -0.9921718, 0.09188953,
-0.3797194, -0.01750616, 0.004854542, 0.08456601, -0.9921718, 0.09188953,
-0.3774743, -0.01729624, 0.005055002, -0.0852149, -0.03931876, 0.9955865,
-0.3781027, -0.01593423, 0.005055002, -0.0852149, -0.03931876, 0.9955865,
-0.3797194, -0.01750616, 0.004854542, -0.0852149, -0.03931876, 0.9955865,
-0.3797194, -0.01750616, 0.004854542, -0.0852149, -0.03931876, 0.9955865
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
0.1597668, 0.553662, 0.08795948, 0.2324229, 0.8404866, 0.4894504,
0.1512509, 0.5560169, 0.08795948, 0.2324229, 0.8404866, 0.4894504,
0.1500983, 0.5518488, 0.09566429, 0.2324229, 0.8404866, 0.4894504,
0.1586142, 0.549494, 0.09566429, 0.2324229, 0.8404866, 0.4894504,
0.0572018, 0.1827641, -0.1280284, 0.2324219, 0.840488, 0.4894487,
0.04868595, 0.185119, -0.1280284, 0.2324219, 0.840488, 0.4894487,
0.04753335, 0.180951, -0.1203236, 0.2324219, 0.840488, 0.4894487,
0.0560492, 0.1785961, -0.1203236, 0.2324219, 0.840488, 0.4894487,
0.1597668, 0.553662, 0.08795948, -0.1304529, -0.4717431, 0.8720325,
0.1512509, 0.5560169, 0.08795948, -0.1304529, -0.4717431, 0.8720325,
0.04868595, 0.185119, -0.1280284, -0.1304529, -0.4717431, 0.8720325,
0.0572018, 0.1827641, -0.1280284, -0.1304529, -0.4717431, 0.8720325,
0.1512509, 0.5560169, 0.08795948, 0.9638271, -0.2665284, -4.329383e-07,
0.1500983, 0.5518488, 0.09566429, 0.9638271, -0.2665284, -4.329383e-07,
0.04753335, 0.180951, -0.1203236, 0.9638271, -0.2665284, -4.329383e-07,
0.04868595, 0.185119, -0.1280284, 0.9638271, -0.2665284, -4.329383e-07,
0.1500983, 0.5518488, 0.09566429, 0.1304498, 0.4717439, -0.8720325,
0.1586142, 0.549494, 0.09566429, 0.1304498, 0.4717439, -0.8720325,
0.0560492, 0.1785961, -0.1203236, 0.1304498, 0.4717439, -0.8720325,
0.04753335, 0.180951, -0.1203236, 0.1304498, 0.4717439, -0.8720325,
0.1586142, 0.549494, 0.09566429, -0.9638269, 0.2665292, -1.134601e-06,
0.1597668, 0.553662, 0.08795948, -0.9638269, 0.2665292, -1.134601e-06,
0.0572018, 0.1827641, -0.1280284, -0.9638269, 0.2665292, -1.134601e-06,
0.0560492, 0.1785961, -0.1203236, -0.9638269, 0.2665292, -1.134601e-06,
0.1557533, 0.5529094, 0.09115786, 0.2324076, 0.8404896, 0.4894529,
0.1543075, 0.5533091, 0.09115786, 0.2324076, 0.8404896, 0.4894529,
0.1541118, 0.5526015, 0.09246591, 0.2324076, 0.8404896, 0.4894529,
0.1555576, 0.5522017, 0.09246591, 0.2324076, 0.8404896, 0.4894529,
0.1557533, 0.5529094, 0.09115786, -0.9840691, -0.04555803, -0.1718502,
0.1555576, 0.5522017, 0.09246591, -0.9840691, -0.04555803, -0.1718502,
0.1553974, 0.5544364, 0.09279078, -0.9840691, -0.04555803, -0.1718502,
0.1553974, 0.5544364, 0.09279078, -0.9840691, -0.04555803, -0.1718502,
0.1557533, 0.5529094, 0.09115786, 0.2037453, 0.7368339, -0.6446422,
0.1543075, 0.5533091, 0.09115786, 0.2037453, 0.7368339, -0.6446422,
0.1553974, 0.5544364, 0.09279078, 0.2037453, 0.7368339, -0.6446422,
0.1553974, 0.5544364, 0.09279078, 0.2037453, 0.7368339, -0.6446422,
0.1543075, 0.5533091, 0.09115786, -0.8208474, 0.5446746, 0.1718695,
0.1541118, 0.5526015, 0.09246591, -0.8208474, 0.5446746, 0.1718695,
0.1553974, 0.5544364, 0.09279078, -0.8208474, 0.5446746, 0.1718695,
0.1553974, 0.5544364, 0.09279078, -0.8208474, 0.5446746, 0.1718695,
0.1541118, 0.5526015, 0.09246591, -0.04053591, -0.1465959, 0.9883655,
0.1555576, 0.5522017, 0.09246591, -0.04053591, -0.1465959, 0.9883655,
0.1553974, 0.5544364, 0.09279078, -0.04053591, -0.1465959, 0.9883655,
0.1553974, 0.5544364, 0.09279078, -0.04053591, -0.1465959, 0.9883655
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
0.03284436, 0.2690314, -0.6948892, -0.04333666, 0.156231, -0.9867693,
0.02419445, 0.2666321, -0.6948892, -0.04333666, 0.156231, -0.9867693,
0.02182681, 0.2751675, -0.6934339, -0.04333666, 0.156231, -0.9867693,
0.03047673, 0.2775669, -0.6934339, -0.04333666, 0.156231, -0.9867693,
0.05787635, 0.1787895, -0.1249036, -0.04333602, 0.1562287, -0.9867698,
0.04922644, 0.1763901, -0.1249036, -0.04333602, 0.1562287, -0.9867698,
0.0468588, 0.1849256, -0.1234483, -0.04333602, 0.1562287, -0.9867698,
0.05550871, 0.187325, -0.1234483, -0.04333602, 0.1562287, -0.9867698,
0.03284436, 0.2690314, -0.6948892, -0.2637591, 0.9508658, 0.1621276,
0.02419445, 0.2666321, -0.6948892, -0.2637591, 0.9508658, 0.1621276,
0.04922644, 0.1763901, -0.1249036, -0.2637591, 0.9508658, 0.1621276,
0.05787635, 0.1787895, -0.1249036, -0.2637591, 0.9508658, 0.1621276,
0.02419445, 0.2666321, -0.6948892, 0.9636149, 0.2672948, 0,
0.02182681, 0.2751675, -0.6934339, 0.9636149, 0.2672948, 0,
0.0468588, 0.1849256, -0.1234483, 0.9636149, 0.2672948, 0,
0.04922644, 0.1763901, -0.1249036, 0.9636149, 0.2672948, 0,
0.02182681, 0.2751675, -0.6934339, 0.2637591, -0.9508658, -0.1621276,
0.03047673, 0.2775669, -0.6934339, 0.2637591, -0.9508658, -0.1621276,
0.05550871, 0.187325, -0.1234483, 0.2637591, -0.9508658, -0.1621276,
0.0468588, 0.1849256, -0.1234483, 0.2637591, -0.9508658, -0.1621276,
0.03047673, 0.2775669, -0.6934339, -0.9636149, -0.2672947, -2.806491e-09,
0.03284436, 0.2690314, -0.6948892, -0.9636149, -0.2672947, -2.806491e-09,
0.05787635, 0.1787895, -0.1249036, -0.9636149, -0.2672947, -2.806491e-09,
0.05550871, 0.187325, -0.1234483, -0.9636149, -0.2672947, -2.806491e-09,
0.02825612, 0.2715868, -0.6942831, -0.04333448, 0.156228, -0.9867699,
0.02681069, 0.2711859, -0.6942831, -0.04333448, 0.156228, -0.9867699,
0.02641506, 0.2726122, -0.6940399, -0.04333448, 0.156228, -0.9867699,
0.02786048, 0.2730131, -0.6940399, -0.04333448, 0.156228, -0.9867699,
0.02825612, 0.2715868, -0.6942831, -0.8870471, -0.3051279, 0.3464745,
0.02786048, 0.2730131, -0.6940399, -0.8870471, -0.3051279, 0.3464745,
0.02724892, 0.2724119, -0.6961351, -0.8870471, -0.3051279, 0.3464745,
0.02724892, 0.2724119, -0.6961351, -0.8870471, -0.3051279, 0.3464745,
0.02825612, 0.2715868, -0.6942831, 0.2317436, -0.8354743, -0.4982748,
0.02681069, 0.2711859, -0.6942831, 0.2317436, -0.8354743, -0.4982748,
0.02724892, 0.2724119, -0.6961351, 0.2317436, -0.8354743, -0.4982748,
0.02724892, 0.2724119, -0.6961351, 0.2317436, -0.8354743, -0.4982748,
0.02681069, 0.2711859, -0.6942831, -0.9174775, -0.1954246, -0.346474,
0.02641506, 0.2726122, -0.6940399, -0.9174775, -0.1954246, -0.346474,
0.02724892, 0.2724119, -0.6961351, -0.9174775, -0.1954246, -0.346474,
0.02724892, 0.2724119, -0.6961351, -0.9174775, -0.1954246, -0.346474,
0.02641506, 0.2726122, -0.6940399, -0.2621922, 0.9451765, -0.1946706,
0.02786048, 0.2730131, -0.6940399, -0.2621922, 0.9451765, -0.1946706,
0.02724892, 0.2724119, -0.6961351, -0.2621922, 0.9451765, -0.1946706,
0.02724892, 0.2724119, -0.6961351, -0.2621922, 0.9451765, -0.1946706
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
-0.1995965, 0.07939412, 0.33999, -0.458538, -0.1952686, 0.8669561,
-0.1961104, 0.07120781, 0.33999, -0.458538, -0.1952686, 0.8669561,
-0.1890132, 0.07423014, 0.3444245, -0.458538, -0.1952686, 0.8669561,
-0.1924993, 0.08241645, 0.3444245, -0.458538, -0.1952686, 0.8669561,
0.04707592, 0.1844395, -0.1263932, -0.4585373, -0.1952681, 0.8669567,
0.05056206, 0.1762532, -0.1263932, -0.4585373, -0.1952681, 0.8669567,
0.05765923, 0.1792756, -0.1219587, -0.4585373, -0.1952681, 0.8669567,
0.05417309, 0.1874619, -0.1219587, -0.4585373, -0.1952681, 0.8669567,
-0.1995965, 0.07939412, 0.33999, 0.7976424, 0.3396764, 0.4983838,
-0.1961104, 0.07120781, 0.33999, 0.7976424, 0.3396764, 0.4983838,
0.05056206, 0.1762532, -0.1263932, 0.7976424, 0.3396764, 0.4983838,
0.04707592, 0.1844395, -0.1263932, 0.7976424, 0.3396764, 0.4983838,
-0.1961104, 0.07120781, 0.33999, -0.3918028, 0.9200492, 3.648201e-08,
-0.1890132, 0.07423014, 0.3444245, -0.3918028, 0.9200492, 3.648201e-08,
0.05765923, 0.1792756, -0.1219587, -0.3918028, 0.9200492, 3.648201e-08,
0.05056206, 0.1762532, -0.1263932, -0.3918028, 0.9200492, 3.648201e-08,
-0.1890132, 0.07423014, 0.3444245, -0.7976424, -0.3396764, -0.4983838,
-0.1924993, 0.08241645, 0.3444245, -0.7976424, -0.3396764, -0.4983838,
0.05417309, 0.1874619, -0.1219587, -0.7976424, -0.3396764, -0.4983838,
0.05765923, 0.1792756, -0.1219587, -0.7976424, -0.3396764, -0.4983838,
-0.1924993, 0.08241645, 0.3444245, 0.3918027, -0.9200492, -3.648201e-08,
-0.1995965, 0.07939412, 0.33999, 0.3918027, -0.9200492, -3.648201e-08,
0.04707592, 0.1844395, -0.1263932, 0.3918027, -0.9200492, -3.648201e-08,
0.05417309, 0.1874619, -0.1219587, 0.3918027, -0.9200492, -3.648201e-08,
-0.1951969, 0.07724741, 0.3418335, -0.4585291, -0.1952631, 0.8669622,
-0.1946092, 0.07586733, 0.3418335, -0.4585291, -0.1952631, 0.8669622,
-0.1934128, 0.07637685, 0.342581, -0.4585291, -0.1952631, 0.8669622,
-0.1940005, 0.07775692, 0.342581, -0.4585291, -0.1952631, 0.8669622,
-0.1951969, 0.07724741, 0.3418335, 0.5278575, -0.792905, -0.3044143,
-0.1940005, 0.07775692, 0.342581, 0.5278575, -0.792905, -0.3044143,
-0.1952219, 0.07642159, 0.3439412, 0.5278575, -0.792905, -0.3044143,
-0.1952219, 0.07642159, 0.3439412, 0.5278575, -0.792905, -0.3044143,
-0.1951969, 0.07724741, 0.3418335, -0.9078602, -0.3866092, -0.1622435,
-0.1946092, 0.07586733, 0.3418335, -0.9078602, -0.3866092, -0.1622435,
-0.1952219, 0.07642159, 0.3439412, -0.9078602, -0.3866092, -0.1622435,
-0.1952219, 0.07642159, 0.3439412, -0.9078602, -0.3866092, -0.1622435,
-0.1946092, 0.07586733, 0.3418335, 0.2058544, -0.9300311, 0.3044108,
-0.1934128, 0.07637685, 0.342581, 0.2058544, -0.9300311, 0.3044108,
-0.1952219, 0.07642159, 0.3439412, 0.2058544, -0.9300311, 0.3044108,
-0.1952219, 0.07642159, 0.3439412, 0.2058544, -0.9300311, 0.3044108,
-0.1934128, 0.07637685, 0.342581, 0.5858489, 0.2494895, 0.7710615,
-0.1940005, 0.07775692, 0.342581, 0.5858489, 0.2494895, 0.7710615,
-0.1952219, 0.07642159, 0.3439412, 0.5858489, 0.2494895, 0.7710615,
-0.1952219, 0.07642159, 0.3439412, 0.5858489, 0.2494895, 0.7710615
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
-0.209662, -0.1574727, -0.3117381, -0.5553147, -0.7328323, -0.3931697,
-0.203441, -0.1621867, -0.3117381, -0.5553147, -0.7328323, -0.3931697,
-0.2052944, -0.1646326, -0.3045614, -0.5553147, -0.7328323, -0.3931697,
-0.2115154, -0.1599186, -0.3045614, -0.5553147, -0.7328323, -0.3931697,
0.0501838, 0.1854375, -0.1277643, -0.5553153, -0.7328318, -0.3931701,
0.05640477, 0.1807235, -0.1277643, -0.5553153, -0.7328318, -0.3931701,
0.05455135, 0.1782776, -0.1205876, -0.5553153, -0.7328318, -0.3931701,
0.04833038, 0.1829916, -0.1205876, -0.5553153, -0.7328318, -0.3931701,
-0.209662, -0.1574727, -0.3117381, -0.2374561, -0.3133638, 0.919466,
-0.203441, -0.1621867, -0.3117381, -0.2374561, -0.3133638, 0.919466,
0.05640477, 0.1807235, -0.1277643, -0.2374561, -0.3133638, 0.919466,
0.0501838, 0.1854375, -0.1277643, -0.2374561, -0.3133638, 0.919466,
-0.203441, -0.1621867, -0.3117381, -0.7970189, 0.6039543, -6.853045e-07,
-0.2052944, -0.1646326, -0.3045614, -0.7970189, 0.6039543, -6.853045e-07,
0.05455135, 0.1782776, -0.1205876, -0.7970189, 0.6039543, -6.853045e-07,
0.05640477, 0.1807235, -0.1277643, -0.7970189, 0.6039543, -6.853045e-07,
-0.2052944, -0.1646326, -0.3045614, 0.2374565, 0.3133636, -0.919466,
-0.2115154, -0.1599186, -0.3045614, 0.2374565, 0.3133636, -0.919466,
0.04833038, 0.1829916, -0.1205876, 0.2374565, 0.3133636, -0.919466,
0.05455135, 0.1782776, -0.1205876, 0.2374565, 0.3133636, -0.919466,
-0.2115154, -0.1599186, -0.3045614, 0.7970193, -0.6039538, -6.853048e-07,
-0.209662, -0.1574727, -0.3117381, 0.7970193, -0.6039538, -6.853048e-07,
0.0501838, 0.1854375, -0.1277643, 0.7970193, -0.6039538, -6.853048e-07,
0.04833038, 0.1829916, -0.1205876, 0.7970193, -0.6039538, -6.853048e-07,
-0.2078979, -0.1603647, -0.3088393, -0.5553117, -0.7328313, -0.3931758,
-0.2067023, -0.1612706, -0.3088393, -0.5553117, -0.7328313, -0.3931758,
-0.2070585, -0.1617407, -0.3074601, -0.5553117, -0.7328313, -0.3931758,
-0.208254, -0.1608347, -0.3074601, -0.5553117, -0.7328313, -0.3931758,
-0.2078979, -0.1603647, -0.3088393, 0.941258, -0.3081811, 0.1380496,
-0.208254, -0.1608347, -0.3074601, 0.941258, -0.3081811, 0.1380496,
-0.2085888, -0.1625183, -0.3089361, 0.941258, -0.3081811, 0.1380496,
-0.2085888, -0.1625183, -0.3089361, 0.941258, -0.3081811, 0.1380496,
-0.2078979, -0.1603647, -0.3088393, 0.02735256, 0.03609651, -0.9989738,
-0.2067023, -0.1612706, -0.3088393, 0.02735256, 0.03609651, -0.9989738,
-0.2085888, -0.1625183, -0.3089361, 0.02735256, 0.03609651, -0.9989738,
-0.2085888, -0.1625183, -0.3089361, 0.02735256, 0.03609651, -0.9989738,
-0.2067023, -0.1612706, -0.3088393, 0.5512916, -0.8228109, -0.1380575,
-0.2070585, -0.1617407, -0.3074601, 0.5512916, -0.8228109, -0.1380575,
-0.2085888, -0.1625183, -0.3089361, 0.5512916, -0.8228109, -0.1380575,
-0.2085888, -0.1625183, -0.3089361, 0.5512916, -0.8228109, -0.1380575,
-0.2070585, -0.1617407, -0.3074601, -0.4173188, -0.5507255, 0.7228737,
-0.208254, -0.1608347, -0.3074601, -0.4173188, -0.5507255, 0.7228737,
-0.2085888, -0.1625183, -0.3089361, -0.4173188, -0.5507255, 0.7228737,
-0.2085888, -0.1625183, -0.3089361, -0.4173188, -0.5507255, 0.7228737
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
-0.1763757, 0.4388553, -0.5197207, -0.4466134, 0.4892667, -0.7491025,
-0.1827577, 0.4330297, -0.5197207, -0.4466134, 0.4892667, -0.7491025,
-0.1871216, 0.4378105, -0.5139965, -0.4466134, 0.4892667, -0.7491025,
-0.1807397, 0.4436361, -0.5139965, -0.4466134, 0.4892667, -0.7491025,
0.05774052, 0.18238, -0.1270381, -0.4466127, 0.4892669, -0.7491029,
0.05135858, 0.1765544, -0.1270381, -0.4466127, 0.4892669, -0.7491029,
0.04699463, 0.1813351, -0.1213138, -0.4466127, 0.4892669, -0.7491029,
0.05337657, 0.1871607, -0.1213138, -0.4466127, 0.4892669, -0.7491029,
-0.1763757, 0.4388553, -0.5197207, -0.5050304, 0.5532627, 0.6624536,
-0.1827577, 0.4330297, -0.5197207, -0.5050304, 0.5532627, 0.6624536,
0.05135858, 0.1765544, -0.1270381, -0.5050304, 0.5532627, 0.6624536,
0.05774052, 0.18238, -0.1270381, -0.5050304, 0.5532627, 0.6624536,
-0.1827577, 0.4330297, -0.5197207, 0.7385681, 0.674179, -1.285041e-06,
-0.1871216, 0.4378105, -0.5139965, 0.7385681, 0.674179, -1.285041e-06,
0.04699463, 0.1813351, -0.1213138, 0.7385681, 0.674179, -1.285041e-06,
0.05135858, 0.1765544, -0.1270381, 0.7385681, 0.674179, -1.285041e-06,
-0.1871216, 0.4378105, -0.5139965, 0.505031, -0.553262, -0.6624535,
-0.1807397, 0.4436361, -0.5139965, 0.505031, -0.553262, -0.6624535,
0.05337657, 0.1871607, -0.1213138, 0.505031, -0.553262, -0.6624535,
0.04699463, 0.1813351, -0.1213138, 0.505031, -0.553262, -0.6624535,
-0.1807397, 0.4436361, -0.5139965, -0.7385674, -0.6741796, 4.626144e-07,
-0.1763757, 0.4388553, -0.5197207, -0.7385674, -0.6741796, 4.626144e-07,
0.05774052, 0.18238, -0.1270381, -0.7385674, -0.6741796, 4.626144e-07,
0.05337657, 0.1871607, -0.1213138, -0.7385674, -0.6741796, 4.626144e-07,
-0.180816, 0.4384236, -0.5173554, -0.4466132, 0.4892568, -0.7491091,
-0.1819238, 0.4374123, -0.5173554, -0.4466132, 0.4892568, -0.7491091,
-0.1826814, 0.4382422, -0.5163618, -0.4466132, 0.4892568, -0.7491091,
-0.1815735, 0.4392535, -0.5163618, -0.4466132, 0.4892568, -0.7491091,
-0.180816, 0.4384236, -0.5173554, -0.5347236, -0.8030511, 0.2630203,
-0.1815735, 0.4392535, -0.5163618, -0.5347236, -0.8030511, 0.2630203,
-0.1826419, 0.4393114, -0.5183568, -0.5347236, -0.8030511, 0.2630203,
-0.1826419, 0.4393114, -0.5183568, -0.5347236, -0.8030511, 0.2630203,
-0.180816, 0.4384236, -0.5173554, 0.3160601, -0.3462382, -0.8833035,
-0.1819238, 0.4374123, -0.5173554, 0.3160601, -0.3462382, -0.8833035,
-0.1826419, 0.4393114, -0.5183568, 0.3160601, -0.3462382, -0.8833035,
-0.1826419, 0.4393114, -0.5183568, 0.3160601, -0.3462382, -0.8833035,
-0.1819238, 0.4374123, -0.5173554, -0.8483594, -0.4594588, -0.2630285,
-0.1826814, 0.4382422, -0.5163618, -0.8483594, -0.4594588, -0.2630285,
-0.1826419, 0.4393114, -0.5183568, -0.8483594, -0.4594588, -0.2630285,
-0.1826419, 0.4393114, -0.5183568, -0.8483594, -0.4594588, -0.2630285,
-0.1826814, 0.4382422, -0.5163618, -0.6296868, 0.689831, 0.3572502,
-0.1815735, 0.4392535, -0.5163618, -0.6296868, 0.689831, 0.3572502,
-0.1826419, 0.4393114, -0.5183568, -0.6296868, 0.689831, 0.3572502,
-0.1826419, 0.4393114, -0.5183568, -0.6296868, 0.689831, 0.3572502
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
0.05086758, 0.1772552, -0.09717596, 0, -0, 1,
0.06007234, 0.1772552, -0.09717596, 0, -0, 1,
0.06007234, 0.1864599, -0.09717596, 0, -0, 1,
0.05086758, 0.1864599, -0.09717596, 0, -0, 1,
0.05086758, 0.1772552, -0.08597119, 0, -0, 1,
0.06007234, 0.1772552, -0.08597119, 0, -0, 1,
0.06007234, 0.1864599, -0.08597119, 0, -0, 1,
0.05086758, 0.1864599, -0.08597119, 0, -0, 1,
0.05086758, 0.1772552, -0.09717596, 0, -0.9999999, 0,
0.06007234, 0.1772552, -0.09717596, 0, -0.9999999, 0,
0.06007234, 0.1772552, -0.08597119, 0, -0.9999999, 0,
0.05086758, 0.1772552, -0.08597119, 0, -0.9999999, 0,
0.06007234, 0.1772552, -0.09717596, 1, 0, -0,
0.06007234, 0.1864599, -0.09717596, 1, 0, -0,
0.06007234, 0.1864599, -0.08597119, 1, 0, -0,
0.06007234, 0.1772552, -0.08597119, 1, 0, -0,
0.06007234, 0.1864599, -0.09717596, 0, 0.9999999, 0,
0.05086758, 0.1864599, -0.09717596, 0, 0.9999999, 0,
0.05086758, 0.1864599, -0.08597119, 0, 0.9999999, 0,
0.06007234, 0.1864599, -0.08597119, 0, 0.9999999, 0,
0.05086758, 0.1772552, -0.09717596, 1, 0, -0,
0.05086758, 0.1864599, -0.09717596, 1, 0, -0,
0.05086758, 0.1864599, -0.07676642, 1, 0, -0,
0.05086758, 0.1772552, -0.07676642, 1, 0, -0,
0.05386757, 0.1772552, -0.124176, 0, 0, -1,
0.04466281, 0.1772552, -0.124176, 0, 0, -1,
0.04466281, 0.1864599, -0.124176, 0, 0, -1,
0.05386757, 0.1864599, -0.124176, 0, 0, -1,
0.05386757, 0.1772552, -0.08597119, 0, 0, -1,
0.04466281, 0.1772552, -0.08597119, 0, 0, -1,
0.04466281, 0.1864599, -0.08597119, 0, 0, -1,
0.05386757, 0.1864599, -0.08597119, 0, 0, -1,
0.05386757, 0.1772552, -0.124176, 0, 1, 0,
0.04466281, 0.1772552, -0.124176, 0, 1, 0,
0.04466281, 0.1772552, -0.08597119, 0, 1, 0,
0.05386757, 0.1772552, -0.08597119, 0, 1, 0,
0.04466281, 0.1772552, -0.124176, 1, 0, -0,
0.04466281, 0.1864599, -0.124176, 1, 0, -0,
0.04466281, 0.1864599, -0.08597119, 1, 0, -0,
0.04466281, 0.1772552, -0.08597119, 1, 0, -0,
0.04466281, 0.1864599, -0.124176, 0, -1, 0,
0.05386757, 0.1864599, -0.124176, 0, -1, 0,
0.05386757, 0.1864599, -0.08597119, 0, -1, 0,
0.04466281, 0.1864599, -0.08597119, 0, -1, 0,
0.05386757, 0.1772552, -0.124176, 1, 0, -0,
0.05386757, 0.1864599, -0.124176, 1, 0, -0,
0.05386757, 0.1864599, -0.07676642, 1, 0, -0,
0.05386757, 0.1772552, -0.07676642, 1, 0, -0,
0.05086758, 0.1772552, -0.08597119, 0, -1, 0,
0.05386757, 0.1772552, -0.08597119, 0, -1, 0,
0.05386757, 0.1772552, -0.07676642, 0, -1, 0,
0.05086758, 0.1772552, -0.07676642, 0, -1, 0,
0.05086758, 0.1772552, -0.07676642, 0, 0, -1,
0.05086758, 0.1864599, -0.07676642, 0, 0, -1,
0.05386757, 0.1864599, -0.07676642, 0, 0, -1,
0.05386757, 0.1772552, -0.07676642, 0, 0, -1,
0.05086758, 0.1864599, -0.08597119, 0, -1, 0,
0.05386757, 0.1864599, -0.08597119, 0, -1, 0,
0.05386757, 0.1864599, -0.07676642, 0, -1, 0,
0.05086758, 0.1864599, -0.07676642, 0, -1, 0,
0.06007234, 0.1772552, -0.08597119, 0, 0, 1,
0.06007234, 0.1864599, -0.08597119, 0, 0, 1,
0.04466281, 0.1864599, -0.08597119, 0, 0, 1,
0.04466281, 0.1772552, -0.08597119, 0, 0, 1,
0.05471996, 0.1811075, -0.09717596, 0, -0, 1,
0.05621996, 0.1811075, -0.09717596, 0, -0, 1,
0.05621996, 0.1826075, -0.09717596, 0, -0, 1,
0.05471996, 0.1826075, -0.09717596, 0, -0, 1,
0.05471996, 0.1811075, -0.09717596, 0, 0.9363285, 0.3511249,
0.05621996, 0.1811075, -0.09717596, 0, 0.9363285, 0.3511249,
0.05546996, 0.1818575, -0.09917596, 0, 0.9363285, 0.3511249,
0.05546996, 0.1818575, -0.09917596, 0, 0.9363285, 0.3511249,
0.05621996, 0.1811075, -0.09717596, -0.9363292, 0, 0.3511235,
0.05621996, 0.1826075, -0.09717596, -0.9363292, 0, 0.3511235,
0.05546996, 0.1818575, -0.09917596, -0.9363292, 0, 0.3511235,
0.05546996, 0.1818575, -0.09917596, -0.9363292, 0, 0.3511235,
0.05621996, 0.1826075, -0.09717596, 0, -0.9363285, 0.3511249,
0.05471996, 0.1826075, -0.09717596, 0, -0.9363285, 0.3511249,
0.05546996, 0.1818575, -0.09917596, 0, -0.9363285, 0.3511249,
0.05546996, 0.1818575, -0.09917596, 0, -0.9363285, 0.3511249,
0.05471996, 0.1811075, -0.09717596, -0.9363298, -0, -0.3511219,
0.05471996, 0.1826075, -0.09717596, -0.9363298, -0, -0.3511219,
0.05546996, 0.1818575, -0.09917596, -0.9363298, -0, -0.3511219,
0.05546996, 0.1818575, -0.09917596, -0.9363298, -0, -0.3511219
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
0.1638432, -0.2166702, -0.03897703, 0.2719075, -0.939045, 0.2103828,
0.1710787, -0.2145751, -0.03897703, 0.2719075, -0.939045, 0.2103828,
0.170638, -0.2130529, -0.03161281, 0.2719075, -0.939045, 0.2103828,
0.1634024, -0.215148, -0.03161281, 0.2719075, -0.939045, 0.2103828,
0.04897017, 0.1800489, -0.1278581, 0.2719072, -0.9390446, 0.2103847,
0.05620576, 0.182144, -0.1278581, 0.2719072, -0.9390446, 0.2103847,
0.05576498, 0.1836662, -0.1204939, 0.2719072, -0.9390446, 0.2103847,
0.04852939, 0.1815711, -0.1204939, 0.2719072, -0.9390446, 0.2103847,
0.1638432, -0.2166702, -0.03897703, -0.05851454, 0.2020827, 0.9776189,
0.1710787, -0.2145751, -0.03897703, -0.05851454, 0.2020827, 0.9776189,
0.05620576, 0.182144, -0.1278581, -0.05851454, 0.2020827, 0.9776189,
0.04897017, 0.1800489, -0.1278581, -0.05851454, 0.2020827, 0.9776189,
0.1710787, -0.2145751, -0.03897703, -0.9605428, -0.2781323, 6.401687e-08,
0.170638, -0.2130529, -0.03161281, -0.9605428, -0.2781323, 6.401687e-08,
0.05576498, 0.1836662, -0.1204939, -0.9605428, -0.2781323, 6.401687e-08,
0.05620576, 0.182144, -0.1278581, -0.9605428, -0.2781323, 6.401687e-08,
0.170638, -0.2130529, -0.03161281, 0.05851454, -0.2020826, -0.9776189,
0.1634024, -0.215148, -0.03161281, 0.05851454, -0.2020826, -0.9776189,
0.04852939, 0.1815711, -0.1204939, 0.05851454, -0.2020826, -0.9776189,
0.05576498, 0.1836662, -0.1204939, 0.05851454, -0.2020826, -0.9776189,
0.1634024, -0.215148, -0.03161281, 0.9605428, 0.2781323, -6.401687e-08,
0.1638432, -0.2166702, -0.03897703, 0.9605428, 0.2781323, -6.401687e-08,
0.04897017, 0.1800489, -0.1278581, 0.9605428, 0.2781323, -6.401687e-08,
0.04852939, 0.1815711, -0.1204939, 0.9605428, 0.2781323, -6.401687e-08,
0.166564, -0.2152217, -0.03602814, 0.2719084, -0.9390446, 0.2103831,
0.1680049, -0.2148045, -0.03602814, 0.2719084, -0.9390446, 0.2103831,
0.1679171, -0.2145014, -0.03456171, 0.2719084, -0.9390446, 0.2103831,
0.1664763, -0.2149186, -0.03456171, 0.2719084, -0.9390446, 0.2103831,
0.166564, -0.2152217, -0.03602814, 0.8039095, 0.5901453, -0.07387746,
0.1664763, -0.2149186, -0.03456171, 0.8039095, 0.5901453, -0.07387746,
0.1677844, -0.2167397, -0.03487416, 0.8039095, 0.5901453, -0.07387746,
0.1677844, -0.2167397, -0.03487416, 0.8039095, 0.5901453, -0.07387746,
0.166564, -0.2152217, -0.03602814, 0.1502624, -0.5189362, -0.8415025,
0.1680049, -0.2148045, -0.03602814, 0.1502624, -0.5189362, -0.8415025,
0.1677844, -0.2167397, -0.03487416, 0.1502624, -0.5189362, -0.8415025,
0.1677844, -0.2167397, -0.03487416, 0.1502624, -0.5189362, -0.8415025,
0.1680049, -0.2148045, -0.03602814, 0.9948571, -0.06929323, 0.07387713,
0.1679171, -0.2145014, -0.03456171, 0.9948571, -0.06929323, 0.07387713,
0.1677844, -0.2167397, -0.03487416, 0.9948571, -0.06929323, 0.07387713,
0.1677844, -0.2167397, -0.03487416, 0.9948571, -0.06929323, 0.07387713,
0.1679171, -0.2145014, -0.03456171, 0.0406835, -0.1405054, 0.9892437,
0.1664763, -0.2149186, -0.03456171, 0.0406835, -0.1405054, 0.9892437,
0.1677844, -0.2167397, -0.03487416, 0.0406835, -0.1405054, 0.9892437,
0.1677844, -0.2167397, -0.03487416, 0.0406835, -0.1405054, 0.9892437
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
-0.1846547, 0.06073971, -0.6232836, -0.4213246, -0.2237292, -0.8788805,
-0.1807246, 0.05333843, -0.6232836, -0.4213246, -0.2237292, -0.8788805,
-0.1872294, 0.04988428, -0.6192859, -0.4213246, -0.2237292, -0.8788805,
-0.1911596, 0.05728556, -0.6192859, -0.4213246, -0.2237292, -0.8788805,
0.0536549, 0.1872853, -0.1261748, -0.4213262, -0.2237298, -0.8788795,
0.05758508, 0.179884, -0.1261748, -0.4213262, -0.2237298, -0.8788795,
0.05108025, 0.1764298, -0.1221771, -0.4213262, -0.2237298, -0.8788795,
0.04715008, 0.1838311, -0.1221771, -0.4213262, -0.2237298, -0.8788795,
-0.1846547, 0.06073971, -0.6232836, -0.7762278, -0.4121878, 0.4770447,
-0.1807246, 0.05333843, -0.6232836, -0.7762278, -0.4121878, 0.4770447,
0.05758508, 0.179884, -0.1261748, -0.7762278, -0.4121878, 0.4770447,
0.0536549, 0.1872853, -0.1261748, -0.7762278, -0.4121878, 0.4770447,
-0.1807246, 0.05333843, -0.6232836, -0.4689924, 0.8832022, 2.210472e-07,
-0.1872294, 0.04988428, -0.6192859, -0.4689924, 0.8832022, 2.210472e-07,
0.05108025, 0.1764298, -0.1221771, -0.4689924, 0.8832022, 2.210472e-07,
0.05758508, 0.179884, -0.1261748, -0.4689924, 0.8832022, 2.210472e-07,
-0.1872294, 0.04988428, -0.6192859, 0.7762278, 0.4121878, -0.4770446,
-0.1911596, 0.05728556, -0.6192859, 0.7762278, 0.4121878, -0.4770446,
0.04715008, 0.1838311, -0.1221771, 0.7762278, 0.4121878, -0.4770446,
0.05108025, 0.1764298, -0.1221771, 0.7762278, 0.4121878, -0.4770446,
-0.1911596, 0.05728556, -0.6192859, 0.4689924, -0.8832022, -2.333276e-07,
-0.1846547, 0.06073971, -0.6232836, 0.4689924, -0.8832022, -2.333276e-07,
0.0536549, 0.1872853, -0.1261748, 0.4689924, -0.8832022, -2.333276e-07,
0.04715008, 0.1838311, -0.1221771, 0.4689924, -0.8832022, -2.333276e-07,
-0.1857116, 0.05628354, -0.6216425, -0.4213235, -0.2237271, -0.8788816,
-0.1850082, 0.05495873, -0.6216425, -0.4213235, -0.2237271, -0.8788816,
-0.1861725, 0.05434045, -0.620927, -0.4213235, -0.2237271, -0.8788816,
-0.186876, 0.05566525, -0.620927, -0.4213235, -0.2237271, -0.8788816,
-0.1857116, 0.05628354, -0.6216425, 0.5870699, -0.7484114, 0.3085923,
-0.186876, 0.05566525, -0.620927, 0.5870699, -0.7484114, 0.3085923,
-0.1867847, 0.05486453, -0.6230425, 0.5870699, -0.7484114, 0.3085923,
-0.1867847, 0.05486453, -0.6230425, 0.5870699, -0.7484114, 0.3085923,
-0.1857116, 0.05628354, -0.6216425, 0.5788733, 0.3073877, -0.7552606,
-0.1850082, 0.05495873, -0.6216425, 0.5788733, 0.3073877, -0.7552606,
-0.1867847, 0.05486453, -0.6230425, 0.5788733, 0.3073877, -0.7552606,
-0.1867847, 0.05486453, -0.6230425, 0.5788733, 0.3073877, -0.7552606,
-0.1850082, 0.05495873, -0.6216425, 0.2911992, -0.905523, -0.3085954,
-0.1861725, 0.05434045, -0.620927, 0.2911992, -0.905523, -0.3085954,
-0.1867847, 0.05486453, -0.6230425, 0.2911992, -0.905523, -0.3085954,
-0.1867847, 0.05486453, -0.6230425, 0.2911992, -0.905523, -0.3085954,
-0.1861725, 0.05434045, -0.620927, -0.8747436, -0.4644979, 0.1380772,
-0.186876, 0.05566525, -0.620927, -0.8747436, -0.4644979, 0.1380772,
-0.1867847, 0.05486453, -0.6230425, -0.8747436, -0.4644979, 0.1380772,
-0.1867847, 0.05486453, -0.6230425, -0.8747436, -0.4644979, 0.1380772
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
0.1859819, -0.02462951, 0.3345991, 0.2595371, -0.3857782, 0.8853336,
0.1932824, -0.01971797, 0.3345991, 0.2595371, -0.3857782, 0.8853336,
0.1889341, -0.01325456, 0.3386903, 0.2595371, -0.3857782, 0.8853336,
0.1816335, -0.01816609, 0.3386903, 0.2595371, -0.3857782, 0.8853336,
0.05089147, 0.1761701, -0.1262215, 0.2595364, -0.3857775, 0.8853342,
0.05819202, 0.1810816, -0.1262215, 0.2595364, -0.3857775, 0.8853342,
0.05384368, 0.187545, -0.1221304, 0.2595364, -0.3857775, 0.8853342,
0.04654313, 0.1826335, -0.1221304, 0.2595364, -0.3857775, 0.8853342,
0.1859819, -0.02462951, 0.3345991, -0.4941905, 0.7345688, 0.4649564,
0.1932824, -0.01971797, 0.3345991, -0.4941905, 0.7345688, 0.4649564,
0.05819202, 0.1810816, -0.1262215, -0.4941905, 0.7345688, 0.4649564,
0.05089147, 0.1761701, -0.1262215, -0.4941905, 0.7345688, 0.4649564,
0.1932824, -0.01971797, 0.3345991, -0.8297089, -0.5581962, 2.796072e-07,
0.1889341, -0.01325456, 0.3386903, -0.8297089, -0.5581962, 2.796072e-07,
0.05384368, 0.187545, -0.1221304, -0.8297089, -0.5581962, 2.796072e-07,
0.05819202, 0.1810816, -0.1262215, -0.8297089, -0.5581962, 2.796072e-07,
0.1889341, -0.01325456, 0.3386903, 0.4941905, -0.7345688, -0.4649564,
0.1816335, -0.01816609, 0.3386903, 0.4941905, -0.7345688, -0.4649564,
0.04654313, 0.1826335, -0.1221304, 0.4941905, -0.7345688, -0.4649564,
0.05384368, 0.187545, -0.1221304, 0.4941905, -0.7345688, -0.4649564,
0.1816335, -0.01816609, 0.3386903, 0.8297089, 0.5581962, -2.796072e-07,
0.1859819, -0.02462951, 0.3345991, 0.8297089, 0.5581962, -2.796072e-07,
0.05089147, 0.1761701, -0.1262215, 0.8297089, 0.5581962, -2.796072e-07,
0.04654313, 0.1826335, -0.1221304, 0.8297089, 0.5581962, -2.796072e-07,
0.1872063, -0.01991161, 0.336296, 0.2595353, -0.3857787, 0.885334,
0.1884509, -0.01907431, 0.336296, 0.2595353, -0.3857787, 0.885334,
0.1877096, -0.01797246, 0.3369934, 0.2595353, -0.3857787, 0.885334,
0.186465, -0.01880975, 0.3369934, 0.2595353, -0.3857787, 0.885334,
0.1872063, -0.01991161, 0.336296, 0.685755, 0.6581066, -0.3108629,
0.186465, -0.01880975, 0.3369934, 0.685755, 0.6581066, -0.3108629,
0.187977, -0.01971359, 0.3384154, 0.685755, 0.6581066, -0.3108629,
0.187977, -0.01971359, 0.3384154, 0.685755, 0.6581066, -0.3108629,
0.1872063, -0.01991161, 0.336296, 0.5538513, -0.8232563, -0.1244903,
0.1884509, -0.01907431, 0.336296, 0.5538513, -0.8232563, -0.1244903,
0.187977, -0.01971359, 0.3384154, 0.5538513, -0.8232563, -0.1244903,
0.187977, -0.01971359, 0.3384154, 0.5538513, -0.8232563, -0.1244903,
0.1884509, -0.01907431, 0.336296, 0.8680091, 0.3872005, 0.3108632,
0.1877096, -0.01797246, 0.3369934, 0.8680091, 0.3872005, 0.3108632,
0.187977, -0.01971359, 0.3384154, 0.8680091, 0.3872005, 0.3108632,
0.187977, -0.01971359, 0.3384154, 0.8680091, 0.3872005, 0.3108632,
0.1877096, -0.01797246, 0.3369934, -0.3715971, 0.5523444, 0.7462112,
0.186465, -0.01880975, 0.3369934, -0.3715971, 0.5523444, 0.7462112,
0.187977, -0.01971359, 0.3384154, -0.3715971, 0.5523444, 0.7462112,
0.187977, -0.01971359, 0.3384154, -0.3715971, 0.5523444, 0.7462112
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
-0.3726534, 0.3295841, 0.1679104, -0.7905995, 0.2658203, 0.5516266,
-0.3755676, 0.3209166, 0.1679104, -0.7905995, 0.2658203, 0.5516266,
-0.3707864, 0.3193091, 0.1755376, -0.7905995, 0.2658203, 0.5516266,
-0.3678722, 0.3279765, 0.1755376, -0.7905995, 0.2658203, 0.5516266,
0.05143408, 0.186995, -0.1279895, -0.7905988, 0.2658197, 0.5516278,
0.04851987, 0.1783276, -0.1279895, -0.7905988, 0.2658197, 0.5516278,
0.05330107, 0.17672, -0.1203624, -0.7905988, 0.2658197, 0.5516278,
0.05621528, 0.1853875, -0.1203624, -0.7905988, 0.2658197, 0.5516278,
-0.3726534, 0.3295841, 0.1679104, 0.5228642, -0.1758007, 0.8340907,
-0.3755676, 0.3209166, 0.1679104, 0.5228642, -0.1758007, 0.8340907,
0.04851987, 0.1783276, -0.1279895, 0.5228642, -0.1758007, 0.8340907,
0.05143408, 0.186995, -0.1279895, 0.5228642, -0.1758007, 0.8340907,
-0.3755676, 0.3209166, 0.1679104, 0.3186945, 0.9478575, 8.781429e-07,
-0.3707864, 0.3193091, 0.1755376, 0.3186945, 0.9478575, 8.781429e-07,
0.05330107, 0.17672, -0.1203624, 0.3186945, 0.9478575, 8.781429e-07,
0.04851987, 0.1783276, -0.1279895, 0.3186945, 0.9478575, 8.781429e-07,
-0.3707864, 0.3193091, 0.1755376, -0.5228642, 0.1758007, -0.8340907,
-0.3678722, 0.3279765, 0.1755376, -0.5228642, 0.1758007, -0.8340907,
0.05621528, 0.1853875, -0.1203624, -0.5228642, 0.1758007, -0.8340907,
0.05330107, 0.17672, -0.1203624, -0.5228642, 0.1758007, -0.8340907,
-0.3678722, 0.3279765, 0.1755376, -0.3186945, -0.9478575, -8.781429e-07,
-0.3726534, 0.3295841, 0.1679104, -0.3186945, -0.9478575, -8.781429e-07,
0.05143408, 0.186995, -0.1279895, -0.3186945, -0.9478575, -8.781429e-07,
0.05621528, 0.1853875, -0.1203624, -0.3186945, -0.9478575, -8.781429e-07,
-0.371873, 0.3252893, 0.1710984, -0.7905993, 0.265809, 0.5516324,
-0.3723511, 0.3238675, 0.1710984, -0.7905993, 0.265809, 0.5516324,
-0.3715667, 0.3236038, 0.1723496, -0.7905993, 0.265809, 0.5516324,
-0.3710887, 0.3250256, 0.1723496, -0.7905993, 0.265809, 0.5516324,
-0.371873, 0.3252893, 0.1710984, -0.02081455, -0.9808401, -0.193699,
-0.3710887, 0.3250256, 0.1723496, -0.02081455, -0.9808401, -0.193699,
-0.3733011, 0.3249782, 0.1728273, -0.02081455, -0.9808401, -0.193699,
-0.3733011, 0.3249782, 0.1728273, -0.02081455, -0.9808401, -0.193699,
-0.371873, 0.3252893, 0.1710984, -0.7671722, 0.2579325, -0.587297,
-0.3723511, 0.3238675, 0.1710984, -0.7671722, 0.2579325, -0.587297,
-0.3733011, 0.3249782, 0.1728273, -0.7671722, 0.2579325, -0.587297,
-0.3733011, 0.3249782, 0.1728273, -0.7671722, 0.2579325, -0.587297,
-0.3723511, 0.3238675, 0.1710984, -0.5759965, -0.7941718, 0.1936988,
-0.3715667, 0.3236038, 0.1723496, -0.5759965, -0.7941718, 0.1936988,
-0.3733011, 0.3249782, 0.1728273, -0.5759965, -0.7941718, 0.1936988,
-0.3733011, 0.3249782, 0.1728273, -0.5759965, -0.7941718, 0.1936988,
-0.3715667, 0.3236038, 0.1723496, 0.2119737, -0.07126959, 0.9746732,
-0.3710887, 0.3250256, 0.1723496, 0.2119737, -0.07126959, 0.9746732,
-0.3733011, 0.3249782, 0.1728273, 0.2119737, -0.07126959, 0.9746732,
-0.3733011, 0.3249782, 0.1728273, 0.2119737, -0.07126959, 0.9746732
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
-0.7997003, -0.8429009, 0.3938077, -0.8043277, -0.5934106, -0.03034474,
-0.7950962, -0.8491415, 0.3938077, -0.8043277, -0.5934106, -0.03034474,
-0.7952855, -0.8492812, 0.4015593, -0.8043277, -0.5934106, -0.03034474,
-0.7998896, -0.8430406, 0.4015593, -0.8043277, -0.5934106, -0.03034474,
-0.4316975, -0.5713995, 0.4076908, -0.8043277, -0.5934106, -0.03034474,
-0.4270934, -0.57764, 0.4076908, -0.8043277, -0.5934106, -0.03034474,
-0.4272827, -0.5777797, 0.4154423, -0.8043277, -0.5934106, -0.03034474,
-0.4318868, -0.5715392, 0.4154423, -0.8043277, -0.5934106, -0.03034474,
-0.7997003, -0.8429009, 0.3938077, -0.02441741, -0.01801448, 0.9995395,
-0.7950962, -0.8491415, 0.3938077, -0.02441741, -0.01801448, 0.9995395,
-0.4270934, -0.57764, 0.4076908, -0.02441741, -0.01801448, 0.9995395,
-0.4316975, -0.5713995, 0.4076908, -0.02441741, -0.01801448, 0.9995395,
-0.7950962, -0.8491415, 0.3938077, -0.593683, 0.804699, 6.449202e-07,
-0.7952855, -0.8492812, 0.4015593, -0.593683, 0.804699, 6.449202e-07,
-0.4272827, -0.5777797, 0.4154423, -0.593683, 0.804699, 6.449202e-07,
-0.4270934, -0.57764, 0.4076908, -0.593683, 0.804699, 6.449202e-07,
-0.7952855, -0.8492812, 0.4015593, 0.02441741, 0.01801448, -0.9995395,
-0.7998896, -0.8430406, 0.4015593, 0.02441741, 0.01801448, -0.9995395,
-0.4318868, -0.5715392, 0.4154423, 0.02441741, 0.01801448, -0.9995395,
-0.4272827, -0.5777797, 0.4154423, 0.02441741, 0.01801448, -0.9995395,
-0.7998896, -0.8430406, 0.4015593, 0.593683, -0.804699, -6.449202e-07,
-0.7997003, -0.8429009, 0.3938077, 0.593683, -0.804699, -6.449202e-07,
-0.4316975, -0.5713995, 0.4076908, 0.593683, -0.804699, -6.449202e-07,
-0.4318868, -0.5715392, 0.4154423, 0.593683, -0.804699, -6.449202e-07,
-0.7979199, -0.8454741, 0.3969339, -0.8043059, -0.5934387, -0.03037566,
-0.7970293, -0.8466811, 0.3969339, -0.8043059, -0.5934387, -0.03037566,
-0.797066, -0.8467081, 0.3984331, -0.8043059, -0.5934387, -0.03037566,
-0.7979565, -0.8455011, 0.3984331, -0.8043059, -0.5934387, -0.03037566,
-0.7979199, -0.8454741, 0.3969339, 0.8382915, -0.5451184, 0.01064532,
-0.7979565, -0.8455011, 0.3984331, 0.8382915, -0.5451184, 0.01064532,
-0.7991016, -0.8472779, 0.3976228, 0.8382915, -0.5451184, 0.01064532,
-0.7991016, -0.8472779, 0.3976228, 0.8382915, -0.5451184, 0.01064532,
-0.7979199, -0.8454741, 0.3969339, -0.2595478, -0.1915014, -0.9465528,
-0.7970293, -0.8466811, 0.3969339, -0.2595478, -0.1915014, -0.9465528,
-0.7991016, -0.8472779, 0.3976228, -0.2595478, -0.1915014, -0.9465528,
-0.7991016, -0.8472779, 0.3976228, -0.2595478, -0.1915014, -0.9465528,
-0.7970293, -0.8466811, 0.3969339, 0.2734595, -0.9618242, -0.01067387,
-0.797066, -0.8467081, 0.3984331, 0.2734595, -0.9618242, -0.01067387,
-0.7991016, -0.8472779, 0.3976228, 0.2734595, -0.9618242, -0.01067387,
-0.7991016, -0.8472779, 0.3976228, 0.2734595, -0.9618242, -0.01067387,
-0.797066, -0.8467081, 0.3984331, -0.3052789, -0.2252169, 0.925247,
-0.7979565, -0.8455011, 0.3984331, -0.3052789, -0.2252169, 0.925247,
-0.7991016, -0.8472779, 0.3976228, -0.3052789, -0.2252169, 0.925247,
-0.7991016, -0.8472779, 0.3976228, -0.3052789, -0.2252169, 0.925247
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
-0.5419647, -0.7674646, 0.8634176, -0.211204, -0.3799661, 0.9005657,
-0.5339199, -0.7719363, 0.8634176, -0.211204, -0.3799661, 0.9005657,
-0.5298928, -0.7646914, 0.8674188, -0.211204, -0.3799661, 0.9005657,
-0.5379376, -0.7602197, 0.8674188, -0.211204, -0.3799661, 0.9005657,
-0.435526, -0.5759761, 0.4095659, -0.211204, -0.3799661, 0.9005657,
-0.4274812, -0.5804479, 0.4095659, -0.211204, -0.3799661, 0.9005657,
-0.4234541, -0.573203, 0.4135671, -0.211204, -0.3799661, 0.9005657,
-0.431499, -0.5687312, 0.4135671, -0.211204, -0.3799661, 0.9005657,
-0.5419647, -0.7674646, 0.8634176, 0.4375303, 0.7871382, 0.4347192,
-0.5339199, -0.7719363, 0.8634176, 0.4375303, 0.7871382, 0.4347192,
-0.4274812, -0.5804479, 0.4095659, 0.4375303, 0.7871382, 0.4347192,
-0.435526, -0.5759761, 0.4095659, 0.4375303, 0.7871382, 0.4347192,
-0.5339199, -0.7719363, 0.8634176, -0.8740481, 0.4858394, 2.635241e-07,
-0.5298928, -0.7646914, 0.8674188, -0.8740481, 0.4858394, 2.635241e-07,
-0.4234541, -0.573203, 0.4135671, -0.8740481, 0.4858394, 2.635241e-07,
-0.4274812, -0.5804479, 0.4095659, -0.8740481, 0.4858394, 2.635241e-07,
-0.5298928, -0.7646914, 0.8674188, -0.4375303, -0.7871382, -0.4347192,
-0.5379376, -0.7602197, 0.8674188, -0.4375303, -0.7871382, -0.4347192,
-0.431499, -0.5687312, 0.4135671, -0.4375303, -0.7871382, -0.4347192,
-0.4234541, -0.573203, 0.4135671, -0.4375303, -0.7871382, -0.4347192,
-0.5379376, -0.7602197, 0.8674188, 0.8740481, -0.4858394, -2.635241e-07,
-0.5419647, -0.7674646, 0.8634176, 0.8740481, -0.4858394, -2.635241e-07,
-0.435526, -0.5759761, 0.4095659, 0.8740481, -0.4858394, -2.635241e-07,
-0.431499, -0.5687312, 0.4135671, 0.8740481, -0.4858394, -2.635241e-07,
-0.5369124, -0.766304, 0.8650922, -0.2112088, -0.3799582, 0.9005679,
-0.5356014, -0.7670327, 0.8650922, -0.2112088, -0.3799582, 0.9005679,
-0.5349451, -0.765852, 0.8657442, -0.2112088, -0.3799582, 0.9005679,
-0.5362561, -0.7651232, 0.8657442, -0.2112088, -0.3799582, 0.9005679,
-0.5369124, -0.766304, 0.8650922, 0.8925536, -0.321503, -0.3162024,
-0.5362561, -0.7651232, 0.8657442, 0.8925536, -0.321503, -0.3162024,
-0.5363512, -0.766838, 0.8672193, 0.8925536, -0.321503, -0.3162024,
-0.5363512, -0.766838, 0.8672193, 0.8925536, -0.321503, -0.3162024,
-0.5369124, -0.766304, 0.8650922, -0.4838463, -0.8704247, -0.09084954,
-0.5356014, -0.7670327, 0.8650922, -0.4838463, -0.8704247, -0.09084954,
-0.5363512, -0.766838, 0.8672193, -0.4838463, -0.8704247, -0.09084954,
-0.5363512, -0.766838, 0.8672193, -0.4838463, -0.8704247, -0.09084954,
-0.5356014, -0.7670327, 0.8650922, 0.7442321, -0.5883252, 0.3162152,
-0.5349451, -0.765852, 0.8657442, 0.7442321, -0.5883252, 0.3162152,
-0.5363512, -0.766838, 0.8672193, 0.7442321, -0.5883252, 0.3162152,
-0.5363512, -0.766838, 0.8672193, 0.7442321, -0.5883252, 0.3162152,
-0.5349451, -0.765852, 0.8657442, 0.33552, 0.6035903, 0.72326,
-0.5362561, -0.7651232, 0.8657442, 0.33552, 0.6035903, 0.72326,
-0.5363512, -0.766838, 0.8672193, 0.33552, 0.6035903, 0.72326,
-0.5363512, -0.766838, 0.8672193, 0.33552, 0.6035903, 0.72326
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
-0.5243152, -0.9723212, 0.3835195, -0.2195911, -0.9739727, -0.05618699,
-0.5145047, -0.974533, 0.3835195, -0.2195911, -0.9739727, -0.05618699,
-0.5146289, -0.9750842, 0.3935604, -0.2195911, -0.9739727, -0.05618699,
-0.5244395, -0.9728724, 0.3935604, -0.2195911, -0.9739727, -0.05618699,
-0.4343332, -0.573208, 0.4065461, -0.2195854, -0.9739736, -0.0561929,
-0.4245227, -0.5754198, 0.4065461, -0.2195854, -0.9739736, -0.0561929,
-0.424647, -0.5759711, 0.416587, -0.2195854, -0.9739736, -0.0561929,
-0.4344575, -0.5737593, 0.416587, -0.2195854, -0.9739736, -0.0561929,
-0.5243152, -0.9723212, 0.3835195, -0.01235897, -0.05481691, 0.99842,
-0.5145047, -0.974533, 0.3835195, -0.01235897, -0.05481691, 0.99842,
-0.4245227, -0.5754198, 0.4065461, -0.01235897, -0.05481691, 0.99842,
-0.4343332, -0.573208, 0.4065461, -0.01235897, -0.05481691, 0.99842,
-0.5145047, -0.974533, 0.3835195, -0.9755146, 0.2199344, 3.442845e-08,
-0.5146289, -0.9750842, 0.3935604, -0.9755146, 0.2199344, 3.442845e-08,
-0.424647, -0.5759711, 0.416587, -0.9755146, 0.2199344, 3.442845e-08,
-0.4245227, -0.5754198, 0.4065461, -0.9755146, 0.2199344, 3.442845e-08,
-0.5146289, -0.9750842, 0.3935604, 0.01235864, 0.05481691, -0.9984199,
-0.5244395, -0.9728724, 0.3935604, 0.01235864, 0.05481691, -0.9984199,
-0.4344575, -0.5737593, 0.416587, 0.01235864, 0.05481691, -0.9984199,
-0.424647, -0.5759711, 0.416587, 0.01235864, 0.05481691, -0.9984199,
-0.5244395, -0.9728724, 0.3935604, 0.9755147, -0.2199344, -1.33653e-06,
-0.5243152, -0.9723212, 0.3835195, 0.9755147, -0.2199344, -1.33653e-06,
-0.4343332, -0.573208, 0.4065461, 0.9755147, -0.2199344, -1.33653e-06,
-0.4344575, -0.5737593, 0.416587, 0.9755147, -0.2199344, -1.33653e-06,
-0.5201944, -0.9734967, 0.3877911, -0.2195989, -0.9739717, -0.05617297,
-0.5187312, -0.9738266, 0.3877911, -0.2195989, -0.9739717, -0.05617297,
-0.5187497, -0.9739088, 0.3892888, -0.2195989, -0.9739717, -0.05617297,
-0.5202129, -0.9735789, 0.3892888, -0.2195989, -0.9739717, -0.05617297,
-0.5201944, -0.9734967, 0.3877911, 0.9905058, 0.1360487, 0.01972692,
-0.5202129, -0.9735789, 0.3892888, 0.9905058, 0.1360487, 0.01972692,
-0.5199112, -0.9756507, 0.3884276, 0.9905058, 0.1360487, 0.01972692,
-0.5199112, -0.9756507, 0.3884276, 0.9905058, 0.1360487, 0.01972692,
-0.5201944, -0.9734967, 0.3877911, -0.06553439, -0.2906601, -0.9545794,
-0.5187312, -0.9738266, 0.3877911, -0.06553439, -0.2906601, -0.9545794,
-0.5199112, -0.9756507, 0.3884276, -0.06553439, -0.2906601, -0.9545794,
-0.5199112, -0.9756507, 0.3884276, -0.06553439, -0.2906601, -0.9545794,
-0.5187312, -0.9738266, 0.3877911, 0.8363044, -0.5479107, -0.01971974,
-0.5187497, -0.9739088, 0.3892888, 0.8363044, -0.5479107, -0.01971974,
-0.5199112, -0.9756507, 0.3884276, 0.8363044, -0.5479107, -0.01971974,
-0.5199112, -0.9756507, 0.3884276, 0.8363044, -0.5479107, -0.01971974,
-0.5187497, -0.9739088, 0.3892888, -0.0886782, -0.3933083, 0.9151201,
-0.5202129, -0.9735789, 0.3892888, -0.0886782, -0.3933083, 0.9151201,
-0.5199112, -0.9756507, 0.3884276, -0.0886782, -0.3933083, 0.9151201,
-0.5199112, -0.9756507, 0.3884276, -0.0886782, -0.3933083, 0.9151201
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
0.04206959, 0.1586269, -0.1135883, 0.4612357, 0.7240739, -0.5128143,
0.0356675, 0.1627051, -0.1135883, 0.4612357, 0.7240739, -0.5128143,
0.03775883, 0.1659882, -0.1070717, 0.4612357, 0.7240739, -0.5128143,
0.04416092, 0.16191, -0.1070717, 0.4612357, 0.7240739, -0.5128143,
-0.4273347, -0.5782702, 0.4083082, 0.4612362, 0.7240741, -0.5128134,
-0.4337368, -0.574192, 0.4083082, 0.4612362, 0.7240741, -0.5128134,
-0.4316455, -0.570909, 0.4148248, 0.4612362, 0.7240741, -0.5128134,
-0.4252434, -0.5749871, 0.4148248, 0.4612362, 0.7240741, -0.5128134,
0.04206959, 0.1586269, -0.1135883, 0.2755137, 0.432517, 0.8584994,
0.0356675, 0.1627051, -0.1135883, 0.2755137, 0.432517, 0.8584994,
-0.4337368, -0.574192, 0.4083082, 0.2755137, 0.432517, 0.8584994,
-0.4273347, -0.5782702, 0.4083082, 0.2755137, 0.432517, 0.8584994,
0.0356675, 0.1627051, -0.1135883, 0.8434179, -0.537258, 2.109771e-07,
0.03775883, 0.1659882, -0.1070717, 0.8434179, -0.537258, 2.109771e-07,
-0.4316455, -0.570909, 0.4148248, 0.8434179, -0.537258, 2.109771e-07,
-0.4337368, -0.574192, 0.4083082, 0.8434179, -0.537258, 2.109771e-07,
0.03775883, 0.1659882, -0.1070717, -0.2755136, -0.4325171, -0.8584994,
0.04416092, 0.16191, -0.1070717, -0.2755136, -0.4325171, -0.8584994,
-0.4252434, -0.5749871, 0.4148248, -0.2755136, -0.4325171, -0.8584994,
-0.4316455, -0.570909, 0.4148248, -0.2755136, -0.4325171, -0.8584994,
0.04416092, 0.16191, -0.1070717, -0.8434178, 0.5372582, 1.657677e-07,
0.04206959, 0.1586269, -0.1135883, -0.8434178, 0.5372582, 1.657677e-07,
-0.4273347, -0.5782702, 0.4083082, -0.8434178, 0.5372582, 1.657677e-07,
-0.4252434, -0.5749871, 0.4148248, -0.8434178, 0.5372582, 1.657677e-07,
0.04034014, 0.1615802, -0.1109738, 0.4612338, 0.7240732, -0.5128171,
0.03907501, 0.1623861, -0.1109738, 0.4612338, 0.7240732, -0.5128171,
0.03948828, 0.1630349, -0.1096861, 0.4612338, 0.7240732, -0.5128171,
0.04075341, 0.162229, -0.1096861, 0.4612338, 0.7240732, -0.5128171,
0.04034014, 0.1615802, -0.1109738, -0.9516675, 0.2488111, 0.1800612,
0.04075341, 0.162229, -0.1096861, -0.9516675, 0.2488111, 0.1800612,
0.04083668, 0.1637557, -0.1113556, -0.9516675, 0.2488111, 0.1800612,
0.04083668, 0.1637557, -0.1113556, -0.9516675, 0.2488111, 0.1800612,
0.04034014, 0.1615802, -0.1109738, -0.09602015, -0.1507383, -0.9838995,
0.03907501, 0.1623861, -0.1109738, -0.09602015, -0.1507383, -0.9838995,
0.04083668, 0.1637557, -0.1113556, -0.09602015, -0.1507383, -0.9838995,
0.04083668, 0.1637557, -0.1113556, -0.09602015, -0.1507383, -0.9838995,
0.03907501, 0.1623861, -0.1109738, -0.6277668, 0.7572887, -0.1800629,
0.03948828, 0.1630349, -0.1096861, -0.6277668, 0.7572887, -0.1800629,
0.04083668, 0.1637557, -0.1113556, -0.6277668, 0.7572887, -0.1800629,
0.04083668, 0.1637557, -0.1113556, -0.6277668, 0.7572887, -0.1800629,
0.03948828, 0.1630349, -0.1096861, 0.4199217, 0.6592189, 0.6237757,
0.04075341, 0.162229, -0.1096861, 0.4199217, 0.6592189, 0.6237757,
0.04083668, 0.1637557, -0.1113556, 0.4199217, 0.6592189, 0.6237757,
0.04083668, 0.1637557, -0.1113556, 0.4199217, 0.6592189, 0.6237757
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
-0.8120436, -0.7115119, 0.6952509, -0.7658073, -0.2814881, 0.57819,
-0.8096524, -0.7180172, 0.6952509, -0.7658073, -0.2814881, 0.57819,
-0.8058912, -0.7166346, 0.7009058, -0.7658073, -0.2814881, 0.57819,
-0.8082823, -0.7101293, 0.7009058, -0.7658073, -0.2814881, 0.57819,
-0.4325663, -0.5720282, 0.4087391, -0.7658067, -0.2814843, 0.5781927,
-0.4301752, -0.5785335, 0.4087391, -0.7658067, -0.2814843, 0.5781927,
-0.4264139, -0.5771509, 0.414394, -0.7658067, -0.2814843, 0.5781927,
-0.428805, -0.5706456, 0.414394, -0.7658067, -0.2814843, 0.5781927,
-0.8120436, -0.7115119, 0.6952509, 0.5426953, 0.1994787, 0.8158984,
-0.8096524, -0.7180172, 0.6952509, 0.5426953, 0.1994787, 0.8158984,
-0.4301752, -0.5785335, 0.4087391, 0.5426953, 0.1994787, 0.8158984,
-0.4325663, -0.5720282, 0.4087391, 0.5426953, 0.1994787, 0.8158984,
-0.8096524, -0.7180172, 0.6952509, -0.3450002, 0.9386026, 5.084506e-08,
-0.8058912, -0.7166346, 0.7009058, -0.3450002, 0.9386026, 5.084506e-08,
-0.4264139, -0.5771509, 0.414394, -0.3450002, 0.9386026, 5.084506e-08,
-0.4301752, -0.5785335, 0.4087391, -0.3450002, 0.9386026, 5.084506e-08,
-0.8058912, -0.7166346, 0.7009058, -0.5426968, -0.1994743, -0.8158983,
-0.8082823, -0.7101293, 0.7009058, -0.5426968, -0.1994743, -0.8158983,
-0.428805, -0.5706456, 0.414394, -0.5426968, -0.1994743, -0.8158983,
-0.4264139, -0.5771509, 0.414394, -0.5426968, -0.1994743, -0.8158983,
-0.8082823, -0.7101293, 0.7009058, 0.3449986, -0.9386032, -2.474448e-06,
-0.8120436, -0.7115119, 0.6952509, 0.3449986, -0.9386032, -2.474448e-06,
-0.4325663, -0.5720282, 0.4087391, 0.3449986, -0.9386032, -2.474448e-06,
-0.428805, -0.5706456, 0.414394, 0.3449986, -0.9386032, -2.474448e-06,
-0.8096331, -0.7135189, 0.6974664, -0.7658007, -0.2814733, 0.5782059,
-0.8091156, -0.7149268, 0.6974664, -0.7658007, -0.2814733, 0.5782059,
-0.8083016, -0.7146276, 0.6986903, -0.7658007, -0.2814733, 0.5782059,
-0.8088191, -0.7132196, 0.6986903, -0.7658007, -0.2814733, 0.5782059,
-0.8096331, -0.7135189, 0.6974664, 0.5919456, -0.7799886, -0.2030224,
-0.8088191, -0.7132196, 0.6986903, 0.5919456, -0.7799886, -0.2030224,
-0.810499, -0.7146362, 0.6992347, 0.5919456, -0.7799886, -0.2030224,
-0.810499, -0.7146362, 0.6992347, 0.5919456, -0.7799886, -0.2030224,
-0.8096331, -0.7135189, 0.6974664, -0.777037, -0.2856033, -0.5609316,
-0.8091156, -0.7149268, 0.6974664, -0.777037, -0.2856033, -0.5609316,
-0.810499, -0.7146362, 0.6992347, -0.777037, -0.2856033, -0.5609316,
-0.810499, -0.7146362, 0.6992347, -0.777037, -0.2856033, -0.5609316,
-0.8091156, -0.7149268, 0.6974664, 0.05414405, -0.9776781, 0.203012,
-0.8083016, -0.7146276, 0.6986903, 0.05414405, -0.9776781, 0.203012,
-0.810499, -0.7146362, 0.6992347, 0.05414405, -0.9776781, 0.203012,
-0.810499, -0.7146362, 0.6992347, 0.05414405, -0.9776781, 0.203012,
-0.8083016, -0.7146276, 0.6986903, 0.239233, 0.08794126, 0.9669715,
-0.8088191, -0.7132196, 0.6986903, 0.239233, 0.08794126, 0.9669715,
-0.810499, -0.7146362, 0.6992347, 0.239233, 0.08794126, 0.9669715,
-0.810499, -0.7146362, 0.6992347, 0.239233, 0.08794126, 0.9669715
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
-0.353425, -0.9256371, 0.6664235, 0.1810314, -0.7893179, 0.5866897,
-0.3449764, -0.9236994, 0.6664235, 0.1810314, -0.7893179, 0.5866897,
-0.3461132, -0.9187428, 0.6734428, 0.1810314, -0.7893179, 0.5866897,
-0.3545617, -0.9206804, 0.6734428, 0.1810314, -0.7893179, 0.5866897,
-0.433146, -0.5780367, 0.4080569, 0.1810257, -0.7893172, 0.5866926,
-0.4246974, -0.5760991, 0.4080569, 0.1810257, -0.7893172, 0.5866926,
-0.4258342, -0.5711424, 0.4150762, 0.1810257, -0.7893172, 0.5866926,
-0.4342827, -0.5730801, 0.4150762, 0.1810257, -0.7893172, 0.5866926,
-0.353425, -0.9256371, 0.6664235, -0.1311531, 0.5718426, 0.8098117,
-0.3449764, -0.9236994, 0.6664235, -0.1311531, 0.5718426, 0.8098117,
-0.4246974, -0.5760991, 0.4080569, -0.1311531, 0.5718426, 0.8098117,
-0.433146, -0.5780367, 0.4080569, -0.1311531, 0.5718426, 0.8098117,
-0.3449764, -0.9236994, 0.6664235, -0.9746943, -0.2235419, 1.31141e-06,
-0.3461132, -0.9187428, 0.6734428, -0.9746943, -0.2235419, 1.31141e-06,
-0.4258342, -0.5711424, 0.4150762, -0.9746943, -0.2235419, 1.31141e-06,
-0.4246974, -0.5760991, 0.4080569, -0.9746943, -0.2235419, 1.31141e-06,
-0.3461132, -0.9187428, 0.6734428, 0.1311492, -0.5718434, -0.8098117,
-0.3545617, -0.9206804, 0.6734428, 0.1311492, -0.5718434, -0.8098117,
-0.4342827, -0.5730801, 0.4150762, 0.1311492, -0.5718434, -0.8098117,
-0.4258342, -0.5711424, 0.4150762, 0.1311492, -0.5718434, -0.8098117,
-0.3545617, -0.9206804, 0.6734428, 0.9746946, 0.2235411, -2.55419e-06,
-0.353425, -0.9256371, 0.6664235, 0.9746946, 0.2235411, -2.55419e-06,
-0.433146, -0.5780367, 0.4080569, 0.9746946, 0.2235411, -2.55419e-06,
-0.4342827, -0.5730801, 0.4150762, 0.9746946, 0.2235411, -2.55419e-06,
-0.3504017, -0.9227865, 0.6693258, 0.1810057, -0.7893137, 0.5867032,
-0.3489397, -0.9224512, 0.6693258, 0.1810057, -0.7893137, 0.5867032,
-0.3491364, -0.9215934, 0.6705405, 0.1810057, -0.7893137, 0.5867032,
-0.3505985, -0.9219287, 0.6705405, 0.1810057, -0.7893137, 0.5867032,
-0.3504017, -0.9227865, 0.6693258, 0.8490752, 0.4864505, -0.206003,
-0.3505985, -0.9219287, 0.6705405, 0.8490752, 0.4864505, -0.206003,
-0.349407, -0.9237686, 0.6711066, 0.8490752, 0.4864505, -0.206003,
-0.349407, -0.9237686, 0.6711066, 0.8490752, 0.4864505, -0.206003,
-0.3504017, -0.9227865, 0.6693258, 0.1863435, -0.8125901, -0.5522439,
-0.3489397, -0.9224512, 0.6693258, 0.1863435, -0.8125901, -0.5522439,
-0.349407, -0.9237686, 0.6711066, 0.1863435, -0.8125901, -0.5522439,
-0.349407, -0.9237686, 0.6711066, 0.1863435, -0.8125901, -0.5522439,
-0.3489397, -0.9224512, 0.6693258, 0.9761972, -0.06783532, 0.2060041,
-0.3491364, -0.9215934, 0.6705405, 0.9761972, -0.06783532, 0.2060041,
-0.349407, -0.9237686, 0.6711066, 0.9761972, -0.06783532, 0.2060041,
-0.349407, -0.9237686, 0.6711066, 0.9761972, -0.06783532, 0.2060041,
-0.3491364, -0.9215934, 0.6705405, -0.05923485, 0.2583061, 0.9642453,
-0.3505985, -0.9219287, 0.6705405, -0.05923485, 0.2583061, 0.9642453,
-0.349407, -0.9237686, 0.6711066, -0.05923485, 0.2583061, 0.9642453,
-0.349407, -0.9237686, 0.6711066, -0.05923485, 0.2583061, 0.9642453
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
0.06356553, 0.1866572, -0.1490122, -0.5534346, -0.02649904, 0.8324711,
0.06397288, 0.1781497, -0.1490122, -0.5534346, -0.02649904, 0.8324711,
0.07105508, 0.1784888, -0.1442931, -0.5534346, -0.02649904, 0.8324711,
0.07064774, 0.1869963, -0.1442931, -0.5534346, -0.02649904, 0.8324711,
0.456542, 0.2054732, -0.7401239, -0.5534325, -0.02650039, 0.8324724,
0.4569493, 0.1969658, -0.7401239, -0.5534325, -0.02650039, 0.8324724,
0.4640315, 0.1973049, -0.7354048, -0.5534325, -0.02650039, 0.8324724,
0.4636242, 0.2058123, -0.7354048, -0.5534325, -0.02650039, 0.8324724,
0.06356553, 0.1866572, -0.1490122, 0.8315185, 0.039814, 0.5540685,
0.06397288, 0.1781497, -0.1490122, 0.8315185, 0.039814, 0.5540685,
0.4569493, 0.1969658, -0.7401239, 0.8315185, 0.039814, 0.5540685,
0.456542, 0.2054732, -0.7401239, 0.8315185, 0.039814, 0.5540685,
0.06397288, 0.1781497, -0.1490122, -0.04782498, 0.9988557, 7.074092e-07,
0.07105508, 0.1784888, -0.1442931, -0.04782498, 0.9988557, 7.074092e-07,
0.4640315, 0.1973049, -0.7354048, -0.04782498, 0.9988557, 7.074092e-07,
0.4569493, 0.1969658, -0.7401239, -0.04782498, 0.9988557, 7.074092e-07,
0.07105508, 0.1784888, -0.1442931, -0.8315186, -0.03981327, -0.5540684,
0.07064774, 0.1869963, -0.1442931, -0.8315186, -0.03981327, -0.5540684,
0.4636242, 0.2058123, -0.7354048, -0.8315186, -0.03981327, -0.5540684,
0.4640315, 0.1973049, -0.7354048, -0.8315186, -0.03981327, -0.5540684,
0.07064774, 0.1869963, -0.1442931, 0.04782493, -0.9988558, -7.146272e-07,
0.06356553, 0.1866572, -0.1490122, 0.04782493, -0.9988558, -7.146272e-07,
0.456542, 0.2054732, -0.7401239, 0.04782493, -0.9988558, -7.146272e-07,
0.4636242, 0.2058123, -0.7354048, 0.04782493, -0.9988558, -7.146272e-07,
0.0666508, 0.1832923, -0.1470682, -0.5534386, -0.02649733, 0.8324684,
0.06672253, 0.181794, -0.1470682, -0.5534386, -0.02649733, 0.8324684,
0.06796981, 0.1818537, -0.1462371, -0.5534386, -0.02649733, 0.8324684,
0.06789807, 0.183352, -0.1462371, -0.5534386, -0.02649733, 0.8324684,
0.0666508, 0.1832923, -0.1470682, 0.2391004, -0.925954, -0.2923016,
0.06789807, 0.183352, -0.1462371, 0.2391004, -0.925954, -0.2923016,
0.06620344, 0.18252, -0.1449877, 0.2391004, -0.925954, -0.2923016,
0.06620344, 0.18252, -0.1449877, 0.2391004, -0.925954, -0.2923016,
0.0666508, 0.1832923, -0.1470682, -0.9728992, -0.04658011, -0.2264897,
0.06672253, 0.181794, -0.1470682, -0.9728992, -0.04658011, -0.2264897,
0.06620344, 0.18252, -0.1449877, -0.9728992, -0.04658011, -0.2264897,
0.06620344, 0.18252, -0.1449877, -0.9728992, -0.04658011, -0.2264897,
0.06672253, 0.181794, -0.1470682, -0.1495506, -0.9445624, 0.2922953,
0.06796981, 0.1818537, -0.1462371, -0.1495506, -0.9445624, 0.2922953,
0.06620344, 0.18252, -0.1449877, -0.1495506, -0.9445624, 0.2922953,
0.06620344, 0.18252, -0.1449877, -0.1495506, -0.9445624, 0.2922953,
0.06796981, 0.1818537, -0.1462371, 0.5842509, 0.02797545, 0.8110909,
0.06789807, 0.183352, -0.1462371, 0.5842509, 0.02797545, 0.8110909,
0.06620344, 0.18252, -0.1449877, 0.5842509, 0.02797545, 0.8110909,
0.06620344, 0.18252, -0.1449877, 0.5842509, 0.02797545, 0.8110909
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
0.7888898, 0.1838341, -0.9858336, 0.8012213, -0.036839, -0.5972331,
0.7891142, 0.1887136, -0.9858336, 0.8012213, -0.036839, -0.5972331,
0.7920284, 0.1885795, -0.9819158, 0.8012213, -0.036839, -0.5972331,
0.791804, 0.1837001, -0.9819158, 0.8012213, -0.036839, -0.5972331,
0.4587175, 0.1990163, -0.7397232, 0.8012239, -0.03684402, -0.5972292,
0.4589418, 0.2038958, -0.7397232, 0.8012239, -0.03684402, -0.5972292,
0.461856, 0.2037618, -0.7358054, 0.8012239, -0.03684402, -0.5972292,
0.4616317, 0.1988823, -0.7358054, 0.8012239, -0.03684402, -0.5972292,
0.7888898, 0.1838341, -0.9858336, 0.5966009, -0.02743085, 0.8020691,
0.7891142, 0.1887136, -0.9858336, 0.5966009, -0.02743085, 0.8020691,
0.4589418, 0.2038958, -0.7397232, 0.5966009, -0.02743085, 0.8020691,
0.4587175, 0.1990163, -0.7397232, 0.5966009, -0.02743085, 0.8020691,
0.7891142, 0.1887136, -0.9858336, -0.04593467, -0.9989444, -5.873855e-07,
0.7920284, 0.1885795, -0.9819158, -0.04593467, -0.9989444, -5.873855e-07,
0.461856, 0.2037618, -0.7358054, -0.04593467, -0.9989444, -5.873855e-07,
0.4589418, 0.2038958, -0.7397232, -0.04593467, -0.9989444, -5.873855e-07,
0.7920284, 0.1885795, -0.9819158, -0.5966009, 0.02743093, -0.8020692,
0.791804, 0.1837001, -0.9819158, -0.5966009, 0.02743093, -0.8020692,
0.4616317, 0.1988823, -0.7358054, -0.5966009, 0.02743093, -0.8020692,
0.461856, 0.2037618, -0.7358054, -0.5966009, 0.02743093, -0.8020692,
0.791804, 0.1837001, -0.9819158, 0.04593286, 0.9989445, -1.856138e-06,
0.7888898, 0.1838341, -0.9858336, 0.04593286, 0.9989445, -1.856138e-06,
0.4587175, 0.1990163, -0.7397232, 0.04593286, 0.9989445, -1.856138e-06,
0.4616317, 0.1988823, -0.7358054, 0.04593286, 0.9989445, -1.856138e-06,
0.7899772, 0.1854782, -0.9844763, 0.8012255, -0.03684345, -0.5972272,
0.7900461, 0.1869766, -0.9844763, 0.8012255, -0.03684345, -0.5972272,
0.790941, 0.1869354, -0.9832732, 0.8012255, -0.03684345, -0.5972272,
0.7908721, 0.185437, -0.9832732, 0.8012255, -0.03684345, -0.5972272,
0.7899772, 0.1854782, -0.9844763, -0.2383208, 0.9482781, 0.2096952,
0.7908721, 0.185437, -0.9832732, -0.2383208, 0.9482781, 0.2096952,
0.7920616, 0.1861331, -0.9850692, -0.2383208, 0.9482781, 0.2096952,
0.7920616, 0.1861331, -0.9850692, -0.2383208, 0.9482781, 0.2096952,
0.7899772, 0.1854782, -0.9844763, -0.2772733, 0.0127501, -0.9607065,
0.7900461, 0.1869766, -0.9844763, -0.2772733, 0.0127501, -0.9607065,
0.7920616, 0.1861331, -0.9850692, -0.2772733, 0.0127501, -0.9607065,
0.7920616, 0.1861331, -0.9850692, -0.2772733, 0.0127501, -0.9607065,
0.7900461, 0.1869766, -0.9844763, 0.3243343, 0.9224054, -0.2097034,
0.790941, 0.1869354, -0.9832732, 0.3243343, 0.9224054, -0.2097034,
0.7920616, 0.1861331, -0.9850692, 0.3243343, 0.9224054, -0.2097034,
0.7920616, 0.1861331, -0.9850692, 0.3243343, 0.9224054, -0.2097034,
0.790941, 0.1869354, -0.9832732, 0.8399365, -0.03862353, 0.5413085,
0.7908721, 0.185437, -0.9832732, 0.8399365, -0.03862353, 0.5413085,
0.7920616, 0.1861331, -0.9850692, 0.8399365, -0.03862353, 0.5413085,
0.7920616, 0.1861331, -0.9850692, 0.8399365, -0.03862353, 0.5413085
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
-0.9758269, 0.2569229, -0.5482843, -0.8128235, 0.006513418, -0.5824736,
-0.9758874, 0.2493806, -0.5482843, -0.8128235, 0.006513418, -0.5824736,
-0.9802806, 0.2494158, -0.5421533, -0.8128235, 0.006513418, -0.5824736,
-0.9802201, 0.2569581, -0.5421533, -0.8128235, 0.006513418, -0.5824736,
-0.636371, 0.2542023, -0.3050296, -0.8128272, 0.006519858, -0.5824684,
-0.6364315, 0.2466599, -0.3050296, -0.8128272, 0.006519858, -0.5824684,
-0.6408246, 0.2466951, -0.2988986, -0.8128272, 0.006519858, -0.5824684,
-0.6407642, 0.2542375, -0.2988986, -0.8128272, 0.006519858, -0.5824684,
-0.9758269, 0.2569229, -0.5482843, -0.582453, 0.004667385, 0.812851,
-0.9758874, 0.2493806, -0.5482843, -0.582453, 0.004667385, 0.812851,
-0.6364315, 0.2466599, -0.3050296, -0.582453, 0.004667385, 0.812851,
-0.636371, 0.2542023, -0.3050296, -0.582453, 0.004667385, 0.812851,
-0.9758874, 0.2493806, -0.5482843, 0.00801453, 0.9999679, -1.172247e-07,
-0.9802806, 0.2494158, -0.5421533, 0.00801453, 0.9999679, -1.172247e-07,
-0.6408246, 0.2466951, -0.2988986, 0.00801453, 0.9999679, -1.172247e-07,
-0.6364315, 0.2466599, -0.3050296, 0.00801453, 0.9999679, -1.172247e-07,
-0.9802806, 0.2494158, -0.5421533, 0.5824529, -0.004671978, -0.812851,
-0.9802201, 0.2569581, -0.5421533, 0.5824529, -0.004671978, -0.812851,
-0.6407642, 0.2542375, -0.2988986, 0.5824529, -0.004671978, -0.812851,
-0.6408246, 0.2466951, -0.2988986, 0.5824529, -0.004671978, -0.812851,
-0.9802201, 0.2569581, -0.5421533, -0.008015689, -0.9999679, 1.795048e-06,
-0.9758269, 0.2569229, -0.5482843, -0.008015689, -0.9999679, 1.795048e-06,
-0.636371, 0.2542023, -0.3050296, -0.008015689, -0.9999679, 1.795048e-06,
-0.6407642, 0.2542375, -0.2988986, -0.008015689, -0.9999679, 1.795048e-06,
-0.9776109, 0.2539158, -0.5458284, -0.812841, 0.006524692, -0.582449,
-0.9776229, 0.2524159, -0.5458284, -0.812841, 0.006524692, -0.582449,
-0.9784966, 0.2524229, -0.5446091, -0.812841, 0.006524692, -0.582449,
-0.9784846, 0.2539228, -0.5446091, -0.812841, 0.006524692, -0.582449,
-0.9776109, 0.2539158, -0.5458284, 0.2778893, -0.9385897, 0.2045163,
-0.9784846, 0.2539228, -0.5446091, 0.2778893, -0.9385897, 0.2045163,
-0.9796794, 0.2531824, -0.5463837, 0.2778893, -0.9385897, 0.2045163,
-0.9796794, 0.2531824, -0.5463837, 0.2778893, -0.9385897, 0.2045163,
-0.9776109, 0.2539158, -0.5458284, 0.2599783, -0.002086852, -0.9656122,
-0.9776229, 0.2524159, -0.5458284, 0.2599783, -0.002086852, -0.9656122,
-0.9796794, 0.2531824, -0.5463837, 0.2599783, -0.002086852, -0.9656122,
-0.9796794, 0.2531824, -0.5463837, 0.2599783, -0.002086852, -0.9656122,
-0.9776229, 0.2524159, -0.5458284, -0.2929103, -0.9340127, -0.2045092,
-0.9784966, 0.2524229, -0.5446091, -0.2929103, -0.9340127, -0.2045092,
-0.9796794, 0.2531824, -0.5463837, -0.2929103, -0.9340127, -0.2045092,
-0.9796794, 0.2531824, -0.5463837, -0.2929103, -0.9340127, -0.2045092,
-0.9784966, 0.2524229, -0.5446091, -0.8307663, 0.006635566, 0.5565818,
-0.9784846, 0.2539228, -0.5446091, -0.8307663, 0.006635566, 0.5565818,
-0.9796794, 0.2531824, -0.5463837, -0.8307663, 0.006635566, 0.5565818,
-0.9796794, 0.2531824, -0.5463837, -0.8307663, 0.006635566, 0.5565818
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
0.02694411, 0.1802759, -0.1348308, 0.9640105, -0.09569607, 0.2480442,
0.02775123, 0.1884066, -0.1348308, 0.9640105, -0.09569607, 0.2480442,
0.02573447, 0.1886068, -0.1269155, 0.9640105, -0.09569607, 0.2480442,
0.02492735, 0.1804761, -0.1269155, 0.9640105, -0.09569607, 0.2480442,
-0.637993, 0.2462833, -0.3059218, 0.9640119, -0.09569466, 0.2480395,
-0.6371859, 0.2544139, -0.3059218, 0.9640119, -0.09569466, 0.2480395,
-0.6392026, 0.2546141, -0.2980065, 0.9640119, -0.09569466, 0.2480395,
-0.6400098, 0.2464835, -0.2980065, 0.9640119, -0.09569466, 0.2480395,
0.02694411, 0.1802759, -0.1348308, -0.2468306, 0.02450256, 0.9687488,
0.02775123, 0.1884066, -0.1348308, -0.2468306, 0.02450256, 0.9687488,
-0.6371859, 0.2544139, -0.3059218, -0.2468306, 0.02450256, 0.9687488,
-0.637993, 0.2462833, -0.3059218, -0.2468306, 0.02450256, 0.9687488,
0.02775123, 0.1884066, -0.1348308, -0.09878342, -0.995109, 1.298777e-06,
0.02573447, 0.1886068, -0.1269155, -0.09878342, -0.995109, 1.298777e-06,
-0.6392026, 0.2546141, -0.2980065, -0.09878342, -0.995109, 1.298777e-06,
-0.6371859, 0.2544139, -0.3059218, -0.09878342, -0.995109, 1.298777e-06,
0.02573447, 0.1886068, -0.1269155, 0.2468306, -0.02450245, -0.9687489,
0.02492735, 0.1804761, -0.1269155, 0.2468306, -0.02450245, -0.9687489,
-0.6400098, 0.2464835, -0.2980065, 0.2468306, -0.02450245, -0.9687489,
-0.6392026, 0.2546141, -0.2980065, 0.2468306, -0.02450245, -0.9687489,
0.02492735, 0.1804761, -0.1269155, 0.09878297, 0.9951091, 4.363685e-07,
0.02694411, 0.1802759, -0.1348308, 0.09878297, 0.9951091, 4.363685e-07,
-0.637993, 0.2462833, -0.3059218, 0.09878297, 0.9951091, 4.363685e-07,
-0.6400098, 0.2464835, -0.2980065, 0.09878297, 0.9951091, 4.363685e-07,
0.02645032, 0.1836766, -0.1315997, 0.9640105, -0.09569636, 0.2480441,
0.0265985, 0.1851693, -0.1315997, 0.9640105, -0.09569636, 0.2480441,
0.02622825, 0.185206, -0.1301466, 0.9640105, -0.09569636, 0.2480441,
0.02608008, 0.1837134, -0.1301466, 0.9640105, -0.09569636, 0.2480441,
0.02645032, 0.1836766, -0.1315997, -0.2459922, 0.9653515, -0.08708905,
0.02608008, 0.1837134, -0.1301466, -0.2459922, 0.9653515, -0.08708905,
0.02826731, 0.1842499, -0.1303771, -0.2459922, 0.9653515, -0.08708905,
0.02826731, 0.1842499, -0.1303771, -0.2459922, 0.9653515, -0.08708905,
0.02645032, 0.1836766, -0.1315997, 0.5695984, -0.05654346, -0.819976,
0.0265985, 0.1851693, -0.1315997, 0.5695984, -0.05654346, -0.819976,
0.02826731, 0.1842499, -0.1303771, 0.5695984, -0.05654346, -0.819976,
0.02826731, 0.1842499, -0.1303771, 0.5695984, -0.05654346, -0.819976,
0.0265985, 0.1851693, -0.1315997, 0.4309817, 0.8981473, 0.0870993,
0.02622825, 0.185206, -0.1301466, 0.4309817, 0.8981473, 0.0870993,
0.02826731, 0.1842499, -0.1303771, 0.4309817, 0.8981473, 0.0870993,
0.02826731, 0.1842499, -0.1303771, 0.4309817, 0.8981473, 0.0870993,
0.02622825, 0.185206, -0.1301466, 0.1073731, -0.01065882, 0.9941616,
0.02608008, 0.1837134, -0.1301466, 0.1073731, -0.01065882, 0.9941616,
0.02826731, 0.1842499, -0.1303771, 0.1073731, -0.01065882, 0.9941616,
0.02826731, 0.1842499, -0.1303771, 0.1073731, -0.01065882, 0.9941616
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
0.03142083, 0.1992081, -0.1294483, 0.6566113, -0.7535228, 0.03263475,
0.03804571, 0.204981, -0.1294483, 0.6566113, -0.7535228, 0.03263475,
0.03785731, 0.2051972, -0.1206658, 0.6566113, -0.7535228, 0.03263475,
0.03123244, 0.1994243, -0.1206658, 0.6566113, -0.7535228, 0.03263475,
-0.3706647, 0.6606389, -0.1494326, 0.6566104, -0.7535237, 0.03263236,
-0.3640398, 0.6664117, -0.1494326, 0.6566104, -0.7535237, 0.03263236,
-0.3642282, 0.6666279, -0.14065, 0.6566104, -0.7535237, 0.03263236,
-0.3708531, 0.6608551, -0.14065, 0.6566104, -0.7535237, 0.03263236,
0.03142083, 0.1992081, -0.1294483, -0.0214396, 0.02460394, 0.9994673,
0.03804571, 0.204981, -0.1294483, -0.0214396, 0.02460394, 0.9994673,
-0.3640398, 0.6664117, -0.1494326, -0.0214396, 0.02460394, 0.9994673,
-0.3706647, 0.6606389, -0.1494326, -0.0214396, 0.02460394, 0.9994673,
0.03804571, 0.204981, -0.1294483, -0.7539244, -0.6569612, -2.569117e-08,
0.03785731, 0.2051972, -0.1206658, -0.7539244, -0.6569612, -2.569117e-08,
-0.3642282, 0.6666279, -0.14065, -0.7539244, -0.6569612, -2.569117e-08,
-0.3640398, 0.6664117, -0.1494326, -0.7539244, -0.6569612, -2.569117e-08,
0.03785731, 0.2051972, -0.1206658, 0.0214396, -0.02460394, -0.9994673,
0.03123244, 0.1994243, -0.1206658, 0.0214396, -0.02460394, -0.9994673,
-0.3708531, 0.6608551, -0.14065, 0.0214396, -0.02460394, -0.9994673,
-0.3642282, 0.6666279, -0.14065, 0.0214396, -0.02460394, -0.9994673,
0.03123244, 0.1994243, -0.1206658, 0.7539244, 0.6569612, 2.704333e-08,
0.03142083, 0.1992081, -0.1294483, 0.7539244, 0.6569612, 2.704333e-08,
-0.3706647, 0.6606389, -0.1494326, 0.7539244, 0.6569612, 2.704333e-08,
-0.3708531, 0.6608551, -0.14065, 0.7539244, 0.6569612, 2.704333e-08,
0.03408971, 0.2016915, -0.1258067, 0.656612, -0.7535222, 0.03263552,
0.03522059, 0.2026769, -0.1258067, 0.656612, -0.7535222, 0.03263552,
0.03518844, 0.2027138, -0.1243075, 0.656612, -0.7535222, 0.03263552,
0.03405755, 0.2017284, -0.1243075, 0.656612, -0.7535222, 0.03263552,
0.03408971, 0.2016915, -0.1258067, 0.4753665, 0.8797131, -0.01146222,
0.03405755, 0.2017284, -0.1243075, 0.4753665, 0.8797131, -0.01146222,
0.03595229, 0.2006956, -0.1249918, 0.4753665, 0.8797131, -0.01146222,
0.03595229, 0.2006956, -0.1249918, 0.4753665, 0.8797131, -0.01146222,
0.03408971, 0.2016915, -0.1258067, 0.2506275, -0.2876179, -0.924371,
0.03522059, 0.2026769, -0.1258067, 0.2506275, -0.2876179, -0.924371,
0.03595229, 0.2006956, -0.1249918, 0.2506275, -0.2876179, -0.924371,
0.03595229, 0.2006956, -0.1249918, 0.2506275, -0.2876179, -0.924371,
0.03522059, 0.2026769, -0.1258067, 0.9364728, 0.3505529, 0.01145606,
0.03518844, 0.2027138, -0.1243075, 0.9364728, 0.3505529, 0.01145606,
0.03595229, 0.2006956, -0.1249918, 0.9364728, 0.3505529, 0.01145606,
0.03595229, 0.2006956, -0.1249918, 0.9364728, 0.3505529, 0.01145606,
0.03518844, 0.2027138, -0.1243075, 0.2104772, -0.2415417, 0.9472893,
0.03405755, 0.2017284, -0.1243075, 0.2104772, -0.2415417, 0.9472893,
0.03595229, 0.2006956, -0.1249918, 0.2104772, -0.2415417, 0.9472893,
0.03595229, 0.2006956, -0.1249918, 0.2104772, -0.2415417, 0.9472893
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
-0.4937975, 0.9770091, -0.07420658, -0.3719795, 0.9036829, 0.2121048,
-0.4983141, 0.9751499, -0.07420658, -0.3719795, 0.9036829, 0.2121048,
-0.4979198, 0.9741919, -0.06943333, -0.3719795, 0.9036829, 0.2121048,
-0.4934031, 0.9760511, -0.06943333, -0.3719795, 0.9036829, 0.2121048,
-0.3653853, 0.6650419, -0.1474279, -0.3719693, 0.9036871, 0.2121048,
-0.369902, 0.6631828, -0.1474279, -0.3719693, 0.9036871, 0.2121048,
-0.3695076, 0.6622248, -0.1426547, -0.3719693, 0.9036871, 0.2121048,
-0.3649909, 0.664084, -0.1426547, -0.3719693, 0.9036871, 0.2121048,
-0.4937975, 0.9770091, -0.07420658, 0.08073477, -0.1961362, 0.9772474,
-0.4983141, 0.9751499, -0.07420658, 0.08073477, -0.1961362, 0.9772474,
-0.369902, 0.6631828, -0.1474279, 0.08073477, -0.1961362, 0.9772474,
-0.3653853, 0.6650419, -0.1474279, 0.08073477, -0.1961362, 0.9772474,
-0.4983141, 0.9751499, -0.07420658, 0.9247254, 0.380635, 5.316181e-06,
-0.4979198, 0.9741919, -0.06943333, 0.9247254, 0.380635, 5.316181e-06,
-0.3695076, 0.6622248, -0.1426547, 0.9247254, 0.380635, 5.316181e-06,
-0.369902, 0.6631828, -0.1474279, 0.9247254, 0.380635, 5.316181e-06,
-0.4979198, 0.9741919, -0.06943333, -0.08073432, 0.1961364, -0.9772474,
-0.4934031, 0.9760511, -0.06943333, -0.08073432, 0.1961364, -0.9772474,
-0.3649909, 0.664084, -0.1426547, -0.08073432, 0.1961364, -0.9772474,
-0.3695076, 0.6622248, -0.1426547, -0.08073432, 0.1961364, -0.9772474,
-0.4934031, 0.9760511, -0.06943333, -0.924725, -0.3806361, 2.071238e-07,
-0.4937975, 0.9770091, -0.07420658, -0.924725, -0.3806361, 2.071238e-07,
-0.3653853, 0.6650419, -0.1474279, -0.924725, -0.3806361, 2.071238e-07,
-0.3649909, 0.664084, -0.1426547, -0.924725, -0.3806361, 2.071238e-07,
-0.4952256, 0.9760331, -0.07255289, -0.3719746, 0.9036857, 0.2121013,
-0.4966127, 0.9754621, -0.07255289, -0.3719746, 0.9036857, 0.2121013,
-0.4964916, 0.9751679, -0.07108702, -0.3719746, 0.9036857, 0.2121013,
-0.4951046, 0.9757389, -0.07108702, -0.3719746, 0.9036857, 0.2121013,
-0.4952256, 0.9760331, -0.07255289, -0.7352355, -0.6737069, -0.07448331,
-0.4951046, 0.9757389, -0.07108702, -0.7352355, -0.6737069, -0.07448331,
-0.4966026, 0.9774079, -0.07139575, -0.7352355, -0.6737069, -0.07448331,
-0.4966026, 0.9774079, -0.07139575, -0.7352355, -0.6737069, -0.07448331,
-0.4952256, 0.9760331, -0.07255289, -0.2062028, 0.5009551, -0.8405501,
-0.4966127, 0.9754621, -0.07255289, -0.2062028, 0.5009551, -0.8405501,
-0.4966026, 0.9774079, -0.07139575, -0.2062028, 0.5009551, -0.8405501,
-0.4966026, 0.9774079, -0.07139575, -0.2062028, 0.5009551, -0.8405501,
-0.4966127, 0.9754621, -0.07255289, -0.996457, -0.03909542, 0.07446464,
-0.4964916, 0.9751679, -0.07108702, -0.996457, -0.03909542, 0.07446464,
-0.4966026, 0.9774079, -0.07139575, -0.996457, -0.03909542, 0.07446464,
-0.4966026, 0.9774079, -0.07139575, -0.996457, -0.03909542, 0.07446464,
-0.4964916, 0.9751679, -0.07108702, -0.05501574, 0.1336568, 0.9894994,
-0.4951046, 0.9757389, -0.07108702, -0.05501574, 0.1336568, 0.9894994,
-0.4966026, 0.9774079, -0.07139575, -0.05501574, 0.1336568, 0.9894994,
-0.4966026, 0.9774079, -0.07139575, -0.05501574, 0.1336568, 0.9894994
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
-0.9724845, 0.2535126, -0.5603861, -0.9788263, 0.1293713, -0.1586262,
-0.9734728, 0.2460351, -0.5603861, -0.9788263, 0.1293713, -0.1586262,
-0.9746589, 0.2461919, -0.552939, -0.9788263, 0.1293713, -0.1586262,
-0.9736706, 0.2536694, -0.552939, -0.9788263, 0.1293713, -0.1586262,
-0.5774872, 0.2013064, -0.4963728, -0.9788251, 0.1293709, -0.1586339,
-0.5784755, 0.1938288, -0.4963728, -0.9788251, 0.1293709, -0.1586339,
-0.5796617, 0.1939856, -0.4889257, -0.9788251, 0.1293709, -0.1586339,
-0.5786734, 0.2014631, -0.4889257, -0.9788251, 0.1293709, -0.1586339,
-0.9724845, 0.2535126, -0.5603861, -0.1572609, 0.02078515, 0.9873383,
-0.9734728, 0.2460351, -0.5603861, -0.1572609, 0.02078515, 0.9873383,
-0.5784755, 0.1938288, -0.4963728, -0.1572609, 0.02078515, 0.9873383,
-0.5774872, 0.2013064, -0.4963728, -0.1572609, 0.02078515, 0.9873383,
-0.9734728, 0.2460351, -0.5603861, 0.1310293, 0.9913785, -7.171401e-07,
-0.9746589, 0.2461919, -0.552939, 0.1310293, 0.9913785, -7.171401e-07,
-0.5796617, 0.1939856, -0.4889257, 0.1310293, 0.9913785, -7.171401e-07,
-0.5784755, 0.1938288, -0.4963728, 0.1310293, 0.9913785, -7.171401e-07,
-0.9746589, 0.2461919, -0.552939, 0.157261, -0.02078511, -0.9873383,
-0.9736706, 0.2536694, -0.552939, 0.157261, -0.02078511, -0.9873383,
-0.5786734, 0.2014631, -0.4889257, 0.157261, -0.02078511, -0.9873383,
-0.5796617, 0.1939856, -0.4889257, 0.157261, -0.02078511, -0.9873383,
-0.9736706, 0.2536694, -0.552939, -0.1310296, -0.9913785, 2.66298e-06,
-0.9724845, 0.2535126, -0.5603861, -0.1310296, -0.9913785, 2.66298e-06,
-0.5774872, 0.2013064, -0.4963728, -0.1310296, -0.9913785, 2.66298e-06,
-0.5786734, 0.2014631, -0.4889257, -0.1310296, -0.9913785, 2.66298e-06,
-0.9733555, 0.2505802, -0.557403, -0.9788268, 0.1293921, -0.1586062,
-0.973552, 0.2490931, -0.557403, -0.9788268, 0.1293921, -0.1586062,
-0.9737879, 0.2491243, -0.555922, -0.9788268, 0.1293921, -0.1586062,
-0.9735914, 0.2506114, -0.555922, -0.9788268, 0.1293921, -0.1586062,
-0.9733555, 0.2505802, -0.557403, 0.2210009, -0.9736818, 0.05569916,
-0.9735914, 0.2506114, -0.555922, 0.2210009, -0.9736818, 0.05569916,
-0.9755294, 0.250111, -0.5569798, 0.2210009, -0.9736818, 0.05569916,
-0.9755294, 0.250111, -0.5569798, 0.2210009, -0.9736818, 0.05569916,
-0.9733555, 0.2505802, -0.557403, -0.1964416, 0.02596781, -0.9801716,
-0.973552, 0.2490931, -0.557403, -0.1964416, 0.02596781, -0.9801716,
-0.9755294, 0.250111, -0.5569798, -0.1964416, 0.02596781, -0.9801716,
-0.9755294, 0.250111, -0.5569798, -0.1964416, 0.02596781, -0.9801716,
-0.973552, 0.2490931, -0.557403, -0.466371, -0.8828346, -0.05568913,
-0.9737879, 0.2491243, -0.555922, -0.466371, -0.8828346, -0.05568913,
-0.9755294, 0.250111, -0.5569798, -0.466371, -0.8828346, -0.05568913,
-0.9755294, 0.250111, -0.5569798, -0.466371, -0.8828346, -0.05568913,
-0.9737879, 0.2491243, -0.555922, -0.4909279, 0.06487657, 0.8687812,
-0.9735914, 0.2506114, -0.555922, -0.4909279, 0.06487657, 0.8687812,
-0.9755294, 0.250111, -0.5569798, -0.4909279, 0.06487657, 0.8687812,
-0.9755294, 0.250111, -0.5569798, -0.4909279, 0.06487657, 0.8687812
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
0.03101472, 0.1783053, -0.141317, 0.8633252, -0.02160345, 0.5041855,
0.03121911, 0.1864733, -0.141317, 0.8633252, -0.02160345, 0.5041855,
0.02710089, 0.1865764, -0.1342609, 0.8633252, -0.02160345, 0.5041855,
0.0268965, 0.1784083, -0.1342609, 0.8633252, -0.02160345, 0.5041855,
-0.5766175, 0.1935104, -0.4961773, 0.8633252, -0.02160246, 0.5041853,
-0.5764132, 0.2016785, -0.4961773, 0.8633252, -0.02160246, 0.5041853,
-0.5805314, 0.2017815, -0.4891212, 0.8633252, -0.02160246, 0.5041853,
-0.5807358, 0.1936135, -0.4891212, 0.8633252, -0.02160246, 0.5041853,
0.03101472, 0.1783053, -0.141317, -0.5040282, 0.01261257, 0.863595,
0.03121911, 0.1864733, -0.141317, -0.5040282, 0.01261257, 0.863595,
-0.5764132, 0.2016785, -0.4961773, -0.5040282, 0.01261257, 0.863595,
-0.5766175, 0.1935104, -0.4961773, -0.5040282, 0.01261257, 0.863595,
0.03121911, 0.1864733, -0.141317, -0.02501599, -0.999687, 3.896896e-07,
0.02710089, 0.1865764, -0.1342609, -0.02501599, -0.999687, 3.896896e-07,
-0.5805314, 0.2017815, -0.4891212, -0.02501599, -0.999687, 3.896896e-07,
-0.5764132, 0.2016785, -0.4961773, -0.02501599, -0.999687, 3.896896e-07,
0.02710089, 0.1865764, -0.1342609, 0.5040282, -0.01261257, -0.863595,
0.0268965, 0.1784083, -0.1342609, 0.5040282, -0.01261257, -0.863595,
-0.5807358, 0.1936135, -0.4891212, 0.5040282, -0.01261257, -0.863595,
-0.5805314, 0.2017815, -0.4891212, 0.5040282, -0.01261257, -0.863595,
0.0268965, 0.1784083, -0.1342609, 0.02501599, 0.999687, -3.896896e-07,
0.03101472, 0.1783053, -0.141317, 0.02501599, 0.999687, -3.896896e-07,
-0.5766175, 0.1935104, -0.4961773, 0.02501599, 0.999687, -3.896896e-07,
-0.5807358, 0.1936135, -0.4891212, 0.02501599, 0.999687, -3.896896e-07,
0.02941707, 0.1816816, -0.1384367, 0.863324, -0.02160326, 0.5041873,
0.02945459, 0.1831811, -0.1384367, 0.863324, -0.02160326, 0.5041873,
0.02869855, 0.1832001, -0.1371413, 0.863324, -0.02160326, 0.5041873,
0.02866102, 0.1817005, -0.1371413, 0.863324, -0.02160326, 0.5041873,
0.02941707, 0.1816816, -0.1384367, -0.2797137, 0.9436215, -0.1770275,
0.02866102, 0.1817005, -0.1371413, -0.2797137, 0.9436215, -0.1770275,
0.03078446, 0.1823976, -0.1367806, -0.2797137, 0.9436215, -0.1770275,
0.03078446, 0.1823976, -0.1367806, -0.2797137, 0.9436215, -0.1770275,
0.02941707, 0.1816816, -0.1384367, 0.7750702, -0.01939486, -0.6315773,
0.02945459, 0.1831811, -0.1384367, 0.7750702, -0.01939486, -0.6315773,
0.03078446, 0.1823976, -0.1367806, 0.7750702, -0.01939486, -0.6315773,
0.03078446, 0.1823976, -0.1367806, 0.7750702, -0.01939486, -0.6315773,
0.02945459, 0.1831811, -0.1384367, 0.3265553, 0.9284519, 0.1770274,
0.02869855, 0.1832001, -0.1371413, 0.3265553, 0.9284519, 0.1770274,
0.03078446, 0.1823976, -0.1367806, 0.3265553, 0.9284519, 0.1770274,
0.03078446, 0.1823976, -0.1367806, 0.3265553, 0.9284519, 0.1770274,
0.02869855, 0.1832001, -0.1371413, -0.1688058, 0.004224256, 0.9856403,
0.02866102, 0.1817005, -0.1371413, -0.1688058, 0.004224256, 0.9856403,
0.03078446, 0.1823976, -0.1367806, -0.1688058, 0.004224256, 0.9856403,
0.03078446, 0.1823976, -0.1367806, -0.1688058, 0.004224256, 0.9856403
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
0.04594905, 0.5136167, 0.973057, 0.161066, 0.1666059, 0.9727796,
0.04174253, 0.5176834, 0.973057, 0.161066, 0.1666059, 0.9727796,
0.03778656, 0.5135914, 0.9744129, 0.161066, 0.1666059, 0.9727796,
0.04199308, 0.5095247, 0.9744129, 0.161066, 0.1666059, 0.9727796,
-0.02332239, 0.4419632, 0.5546837, 0.1610655, 0.166604, 0.97278,
-0.02752891, 0.4460298, 0.5546837, 0.1610655, 0.166604, 0.97278,
-0.03148488, 0.4419378, 0.5560396, 0.1610655, 0.166604, 0.97278,
-0.02727837, 0.4378712, 0.5560396, 0.1610655, 0.166604, 0.97278,
0.04594905, 0.5136167, 0.973057, -0.6761329, -0.6993887, 0.2317318,
0.04174253, 0.5176834, 0.973057, -0.6761329, -0.6993887, 0.2317318,
-0.02752891, 0.4460298, 0.5546837, -0.6761329, -0.6993887, 0.2317318,
-0.02332239, 0.4419632, 0.5546837, -0.6761329, -0.6993887, 0.2317318,
0.04174253, 0.5176834, 0.973057, 0.7189538, -0.6950579, 1.052505e-06,
0.03778656, 0.5135914, 0.9744129, 0.7189538, -0.6950579, 1.052505e-06,
-0.03148488, 0.4419378, 0.5560396, 0.7189538, -0.6950579, 1.052505e-06,
-0.02752891, 0.4460298, 0.5546837, 0.7189538, -0.6950579, 1.052505e-06,
0.03778656, 0.5135914, 0.9744129, 0.6761381, 0.6993839, -0.2317318,
0.04199308, 0.5095247, 0.9744129, 0.6761381, 0.6993839, -0.2317318,
-0.02727837, 0.4378712, 0.5560396, 0.6761381, 0.6993839, -0.2317318,
-0.03148488, 0.4419378, 0.5560396, 0.6761381, 0.6993839, -0.2317318,
0.04199308, 0.5095247, 0.9744129, -0.7189585, 0.6950529, 6.361248e-07,
0.04594905, 0.5136167, 0.973057, -0.7189585, 0.6950529, 6.361248e-07,
-0.02332239, 0.4419632, 0.5546837, -0.7189585, 0.6950529, 6.361248e-07,
-0.02727837, 0.4378712, 0.5560396, -0.7189585, 0.6950529, 6.361248e-07,
0.04291413, 0.5136073, 0.9735612, 0.1610471, 0.1665917, 0.9727852,
0.04183569, 0.5146499, 0.9735612, 0.1610471, 0.1665917, 0.9727852,
0.04082149, 0.5136008, 0.9739087, 0.1610471, 0.1665917, 0.9727852,
0.04189992, 0.5125582, 0.9739087, 0.1610471, 0.1665917, 0.9727852,
0.04291413, 0.5136073, 0.9735612, -0.729732, 0.5923026, -0.3415682,
0.04189992, 0.5125582, 0.9739087, -0.729732, 0.5923026, -0.3415682,
0.04218994, 0.5139373, 0.9756805, -0.729732, 0.5923026, -0.3415682,
0.04218994, 0.5139373, 0.9756805, -0.729732, 0.5923026, -0.3415682,
0.04291413, 0.5136073, 0.9735612, 0.6896263, 0.713369, 0.1245792,
0.04183569, 0.5146499, 0.9735612, 0.6896263, 0.713369, 0.1245792,
0.04218994, 0.5139373, 0.9756805, 0.6896263, 0.713369, 0.1245792,
0.04218994, 0.5139373, 0.9756805, 0.6896263, 0.713369, 0.1245792,
0.04183569, 0.5146499, 0.9735612, -0.6166258, 0.709306, 0.3415517,
0.04082149, 0.5136008, 0.9739087, -0.6166258, 0.709306, 0.3415517,
0.04218994, 0.5139373, 0.9756805, -0.6166258, 0.709306, 0.3415517,
0.04218994, 0.5139373, 0.9756805, -0.6166258, 0.709306, 0.3415517,
0.04082149, 0.5136008, 0.9739087, -0.5765401, -0.5963532, 0.5585377,
0.04189992, 0.5125582, 0.9739087, -0.5765401, -0.5963532, 0.5585377,
0.04218994, 0.5139373, 0.9756805, -0.5765401, -0.5963532, 0.5585377,
0.04218994, 0.5139373, 0.9756805, -0.5765401, -0.5963532, 0.5585377
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
0.04376873, 0.1941885, -0.1008217, 0.1089814, -0.3553322, -0.9283653,
0.05257423, 0.1968892, -0.1008217, 0.1089814, -0.3553322, -0.9283653,
0.05508143, 0.1887145, -0.09739849, 0.1089814, -0.3553322, -0.9283653,
0.04627594, 0.1860138, -0.09739849, 0.1089814, -0.3553322, -0.9283653,
-0.03305999, 0.4446875, 0.5536501, 0.1089813, -0.3553337, -0.9283648,
-0.02425449, 0.4473882, 0.5536501, 0.1089813, -0.3553337, -0.9283648,
-0.02174728, 0.4392135, 0.5570733, 0.1089813, -0.3553337, -0.9283648,
-0.03055278, 0.4365128, 0.5570733, 0.1089813, -0.3553337, -0.9283648,
0.04376873, 0.1941885, -0.1008217, 0.2722168, -0.8875588, 0.3716686,
0.05257423, 0.1968892, -0.1008217, 0.2722168, -0.8875588, 0.3716686,
-0.02425449, 0.4473882, 0.5536501, 0.2722168, -0.8875588, 0.3716686,
-0.03305999, 0.4446875, 0.5536501, 0.2722168, -0.8875588, 0.3716686,
0.05257423, 0.1968892, -0.1008217, -0.9560446, -0.2932213, -7.171706e-08,
0.05508143, 0.1887145, -0.09739849, -0.9560446, -0.2932213, -7.171706e-08,
-0.02174728, 0.4392135, 0.5570733, -0.9560446, -0.2932213, -7.171706e-08,
-0.02425449, 0.4473882, 0.5536501, -0.9560446, -0.2932213, -7.171706e-08,
0.05508143, 0.1887145, -0.09739849, -0.2722169, 0.8875587, -0.3716686,
0.04627594, 0.1860138, -0.09739849, -0.2722169, 0.8875587, -0.3716686,
-0.03055278, 0.4365128, 0.5570733, -0.2722169, 0.8875587, -0.3716686,
-0.02174728, 0.4392135, 0.5570733, -0.2722169, 0.8875587, -0.3716686,
0.04627594, 0.1860138, -0.09739849, 0.9560445, 0.2932216, -8.068169e-08,
0.04376873, 0.1941885, -0.1008217, 0.9560445, 0.2932216, -8.068169e-08,
-0.03305999, 0.4446875, 0.5536501, 0.9560445, 0.2932216, -8.068169e-08,
-0.03055278, 0.4365128, 0.5570733, 0.9560445, 0.2932216, -8.068169e-08,
0.04850389, 0.1918973, -0.09938884, 0.1089787, -0.355331, -0.928366,
0.04993795, 0.1923371, -0.09938884, 0.1089787, -0.355331, -0.928366,
0.05034628, 0.1910058, -0.09883134, 0.1089787, -0.355331, -0.928366,
0.04891221, 0.1905659, -0.09883134, 0.1089787, -0.355331, -0.928366,
0.04850389, 0.1918973, -0.09938884, 0.8569069, 0.3993149, 0.3259727,
0.04891221, 0.1905659, -0.09883134, 0.8569069, 0.3993149, 0.3259727,
0.04964305, 0.1907408, -0.1009668, 0.8569069, 0.3993149, 0.3259727,
0.04964305, 0.1907408, -0.1009668, 0.8569069, 0.3993149, 0.3259727,
0.04850389, 0.1918973, -0.09938884, -0.2166146, 0.7062836, -0.6739746,
0.04993795, 0.1923371, -0.09938884, -0.2166146, 0.7062836, -0.6739746,
0.04964305, 0.1907408, -0.1009668, -0.2166146, 0.7062836, -0.6739746,
0.04964305, 0.1907408, -0.1009668, -0.2166146, 0.7062836, -0.6739746,
0.04993795, 0.1923371, -0.09938884, 0.9334379, 0.1497891, -0.3259706,
0.05034628, 0.1910058, -0.09883134, 0.9334379, 0.1497891, -0.3259706,
0.04964305, 0.1907408, -0.1009668, 0.9334379, 0.1497891, -0.3259706,
0.04964305, 0.1907408, -0.1009668, 0.9334379, 0.1497891, -0.3259706,
0.05034628, 0.1910058, -0.09883134, 0.2931538, -0.9558113, 0.02203347,
0.04891221, 0.1905659, -0.09883134, 0.2931538, -0.9558113, 0.02203347,
0.04964305, 0.1907408, -0.1009668, 0.2931538, -0.9558113, 0.02203347,
0.04964305, 0.1907408, -0.1009668, 0.2931538, -0.9558113, 0.02203347
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
0.06420305, 0.1680441, -0.1450178, -0.3446763, 0.6749822, 0.6523781,
0.05661761, 0.1641706, -0.1450178, -0.3446763, 0.6749822, 0.6523781,
0.05914457, 0.159222, -0.1385626, -0.3446763, 0.6749822, 0.6523781,
0.06673001, 0.1630955, -0.1385626, -0.3446763, 0.6749822, 0.6523781,
0.2817076, -0.2578977, -0.5566964, -0.3446729, 0.6749829, 0.6523792,
0.2741221, -0.2617711, -0.5566964, -0.3446729, 0.6749829, 0.6523792,
0.2766491, -0.2667197, -0.5502412, -0.3446729, 0.6749829, 0.6523792,
0.2842345, -0.2628463, -0.5502412, -0.3446729, 0.6749829, 0.6523792,
0.06420305, 0.1680441, -0.1450178, 0.2966903, -0.5810108, 0.7578927,
0.05661761, 0.1641706, -0.1450178, 0.2966903, -0.5810108, 0.7578927,
0.2741221, -0.2617711, -0.5566964, 0.2966903, -0.5810108, 0.7578927,
0.2817076, -0.2578977, -0.5566964, 0.2966903, -0.5810108, 0.7578927,
0.05661761, 0.1641706, -0.1450178, 0.8906031, 0.4547813, -3.248979e-07,
0.05914457, 0.159222, -0.1385626, 0.8906031, 0.4547813, -3.248979e-07,
0.2766491, -0.2667197, -0.5502412, 0.8906031, 0.4547813, -3.248979e-07,
0.2741221, -0.2617711, -0.5566964, 0.8906031, 0.4547813, -3.248979e-07,
0.05914457, 0.159222, -0.1385626, -0.2966894, 0.5810112, -0.7578927,
0.06673001, 0.1630955, -0.1385626, -0.2966894, 0.5810112, -0.7578927,
0.2842345, -0.2628463, -0.5502412, -0.2966894, 0.5810112, -0.7578927,
0.2766491, -0.2667197, -0.5502412, -0.2966894, 0.5810112, -0.7578927,
0.06673001, 0.1630955, -0.1385626, -0.8906034, -0.4547808, -2.815779e-07,
0.06420305, 0.1680441, -0.1450178, -0.8906034, -0.4547808, -2.815779e-07,
0.2817076, -0.2578977, -0.5566964, -0.8906034, -0.4547808, -2.815779e-07,
0.2842345, -0.2628463, -0.5502412, -0.8906034, -0.4547808, -2.815779e-07,
0.06211924, 0.1644099, -0.1423586, -0.3446699, 0.6749821, 0.6523817,
0.06078334, 0.1637277, -0.1423586, -0.3446699, 0.6749821, 0.6523817,
0.06122837, 0.1628562, -0.1412218, -0.3446699, 0.6749821, 0.6523817,
0.06256428, 0.1635384, -0.1412218, -0.3446699, 0.6749821, 0.6523817,
0.06211924, 0.1644099, -0.1423586, -0.7128744, -0.6628278, -0.2290622,
0.06256428, 0.1635384, -0.1412218, -0.7128744, -0.6628278, -0.2290622,
0.06098446, 0.164983, -0.1404854, -0.7128744, -0.6628278, -0.2290622,
0.06098446, 0.164983, -0.1404854, -0.7128744, -0.6628278, -0.2290622,
0.06211924, 0.1644099, -0.1423586, -0.3988175, 0.7810217, -0.4805723,
0.06078334, 0.1637277, -0.1423586, -0.3988175, 0.7810217, -0.4805723,
0.06098446, 0.164983, -0.1404854, -0.3988175, 0.7810217, -0.4805723,
0.06098446, 0.164983, -0.1404854, -0.3988175, 0.7810217, -0.4805723,
0.06078334, 0.1637277, -0.1423586, -0.9549217, -0.1888229, 0.2290642,
0.06122837, 0.1628562, -0.1412218, -0.9549217, -0.1888229, 0.2290642,
0.06098446, 0.164983, -0.1404854, -0.9549217, -0.1888229, 0.2290642,
0.06098446, 0.164983, -0.1404854, -0.9549217, -0.1888229, 0.2290642,
0.06122837, 0.1628562, -0.1412218, 0.1567765, -0.3070155, 0.9387026,
0.06256428, 0.1635384, -0.1412218, 0.1567765, -0.3070155, 0.9387026,
0.06098446, 0.164983, -0.1404854, 0.1567765, -0.3070155, 0.9387026,
0.06098446, 0.164983, -0.1404854, 0.1567765, -0.3070155, 0.9387026
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
0.2915094, -0.4712717, -0.8977496, 0.03855476, -0.5244609, -0.8505611,
0.2975385, -0.4708285, -0.8977496, 0.03855476, -0.5244609, -0.8505611,
0.2979155, -0.4759566, -0.8945705, 0.03855476, -0.5244609, -0.8505611,
0.2918863, -0.4763998, -0.8945705, 0.03855476, -0.5244609, -0.8505611,
0.2759752, -0.2599662, -0.5550584, 0.03855458, -0.524461, -0.850561,
0.2820044, -0.259523, -0.5550584, 0.03855458, -0.524461, -0.850561,
0.2823814, -0.2646511, -0.5518792, 0.03855458, -0.524461, -0.850561,
0.2763522, -0.2650944, -0.5518792, 0.03855458, -0.524461, -0.850561,
0.2915094, -0.4712717, -0.8977496, 0.06235913, -0.848272, 0.5258763,
0.2975385, -0.4708285, -0.8977496, 0.06235913, -0.848272, 0.5258763,
0.2820044, -0.259523, -0.5550584, 0.06235913, -0.848272, 0.5258763,
0.2759752, -0.2599662, -0.5550584, 0.06235913, -0.848272, 0.5258763,
0.2975385, -0.4708285, -0.8977496, -0.9973086, -0.07331769, 3.046966e-07,
0.2979155, -0.4759566, -0.8945705, -0.9973086, -0.07331769, 3.046966e-07,
0.2823814, -0.2646511, -0.5518792, -0.9973086, -0.07331769, 3.046966e-07,
0.2820044, -0.259523, -0.5550584, -0.9973086, -0.07331769, 3.046966e-07,
0.2979155, -0.4759566, -0.8945705, -0.06235883, 0.848272, -0.5258763,
0.2918863, -0.4763998, -0.8945705, -0.06235883, 0.848272, -0.5258763,
0.2763522, -0.2650944, -0.5518792, -0.06235883, 0.848272, -0.5258763,
0.2823814, -0.2646511, -0.5518792, -0.06235883, 0.848272, -0.5258763,
0.2918863, -0.4763998, -0.8945705, 0.997309, 0.07331353, 2.279251e-06,
0.2915094, -0.4712717, -0.8977496, 0.997309, 0.07331353, 2.279251e-06,
0.2759752, -0.2599662, -0.5550584, 0.997309, 0.07331353, 2.279251e-06,
0.2763522, -0.2650944, -0.5518792, 0.997309, 0.07331353, 2.279251e-06,
0.2939177, -0.4730329, -0.8965544, 0.0385538, -0.5244571, -0.8505635,
0.2954136, -0.472923, -0.8965544, 0.0385538, -0.5244571, -0.8505635,
0.2955072, -0.4741954, -0.8957656, 0.0385538, -0.5244571, -0.8505635,
0.2940112, -0.4743053, -0.8957656, 0.0385538, -0.5244571, -0.8505635,
0.2939177, -0.4730329, -0.8965544, 0.9202718, 0.2528017, 0.2986487,
0.2940112, -0.4743053, -0.8957656, 0.9202718, 0.2528017, 0.2986487,
0.2947895, -0.4746631, -0.8978611, 0.9202718, 0.2528017, 0.2986487,
0.2947895, -0.4746631, -0.8978611, 0.9202718, 0.2528017, 0.2986487,
0.2939177, -0.4730329, -0.8965544, -0.04485007, 0.6101068, -0.7910488,
0.2954136, -0.472923, -0.8965544, -0.04485007, 0.6101068, -0.7910488,
0.2947895, -0.4746631, -0.8978611, -0.04485007, 0.6101068, -0.7910488,
0.2947895, -0.4746631, -0.8978611, -0.04485007, 0.6101068, -0.7910488,
0.2954136, -0.472923, -0.8965544, 0.9473473, -0.1154947, -0.2986539,
0.2955072, -0.4741954, -0.8957656, 0.9473473, -0.1154947, -0.2986539,
0.2947895, -0.4746631, -0.8978611, 0.9473473, -0.1154947, -0.2986539,
0.2947895, -0.4746631, -0.8978611, 0.9473473, -0.1154947, -0.2986539,
0.2955072, -0.4741954, -0.8957656, 0.0719248, -0.9784111, 0.1937485,
0.2940112, -0.4743053, -0.8957656, 0.0719248, -0.9784111, 0.1937485,
0.2947895, -0.4746631, -0.8978611, 0.0719248, -0.9784111, 0.1937485,
0.2947895, -0.4746631, -0.8978611, 0.0719248, -0.9784111, 0.1937485
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
0.07023385, 0.1856378, -0.1449552, -0.7599162, 0.02041121, 0.6497005,
0.07000516, 0.1771237, -0.1449552, -0.7599162, 0.02041121, 0.6497005,
0.07553679, 0.1769751, -0.1384805, -0.7599162, 0.02041121, 0.6497005,
0.07576548, 0.1854892, -0.1384805, -0.7599162, 0.02041121, 0.6497005,
0.5969579, 0.1714902, -0.5952845, -0.7599167, 0.02041259, 0.6496999,
0.5967292, 0.1629761, -0.5952845, -0.7599167, 0.02041259, 0.6496999,
0.6022608, 0.1628275, -0.5888098, -0.7599167, 0.02041259, 0.6496999,
0.6024895, 0.1713416, -0.5888098, -0.7599167, 0.02041259, 0.6496999,
0.07023385, 0.1856378, -0.1449552, 0.6494659, -0.01744453, 0.7601905,
0.07000516, 0.1771237, -0.1449552, 0.6494659, -0.01744453, 0.7601905,
0.5967292, 0.1629761, -0.5952845, 0.6494659, -0.01744453, 0.7601905,
0.5969579, 0.1714902, -0.5952845, 0.6494659, -0.01744453, 0.7601905,
0.07000516, 0.1771237, -0.1449552, 0.02684895, 0.9996395, -1.158522e-06,
0.07553679, 0.1769751, -0.1384805, 0.02684895, 0.9996395, -1.158522e-06,
0.6022608, 0.1628275, -0.5888098, 0.02684895, 0.9996395, -1.158522e-06,
0.5967292, 0.1629761, -0.5952845, 0.02684895, 0.9996395, -1.158522e-06,
0.07553679, 0.1769751, -0.1384805, -0.6494659, 0.017444, -0.7601905,
0.07576548, 0.1854892, -0.1384805, -0.6494659, 0.017444, -0.7601905,
0.6024895, 0.1713416, -0.5888098, -0.6494659, 0.017444, -0.7601905,
0.6022608, 0.1628275, -0.5888098, -0.6494659, 0.017444, -0.7601905,
0.07576548, 0.1854892, -0.1384805, -0.0268501, -0.9996394, -1.898005e-07,
0.07023385, 0.1856378, -0.1449552, -0.0268501, -0.9996394, -1.898005e-07,
0.5969579, 0.1714902, -0.5952845, -0.0268501, -0.9996394, -1.898005e-07,
0.6024895, 0.1713416, -0.5888098, -0.0268501, -0.9996394, -1.898005e-07,
0.07241836, 0.1820693, -0.142288, -0.7599146, 0.02041251, 0.6497023,
0.07237808, 0.1805698, -0.142288, -0.7599146, 0.02041251, 0.6497023,
0.07335228, 0.1805436, -0.1411477, -0.7599146, 0.02041251, 0.6497023,
0.07339256, 0.1820431, -0.1411477, -0.7599146, 0.02041251, 0.6497023,
0.07241836, 0.1820693, -0.142288, 0.2416844, -0.9431584, -0.2281247,
0.07339256, 0.1820431, -0.1411477, 0.2416844, -0.9431584, -0.2281247,
0.07136549, 0.1813473, -0.1404185, 0.2416844, -0.9431584, -0.2281247,
0.07136549, 0.1813473, -0.1404185, 0.2416844, -0.9431584, -0.2281247,
0.07241836, 0.1820693, -0.142288, -0.8749387, 0.02350223, -0.483663,
0.07237808, 0.1805698, -0.142288, -0.8749387, 0.02350223, -0.483663,
0.07136549, 0.1813473, -0.1404185, -0.8749387, 0.02350223, -0.483663,
0.07136549, 0.1813473, -0.1404185, -0.8749387, 0.02350223, -0.483663,
0.07237808, 0.1805698, -0.142288, -0.291964, -0.928825, 0.2281256,
0.07335228, 0.1805436, -0.1411477, -0.291964, -0.928825, 0.2281256,
0.07136549, 0.1813473, -0.1404185, -0.291964, -0.928825, 0.2281256,
0.07136549, 0.1813473, -0.1404185, -0.291964, -0.928825, 0.2281256,
0.07335228, 0.1805436, -0.1411477, 0.3412921, -0.009165949, 0.9399126,
0.07339256, 0.1820431, -0.1411477, 0.3412921, -0.009165949, 0.9399126,
0.07136549, 0.1813473, -0.1404185, 0.3412921, -0.009165949, 0.9399126,
0.07136549, 0.1813473, -0.1404185, 0.3412921, -0.009165949, 0.9399126
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
0.7976792, 0.1815364, -0.9772033, 0.4615914, 0.03921943, -0.8862253,
0.7972657, 0.1864035, -0.9772033, 0.4615914, 0.03921943, -0.8862253,
0.8015791, 0.1867699, -0.9749405, 0.4615914, 0.03921943, -0.8862253,
0.8019926, 0.1819029, -0.9749405, 0.4615914, 0.03921943, -0.8862253,
0.5976594, 0.1645421, -0.5931786, 0.4615913, 0.03921954, -0.8862253,
0.5972459, 0.1694092, -0.5931786, 0.4615913, 0.03921954, -0.8862253,
0.6015592, 0.1697756, -0.5909157, 0.4615913, 0.03921954, -0.8862253,
0.6019728, 0.1649085, -0.5909157, 0.4615913, 0.03921954, -0.8862253,
0.7976792, 0.1815364, -0.9772033, 0.8830435, 0.07502839, 0.4632547,
0.7972657, 0.1864035, -0.9772033, 0.8830435, 0.07502839, 0.4632547,
0.5972459, 0.1694092, -0.5931786, 0.8830435, 0.07502839, 0.4632547,
0.5976594, 0.1645421, -0.5931786, 0.8830435, 0.07502839, 0.4632547,
0.7972657, 0.1864035, -0.9772033, 0.08465606, -0.9964103, -1.082813e-06,
0.8015791, 0.1867699, -0.9749405, 0.08465606, -0.9964103, -1.082813e-06,
0.6015592, 0.1697756, -0.5909157, 0.08465606, -0.9964103, -1.082813e-06,
0.5972459, 0.1694092, -0.5931786, 0.08465606, -0.9964103, -1.082813e-06,
0.8015791, 0.1867699, -0.9749405, -0.8830435, -0.07502862, -0.4632548,
0.8019926, 0.1819029, -0.9749405, -0.8830435, -0.07502862, -0.4632548,
0.6019728, 0.1649085, -0.5909157, -0.8830435, -0.07502862, -0.4632548,
0.6015592, 0.1697756, -0.5909157, -0.8830435, -0.07502862, -0.4632548,
0.8019926, 0.1819029, -0.9749405, -0.08465874, 0.99641, -3.265624e-07,
0.7976792, 0.1815364, -0.9772033, -0.08465874, 0.99641, -3.265624e-07,
0.5976594, 0.1645421, -0.5931786, -0.08465874, 0.99641, -3.265624e-07,
0.6019728, 0.1649085, -0.5909157, -0.08465874, 0.99641, -3.265624e-07,
0.7990304, 0.1833496, -0.9764194, 0.4616082, 0.03922901, -0.886216,
0.7989033, 0.1848442, -0.9764194, 0.4616082, 0.03922901, -0.886216,
0.8002279, 0.1849567, -0.9757245, 0.4616082, 0.03922901, -0.886216,
0.8003549, 0.1834621, -0.9757245, 0.4616082, 0.03922901, -0.886216,
0.7990304, 0.1833496, -0.9764194, -0.2413627, 0.919195, 0.3111667,
0.8003549, 0.1834621, -0.9757245, -0.2413627, 0.919195, 0.3111667,
0.8005523, 0.1842316, -0.9778444, -0.2413627, 0.919195, 0.3111667,
0.8005523, 0.1842316, -0.9778444, -0.2413627, 0.919195, 0.3111667,
0.7990304, 0.1833496, -0.9764194, -0.664735, -0.0564914, -0.7449403,
0.7989033, 0.1848442, -0.9764194, -0.664735, -0.0564914, -0.7449403,
0.8005523, 0.1842316, -0.9778444, -0.664735, -0.0564914, -0.7449403,
0.8005523, 0.1842316, -0.9778444, -0.664735, -0.0564914, -0.7449403,
0.7989033, 0.1848442, -0.9764194, 0.08281247, 0.9467369, -0.3111774,
0.8002279, 0.1849567, -0.9757245, 0.08281247, 0.9467369, -0.3111774,
0.8005523, 0.1842316, -0.9778444, 0.08281247, 0.9467369, -0.3111774,
0.8005523, 0.1842316, -0.9778444, 0.08281247, 0.9467369, -0.3111774,
0.8002279, 0.1849567, -0.9757245, 0.9888976, 0.08400039, 0.1225786,
0.8003549, 0.1834621, -0.9757245, 0.9888976, 0.08400039, 0.1225786,
0.8005523, 0.1842316, -0.9778444, 0.9888976, 0.08400039, 0.1225786,
0.8005523, 0.1842316, -0.9778444, 0.9888976, 0.08400039, 0.1225786
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
0.9742234, -0.227014, 0.2125114, 0.9243281, -0.3742589, 0.07448369,
0.9762326, -0.2220518, 0.2125114, 0.9243281, -0.3742589, 0.07448369,
0.975863, -0.2219021, 0.2178501, 0.9243281, -0.3742589, 0.07448369,
0.9738538, -0.2268644, 0.2178501, 0.9243281, -0.3742589, 0.07448369,
0.6119937, -0.08034733, 0.1833215, 0.9243279, -0.3742594, 0.07448441,
0.6140029, -0.07538507, 0.1833215, 0.9243279, -0.3742594, 0.07448441,
0.6136333, -0.07523541, 0.1886602, 0.9243279, -0.3742594, 0.07448441,
0.6116241, -0.08019767, 0.1886602, 0.9243279, -0.3742594, 0.07448441,
0.9742234, -0.227014, 0.2125114, -0.06904122, 0.02795467, 0.9972221,
0.9762326, -0.2220518, 0.2125114, -0.06904122, 0.02795467, 0.9972221,
0.6140029, -0.07538507, 0.1833215, -0.06904122, 0.02795467, 0.9972221,
0.6119937, -0.08034733, 0.1833215, -0.06904122, 0.02795467, 0.9972221,
0.9762326, -0.2220518, 0.2125114, -0.3753025, -0.9269024, -3.433375e-07,
0.975863, -0.2219021, 0.2178501, -0.3753025, -0.9269024, -3.433375e-07,
0.6136333, -0.07523541, 0.1886602, -0.3753025, -0.9269024, -3.433375e-07,
0.6140029, -0.07538507, 0.1833215, -0.3753025, -0.9269024, -3.433375e-07,
0.975863, -0.2219021, 0.2178501, 0.06904122, -0.02795476, -0.9972221,
0.9738538, -0.2268644, 0.2178501, 0.06904122, -0.02795476, -0.9972221,
0.6116241, -0.08019767, 0.1886602, 0.06904122, -0.02795476, -0.9972221,
0.6136333, -0.07523541, 0.1886602, 0.06904122, -0.02795476, -0.9972221,
0.9738538, -0.2268644, 0.2178501, 0.3753027, 0.9269023, -2.228226e-06,
0.9742234, -0.227014, 0.2125114, 0.3753027, 0.9269023, -2.228226e-06,
0.6119937, -0.08034733, 0.1833215, 0.3753027, 0.9269023, -2.228226e-06,
0.6116241, -0.08019767, 0.1886602, 0.3753027, 0.9269023, -2.228226e-06,
0.9748135, -0.2251742, 0.2144329, 0.9243233, -0.3742665, 0.07450472,
0.9753764, -0.2237839, 0.2144329, 0.9243233, -0.3742665, 0.07450472,
0.9752728, -0.2237419, 0.2159287, 0.9243233, -0.3742665, 0.07450472,
0.9747099, -0.2251323, 0.2159287, 0.9243233, -0.3742665, 0.07450472,
0.9748135, -0.2251742, 0.2144329, 0.02685534, 0.9992971, -0.02615388,
0.9747099, -0.2251323, 0.2159287, 0.02685534, 0.9992971, -0.02615388,
0.9768918, -0.2252066, 0.2153298, 0.02685534, 0.9992971, -0.02615388,
0.9768918, -0.2252066, 0.2153298, 0.02685534, 0.9992971, -0.02615388,
0.9748135, -0.2251742, 0.2144329, 0.3892018, -0.1575912, -0.907572,
0.9753764, -0.2237839, 0.2144329, 0.3892018, -0.1575912, -0.907572,
0.9768918, -0.2252066, 0.2153298, 0.3892018, -0.1575912, -0.907572,
0.9768918, -0.2252066, 0.2153298, 0.3892018, -0.1575912, -0.907572,
0.9753764, -0.2237839, 0.2144329, 0.6759577, 0.7364757, 0.02616767,
0.9752728, -0.2237419, 0.2159287, 0.6759577, 0.7364757, 0.02616767,
0.9768918, -0.2252066, 0.2153298, 0.6759577, 0.7364757, 0.02616767,
0.9768918, -0.2252066, 0.2153298, 0.6759577, 0.7364757, 0.02616767,
0.9752728, -0.2237419, 0.2159287, 0.2599079, -0.1052278, 0.9598827,
0.9747099, -0.2251323, 0.2159287, 0.2599079, -0.1052278, 0.9598827,
0.9768918, -0.2252066, 0.2153298, 0.2599079, -0.1052278, 0.9598827,
0.9768918, -0.2252066, 0.2153298, 0.2599079, -0.1052278, 0.9598827
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
0.07773535, 0.1747322, -0.1158117, -0.8108613, 0.3756644, -0.4487539,
0.07420546, 0.167113, -0.1158117, -0.8108613, 0.3756644, -0.4487539,
0.07078633, 0.1686971, -0.1083075, -0.8108613, 0.3756644, -0.4487539,
0.07431621, 0.1763162, -0.1083075, -0.8108613, 0.3756644, -0.4487539,
0.616288, -0.07477381, 0.1822388, -0.8108621, 0.3756664, -0.448751,
0.6127581, -0.08239298, 0.1822388, -0.8108621, 0.3756664, -0.448751,
0.609339, -0.08080893, 0.189743, -0.8108621, 0.3756664, -0.448751,
0.6128688, -0.07318976, 0.189743, -0.8108621, 0.3756664, -0.448751,
0.07773535, 0.1747322, -0.1158117, -0.4071786, 0.188642, 0.8936553,
0.07420546, 0.167113, -0.1158117, -0.4071786, 0.188642, 0.8936553,
0.6127581, -0.08239298, 0.1822388, -0.4071786, 0.188642, 0.8936553,
0.616288, -0.07477381, 0.1822388, -0.4071786, 0.188642, 0.8936553,
0.07420546, 0.167113, -0.1158117, 0.420368, 0.9073537, -4.070355e-07,
0.07078633, 0.1686971, -0.1083075, 0.420368, 0.9073537, -4.070355e-07,
0.609339, -0.08080893, 0.189743, 0.420368, 0.9073537, -4.070355e-07,
0.6127581, -0.08239298, 0.1822388, 0.420368, 0.9073537, -4.070355e-07,
0.07078633, 0.1686971, -0.1083075, 0.4071787, -0.1886417, -0.8936553,
0.07431621, 0.1763162, -0.1083075, 0.4071787, -0.1886417, -0.8936553,
0.6128688, -0.07318976, 0.189743, 0.4071787, -0.1886417, -0.8936553,
0.609339, -0.08080893, 0.189743, 0.4071787, -0.1886417, -0.8936553,
0.07431621, 0.1763162, -0.1083075, -0.4203679, -0.9073538, 7.305762e-08,
0.07773535, 0.1747322, -0.1158117, -0.4203679, -0.9073538, 7.305762e-08,
0.616288, -0.07477381, 0.1822388, -0.4203679, -0.9073538, 7.305762e-08,
0.6128688, -0.07318976, 0.189743, -0.4203679, -0.9073538, 7.305762e-08,
0.07488149, 0.1722537, -0.1127298, -0.8108622, 0.3756642, -0.4487526,
0.07425094, 0.1708926, -0.1127298, -0.8108622, 0.3756642, -0.4487526,
0.07364018, 0.1711756, -0.1113894, -0.8108622, 0.3756642, -0.4487526,
0.07427073, 0.1725366, -0.1113894, -0.8108622, 0.3756642, -0.4487526,
0.07488149, 0.1722537, -0.1127298, -0.1088912, -0.9814867, 0.1575646,
0.07427073, 0.1725366, -0.1113894, -0.1088912, -0.9814867, 0.1575646,
0.07263912, 0.172466, -0.1129571, -0.1088912, -0.9814867, 0.1575646,
0.07263912, 0.172466, -0.1129571, -0.1088912, -0.9814867, 0.1575646,
0.07488149, 0.1722537, -0.1127298, 0.09654026, -0.04472611, -0.9943237,
0.07425094, 0.1708926, -0.1127298, 0.09654026, -0.04472611, -0.9943237,
0.07263912, 0.172466, -0.1129571, 0.09654026, -0.04472611, -0.9943237,
0.07263912, 0.172466, -0.1129571, 0.09654026, -0.04472611, -0.9943237,
0.07425094, 0.1708926, -0.1127298, -0.6783152, -0.7176768, -0.1575706,
0.07364018, 0.1711756, -0.1113894, -0.6783152, -0.7176768, -0.1575706,
0.07263912, 0.172466, -0.1129571, -0.6783152, -0.7176768, -0.1575706,
0.07263912, 0.172466, -0.1129571, -0.6783152, -0.7176768, -0.1575706,
0.07364018, 0.1711756, -0.1113894, -0.6659642, 0.308538, 0.6791877,
0.07427073, 0.1725366, -0.1113894, -0.6659642, 0.308538, 0.6791877,
0.07263912, 0.172466, -0.1129571, -0.6659642, 0.308538, 0.6791877,
0.07263912, 0.172466, -0.1129571, -0.6659642, 0.308538, 0.6791877
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
0.5926155, 0.4179125, 0.2493415, 0.7450981, 0.7450981, 0.7450981, 1, 0.025,
0.1221918, 0.3395422, 0.604265, 0.7450981, 0.7450981, 0.7450981, 1, 0.025,
-0.2283432, 0.7236029, -0.02434197, 0.7450981, 0.7450981, 0.7450981, 1, 0.025,
0.6720127, -0.07984535, -0.01486616, 0.7450981, 0.7450981, 0.7450981, 1, 0.025,
0.1292123, -0.2147877, -0.6810959, 0.7450981, 0.7450981, 0.7450981, 1, 0.025,
0.2249712, 0.6622918, -0.5190935, 0.7450981, 0.7450981, 0.7450981, 1, 0.025,
0.6545366, 0.4453534, 0.05344744, 0.7450981, 0.7450981, 0.7450981, 1, 0.025,
0.3875851, 0.6482124, -0.4012111, 0.7450981, 0.7450981, 0.7450981, 1, 0.025,
0.05236758, 0.1818575, -0.124176, 1, 1, 0, 1, 0.025,
-0.4294901, -0.5745896, 0.4115665, 0.7450981, 0.7450981, 0.7450981, 1, 0.025,
0.4602867, 0.201389, -0.7377643, 0.7450981, 0.7450981, 0.7450981, 1, 0.025,
-0.6385978, 0.2504487, -0.3019641, 0.7450981, 0.7450981, 0.7450981, 1, 0.025,
-0.3674465, 0.6636333, -0.1450413, 0.7450981, 0.7450981, 0.7450981, 1, 0.025,
-0.5785745, 0.197646, -0.4926493, 0.7450981, 0.7450981, 0.7450981, 1, 0.025,
-0.02740364, 0.4419505, 0.5553617, 0.7450981, 0.7450981, 0.7450981, 1, 0.025,
0.2791783, -0.2623087, -0.5534688, 0.7450981, 0.7450981, 0.7450981, 1, 0.025,
0.5996093, 0.1671588, -0.5920472, 0.7450981, 0.7450981, 0.7450981, 1, 0.025,
0.6128135, -0.07779137, 0.1859909, 0.7450981, 0.7450981, 0.7450981, 1, 0.025,
0.96666, 0.5873665, 0.320756, 0.7450981, 0.7450981, 0.7450981, 1, 0.025,
0.0462166, 0.5181024, 1, 0.7450981, 0.7450981, 0.7450981, 1, 0.025,
-0.505902, 1, -0.06609318, 0.7450981, 0.7450981, 0.7450981, 1, 0.025,
1, -0.2345631, 0.2171919, 0.7450981, 0.7450981, 0.7450981, 1, 0.025,
0.2957534, -0.4877746, -0.9191251, 0.7450981, 0.7450981, 0.7450981, 1, 0.025,
0.4618695, 0.9401462, -0.6605081, 0.7450981, 0.7450981, 0.7450981, 1, 0.025,
-0.4016285, -0.02761495, 0.01139707, 0.7450981, 0.7450981, 0.7450981, 1, 0.025,
0.1612079, 0.5754486, 0.105027, 0.7450981, 0.7450981, 0.7450981, 1, 0.025,
0.02616552, 0.2763177, -0.7208043, 0.7450981, 0.7450981, 0.7450981, 1, 0.025,
-0.2066854, 0.07153989, 0.3656151, 0.7450981, 0.7450981, 0.7450981, 1, 0.025,
-0.2224717, -0.1808391, -0.3187653, 0.7450981, 0.7450981, 0.7450981, 1, 0.025,
-0.1938072, 0.4515431, -0.5370844, 0.7450981, 0.7450981, 0.7450981, 1, 0.025,
0.1745821, -0.2402158, -0.02961456, 0.7450981, 0.7450981, 0.7450981, 1, 0.025,
-0.1973179, 0.04927128, -0.6450145, 0.7450981, 0.7450981, 0.7450981, 1, 0.025,
0.1944655, -0.02935804, 0.3605487, 0.7450981, 0.7450981, 0.7450981, 1, 0.025,
-0.393066, 0.3316237, 0.1866179, 0.7450981, 0.7450981, 0.7450981, 1, 0.025,
-0.8192098, -0.8621131, 0.3968642, 0.7450981, 0.7450981, 0.7450981, 1, 0.025,
-0.5416313, -0.7763371, 0.8897334, 0.7450981, 0.7450981, 0.7450981, 1, 0.025,
-0.5254009, -1, 0.3870227, 0.7450981, 0.7450981, 0.7450981, 1, 0.025,
-0.8296441, -0.7216733, 0.7136896, 0.7450981, 0.7450981, 0.7450981, 1, 0.025,
-0.3448813, -0.9435015, 0.6857738, 0.7450981, 0.7450981, 0.7450981, 1, 0.025,
0.8120921, 0.1852121, -1, 0.7450981, 0.7450981, 0.7450981, 1, 0.025,
-1, 0.2533453, -0.5609455, 0.7450981, 0.7450981, 0.7450981, 1, 0.025
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
0.5926155, 0.4179125, 0.2493415, 0, -0.5, 0, 0.5,
0.5926155, 0.4179125, 0.2493415, 1, -0.5, 0, 0.5,
0.5926155, 0.4179125, 0.2493415, 1, 1.5, 0, 0.5,
0.5926155, 0.4179125, 0.2493415, 0, 1.5, 0, 0.5,
0.1221918, 0.3395422, 0.604265, 0, -0.5, 0, 0.5,
0.1221918, 0.3395422, 0.604265, 1, -0.5, 0, 0.5,
0.1221918, 0.3395422, 0.604265, 1, 1.5, 0, 0.5,
0.1221918, 0.3395422, 0.604265, 0, 1.5, 0, 0.5,
-0.2283432, 0.7236029, -0.02434197, 0, -0.5, 0, 0.5,
-0.2283432, 0.7236029, -0.02434197, 1, -0.5, 0, 0.5,
-0.2283432, 0.7236029, -0.02434197, 1, 1.5, 0, 0.5,
-0.2283432, 0.7236029, -0.02434197, 0, 1.5, 0, 0.5,
0.6720127, -0.07984535, -0.01486616, 0, -0.5, 0, 0.5,
0.6720127, -0.07984535, -0.01486616, 1, -0.5, 0, 0.5,
0.6720127, -0.07984535, -0.01486616, 1, 1.5, 0, 0.5,
0.6720127, -0.07984535, -0.01486616, 0, 1.5, 0, 0.5,
0.1292123, -0.2147877, -0.6810959, 0, -0.5, 0, 0.5,
0.1292123, -0.2147877, -0.6810959, 1, -0.5, 0, 0.5,
0.1292123, -0.2147877, -0.6810959, 1, 1.5, 0, 0.5,
0.1292123, -0.2147877, -0.6810959, 0, 1.5, 0, 0.5,
0.2249712, 0.6622918, -0.5190935, 0, -0.5, 0, 0.5,
0.2249712, 0.6622918, -0.5190935, 1, -0.5, 0, 0.5,
0.2249712, 0.6622918, -0.5190935, 1, 1.5, 0, 0.5,
0.2249712, 0.6622918, -0.5190935, 0, 1.5, 0, 0.5,
0.6545366, 0.4453534, 0.05344744, 0, -0.5, 0, 0.5,
0.6545366, 0.4453534, 0.05344744, 1, -0.5, 0, 0.5,
0.6545366, 0.4453534, 0.05344744, 1, 1.5, 0, 0.5,
0.6545366, 0.4453534, 0.05344744, 0, 1.5, 0, 0.5,
0.3875851, 0.6482124, -0.4012111, 0, -0.5, 0, 0.5,
0.3875851, 0.6482124, -0.4012111, 1, -0.5, 0, 0.5,
0.3875851, 0.6482124, -0.4012111, 1, 1.5, 0, 0.5,
0.3875851, 0.6482124, -0.4012111, 0, 1.5, 0, 0.5,
0.05236758, 0.1818575, -0.124176, 0, -0.5, 0, 0.5,
0.05236758, 0.1818575, -0.124176, 1, -0.5, 0, 0.5,
0.05236758, 0.1818575, -0.124176, 1, 1.5, 0, 0.5,
0.05236758, 0.1818575, -0.124176, 0, 1.5, 0, 0.5,
-0.4294901, -0.5745896, 0.4115665, 0, -0.5, 0, 0.5,
-0.4294901, -0.5745896, 0.4115665, 1, -0.5, 0, 0.5,
-0.4294901, -0.5745896, 0.4115665, 1, 1.5, 0, 0.5,
-0.4294901, -0.5745896, 0.4115665, 0, 1.5, 0, 0.5,
0.4602867, 0.201389, -0.7377643, 0, -0.5, 0, 0.5,
0.4602867, 0.201389, -0.7377643, 1, -0.5, 0, 0.5,
0.4602867, 0.201389, -0.7377643, 1, 1.5, 0, 0.5,
0.4602867, 0.201389, -0.7377643, 0, 1.5, 0, 0.5,
-0.6385978, 0.2504487, -0.3019641, 0, -0.5, 0, 0.5,
-0.6385978, 0.2504487, -0.3019641, 1, -0.5, 0, 0.5,
-0.6385978, 0.2504487, -0.3019641, 1, 1.5, 0, 0.5,
-0.6385978, 0.2504487, -0.3019641, 0, 1.5, 0, 0.5,
-0.3674465, 0.6636333, -0.1450413, 0, -0.5, 0, 0.5,
-0.3674465, 0.6636333, -0.1450413, 1, -0.5, 0, 0.5,
-0.3674465, 0.6636333, -0.1450413, 1, 1.5, 0, 0.5,
-0.3674465, 0.6636333, -0.1450413, 0, 1.5, 0, 0.5,
-0.5785745, 0.197646, -0.4926493, 0, -0.5, 0, 0.5,
-0.5785745, 0.197646, -0.4926493, 1, -0.5, 0, 0.5,
-0.5785745, 0.197646, -0.4926493, 1, 1.5, 0, 0.5,
-0.5785745, 0.197646, -0.4926493, 0, 1.5, 0, 0.5,
-0.02740364, 0.4419505, 0.5553617, 0, -0.5, 0, 0.5,
-0.02740364, 0.4419505, 0.5553617, 1, -0.5, 0, 0.5,
-0.02740364, 0.4419505, 0.5553617, 1, 1.5, 0, 0.5,
-0.02740364, 0.4419505, 0.5553617, 0, 1.5, 0, 0.5,
0.2791783, -0.2623087, -0.5534688, 0, -0.5, 0, 0.5,
0.2791783, -0.2623087, -0.5534688, 1, -0.5, 0, 0.5,
0.2791783, -0.2623087, -0.5534688, 1, 1.5, 0, 0.5,
0.2791783, -0.2623087, -0.5534688, 0, 1.5, 0, 0.5,
0.5996093, 0.1671588, -0.5920472, 0, -0.5, 0, 0.5,
0.5996093, 0.1671588, -0.5920472, 1, -0.5, 0, 0.5,
0.5996093, 0.1671588, -0.5920472, 1, 1.5, 0, 0.5,
0.5996093, 0.1671588, -0.5920472, 0, 1.5, 0, 0.5,
0.6128135, -0.07779137, 0.1859909, 0, -0.5, 0, 0.5,
0.6128135, -0.07779137, 0.1859909, 1, -0.5, 0, 0.5,
0.6128135, -0.07779137, 0.1859909, 1, 1.5, 0, 0.5,
0.6128135, -0.07779137, 0.1859909, 0, 1.5, 0, 0.5,
0.96666, 0.5873665, 0.320756, 0, -0.5, 0, 0.5,
0.96666, 0.5873665, 0.320756, 1, -0.5, 0, 0.5,
0.96666, 0.5873665, 0.320756, 1, 1.5, 0, 0.5,
0.96666, 0.5873665, 0.320756, 0, 1.5, 0, 0.5,
0.0462166, 0.5181024, 1, 0, -0.5, 0, 0.5,
0.0462166, 0.5181024, 1, 1, -0.5, 0, 0.5,
0.0462166, 0.5181024, 1, 1, 1.5, 0, 0.5,
0.0462166, 0.5181024, 1, 0, 1.5, 0, 0.5,
-0.505902, 1, -0.06609318, 0, -0.5, 0, 0.5,
-0.505902, 1, -0.06609318, 1, -0.5, 0, 0.5,
-0.505902, 1, -0.06609318, 1, 1.5, 0, 0.5,
-0.505902, 1, -0.06609318, 0, 1.5, 0, 0.5,
1, -0.2345631, 0.2171919, 0, -0.5, 0, 0.5,
1, -0.2345631, 0.2171919, 1, -0.5, 0, 0.5,
1, -0.2345631, 0.2171919, 1, 1.5, 0, 0.5,
1, -0.2345631, 0.2171919, 0, 1.5, 0, 0.5,
0.2957534, -0.4877746, -0.9191251, 0, -0.5, 0, 0.5,
0.2957534, -0.4877746, -0.9191251, 1, -0.5, 0, 0.5,
0.2957534, -0.4877746, -0.9191251, 1, 1.5, 0, 0.5,
0.2957534, -0.4877746, -0.9191251, 0, 1.5, 0, 0.5,
0.4618695, 0.9401462, -0.6605081, 0, -0.5, 0, 0.5,
0.4618695, 0.9401462, -0.6605081, 1, -0.5, 0, 0.5,
0.4618695, 0.9401462, -0.6605081, 1, 1.5, 0, 0.5,
0.4618695, 0.9401462, -0.6605081, 0, 1.5, 0, 0.5,
-0.4016285, -0.02761495, 0.01139707, 0, -0.5, 0, 0.5,
-0.4016285, -0.02761495, 0.01139707, 1, -0.5, 0, 0.5,
-0.4016285, -0.02761495, 0.01139707, 1, 1.5, 0, 0.5,
-0.4016285, -0.02761495, 0.01139707, 0, 1.5, 0, 0.5,
0.1612079, 0.5754486, 0.105027, 0, -0.5, 0, 0.5,
0.1612079, 0.5754486, 0.105027, 1, -0.5, 0, 0.5,
0.1612079, 0.5754486, 0.105027, 1, 1.5, 0, 0.5,
0.1612079, 0.5754486, 0.105027, 0, 1.5, 0, 0.5,
0.02616552, 0.2763177, -0.7208043, 0, -0.5, 0, 0.5,
0.02616552, 0.2763177, -0.7208043, 1, -0.5, 0, 0.5,
0.02616552, 0.2763177, -0.7208043, 1, 1.5, 0, 0.5,
0.02616552, 0.2763177, -0.7208043, 0, 1.5, 0, 0.5,
-0.2066854, 0.07153989, 0.3656151, 0, -0.5, 0, 0.5,
-0.2066854, 0.07153989, 0.3656151, 1, -0.5, 0, 0.5,
-0.2066854, 0.07153989, 0.3656151, 1, 1.5, 0, 0.5,
-0.2066854, 0.07153989, 0.3656151, 0, 1.5, 0, 0.5,
-0.2224717, -0.1808391, -0.3187653, 0, -0.5, 0, 0.5,
-0.2224717, -0.1808391, -0.3187653, 1, -0.5, 0, 0.5,
-0.2224717, -0.1808391, -0.3187653, 1, 1.5, 0, 0.5,
-0.2224717, -0.1808391, -0.3187653, 0, 1.5, 0, 0.5,
-0.1938072, 0.4515431, -0.5370844, 0, -0.5, 0, 0.5,
-0.1938072, 0.4515431, -0.5370844, 1, -0.5, 0, 0.5,
-0.1938072, 0.4515431, -0.5370844, 1, 1.5, 0, 0.5,
-0.1938072, 0.4515431, -0.5370844, 0, 1.5, 0, 0.5,
0.1745821, -0.2402158, -0.02961456, 0, -0.5, 0, 0.5,
0.1745821, -0.2402158, -0.02961456, 1, -0.5, 0, 0.5,
0.1745821, -0.2402158, -0.02961456, 1, 1.5, 0, 0.5,
0.1745821, -0.2402158, -0.02961456, 0, 1.5, 0, 0.5,
-0.1973179, 0.04927128, -0.6450145, 0, -0.5, 0, 0.5,
-0.1973179, 0.04927128, -0.6450145, 1, -0.5, 0, 0.5,
-0.1973179, 0.04927128, -0.6450145, 1, 1.5, 0, 0.5,
-0.1973179, 0.04927128, -0.6450145, 0, 1.5, 0, 0.5,
0.1944655, -0.02935804, 0.3605487, 0, -0.5, 0, 0.5,
0.1944655, -0.02935804, 0.3605487, 1, -0.5, 0, 0.5,
0.1944655, -0.02935804, 0.3605487, 1, 1.5, 0, 0.5,
0.1944655, -0.02935804, 0.3605487, 0, 1.5, 0, 0.5,
-0.393066, 0.3316237, 0.1866179, 0, -0.5, 0, 0.5,
-0.393066, 0.3316237, 0.1866179, 1, -0.5, 0, 0.5,
-0.393066, 0.3316237, 0.1866179, 1, 1.5, 0, 0.5,
-0.393066, 0.3316237, 0.1866179, 0, 1.5, 0, 0.5,
-0.8192098, -0.8621131, 0.3968642, 0, -0.5, 0, 0.5,
-0.8192098, -0.8621131, 0.3968642, 1, -0.5, 0, 0.5,
-0.8192098, -0.8621131, 0.3968642, 1, 1.5, 0, 0.5,
-0.8192098, -0.8621131, 0.3968642, 0, 1.5, 0, 0.5,
-0.5416313, -0.7763371, 0.8897334, 0, -0.5, 0, 0.5,
-0.5416313, -0.7763371, 0.8897334, 1, -0.5, 0, 0.5,
-0.5416313, -0.7763371, 0.8897334, 1, 1.5, 0, 0.5,
-0.5416313, -0.7763371, 0.8897334, 0, 1.5, 0, 0.5,
-0.5254009, -1, 0.3870227, 0, -0.5, 0, 0.5,
-0.5254009, -1, 0.3870227, 1, -0.5, 0, 0.5,
-0.5254009, -1, 0.3870227, 1, 1.5, 0, 0.5,
-0.5254009, -1, 0.3870227, 0, 1.5, 0, 0.5,
-0.8296441, -0.7216733, 0.7136896, 0, -0.5, 0, 0.5,
-0.8296441, -0.7216733, 0.7136896, 1, -0.5, 0, 0.5,
-0.8296441, -0.7216733, 0.7136896, 1, 1.5, 0, 0.5,
-0.8296441, -0.7216733, 0.7136896, 0, 1.5, 0, 0.5,
-0.3448813, -0.9435015, 0.6857738, 0, -0.5, 0, 0.5,
-0.3448813, -0.9435015, 0.6857738, 1, -0.5, 0, 0.5,
-0.3448813, -0.9435015, 0.6857738, 1, 1.5, 0, 0.5,
-0.3448813, -0.9435015, 0.6857738, 0, 1.5, 0, 0.5,
0.8120921, 0.1852121, -1, 0, -0.5, 0, 0.5,
0.8120921, 0.1852121, -1, 1, -0.5, 0, 0.5,
0.8120921, 0.1852121, -1, 1, 1.5, 0, 0.5,
0.8120921, 0.1852121, -1, 0, 1.5, 0, 0.5,
-1, 0.2533453, -0.5609455, 0, -0.5, 0, 0.5,
-1, 0.2533453, -0.5609455, 1, -0.5, 0, 0.5,
-1, 0.2533453, -0.5609455, 1, 1.5, 0, 0.5,
-1, 0.2533453, -0.5609455, 0, 1.5, 0, 0.5
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
0.5926155, 0.4179125, 0.2493415, 0, 0, 0.5450981, 1, 0, -0.5, 0, 0.5,
0.5926155, 0.4179125, 0.2493415, 0, 0, 0.5450981, 1, 1, -0.5, 0, 0.5,
0.5926155, 0.4179125, 0.2493415, 0, 0, 0.5450981, 1, 1, 1.5, 0, 0.5,
0.5926155, 0.4179125, 0.2493415, 0, 0, 0.5450981, 1, 0, 1.5, 0, 0.5
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
