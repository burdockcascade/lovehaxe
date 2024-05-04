/*
 * This file was generated by the LOVE2D Haxe bindings generator.
 * Do not modify this file directly.
 * 2024-05-04 23:35:06
 */

package love;

@:native("love.physics")
extern class Physics {

	public static function getDistance(fixture1:Fixture, fixture2:Fixture):Distance;

	public static function getMeter():Float;

	public static function newBody(world:World, x:Float, y:Float, type:BodyType):Body;

	public static function newChainShape(loop:Bool, x1:Float, y1:Float, x2:Float, y2:Float, ...:Float):ChainShape;

	public static function newChainShape(loop:Bool, points:Dynamic):ChainShape;

	public static function newCircleShape(radius:Float):CircleShape;

	public static function newCircleShape(x:Float, y:Float, radius:Float):CircleShape;

	public static function newDistanceJoint(body1:Body, body2:Body, x1:Float, y1:Float, x2:Float, y2:Float, collideConnected:Bool):DistanceJoint;

	public static function newEdgeShape(x1:Float, y1:Float, x2:Float, y2:Float):EdgeShape;

	public static function newFixture(body:Body, shape:Shape, density:Float):Fixture;

	public static function newFrictionJoint(body1:Body, body2:Body, x:Float, y:Float, collideConnected:Bool):FrictionJoint;

	public static function newFrictionJoint(body1:Body, body2:Body, x1:Float, y1:Float, x2:Float, y2:Float, collideConnected:Bool):FrictionJoint;

	public static function newGearJoint(joint1:Joint, joint2:Joint, ratio:Float, collideConnected:Bool):GearJoint;

	public static function newMotorJoint(body1:Body, body2:Body, correctionFactor:Float):MotorJoint;

	public static function newMotorJoint(body1:Body, body2:Body, correctionFactor:Float, collideConnected:Bool):MotorJoint;

	public static function newMouseJoint(body:Body, x:Float, y:Float):MouseJoint;

	public static function newPolygonShape(x1:Float, y1:Float, x2:Float, y2:Float, x3:Float, y3:Float, ...:Float):PolygonShape;

	public static function newPolygonShape(vertices:Dynamic):PolygonShape;

	public static function newPrismaticJoint(body1:Body, body2:Body, x:Float, y:Float, ax:Float, ay:Float, collideConnected:Bool):PrismaticJoint;

	public static function newPrismaticJoint(body1:Body, body2:Body, x1:Float, y1:Float, x2:Float, y2:Float, ax:Float, ay:Float, collideConnected:Bool):PrismaticJoint;

	public static function newPrismaticJoint(body1:Body, body2:Body, x1:Float, y1:Float, x2:Float, y2:Float, ax:Float, ay:Float, collideConnected:Bool, referenceAngle:Float):PrismaticJoint;

	public static function newPulleyJoint(body1:Body, body2:Body, gx1:Float, gy1:Float, gx2:Float, gy2:Float, x1:Float, y1:Float, x2:Float, y2:Float, ratio:Float, collideConnected:Bool):PulleyJoint;

	public static function newRectangleShape(width:Float, height:Float):PolygonShape;

	public static function newRectangleShape(x:Float, y:Float, width:Float, height:Float, angle:Float):PolygonShape;

	public static function newRevoluteJoint(body1:Body, body2:Body, x:Float, y:Float, collideConnected:Bool):RevoluteJoint;

	public static function newRevoluteJoint(body1:Body, body2:Body, x1:Float, y1:Float, x2:Float, y2:Float, collideConnected:Bool, referenceAngle:Float):RevoluteJoint;

	public static function newRopeJoint(body1:Body, body2:Body, x1:Float, y1:Float, x2:Float, y2:Float, maxLength:Float, collideConnected:Bool):RopeJoint;

	public static function newWeldJoint(body1:Body, body2:Body, x:Float, y:Float, collideConnected:Bool):WeldJoint;

	public static function newWeldJoint(body1:Body, body2:Body, x1:Float, y1:Float, x2:Float, y2:Float, collideConnected:Bool):WeldJoint;

	public static function newWeldJoint(body1:Body, body2:Body, x1:Float, y1:Float, x2:Float, y2:Float, collideConnected:Bool, referenceAngle:Float):WeldJoint;

	public static function newWheelJoint(body1:Body, body2:Body, x:Float, y:Float, ax:Float, ay:Float, collideConnected:Bool):WheelJoint;

	public static function newWheelJoint(body1:Body, body2:Body, x1:Float, y1:Float, x2:Float, y2:Float, ax:Float, ay:Float, collideConnected:Bool):WheelJoint;

	public static function newWorld(xg:Float, yg:Float, sleep:Bool):World;

	public static function setMeter(scale:Float):Void;

}

