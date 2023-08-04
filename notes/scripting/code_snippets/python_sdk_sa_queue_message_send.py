# This script requires Q_CON_STRING environment variable to be set
# with the connections string of the storage account.

import sys, os
from azure.storage.queue import QueueServiceClient

queue_name = "test-queue"
connection_string = os.environ['Q_CON_STRING']

queue_service = QueueServiceClient.from_connection_string(connection_string)
queue_client = queue_service.get_queue_client(queue_name)

messages = sys.argv[1:]
print("Received {} of messages to send to the queue.".format(len(messages)))

for msg in messages:
  queue_client.send_message(msg)
  print("Sent message: '{}' to the queue.".format(msg))
