/*
 * This file was generated by the LOVE2D Haxe bindings generator for Love2D v11.5.
 * Do not modify this file directly.
 * 2024-05-12 20:41:36
 */

package love;

import lua.Table;
import lua.UserData;
import love.Love2D.Object;

@:multiReturn
extern class WorldCallbacks {

	public var postSolve:Dynamic;
	public var endContact:Dynamic;
	public var beginContact:Dynamic;
	public var preSolve:Dynamic;
}

extern class Joint extends Object {

	function setUserData(value:Dynamic):Void;

	function new():Void;

	function getAnchors():JointAnchors;

	function getReactionForce(x:Float):JointReactionForce;

	function getBodies():JointBodies;

	function isDestroyed():Bool;

	function getType():JointType;

	function getReactionTorque(invdt:Float):Float;

	function getCollideConnected():Bool;

	function destroy():Void;

	function getUserData():Dynamic;

}

extern class PulleyJoint extends Joint {

	function getLengthB():Float;

	function setMaxLengths(max1:Float, max2:Float):Void;

	function getMaxLengths():PulleyJointMaxLengths;

	function getConstant():Float;

	function setRatio(ratio:Float):Void;

	function getRatio():Float;

	function getGroundAnchors():PulleyJointGroundAnchors;

	function new():Void;

	function setConstant(length:Float):Void;

	function getLengthA():Float;

}

@:multiReturn
extern class EdgeShapePoints {

	public var x2:Float;
	public var y1:Float;
	public var y2:Float;
	public var x1:Float;
}

@:multiReturn
extern class EdgeShapePreviousVertex {

	public var x:Float;
	public var y:Float;
}

@:multiReturn
extern class PulleyJointMaxLengths {

	public var len1:Float;
	public var len2:Float;
}

@:native("love.physics")
extern class PhysicsModule {

	@:overload(function (body1:Body, body2:Body, x:Float, y:Float, collideConnected:Bool):WeldJoint {})
	@:overload(function (body1:Body, body2:Body, x1:Float, y1:Float, x2:Float, y2:Float, collideConnected:Bool):WeldJoint {})
	public static function newWeldJoint(body1:Body, body2:Body, x1:Float, y1:Float, x2:Float, y2:Float, collideConnected:Bool, referenceAngle:Float):WeldJoint;

	@:overload(function (body1:Body, body2:Body, x:Float, y:Float, ax:Float, ay:Float, collideConnected:Bool):PrismaticJoint {})
	@:overload(function (body1:Body, body2:Body, x1:Float, y1:Float, x2:Float, y2:Float, ax:Float, ay:Float, collideConnected:Bool):PrismaticJoint {})
	public static function newPrismaticJoint(body1:Body, body2:Body, x1:Float, y1:Float, x2:Float, y2:Float, ax:Float, ay:Float, collideConnected:Bool, referenceAngle:Float):PrismaticJoint;

	@:overload(function (x1:Float, y1:Float, x2:Float, y2:Float, x3:Float, y3:Float, ...varargs:Float):PolygonShape {})
	public static function newPolygonShape(vertices:Table<Dynamic,Dynamic>):PolygonShape;

	public static function newFixture(body:Body, shape:Shape, density:Float):Fixture;

	public static function newDistanceJoint(body1:Body, body2:Body, x1:Float, y1:Float, x2:Float, y2:Float, collideConnected:Bool):DistanceJoint;

	public static function setMeter(scale:Float):Void;

	public static function newWorld(xg:Float, yg:Float, sleep:Bool):Dynamic;

	@:overload(function (body1:Body, body2:Body, x:Float, y:Float, collideConnected:Bool):RevoluteJoint {})
	public static function newRevoluteJoint(body1:Body, body2:Body, x1:Float, y1:Float, x2:Float, y2:Float, collideConnected:Bool, referenceAngle:Float):RevoluteJoint;

	public static function newGearJoint(joint1:Joint, joint2:Joint, ratio:Float, collideConnected:Bool):GearJoint;

	public static function getMeter():Float;

	@:overload(function (body1:Body, body2:Body, x:Float, y:Float, ax:Float, ay:Float, collideConnected:Bool):WheelJoint {})
	public static function newWheelJoint(body1:Body, body2:Body, x1:Float, y1:Float, x2:Float, y2:Float, ax:Float, ay:Float, collideConnected:Bool):WheelJoint;

	public static function newMouseJoint(body:Body, x:Float, y:Float):MouseJoint;

	public static function getDistance(fixture1:Fixture, fixture2:Fixture):PhysicsDistance;

	public static function newRopeJoint(body1:Body, body2:Body, x1:Float, y1:Float, x2:Float, y2:Float, maxLength:Float, collideConnected:Bool):RopeJoint;

	public static function newPulleyJoint(body1:Body, body2:Body, gx1:Float, gy1:Float, gx2:Float, gy2:Float, x1:Float, y1:Float, x2:Float, y2:Float, ratio:Float, collideConnected:Bool):PulleyJoint;

	@:overload(function (loop:Bool, x1:Float, y1:Float, x2:Float, y2:Float, ...varargs:Float):ChainShape {})
	public static function newChainShape(loop:Bool, points:Table<Dynamic,Dynamic>):ChainShape;

	@:overload(function (radius:Float):CircleShape {})
	public static function newCircleShape(x:Float, y:Float, radius:Float):CircleShape;

	@:overload(function (body1:Body, body2:Body, x:Float, y:Float, collideConnected:Bool):FrictionJoint {})
	public static function newFrictionJoint(body1:Body, body2:Body, x1:Float, y1:Float, x2:Float, y2:Float, collideConnected:Bool):FrictionJoint;

	public static function newEdgeShape(x1:Float, y1:Float, x2:Float, y2:Float):EdgeShape;

	public static function newBody(world:Dynamic, x:Float, y:Float, type:BodyType):Body;

	@:overload(function (width:Float, height:Float):PolygonShape {})
	public static function newRectangleShape(x:Float, y:Float, width:Float, height:Float, angle:Float):PolygonShape;

	@:overload(function (body1:Body, body2:Body, correctionFactor:Float):Dynamic {})
	public static function newMotorJoint(body1:Body, body2:Body, correctionFactor:Float, collideConnected:Bool):Dynamic;

}