extern class Body {

	public static function applyAngularImpulse(impulse:Float):Void;

	public static function applyForce(fx:Float, fy:Float):Void;

	public static function applyForce(fx:Float, fy:Float, x:Float, y:Float):Void;

	public static function applyLinearImpulse(ix:Float, iy:Float):Void;

	public static function applyLinearImpulse(ix:Float, iy:Float, x:Float, y:Float):Void;

	public static function applyTorque(torque:Float):Void;

	public static function destroy():Void;

	public static function getAngle():Float;

	public static function getAngularDamping():Float;

	public static function getAngularVelocity():Float;

	public static function getContacts():Dynamic;

	public static function getFixtures():Dynamic;

	public static function getGravityScale():Float;

	public static function getInertia():Float;

	public static function getJoints():Dynamic;

	public static function getLinearDamping():Float;

	public static function getLinearVelocity():LinearVelocity;

	public static function getLinearVelocityFromLocalPoint(x:Float, y:Float):LinearVelocityFromLocalPoint;

	public static function getLinearVelocityFromWorldPoint(x:Float, y:Float):LinearVelocityFromWorldPoint;

	public static function getLocalCenter():LocalCenter;

	public static function getLocalPoint(worldX:Float, worldY:Float):LocalPoint;

	public static function getLocalPoints(x1:Float, y1:Float, x2:Float, y2:Float, ...:Float):LocalPoints;

	public static function getLocalVector(worldX:Float, worldY:Float):LocalVector;

	public static function getMass():Float;

	public static function getMassData():MassData;

	public static function getPosition():Position;

	public static function getTransform():Transform;

	public static function getType():BodyType;

	public static function getUserData():Any;

	public static function getWorld():World;

	public static function getWorldCenter():WorldCenter;

	public static function getWorldPoint(localX:Float, localY:Float):WorldPoint;

	public static function getWorldPoints(x1:Float, y1:Float, x2:Float, y2:Float):WorldPoints;

	public static function getWorldVector(localX:Float, localY:Float):WorldVector;

	public static function getX():Float;

	public static function getY():Float;

	public static function isActive():Bool;

	public static function isAwake():Bool;

	public static function isBullet():Bool;

	public static function isDestroyed():Bool;

	public static function isFixedRotation():Bool;

	public static function isSleepingAllowed():Bool;

	public static function isTouching(otherbody:Body):Bool;

	public static function resetMassData():Void;

	public static function setActive(active:Bool):Void;

	public static function setAngle(angle:Float):Void;

	public static function setAngularDamping(damping:Float):Void;

	public static function setAngularVelocity(w:Float):Void;

	public static function setAwake(awake:Bool):Void;

	public static function setBullet(status:Bool):Void;

	public static function setFixedRotation(isFixed:Bool):Void;

	public static function setGravityScale(scale:Float):Void;

	public static function setInertia(inertia:Float):Void;

	public static function setLinearDamping(ld:Float):Void;

	public static function setLinearVelocity(x:Float, y:Float):Void;

	public static function setMass(mass:Float):Void;

	public static function setMassData(x:Float, y:Float, mass:Float, inertia:Float):Void;

	public static function setPosition(x:Float, y:Float):Void;

	public static function setSleepingAllowed(allowed:Bool):Void;

	public static function setTransform(x:Float, y:Float, angle:Float):Void;

	public static function setType(type:BodyType):Void;

	public static function setUserData(value:Any):Void;

	public static function setX(x:Float):Void;

	public static function setY(y:Float):Void;

}

extern class ChainShape {

	public static function getChildEdge(index:Float):EdgeShape;

	public static function getNextVertex():NextVertex;

	public static function getPoint(index:Float):Point;

	public static function getPoints():Points;

	public static function getPreviousVertex():PreviousVertex;

	public static function getVertexCount():Float;

	public static function setNextVertex(x:Float, y:Float):Void;

	public static function setPreviousVertex(x:Float, y:Float):Void;

}

extern class CircleShape {

	public static function getPoint():Point;

	public static function getRadius():Float;

	public static function setPoint(x:Float, y:Float):Void;

	public static function setRadius(radius:Float):Void;

}

