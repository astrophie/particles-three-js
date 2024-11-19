// uniform float time;
// uniform float size;
// varying vec2 vUv;
// varying vec3 vPosition;

// uniform sampler2D texture1;
// attribute float rands;
// varying float vRand;
// float PI = 3.141592653589793238;
// void main() {
//   vUv = uv;
//   vRand = floor(rands*5.);
//   vec4 mvPosition = modelViewMatrix * vec4( position, 1. );
//   gl_PointSize = 1000. * ( 1. / - mvPosition.z );
//   gl_PointSize = 12.*size;
//   gl_Position = projectionMatrix * mvPosition;
// }

uniform float uTime; 

varying vec3 vPosition; 
varying vec3 vNormal;
varying vec2 vUv;

void main() {
    vPosition = position;
    vNormal = normal;
    vUv = uv;
    
    // MVP
    vec4 modelViewPosition = modelViewMatrix * vec4(position, 1.0);
    vec4 projectedPosition = projectionMatrix * modelViewPosition;
    gl_Position = projectedPosition;
}