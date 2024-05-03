// DO NOT EDIT THIS FILE
// GENERATED ON 2024-05-04 00:10:54

package love.physics;

import haxe.extern.Rest;
import lua.Table;
import lua.UserData;

@:native("love.physics")
extern class Physics {

	public static function getDistance(fixture1:Dynamic, fixture2:Dynamic): Distance;

	public static function getMeter(): Float;

	public static function newBody(world:Dynamic, x:Float = Dynamic, y:Float = Dynamic, type:Dynamic = Dynamic): Dynamic;

	@:overload
	public static function newChainShape(loop:Bool, x1:Float, y1:Float, x2:Float, y2:Float, ...:Float): Dynamic;

	@:overload
	public static function newChainShape(loop:Bool, points:Table<Dynamic,Dynamic>): Dynamic;

	@:overload
	public static function newCircleShape(radius:Float): Dynamic;

	@:overload
	public static function newCircleShape(x:Float, y:Float, radius:Float): Dynamic;

	public static function newDistanceJoint(body1:Dynamic, body2:Dynamic, x1:Float, y1:Float, x2:Float, y2:Float, collideConnected:Bool = Dynamic): Dynamic;

	public static function newEdgeShape(x1:Float, y1:Float, x2:Float, y2:Float): Dynamic;

	public static function newFixture(body:Dynamic, shape:Dynamic, density:Float = Dynamic): Dynamic;

	@:overload
	public static function newFrictionJoint(body1:Dynamic, body2:Dynamic, x:Float, y:Float, collideConnected:Bool = Dynamic): Dynamic;

	@:overload
	public static function newFrictionJoint(body1:Dynamic, body2:Dynamic, x1:Float, y1:Float, x2:Float, y2:Float, collideConnected:Bool = Dynamic): Dynamic;

	public static function newGearJoint(joint1:Dynamic, joint2:Dynamic, ratio:Float = Dynamic, collideConnected:Bool = Dynamic): Dynamic;

	@:overload
	public static function newMotorJoint(body1:Dynamic, body2:Dynamic, correctionFactor:Float = Dynamic): Dynamic;

	@:overload
	public static function newMotorJoint(body1:Dynamic, body2:Dynamic, correctionFactor:Float = Dynamic, collideConnected:Bool = Dynamic): Dynamic;

	public static function newMouseJoint(body:Dynamic, x:Float, y:Float): Dynamic;

	@:overload
	public static function newPolygonShape(x1:Float, y1:Float, x2:Float, y2:Float, x3:Float, y3:Float, ...:Float): Dynamic;

	@:overload
	public static function newPolygonShape(vertices:Table<Dynamic,Dynamic>): Dynamic;

	@:overload
	public static function newPrismaticJoint(body1:Dynamic, body2:Dynamic, x:Float, y:Float, ax:Float, ay:Float, collideConnected:Bool = Dynamic): Dynamic;

	@:overload
	public static function newPrismaticJoint(body1:Dynamic, body2:Dynamic, x1:Float, y1:Float, x2:Float, y2:Float, ax:Float, ay:Float, collideConnected:Bool = Dynamic): Dynamic;

	@:overload
	public static function newPrismaticJoint(body1:Dynamic, body2:Dynamic, x1:Float, y1:Float, x2:Float, y2:Float, ax:Float, ay:Float, collideConnected:Bool = Dynamic, referenceAngle:Float = Dynamic): Dynamic;

	public static function newPulleyJoint(body1:Dynamic, body2:Dynamic, gx1:Float, gy1:Float, gx2:Float, gy2:Float, x1:Float, y1:Float, x2:Float, y2:Float, ratio:Float = Dynamic, collideConnected:Bool = Dynamic): Dynamic;

	@:overload
	public static function newRectangleShape(width:Float, height:Float): Dynamic;

	@:overload
	public static function newRectangleShape(x:Float, y:Float, width:Float, height:Float, angle:Float = Dynamic): Dynamic;

	@:overload
	public static function newRevoluteJoint(body1:Dynamic, body2:Dynamic, x:Float, y:Float, collideConnected:Bool = Dynamic): Dynamic;

	@:overload
	public static function newRevoluteJoint(body1:Dynamic, body2:Dynamic, x1:Float, y1:Float, x2:Float, y2:Float, collideConnected:Bool = Dynamic, referenceAngle:Float = Dynamic): Dynamic;

	public static function newRopeJoint(body1:Dynamic, body2:Dynamic, x1:Float, y1:Float, x2:Float, y2:Float, maxLength:Float, collideConnected:Bool = Dynamic): Dynamic;

	@:overload
	public static function newWeldJoint(body1:Dynamic, body2:Dynamic, x:Float, y:Float, collideConnected:Bool = Dynamic): Dynamic;

	@:overload
	public static function newWeldJoint(body1:Dynamic, body2:Dynamic, x1:Float, y1:Float, x2:Float, y2:Float, collideConnected:Bool = Dynamic): Dynamic;

	@:overload
	public static function newWeldJoint(body1:Dynamic, body2:Dynamic, x1:Float, y1:Float, x2:Float, y2:Float, collideConnected:Bool = Dynamic, referenceAngle:Float = Dynamic): Dynamic;

	@:overload
	public static function newWheelJoint(body1:Dynamic, body2:Dynamic, x:Float, y:Float, ax:Float, ay:Float, collideConnected:Bool = Dynamic): Dynamic;

	@:overload
	public static function newWheelJoint(body1:Dynamic, body2:Dynamic, x1:Float, y1:Float, x2:Float, y2:Float, ax:Float, ay:Float, collideConnected:Bool = Dynamic): Dynamic;

	public static function newWorld(xg:Float = Dynamic, yg:Float = Dynamic, sleep:Bool = Dynamic): Dynamic;

	public static function setMeter(scale:Float): Void;

}