extern class Contact {

	public static function getChildren():Children;

	public static function getFixtures():Fixtures;

	public static function getFriction():Float;

	public static function getNormal():Normal;

	public static function getPositions():Positions;

	public static function getRestitution():Float;

	public static function isEnabled():Bool;

	public static function isTouching():Bool;

	public static function resetFriction():Void;

	public static function resetRestitution():Void;

	public static function setEnabled(enabled:Bool):Void;

	public static function setFriction(friction:Float):Void;

	public static function setRestitution(restitution:Float):Void;

}

extern class DistanceJoint {

	public static function getDampingRatio():Float;

	public static function getFrequency():Float;

	public static function getLength():Float;

	public static function setDampingRatio(ratio:Float):Void;

	public static function setFrequency(Hz:Float):Void;

	public static function setLength(l:Float):Void;

}

extern class EdgeShape {

	public static function getNextVertex():NextVertex;

	public static function getPoints():Points;

	public static function getPreviousVertex():PreviousVertex;

	public static function setNextVertex(x:Float, y:Float):Void;

	public static function setPreviousVertex(x:Float, y:Float):Void;

}

extern class Fixture {

	public static function destroy():Void;

	public static function getBody():Body;

	public static function getBoundingBox(index:Float):BoundingBox;

	public static function getCategory():Float;

	public static function getDensity():Float;

	public static function getFilterData():FilterData;

	public static function getFriction():Float;

	public static function getGroupIndex():Float;

	public static function getMask():Float;

	public static function getMassData():MassData;

	public static function getRestitution():Float;

	public static function getShape():Shape;

	public static function getUserData():Any;

	public static function isDestroyed():Bool;

	public static function isSensor():Bool;

	public static function rayCast(x1:Float, y1:Float, x2:Float, y2:Float, maxFraction:Float, childIndex:Float):RayCastResult;

	public static function setCategory(...:Float):Void;

	public static function setDensity(density:Float):Void;

	public static function setFilterData(categories:Float, mask:Float, group:Float):Void;

	public static function setFriction(friction:Float):Void;

	public static function setGroupIndex(group:Float):Void;

	public static function setMask(...:Float):Void;

	public static function setRestitution(restitution:Float):Void;

	public static function setSensor(sensor:Bool):Void;

	public static function setUserData(value:Any):Void;

	public static function testPoint(x:Float, y:Float):Bool;

}

extern class FrictionJoint {

	public static function getMaxForce():Float;

	public static function getMaxTorque():Float;

	public static function setMaxForce(maxForce:Float):Void;

	public static function setMaxTorque(torque:Float):Void;

}

extern class GearJoint {

	public static function getJoints():Joints;

	public static function getRatio():Float;

	public static function setRatio(ratio:Float):Void;

}

extern class Joint {

	public static function destroy():Void;

	public static function getAnchors():Anchors;

	public static function getBodies():Bodies;

	public static function getCollideConnected():Bool;

	public static function getReactionForce(x:Float):ReactionForce;

	public static function getReactionTorque(invdt:Float):Float;

	public static function getType():JointType;

	public static function getUserData():Any;

	public static function isDestroyed():Bool;

	public static function setUserData(value:Any):Void;

}

extern class MotorJoint {

	public static function getAngularOffset():Float;

	public static function getLinearOffset():LinearOffset;

	public static function setAngularOffset(angleoffset:Float):Void;

	public static function setLinearOffset(x:Float, y:Float):Void;

}

extern class MouseJoint {

	public static function getDampingRatio():Float;

	public static function getFrequency():Float;

	public static function getMaxForce():Float;

	public static function getTarget():Target;

	public static function setDampingRatio(ratio:Float):Void;

	public static function setFrequency(freq:Float):Void;

	public static function setMaxForce(f:Float):Void;

	public static function setTarget(x:Float, y:Float):Void;

}

extern class PolygonShape {

	public static function getPoints():Points;

}

extern class PrismaticJoint {

	public static function areLimitsEnabled():Bool;

	public static function getAxis():Axis;

	public static function getJointSpeed():Float;

	public static function getJointTranslation():Float;

	public static function getLimits():Limits;

	public static function getLowerLimit():Float;

	public static function getMaxMotorForce():Float;

	public static function getMotorForce(invdt:Float):Float;

	public static function getMotorSpeed():Float;

	public static function getReferenceAngle():Float;

	public static function getUpperLimit():Float;

	public static function isMotorEnabled():Bool;

	public static function setLimits(lower:Float, upper:Float):Void;

	public static function setLimitsEnabled():Bool;

	public static function setLowerLimit(lower:Float):Void;

	public static function setMaxMotorForce(f:Float):Void;

	public static function setMotorEnabled(enable:Bool):Void;

	public static function setMotorSpeed(s:Float):Void;

	public static function setUpperLimit(upper:Float):Void;

}

