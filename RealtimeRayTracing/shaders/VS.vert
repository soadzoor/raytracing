#version 120
// VBO-b�l �rkez� v�ltoz�k
attribute vec3 vertPosition;

// a pipeline-ban tov�bb adand� �rt�kek

varying vec3 vsRay;

// shader k�ls� param�terei

uniform vec3 eye;
uniform vec3 up;
uniform vec3 fw;
uniform vec3 right;
uniform float ratio;

void main()
{
	gl_Position = vec4( vertPosition, 1.0 );

	vec3 pos = eye + fw*3.0 + ratio*right*vertPosition.x + up*vertPosition.y;

	vsRay = pos - eye;
}