@:multiReturn
extern class BodyLinearVelocityFromWorldPoint {

	public var vx:Float;
	public var vy:Float;
}

extern class ChainShape extends Shape {

	function setNextVertex(x:Float, y:Float):Void;

	function getVertexCount():Float;

	function getPreviousVertex():ChainShapePreviousVertex;

	function getNextVertex():ChainShapeNextVertex;

	function new():Void;

	function getPoint(index:Float):ChainShapePoint;

	function getPoints():ChainShapePoints;

	function setPreviousVertex(x:Float, y:Float):Void;

	function getChildEdge(index:Float):EdgeShape;

}

@:multiReturn
extern class ContactFixtures {

	public var fixtureA:Fixture;
	public var fixtureB:Fixture;
}

@:multiReturn
extern class BodyWorldPoint {

	public var worldX:Float;
	public var worldY:Float;
}

@:multiReturn
extern class RevoluteJointLimits {

	public var lower:Float;
	public var upper:Float;
}

@:multiReturn
extern class JointAnchors {

	public var x2:Float;
	public var y1:Float;
	public var y2:Float;
	public var x1:Float;
}

@:multiReturn
extern class ChainShapePreviousVertex {

	public var x:Float;
	public var y:Float;
}

@:multiReturn
extern class BodyPosition {

	public var x:Float;
	public var y:Float;
}

@:multiReturn
extern class ShapeComputeAABBResult {

	public var bottomRightX:Float;
	public var bottomRightY:Float;
	public var topLeftX:Float;
	public var topLeftY:Float;
}

extern class RevoluteJoint extends Joint {

	function setMotorSpeed(s:Float):Void;

	function getMotorSpeed():Float;

	function isMotorEnabled():Bool;

	function getJointAngle():Float;

	function new():Void;

	function setMaxMotorTorque(f:Float):Void;

	function setLowerLimit(lower:Float):Void;

	function setLimits(lower:Float, upper:Float):Void;

	function hasLimitsEnabled():Bool;

	function getLowerLimit():Float;

	function setLimitsEnabled(enable:Bool):Void;

	function getReferenceAngle():Float;

	function getLimits():RevoluteJointLimits;

	function getJointSpeed():Float;

	function getMotorTorque():Float;

	function getMaxMotorTorque():Float;

	function setUpperLimit(upper:Float):Void;

	function setMotorEnabled(enable:Bool):Void;

	function getUpperLimit():Float;

	function areLimitsEnabled():Bool;

}

