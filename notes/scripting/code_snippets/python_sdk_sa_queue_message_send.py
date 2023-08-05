# This script requires Q_CON_STRING environment variable to be set
# with the connections string of the storage account.

import sys, os
from azure.storage.queue import QueueServiceClient

# Set the queue name and read in the SA Queue connection string from the environment
queue_name = "test-queue"
connection_string = os.environ['Q_CON_STRING']

# Get the Queue Service client
queue_service = QueueServiceClient.from_connection_string(connection_string)
queue_client = queue_service.get_queue_client(queue_name)

# For every command line parameter ...
messages = sys.argv[1:]
print("Received {} of messages to send to the queue.".format(len(messages)))

# ... send its value as a SA Queue message
for msg in messages:
  queue_client.send_message(msg)
  print("Sent message: '{}' to the queue.".format(msg))
