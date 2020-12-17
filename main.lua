local css = "body{background-color: rgb(50,50,50);}";
local web = "<!DOCTYPE html>\n<html>\n<head>\n<title>Made by HTDBarsi</title>\n<meta charset=\"UTF-8\">\n<link rel=\"stylesheet\" href=\"style.css\"></head><body>";
local count = 0;

function box(color,height,width,positionX,positionY,borderradius)
    count += 1;
    web = web.."<div id=HTD_"..count.."></div>";
    css = css.."#HTD_"..count.."{border-radius:"..borderraidus.."px;background-color: rgb("..math.floor(color.R*255)..","..math.floor(color.G*255)..","..math.floor(color.B*255).."); height:"..height.."px;width:"..width.."px;margin-left:"..positionX.."px;margin-top:"..positionY.."px;position: absolute;}";
end;

function text(textcolor,bgcolor,height,width,positionX,positionY,textsize,text,font,borderradius)
    count += 1;
    web = web.."<p id=HTD_"..count..">"..text.."<p>";
    css = css.."#HTD_"..count.."{border-radius:"..borderradius.."px;font-size:"..textsize.."px;color: rgb("..math.floor(textcolor.R*255)..","..math.floor(textcolor.G*255)..","..math.floor(textcolor.B*255).."); background-color: rgb("..math.floor(bgcolor.R*255)..","..math.floor(bgcolor.G*255)..","..math.floor(bgcolor.B*255).."); height:"..height.."px;width:"..width.."px;margin-left:"..positionX.."px;margin-top:"..positionY.."px;position: absolute; font-family:"..font.."}";
end;

function finish(name)
writefile(name..".html",web);
writefile("style.css",css);
end;