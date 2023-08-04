# This script requires Q_CON_STRING environment variable to be set
# with the connections string of the storage account.

import os
from azure.storage.queue import QueueServiceClient

queue_name = "test-queue"
connection_string = os.environ['Q_CON_STRING']

queue_service = QueueServiceClient.from_connection_string(connection_string)
queue_client = queue_service.get_queue_client(queue_name)

messages = queue_client.receive_messages()
for message in messages:
    print("Received a message with contents: {}".format(message.content))
    queue_client.delete_message(message)