@:multiReturn
extern class BodyLocalVector {

	public var localX:Float;
	public var localY:Float;
}

@:multiReturn
extern class MouseJointTarget {

	public var x:Float;
	public var y:Float;
}

@:multiReturn
extern class ChainShapeNextVertex {

	public var x:Float;
	public var y:Float;
}

extern class WheelJoint extends Joint {

	function setSpringFrequency(freq:Float):Void;

	function setMotorSpeed(speed:Float):Void;

	function getMotorSpeed():Float;

	function isMotorEnabled():Bool;

	function getSpringDampingRatio():Float;

	function getAxis():WheelJointAxis;

	function new():Void;

	function setMaxMotorTorque(maxTorque:Float):Void;

	function getSpringFrequency():Float;

	function getJointSpeed():Float;

	function getMotorTorque(invdt:Float):Float;

	function getMaxMotorTorque():Float;

	function setSpringDampingRatio(ratio:Float):Void;

	function setMotorEnabled(enable:Bool):Void;

	function getJointTranslation():Float;

}

@:multiReturn
extern class EdgeShapeNextVertex {

	public var x:Float;
	public var y:Float;
}

@:multiReturn
extern class JointReactionForce {

	public var x:Float;
	public var y:Float;
}

@:multiReturn
extern class FixtureMassData {

	public var mass:Float;
	public var x:Float;
	public var y:Float;
	public var inertia:Float;
}

@:multiReturn
extern class ContactPositions {

	public var x2:Float;
	public var y1:Float;
	public var y2:Float;
	public var x1:Float;
}

@:multiReturn
extern class BodyMassData {

	public var mass:Float;
	public var x:Float;
	public var y:Float;
	public var inertia:Float;
}

@:multiReturn
extern class GearJointJoints {

	public var joint2:Joint;
	public var joint1:Joint;
}

extern class Shape extends Object {

	function getRadius():Float;

	function getChildCount():Float;

	function new():Void;

	function testPoint(tx:Float, ty:Float, tr:Float, x:Float, y:Float):Bool;

	function computeMass(density:Float):ShapeComputeMassResult;

	function rayCast(x1:Float, y1:Float, x2:Float, y2:Float, maxFraction:Float, tx:Float, ty:Float, tr:Float, childIndex:Float):ShapeRayCastResult;

	function getType():ShapeType;

	function computeAABB(tx:Float, ty:Float, tr:Float, childIndex:Float):ShapeComputeAABBResult;

}

extern class GearJoint extends Joint {

	function setRatio(ratio:Float):Void;

	function getRatio():Float;

	function getJoints():GearJointJoints;

	function new():Void;

}

@:multiReturn
extern class ChainShapePoints {

	public var x2:Float;
	public var y1:Float;
	public var y2:Float;
	public var x1:Float;
}

@:multiReturn
extern class BodyWorldVector {

	public var worldX:Float;
	public var worldY:Float;
}

extern class PrismaticJoint extends Joint {

	function setMotorSpeed(s:Float):Void;

	function getMotorSpeed():Float;

	function isMotorEnabled():Bool;

	function getMaxMotorForce():Float;

	function getAxis():PrismaticJointAxis;

	function new():Void;

	function setMaxMotorForce(f:Float):Void;

	function setLowerLimit(lower:Float):Void;

	function setLimits(lower:Float, upper:Float):Void;

	function getLowerLimit():Float;

	function setLimitsEnabled():Bool;

	function getReferenceAngle():Float;

	function getLimits():PrismaticJointLimits;

	function getJointSpeed():Float;

	function setUpperLimit(upper:Float):Void;

	function setMotorEnabled(enable:Bool):Void;

	function getUpperLimit():Float;

	function getMotorForce(invdt:Float):Float;

	function getJointTranslation():Float;

	function areLimitsEnabled():Bool;

}

