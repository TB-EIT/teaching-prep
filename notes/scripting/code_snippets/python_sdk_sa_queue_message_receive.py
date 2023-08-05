# This script requires Q_CON_STRING environment variable to be set
# with the connections string of the storage account.

import os
from azure.storage.queue import QueueServiceClient

# Set the queue name and read in the SA Queue connection string from the environment
queue_name = "test-queue"
connection_string = os.environ['Q_CON_STRING']

# Get the Queue Service client
queue_service = QueueServiceClient.from_connection_string(connection_string)
queue_client = queue_service.get_queue_client(queue_name)

# For every message received off the queue ...
messages = queue_client.receive_messages()

# ... simply print out and delete them
for message in messages:
    print("Received a message with contents: {}".format(message.content))
    queue_client.delete_message(message)
