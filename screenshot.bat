# > nul 2>&1 || cd "%~dp0" && python "%~0" && goto :eof
from PIL import ImageGrab
import time
while True:
	im = ImageGrab.grab()
	t=str(time.ctime()).replace(' ', '_').replace(':', '_')
	print t
	im.save(t+'.jpg')
	time.sleep(60*30)
