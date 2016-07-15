unMapSprite(self);

if canFall ( self) then
  moveSprite( self, DOWN)  ;
else
  if ticks % 5 == 0 then
    local x;
    local y;
    local aim;

    x , y, aim = getSpriteVars(self)

    if isPlayerThere(self, aim) then
        attackPlayer(self);
    end

    if aim < LEFT or aim > RIGHT then
      aim = LEFT
    end

    if canMove(self, aim) then
      moveSprite(self, aim);
      if canFall(self) then
	aim = 5 - aim;
	moveSprite(self, aim);
      end 
    else
	aim = 5 - aim;      
    end

    setAim ( self, aim );

  end 
end

mapSprite(self);


---------------------------------

local s = getSprite(self);
local aim = s.aim;

s:unMap();

if s:canFall () then
  s:move( DOWN )  ;
else
  if ticks % 5 == 0 then   

    if s:isPlayerThere(aim) then
        s:attackPlayer();
    end

    if aim < LEFT or aim > RIGHT then
      aim = LEFT
    end

    if s:canMove(aim) then
      s:move(aim);
      if s:canFall() then
	aim = XOR(aim, 1);
	s:move(aim);
      end 
    else
	aim = XOR( aim, 1);      
    end

    s:setAim ( aim );

  end 
end

s:map();
 

---------------------