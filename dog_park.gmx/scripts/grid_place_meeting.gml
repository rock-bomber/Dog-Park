///grid_place_meeting(x, y)
var xx = argument[0];
var yy = argument[1];

// Remember position
var xp = x;
var yp = y;

// Update position for bounding box calculations
x = xx;
y = yy;

/// Collision Checks
// Check for x meeting
var x_meeting = (level.grid[# bbox_right div CELL_WIDTH, bbox_top div CELL_HEIGHT] != FLOOR) || 
                (level.grid[# bbox_left div CELL_WIDTH, bbox_top div CELL_HEIGHT] != FLOOR);
                
// Check for y meeting
var y_meeting = (level.grid[# bbox_right div CELL_WIDTH, bbox_bottom div CELL_HEIGHT] != FLOOR) || 
                (level.grid[# bbox_left div CELL_WIDTH, bbox_bottom div CELL_HEIGHT] != FLOOR);
                
// Cheeck center meeting
var center_meeting = level.grid[# xx div CELL_WIDTH, yy div CELL_HEIGHT] != FLOOR;

              
// Move back
x = xp;
y = yp;

// Return true or false
return x_meeting || y_meeting || center_meeting;