extern public class Distance {
	public var distance:Float;
	public var x1:Float;
	public var y1:Float;
	public var x2:Float;
	public var y2:Float;
}

extern class Body extends Object {

	public static function applyAngularImpulse(impulse:Float): Void;

	@:overload
	public static function applyForce(fx:Float, fy:Float): Void;

	@:overload
	public static function applyForce(fx:Float, fy:Float, x:Float, y:Float): Void;

	@:overload
	public static function applyLinearImpulse(ix:Float, iy:Float): Void;

	@:overload
	public static function applyLinearImpulse(ix:Float, iy:Float, x:Float, y:Float): Void;

	public static function applyTorque(torque:Float): Void;

	public static function destroy(): Void;

	public static function getAngle(): Float;

	public static function getAngularDamping(): Float;

	public static function getAngularVelocity(): Float;

	public static function getContacts(): Table<Dynamic,Dynamic>;

	public static function getFixtures(): Table<Dynamic,Dynamic>;

	public static function getGravityScale(): Float;

	public static function getInertia(): Float;

	public static function getJoints(): Table<Dynamic,Dynamic>;

	public static function getLinearDamping(): Float;

	public static function getLinearVelocity(): LinearVelocity;

	public static function getLinearVelocityFromLocalPoint(x:Float, y:Float): LinearVelocityFromLocalPoint;

	public static function getLinearVelocityFromWorldPoint(x:Float, y:Float): LinearVelocityFromWorldPoint;

	public static function getLocalCenter(): LocalCenter;

	public static function getLocalPoint(worldX:Float, worldY:Float): LocalPoint;

	public static function getLocalPoints(x1:Float, y1:Float, x2:Float, y2:Float, ...:Float): LocalPoints;

	public static function getLocalVector(worldX:Float, worldY:Float): LocalVector;

	public static function getMass(): Float;

	public static function getMassData(): MassData;

	public static function getPosition(): Position;

	public static function getTransform(): Transform;

	public static function getType(): Dynamic;

	public static function getUserData(): Dynamic;

	public static function getWorld(): Dynamic;

	public static function getWorldCenter(): WorldCenter;

	public static function getWorldPoint(localX:Float, localY:Float): WorldPoint;

	public static function getWorldPoints(x1:Float, y1:Float, x2:Float, y2:Float): WorldPoints;

	public static function getWorldVector(localX:Float, localY:Float): WorldVector;

	public static function getX(): Float;

	public static function getY(): Float;

	public static function isActive(): Bool;

	public static function isAwake(): Bool;

	public static function isBullet(): Bool;

	public static function isDestroyed(): Bool;

	public static function isFixedRotation(): Bool;

	public static function isSleepingAllowed(): Bool;

	public static function isTouching(otherbody:Dynamic): Bool;

	public static function resetMassData(): Void;

	public static function setActive(active:Bool): Void;

	public static function setAngle(angle:Float): Void;

	public static function setAngularDamping(damping:Float): Void;

	public static function setAngularVelocity(w:Float): Void;

	public static function setAwake(awake:Bool): Void;

	public static function setBullet(status:Bool): Void;

	public static function setFixedRotation(isFixed:Bool): Void;

	public static function setGravityScale(scale:Float): Void;

	public static function setInertia(inertia:Float): Void;

	public static function setLinearDamping(ld:Float): Void;

	public static function setLinearVelocity(x:Float, y:Float): Void;

	public static function setMass(mass:Float): Void;

	public static function setMassData(x:Float, y:Float, mass:Float, inertia:Float): Void;

	public static function setPosition(x:Float, y:Float): Void;

	public static function setSleepingAllowed(allowed:Bool): Void;

	public static function setTransform(x:Float, y:Float, angle:Float): Void;

	public static function setType(type:Dynamic): Void;

	public static function setUserData(value:Dynamic): Void;

	public static function setX(x:Float): Void;

	public static function setY(y:Float): Void;

}