extern class EdgeShape extends Shape {

	function setNextVertex(x:Float, y:Float):Void;

	function getPreviousVertex():EdgeShapePreviousVertex;

	function getNextVertex():EdgeShapeNextVertex;

	function new():Void;

	function getPoints():EdgeShapePoints;

	function setPreviousVertex(x:Float, y:Float):Void;

}

@:multiReturn
extern class PrismaticJointLimits {

	public var lower:Float;
	public var upper:Float;
}

extern class Contact extends Object {

	function resetRestitution():Void;

	function getNormal():ContactNormal;

	function getFriction():Float;

	function getPositions():ContactPositions;

	function setEnabled(enabled:Bool):Void;

	function isTouching():Bool;

	function new():Void;

	function setRestitution(restitution:Float):Void;

	function getRestitution():Float;

	function isEnabled():Bool;

	function setFriction(friction:Float):Void;

	function resetFriction():Void;

	function getFixtures():ContactFixtures;

	function getChildren():ContactChildren;

}

@:multiReturn
extern class ChainShapePoint {

	public var x:Float;
	public var y:Float;
}

@:multiReturn
extern class BodyLocalPoints {

	public var x2:Float;
	// Skipping field ... of type Float.
	public var y1:Float;
	public var y2:Float;
	public var x1:Float;
}

extern class World extends Object {

	function setContactFilter(filter:Dynamic):Void;

	function getContacts():Table<Dynamic,Dynamic>;

	function update(dt:Float, velocityiterations:Float, positioniterations:Float):Void;

	function getJoints():Table<Dynamic,Dynamic>;

	function getContactFilter():Dynamic;

	function new():Void;

	function translateOrigin(x:Float, y:Float):Void;

	function setSleepingAllowed(allow:Bool):Void;

	function setGravity(x:Float, y:Float):Void;

	function queryBoundingBox(topLeftX:Float, topLeftY:Float, bottomRightX:Float, bottomRightY:Float, callback:Dynamic):Void;

	function getJointCount():Float;

	function getGravity():WorldGravity;

	function getContactCount():Float;

	function getBodies():Table<Dynamic,Dynamic>;

	function rayCast(x1:Float, y1:Float, x2:Float, y2:Float, callback:Dynamic):Void;

	function isDestroyed():Bool;

	function getBodyCount():Float;

	function destroy():Void;

	function setCallbacks(beginContact:Dynamic, endContact:Dynamic, preSolve:Dynamic, postSolve:Dynamic):Void;

	function isSleepingAllowed():Bool;

	function isLocked():Bool;

	function getCallbacks():WorldCallbacks;

}

@:multiReturn
extern class WheelJointAxis {

	public var x:Float;
	public var y:Float;
}

@:multiReturn
extern class BodyLinearVelocityFromLocalPoint {

	public var vx:Float;
	public var vy:Float;
}

@:multiReturn
extern class PhysicsDistance {

	public var x2:Float;
	public var distance:Float;
	public var y1:Float;
	public var y2:Float;
	public var x1:Float;
}

extern class PolygonShape extends Shape {

	function new():Void;

	function getPoints():PolygonShapePoints;

}

extern class WeldJoint extends Joint {

	function getDampingRatio():Float;

	function setFrequency(freq:Float):Void;

	function getFrequency():Float;

	function new():Void;

	function setDampingRatio(ratio:Float):Void;

	function getReferenceAngle():Float;

}

@:multiReturn
extern class CircleShapePoint {

	public var x:Float;
	public var y:Float;
}

@:multiReturn
extern class BodyTransform {

	public var x:Float;
	public var angle:Float;
	public var y:Float;
}

@:multiReturn
extern class BodyLocalCenter {

	public var x:Float;
	public var y:Float;
}

extern class RopeJoint extends Joint {

	function new():Void;

	function setMaxLength(maxLength:Float):Void;

	function getMaxLength():Float;

}

@:multiReturn
extern class ContactNormal {

	public var nx:Float;
	public var ny:Float;
}

@:multiReturn
extern class BodyWorldPoints {

	public var x2:Float;
	public var y1:Float;
	public var y2:Float;
	public var x1:Float;
}