extern class PulleyJoint {

	public static function getConstant():Float;

	public static function getGroundAnchors():GroundAnchors;

	public static function getLengthA():Float;

	public static function getLengthB():Float;

	public static function getMaxLengths():MaxLengths;

	public static function getRatio():Float;

	public static function setConstant(length:Float):Void;

	public static function setMaxLengths(max1:Float, max2:Float):Void;

	public static function setRatio(ratio:Float):Void;

}

extern class RevoluteJoint {

	public static function areLimitsEnabled():Bool;

	public static function getJointAngle():Float;

	public static function getJointSpeed():Float;

	public static function getLimits():Limits;

	public static function getLowerLimit():Float;

	public static function getMaxMotorTorque():Float;

	public static function getMotorSpeed():Float;

	public static function getMotorTorque():Float;

	public static function getReferenceAngle():Float;

	public static function getUpperLimit():Float;

	public static function hasLimitsEnabled():Bool;

	public static function isMotorEnabled():Bool;

	public static function setLimits(lower:Float, upper:Float):Void;

	public static function setLimitsEnabled(enable:Bool):Void;

	public static function setLowerLimit(lower:Float):Void;

	public static function setMaxMotorTorque(f:Float):Void;

	public static function setMotorEnabled(enable:Bool):Void;

	public static function setMotorSpeed(s:Float):Void;

	public static function setUpperLimit(upper:Float):Void;

}

extern class RopeJoint {

	public static function getMaxLength():Float;

	public static function setMaxLength(maxLength:Float):Void;

}

extern class Shape {

	public static function computeAABB(tx:Float, ty:Float, tr:Float, childIndex:Float):ComputeAABBResult;

	public static function computeMass(density:Float):ComputeMassResult;

	public static function getChildCount():Float;

	public static function getRadius():Float;

	public static function getType():ShapeType;

	public static function rayCast(x1:Float, y1:Float, x2:Float, y2:Float, maxFraction:Float, tx:Float, ty:Float, tr:Float, childIndex:Float):RayCastResult;

	public static function testPoint(tx:Float, ty:Float, tr:Float, x:Float, y:Float):Bool;

}

extern class WeldJoint {

	public static function getDampingRatio():Float;

	public static function getFrequency():Float;

	public static function getReferenceAngle():Float;

	public static function setDampingRatio(ratio:Float):Void;

	public static function setFrequency(freq:Float):Void;

}

extern class WheelJoint {

	public static function getAxis():Axis;

	public static function getJointSpeed():Float;

	public static function getJointTranslation():Float;

	public static function getMaxMotorTorque():Float;

	public static function getMotorSpeed():Float;

	public static function getMotorTorque(invdt:Float):Float;

	public static function getSpringDampingRatio():Float;

	public static function getSpringFrequency():Float;

	public static function isMotorEnabled():Bool;

	public static function setMaxMotorTorque(maxTorque:Float):Void;

	public static function setMotorEnabled(enable:Bool):Void;

	public static function setMotorSpeed(speed:Float):Void;

	public static function setSpringDampingRatio(ratio:Float):Void;

	public static function setSpringFrequency(freq:Float):Void;

}

extern class World {

	public static function destroy():Void;

	public static function getBodies():Dynamic;

	public static function getBodyCount():Float;

	public static function getCallbacks():Callbacks;

	public static function getContactCount():Float;

	public static function getContactFilter():Function;

	public static function getContacts():Dynamic;

	public static function getGravity():Gravity;

	public static function getJointCount():Float;

	public static function getJoints():Dynamic;

	public static function isDestroyed():Bool;

	public static function isLocked():Bool;

	public static function isSleepingAllowed():Bool;

	public static function queryBoundingBox(topLeftX:Float, topLeftY:Float, bottomRightX:Float, bottomRightY:Float, callback:Function):Void;

	public static function rayCast(x1:Float, y1:Float, x2:Float, y2:Float, callback:Function):Void;

	public static function setCallbacks(beginContact:Function, endContact:Function, preSolve:Function, postSolve:Function):Void;

	public static function setContactFilter(filter:Function):Void;

	public static function setGravity(x:Float, y:Float):Void;

	public static function setSleepingAllowed(allow:Bool):Void;

	public static function translateOrigin(x:Float, y:Float):Void;

	public static function update(dt:Float, velocityiterations:Float, positioniterations:Float):Void;

}

