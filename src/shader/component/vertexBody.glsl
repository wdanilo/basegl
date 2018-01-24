luv   = uv;
mat4 xform         = mat4(v_xform1, v_xform2, v_xform3, v_xform4);
vec3 spacePosition = vec3(uv.x * v_dim.x, uv.y * v_dim.y, 0.0);
local              = spacePosition;
spacePosition      = (xform * vec4(spacePosition, 1.0)).xyz;
vec3 p1            = spacePosition;
vec4 eyeT          = modelViewMatrix * vec4(p1, 1.0);
gl_Position        = projectionMatrix * eyeT;
eye                = eyeT.xyz;
eye.z              = -eye.z;
scaledEye          = eye;
scaledEye.z        = scaledEye.z / 1000.0;

componentID        = v_componentID;
componentFamilyID  = v_componentFamilyID;
pointerEvents      = v_pointerEvents;
zIndex             = v_zIndex;

zoomLevel = zoom;

// gl_Position.z += v_zIndex - 100.0;
world = gl_Position.xyz;
stageDim = v_dim;