@:multiReturn
extern class ContactChildren {

	public var indexA:Float;
	public var indexB:Float;
}

@:multiReturn
extern class MotorJointLinearOffset {

	public var x:Float;
	public var y:Float;
}

@:multiReturn
extern class PrismaticJointAxis {

	public var x:Float;
	public var y:Float;
}

@:multiReturn
extern class BodyLocalPoint {

	public var localX:Float;
	public var localY:Float;
}

extern class Fixture extends Object {

	function getShape():Shape;

	function getFriction():Float;

	function getCategory():Float;

	function setUserData(value:Dynamic):Void;

	function setGroupIndex(group:Float):Void;

	function setFilterData(categories:Float, mask:Float, group:Float):Void;

	function setDensity(density:Float):Void;

	function getGroupIndex():Float;

	function getFilterData():FixtureFilterData;

	function getDensity():Float;

	function setCategory(...varargs:Float):Void;

	function new():Void;

	function testPoint(x:Float, y:Float):Bool;

	function setSensor(sensor:Bool):Void;

	function setRestitution(restitution:Float):Void;

	function getRestitution():Float;

	function getMassData():FixtureMassData;

	function getBody():Body;

	function getBoundingBox(index:Float):FixtureBoundingBox;

	function setMask(...varargs:Float):Void;

	function setFriction(friction:Float):Void;

	function rayCast(x1:Float, y1:Float, x2:Float, y2:Float, maxFraction:Float, childIndex:Float):FixtureRayCastResult;

	function isSensor():Bool;

	function isDestroyed():Bool;

	function getMask():Float;

	function destroy():Void;

	function getUserData():Dynamic;

}

extern class FrictionJoint extends Joint {

	function getMaxForce():Float;

	function setMaxForce(maxForce:Float):Void;

	function new():Void;

	function setMaxTorque(torque:Float):Void;

	function getMaxTorque():Float;

}

@:multiReturn
extern class ShapeComputeMassResult {

	public var mass:Float;
	public var x:Float;
	public var y:Float;
	public var inertia:Float;
}

@:multiReturn
extern class WorldGravity {

	public var x:Float;
	public var y:Float;
}

@:multiReturn
extern class JointBodies {

	public var bodyA:Body;
	public var bodyB:Body;
}

@:multiReturn
extern class FixtureBoundingBox {

	public var bottomRightX:Float;
	public var bottomRightY:Float;
	public var topLeftX:Float;
	public var topLeftY:Float;
}

extern class CircleShape extends Shape {

	function setRadius(radius:Float):Void;

	function getRadius():Float;

	function new():Void;

	function setPoint(x:Float, y:Float):Void;

	function getPoint():CircleShapePoint;

}

@:multiReturn
extern class BodyWorldCenter {

	public var x:Float;
	public var y:Float;
}