extern class ChainShape extends Shape {

	public static function getChildEdge(index:Float): Dynamic;

	public static function getNextVertex(): NextVertex;

	public static function getPoint(index:Float): Point;

	public static function getPoints(): Points;

	public static function getPreviousVertex(): PreviousVertex;

	public static function getVertexCount(): Float;

	public static function setNextVertex(x:Float, y:Float): Void;

	public static function setPreviousVertex(x:Float, y:Float): Void;

}

extern class CircleShape extends Shape {

	public static function getPoint(): Point;

	public static function getRadius(): Float;

	public static function setPoint(x:Float, y:Float): Void;

	public static function setRadius(radius:Float): Void;

}

extern class Contact extends Object {

	public static function getChildren(): Children;

	public static function getFixtures(): Fixtures;

	public static function getFriction(): Float;

	public static function getNormal(): Normal;

	public static function getPositions(): Positions;

	public static function getRestitution(): Float;

	public static function isEnabled(): Bool;

	public static function isTouching(): Bool;

	public static function resetFriction(): Void;

	public static function resetRestitution(): Void;

	public static function setEnabled(enabled:Bool): Void;

	public static function setFriction(friction:Float): Void;

	public static function setRestitution(restitution:Float): Void;

}

extern class DistanceJoint extends Joint {

	public static function getDampingRatio(): Float;

	public static function getFrequency(): Float;

	public static function getLength(): Float;

	public static function setDampingRatio(ratio:Float): Void;

	public static function setFrequency(Hz:Float): Void;

	public static function setLength(l:Float): Void;

}

extern class EdgeShape extends Shape {

	public static function getNextVertex(): NextVertex;

	public static function getPoints(): Points;

	public static function getPreviousVertex(): PreviousVertex;

	public static function setNextVertex(x:Float, y:Float): Void;

	public static function setPreviousVertex(x:Float, y:Float): Void;

}

extern class Fixture extends Object {

	public static function destroy(): Void;

	public static function getBody(): Dynamic;

	public static function getBoundingBox(index:Float = Dynamic): BoundingBox;

	public static function getCategory(): Float;

	public static function getDensity(): Float;

	public static function getFilterData(): FilterData;

	public static function getFriction(): Float;

	public static function getGroupIndex(): Float;

	public static function getMask(): Float;

	public static function getMassData(): MassData;

	public static function getRestitution(): Float;

	public static function getShape(): Dynamic;

	public static function getUserData(): Dynamic;

	public static function isDestroyed(): Bool;

	public static function isSensor(): Bool;

	public static function rayCast(x1:Float, y1:Float, x2:Float, y2:Float, maxFraction:Float, childIndex:Float = Dynamic): RayCast;

	public static function setCategory(...:Float): Void;

	public static function setDensity(density:Float): Void;

	public static function setFilterData(categories:Float, mask:Float, group:Float): Void;

	public static function setFriction(friction:Float): Void;

	public static function setGroupIndex(group:Float): Void;

	public static function setMask(...:Float): Void;

	public static function setRestitution(restitution:Float): Void;

	public static function setSensor(sensor:Bool): Void;

	public static function setUserData(value:Dynamic): Void;

	public static function testPoint(x:Float, y:Float): Bool;

}

