function love.load(arg)
	print(arg[1])
	local img = love.image.newImageData(arg[1])
	print(string.format("data[%d * %d] = {", img:getWidth(), img:getHeight()))
	for y=0,img:getHeight()-1 do
		io.write("\t")
		for x=0,img:getWidth()-1 do
			local r,g,b = img:getPixel(x, y)
			io.write(string.format("0x%02x%02x%02x, ", r*255, g*255, b*255))
		end
		print()
	end
	print("}")
	love.event.quit()
end
