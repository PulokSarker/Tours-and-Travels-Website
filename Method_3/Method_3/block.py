import os
import hashlib
import time

folder_path = r'F:\AIUB\semi 12\Thesis\Code meterial\SHAREABLE\Method_3\encrypted'


class Block:
    def __init__(self, block_number, nonce, timestamp, data, previous_hash):
        self.block_number = block_number
        self.nonce = nonce
        self.timestamp = timestamp
        self.data = data
        self.previous_hash = previous_hash
        self.hash = self.calculate_hash()

    def calculate_hash(self):
        data_string = str(self.block_number) + str(self.nonce) + \
            str(self.timestamp) + str(self.data) + str(self.previous_hash)
        return hashlib.sha256(data_string.encode('utf-8')).hexdigest()


def read_files_in_folder(folder_path):
    files_data = []
    for filename in os.listdir(folder_path):
        file_path = os.path.join(folder_path, filename)
        if os.path.isfile(file_path):
            with open(file_path, 'rb') as file:
                file_data = file.read()
                files_data.append(file_data)
    return files_data


def create_blocks(files_data):
    blocks = []
    previous_hash = '0'  # Genesis block's previous hash
    nonce_limit = 500000  # Nonce limit

    for index, data in enumerate(files_data):
        block_number = index + 1
        nonce = 0
        timestamp = int(time.time())

        while True:
            data_string = str(block_number) + str(nonce) + \
                str(timestamp) + str(data) + str(previous_hash)
            block_hash = hashlib.sha256(
                data_string.encode('utf-8')).hexdigest()

            if block_hash[:4] == "0000":  # Example of a simple proof-of-work condition
                break

            nonce += 1
            if nonce >= nonce_limit:
                raise ValueError(
                    "Nonce limit reached without finding a suitable hash.")

        block = Block(block_number, nonce, timestamp, data, previous_hash)
        blocks.append(block)
        previous_hash = block.hash

    return blocks


files_data = read_files_in_folder(folder_path)
blocks = create_blocks(files_data)

# Printing block information
for block in blocks:
    print(f"Block Number: {block.block_number}")
    print(f"Nonce: {block.nonce}")
    print(f"Timestamp: {block.timestamp}")
    print(f"Data: {block.data}")
    print(f"Previous Hash: {block.previous_hash}")
    print(f"Hash: {block.hash}")
    print("\n")