extern class Body extends Object {

	function setMass(mass:Float):Void;

	function isDestroyed():Bool;

	function getLinearVelocityFromLocalPoint(x:Float, y:Float):BodyLinearVelocityFromLocalPoint;

	function setGravityScale(scale:Float):Void;

	function getAngularVelocity():Float;

	function getLinearVelocityFromWorldPoint(x:Float, y:Float):BodyLinearVelocityFromWorldPoint;

	function getLocalPoint(worldX:Float, worldY:Float):BodyLocalPoint;

	function getWorldPoint(localX:Float, localY:Float):BodyWorldPoint;

	function getType():BodyType;

	function getAngle():Float;

	function setAngularVelocity(w:Float):Void;

	function isSleepingAllowed():Bool;

	function getFixtures():Table<Dynamic,Dynamic>;

	function setInertia(inertia:Float):Void;

	function getLocalPoints(x1:Float, y1:Float, x2:Float, y2:Float, ...varargs:Float):BodyLocalPoints;

	function setX(x:Float):Void;

	function setAngle(angle:Float):Void;

	function setMassData(x:Float, y:Float, mass:Float, inertia:Float):Void;

	function setY(y:Float):Void;

	function setLinearVelocity(x:Float, y:Float):Void;

	function setPosition(x:Float, y:Float):Void;

	function getMassData():BodyMassData;

	function getWorld():Dynamic;

	function getPosition():BodyPosition;

	function setAwake(awake:Bool):Void;

	@:overload(function (ix:Float, iy:Float):Void {})
	function applyLinearImpulse(ix:Float, iy:Float, x:Float, y:Float):Void;

	function getLocalCenter():BodyLocalCenter;

	function applyAngularImpulse(impulse:Float):Void;

	function setType(type:BodyType):Void;

	function isActive():Bool;

	function getWorldPoints(x1:Float, y1:Float, x2:Float, y2:Float):BodyWorldPoints;

	function isFixedRotation():Bool;

	function setAngularDamping(damping:Float):Void;

	function destroy():Void;

	function setActive(active:Bool):Void;

	function isBullet():Bool;

	function getLinearDamping():Float;

	function getJoints():Table<Dynamic,Dynamic>;

	function getContacts():Table<Dynamic,Dynamic>;

	function getLocalVector(worldX:Float, worldY:Float):BodyLocalVector;

	function setSleepingAllowed(allowed:Bool):Void;

	function getWorldCenter():BodyWorldCenter;

	function setFixedRotation(isFixed:Bool):Void;

	function getLinearVelocity():BodyLinearVelocity;

	function getTransform():BodyTransform;

	function setBullet(status:Bool):Void;

	function getInertia():Float;

	function resetMassData():Void;

	function setLinearDamping(ld:Float):Void;

	function getMass():Float;

	function setUserData(value:Dynamic):Void;

	function getWorldVector(localX:Float, localY:Float):BodyWorldVector;

	function getUserData():Dynamic;

	function isAwake():Bool;

	function getGravityScale():Float;

	function getAngularDamping():Float;

	function setTransform(x:Float, y:Float, angle:Float):Void;

	function applyTorque(torque:Float):Void;

	function getX():Float;

	function new():Void;

	@:overload(function (fx:Float, fy:Float):Void {})
	function applyForce(fx:Float, fy:Float, x:Float, y:Float):Void;

	function isTouching(otherbody:Body):Bool;

	function getY():Float;

}

extern class DistanceJoint extends Joint {

	function getDampingRatio():Float;

	function setFrequency(Hz:Float):Void;

	function getFrequency():Float;

	function new():Void;

	function setDampingRatio(ratio:Float):Void;

	function setLength(l:Float):Void;

	function getLength():Float;

}

@:multiReturn
extern class FixtureFilterData {

	public var mask:Float;
	public var categories:Float;
	public var group:Float;
}

@:multiReturn
extern class FixtureRayCastResult {

	public var yn:Float;
	public var fraction:Float;
	public var xn:Float;
}

@:multiReturn
extern class PolygonShapePoints {

	public var x2:Float;
	public var y1:Float;
	public var y2:Float;
	public var x1:Float;
}

@:multiReturn
extern class BodyLinearVelocity {

	public var x:Float;
	public var y:Float;
}

extern class MouseJoint extends Joint {

	function getMaxForce():Float;

	function getDampingRatio():Float;

	function setMaxForce(f:Float):Void;

	function setFrequency(freq:Float):Void;

	function getFrequency():Float;

	function new():Void;

	function setTarget(x:Float, y:Float):Void;

	function setDampingRatio(ratio:Float):Void;

	function getTarget():MouseJointTarget;

}

extern class MotorJoint extends Joint {

	function getAngularOffset():Float;

	function setAngularOffset(angleoffset:Float):Void;

	function getLinearOffset():MotorJointLinearOffset;

	function new():Void;

	function setLinearOffset(x:Float, y:Float):Void;

}

@:multiReturn
extern class PulleyJointGroundAnchors {

	public var a2y:Float;
	public var a1x:Float;
	public var a1y:Float;
	public var a2x:Float;
}

@:multiReturn
extern class ShapeRayCastResult {

	public var yn:Float;
	public var fraction:Float;
	public var xn:Float;
}

extern enum BodyType {
	STATIC;
	DYNAMIC;
	KINEMATIC;
}

extern enum ShapeType {
	CIRCLE;
	POLYGON;
	EDGE;
	CHAIN;
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

