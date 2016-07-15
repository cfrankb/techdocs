local sprite = getSprite( self );
local proto = sprite:getProto();

if ((proto.fireRate == 0 ) or (ticks % proto.fireRate == 0)) and testJoyState( JOY_FIRE ) then
 
	local x , y, aim = getSpriteVars( self );

	if testJoyState( JOY_LEFT ) then 
    		aim = LEFT;
    		x = x - 8;
    		y = y + 16;
	elseif testJoyState( JOY_RIGHT ) then
    		aim = RIGHT;
		 x = x + 32;
    		y = y + 16;
	elseif testJoyState( JOY_UP ) then
    		aim = UP;
    		x = x + 8;
    		y = y - 8;
	elseif testJoyState( JOY_DOWN ) then
    		aim = DOWN;
    		x = x + 8;
    		y = y + 32;
	end 

  	if aim ~= HERE and proto.buddy ~= 0 then

		local bullet = addSprite (
			x, 
			y, 
			aim,
			proto.buddy
		);

	end

	playSound("shoot.ogg");

end
