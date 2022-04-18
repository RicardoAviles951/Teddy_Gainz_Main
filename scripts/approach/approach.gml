/// approach(speed, max_speed, acceleration)
/// @description approach(speed,max_speed, acceleration);
/// @param speed
/// @param max_speed
/// @param acceleration
function approach(){
if (argument0 < argument1)
{
    argument0 += argument2*1;
    if (argument0 > argument1)
        return argument1;
}
else
{
    argument0 -= argument2*1;
    if (argument0 < argument1)
        return argument1;
}
return argument0;
}