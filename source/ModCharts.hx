import flixel.addons.effects.FlxTrail;
import flixel.tweens.FlxEase;
import flixel.tweens.FlxTween;

class ModCharts
{
	static public var stickNotes:Bool = true;
	static public var dadNotesVisible:Bool = true;
	static public var bfNotesVisible:Bool = true;

	/**
	 * Quickly spin a sprite 180 degrees. Usually used for spinning the strum arrows.
	 *
	 * ```haxe
	 * ModCharts.quickSpin(arrow);
	 * ```
	 *
	 * @param	Object 		The object to move (FlxObject)
	 */
	static public function quickSpin(sprite)
	{
		FlxTween.angle(sprite, 0, 360, 0.5, {
			type: FlxTween.ONESHOT,
			ease: FlxEase.quadInOut,
			startDelay: 0,
			loopDelay: 0
		});
	}

	/**
	 * Loops a sprite in a circle infinetly. DOES NOT ROTATE THE SPRITE!
	 *
	 * ```haxe
	 * ModCharts.circleLoop(arrow, 90, 50);
	 * ```
	 *
	 * @param	Object 		The object to move (FlxObject)
	 * @param	RotateRadius 		The rotating radius of the object
	 */
	static public function circleLoop(sprite, rotateradius, speed)
	{
		FlxTween.circularMotion(sprite, sprite.x, sprite.y, rotateradius, 90, true, speed, {type: FlxTween.LOOPING});
	}

	/**
	 * Moves the sprite to a certain place on the screen over time.
	 *
	 * ```haxe
	 * ModCharts.moveTo(arrow, 100, 100, 4);
	 * ```
	 *
	 * @param	Object 		The object to move (FlxObject)
	 * @param	x 		The x value of the final destination
	 * @param	y 		The y value of the final destination
	 * @param	duration 		How long it takes to get there(seconds)
	 */
<<<<<<< HEAD
    static public function moveTo(sprite, x, y, duration) {
        FlxTween.linearMotion(sprite, sprite.x, sprite.y, x, y, duration, true, { type: FlxTween.ONESHOT, ease: FlxEase.quadInOut});
    }

    /**
=======
	static public function moveTo(sprite, x, y, duration)
	{
		FlxTween.linearMotion(sprite, sprite.x, sprite.y, x, y, duration, true, {type: FlxTween.ONESHOT, ease: FlxEase.quadInOut});
	}

	/**
>>>>>>> e11773944c041f8897bba894b72031c2ee05378c
	 * Bounces the sprite up and down infinenty(WIP, STILL SHAKY)
	 *
	 * ```haxe
	 * ModCharts.bounceLoop(arrow, 3);
	 * ```
	 *
	 * @param	Object 		The object to bounce (FlxObject)
	 * @param	duration		How logn it takes to bounce up. Repeats for down
	 */
	static public function bounceLoop(sprite, duration)
	{
		FlxTween.linearMotion(sprite, sprite.x, sprite.y, sprite.x, sprite.y - 50, duration, true, {type: FlxTween.PINGPONG});
	}

	/**
	 * Adds a trail to the sprite, like the one spirit has. Pretty much a crossfade effect.
	 *
	 * ```haxe
	 * ModCharts.addTrailToSprite(dad);
	 * ```
	 *
	 * @param	Object 		The object to add the effect to (FlxObject)
	 * @return The trail sprite. simply add it to the project with add(spriteName)
	 */
<<<<<<< HEAD
    static public function addTrailToSprite(sprite) {
        var trail = new FlxTrail(sprite, null, 4, 24, 0.3, 0.069);
        // evilTrail.changeValuesEnabled(false, false, false, false);
        // evilTrail.changeGraphic()
        return trail; // to be added
    }

	/**
	 * Cancels all active movements on the sprite. Good for stages if you were using a loop.
	 *
	 * ```haxe
	 * ModCharts.cancelMovement(arrow);
	 * ```
	 *
	 * @param	Object 		The object to bounce (FlxObject)
	 * @param	duration		How logn it takes to bounce up. Repeats for down
	 */
    static public function cancelMovement(sprite) {
        FlxTween.cancelTweensOf(sprite);
    }
}
=======
	static public function addTrailToSprite(sprite)
	{
		var trail = new FlxTrail(sprite, null, 4, 2, 0.1, 0.069);
		// evilTrail.changeValuesEnabled(false, false, false, false);
		// evilTrail.changeGraphic()
		return trail; // to be added
	}
}
>>>>>>> e11773944c041f8897bba894b72031c2ee05378c