extern class FrictionJoint extends Joint {

	public static function getMaxForce(): Float;

	public static function getMaxTorque(): Float;

	public static function setMaxForce(maxForce:Float): Void;

	public static function setMaxTorque(torque:Float): Void;

}

extern class GearJoint extends Joint {

	public static function getJoints(): Joints;

	public static function getRatio(): Float;

	public static function setRatio(ratio:Float): Void;

}

extern class Joint extends Object {

	public static function destroy(): Void;

	public static function getAnchors(): Anchors;

	public static function getBodies(): Bodies;

	public static function getCollideConnected(): Bool;

	public static function getReactionForce(x:Float): ReactionForce;

	public static function getReactionTorque(invdt:Float): Float;

	public static function getType(): Dynamic;

	public static function getUserData(): Dynamic;

	public static function isDestroyed(): Bool;

	public static function setUserData(value:Dynamic): Void;

}

extern class MotorJoint extends Joint {

	public static function getAngularOffset(): Float;

	public static function getLinearOffset(): LinearOffset;

	public static function setAngularOffset(angleoffset:Float): Void;

	public static function setLinearOffset(x:Float, y:Float): Void;

}

extern class MouseJoint extends Joint {

	public static function getDampingRatio(): Float;

	public static function getFrequency(): Float;

	public static function getMaxForce(): Float;

	public static function getTarget(): Target;

	public static function setDampingRatio(ratio:Float): Void;

	public static function setFrequency(freq:Float): Void;

	public static function setMaxForce(f:Float): Void;

	public static function setTarget(x:Float, y:Float): Void;

}

extern class PolygonShape extends Shape {

	public static function getPoints(): Points;

}

extern class PrismaticJoint extends Joint {

	public static function areLimitsEnabled(): Bool;

	public static function getAxis(): Axis;

	public static function getJointSpeed(): Float;

	public static function getJointTranslation(): Float;

	public static function getLimits(): Limits;

	public static function getLowerLimit(): Float;

	public static function getMaxMotorForce(): Float;

	public static function getMotorForce(invdt:Float): Float;

	public static function getMotorSpeed(): Float;

	public static function getReferenceAngle(): Float;

	public static function getUpperLimit(): Float;

	public static function isMotorEnabled(): Bool;

	public static function setLimits(lower:Float, upper:Float): Void;

	public static function setLimitsEnabled(): Bool;

	public static function setLowerLimit(lower:Float): Void;

	public static function setMaxMotorForce(f:Float): Void;

	public static function setMotorEnabled(enable:Bool): Void;

	public static function setMotorSpeed(s:Float): Void;

	public static function setUpperLimit(upper:Float): Void;

}

extern class PulleyJoint extends Joint {

	public static function getConstant(): Float;

	public static function getGroundAnchors(): GroundAnchors;

	public static function getLengthA(): Float;

	public static function getLengthB(): Float;

	public static function getMaxLengths(): MaxLengths;

	public static function getRatio(): Float;

	public static function setConstant(length:Float): Void;

	public static function setMaxLengths(max1:Float, max2:Float): Void;

	public static function setRatio(ratio:Float): Void;

}

extern class RevoluteJoint extends Joint {

	public static function areLimitsEnabled(): Bool;

	public static function getJointAngle(): Float;

	public static function getJointSpeed(): Float;

	public static function getLimits(): Limits;

	public static function getLowerLimit(): Float;

	public static function getMaxMotorTorque(): Float;

	public static function getMotorSpeed(): Float;

	public static function getMotorTorque(): Float;

	public static function getReferenceAngle(): Float;

	public static function getUpperLimit(): Float;

	public static function hasLimitsEnabled(): Bool;

	public static function isMotorEnabled(): Bool;

	public static function setLimits(lower:Float, upper:Float): Void;

	public static function setLimitsEnabled(enable:Bool): Void;

	public static function setLowerLimit(lower:Float): Void;

	public static function setMaxMotorTorque(f:Float): Void;

	public static function setMotorEnabled(enable:Bool): Void;

	public static function setMotorSpeed(s:Float): Void;

	public static function setUpperLimit(upper:Float): Void;

}