extern enum BodyType {
	STATIC;
	DYNAMIC;
	KINEMATIC;
}

extern enum JointType {
	DISTANCE;
	FRICTION;
	GEAR;
	MOUSE;
	PRISMATIC;
	PULLEY;
	REVOLUTE;
	ROPE;
	WELD;
}

extern enum ShapeType {
	CIRCLE;
	POLYGON;
	EDGE;
	CHAIN;
}

extern class Distance {

	public var distance:Float;
	public var x1:Float;
	public var y1:Float;
	public var x2:Float;
	public var y2:Float;

}

extern class LinearVelocity {

	public var x:Float;
	public var y:Float;

}

extern class LinearVelocityFromLocalPoint {

	public var vx:Float;
	public var vy:Float;

}

extern class LinearVelocityFromWorldPoint {

	public var vx:Float;
	public var vy:Float;

}

extern class LocalCenter {

	public var x:Float;
	public var y:Float;

}

extern class LocalPoint {

	public var localX:Float;
	public var localY:Float;

}

extern class LocalPoints {

	public var x1:Float;
	public var y1:Float;
	public var x2:Float;
	public var y2:Float;
	public var ...:Float;

}

extern class LocalVector {

	public var localX:Float;
	public var localY:Float;

}

extern class MassData {

	public var x:Float;
	public var y:Float;
	public var mass:Float;
	public var inertia:Float;

}

extern class Position {

	public var x:Float;
	public var y:Float;

}

extern class Transform {

	public var x:Float;
	public var y:Float;
	public var angle:Float;

}

extern class WorldCenter {

	public var x:Float;
	public var y:Float;

}

extern class WorldPoint {

	public var worldX:Float;
	public var worldY:Float;

}

extern class WorldPoints {

	public var x1:Float;
	public var y1:Float;
	public var x2:Float;
	public var y2:Float;

}

extern class WorldVector {

	public var worldX:Float;
	public var worldY:Float;

}

extern class NextVertex {

	public var x:Float;
	public var y:Float;

}

extern class Point {

	public var x:Float;
	public var y:Float;

}

extern class Points {

	public var x1:Float;
	public var y1:Float;
	public var x2:Float;
	public var y2:Float;

}

extern class PreviousVertex {

	public var x:Float;
	public var y:Float;

}

extern class Children {

	public var indexA:Float;
	public var indexB:Float;

}

extern class Normal {

	public var nx:Float;
	public var ny:Float;

}

extern class Positions {

	public var x1:Float;
	public var y1:Float;
	public var x2:Float;
	public var y2:Float;

}

extern class BoundingBox {

	public var topLeftX:Float;
	public var topLeftY:Float;
	public var bottomRightX:Float;
	public var bottomRightY:Float;

}

extern class FilterData {

	public var categories:Float;
	public var mask:Float;
	public var group:Float;

}

extern class RayCastResult {

	public var xn:Float;
	public var yn:Float;
	public var fraction:Float;

}

extern class Anchors {

	public var x1:Float;
	public var y1:Float;
	public var x2:Float;
	public var y2:Float;

}

extern class Bodies {

	public var bodyA:Body;
	public var bodyB:Body;

}

extern class ReactionForce {

	public var x:Float;
	public var y:Float;

}

extern class LinearOffset {

	public var x:Float;
	public var y:Float;

}

extern class Target {

	public var x:Float;
	public var y:Float;

}

extern class Axis {

	public var x:Float;
	public var y:Float;

}

extern class Limits {

	public var lower:Float;
	public var upper:Float;

}

extern class GroundAnchors {

	public var a1x:Float;
	public var a1y:Float;
	public var a2x:Float;
	public var a2y:Float;

}

extern class MaxLengths {

	public var len1:Float;
	public var len2:Float;

}

extern class ComputeAABBResult {

	public var topLeftX:Float;
	public var topLeftY:Float;
	public var bottomRightX:Float;
	public var bottomRightY:Float;

}

extern class ComputeMassResult {

	public var x:Float;
	public var y:Float;
	public var mass:Float;
	public var inertia:Float;

}

extern class Callbacks {

	public var beginContact:Function;
	public var endContact:Function;
	public var preSolve:Function;
	public var postSolve:Function;

}

extern class Gravity {

	public var x:Float;
	public var y:Float;

}