extern class RopeJoint extends Joint {

	public static function getMaxLength(): Float;

	public static function setMaxLength(maxLength:Float): Void;

}

extern class Shape extends Object {

	public static function computeAABB(tx:Float, ty:Float, tr:Float, childIndex:Float = Dynamic): ComputeAABB;

	public static function computeMass(density:Float): ComputeMass;

	public static function getChildCount(): Float;

	public static function getRadius(): Float;

	public static function getType(): Dynamic;

	public static function rayCast(x1:Float, y1:Float, x2:Float, y2:Float, maxFraction:Float, tx:Float, ty:Float, tr:Float, childIndex:Float = Dynamic): RayCast;

	public static function testPoint(tx:Float, ty:Float, tr:Float, x:Float, y:Float): Bool;

}

extern class WeldJoint extends Joint {

	public static function getDampingRatio(): Float;

	public static function getFrequency(): Float;

	public static function getReferenceAngle(): Float;

	public static function setDampingRatio(ratio:Float): Void;

	public static function setFrequency(freq:Float): Void;

}

extern class WheelJoint extends Joint {

	public static function getAxis(): Axis;

	public static function getJointSpeed(): Float;

	public static function getJointTranslation(): Float;

	public static function getMaxMotorTorque(): Float;

	public static function getMotorSpeed(): Float;

	public static function getMotorTorque(invdt:Float): Float;

	public static function getSpringDampingRatio(): Float;

	public static function getSpringFrequency(): Float;

	public static function isMotorEnabled(): Bool;

	public static function setMaxMotorTorque(maxTorque:Float): Void;

	public static function setMotorEnabled(enable:Bool): Void;

	public static function setMotorSpeed(speed:Float): Void;

	public static function setSpringDampingRatio(ratio:Float): Void;

	public static function setSpringFrequency(freq:Float): Void;

}

extern class World extends Object {

	public static function destroy(): Void;

	public static function getBodies(): Table<Dynamic,Dynamic>;

	public static function getBodyCount(): Float;

	public static function getCallbacks(): Callbacks;

	public static function getContactCount(): Float;

	public static function getContactFilter(): Dynamic;

	public static function getContacts(): Table<Dynamic,Dynamic>;

	public static function getGravity(): Gravity;

	public static function getJointCount(): Float;

	public static function getJoints(): Table<Dynamic,Dynamic>;

	public static function isDestroyed(): Bool;

	public static function isLocked(): Bool;

	public static function isSleepingAllowed(): Bool;

	public static function queryBoundingBox(topLeftX:Float, topLeftY:Float, bottomRightX:Float, bottomRightY:Float, callback:Dynamic): Void;

	public static function rayCast(x1:Float, y1:Float, x2:Float, y2:Float, callback:Dynamic): Void;

	public static function setCallbacks(beginContact:Dynamic, endContact:Dynamic, preSolve:Dynamic = null, postSolve:Dynamic = null): Void;

	public static function setContactFilter(filter:Dynamic): Void;

	public static function setGravity(x:Float, y:Float): Void;

	public static function setSleepingAllowed(allow:Bool): Void;

	public static function translateOrigin(x:Float, y:Float): Void;

	public static function update(dt:Float, velocityiterations:Float = Dynamic, positioniterations:Float = Dynamic): Void;

}

enum abstract BodyType {
	var Static = "static";
	var Dynamic = "dynamic";
	var Kinematic = "kinematic";
}

enum abstract JointType {
	var Distance = "distance";
	var Friction = "friction";
	var Gear = "gear";
	var Mouse = "mouse";
	var Prismatic = "prismatic";
	var Pulley = "pulley";
	var Revolute = "revolute";
	var Rope = "rope";
	var Weld = "weld";
}

enum abstract ShapeType {
	var Circle = "circle";
	var Polygon = "polygon";
	var Edge = "edge";
	var Chain = "chain";
}

