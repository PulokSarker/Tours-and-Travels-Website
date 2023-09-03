import os
import csv
from cryptography.hazmat.primitives import padding
from cryptography.hazmat.primitives.ciphers import Cipher, algorithms, modes
from cryptography.hazmat.backends import default_backend

def read_csv_folder(folder_path):
    combined_data = {}
    for filename in os.listdir(folder_path):
        if filename.endswith(".csv"):
            csv_path = os.path.join(folder_path, filename)
            with open(csv_path, "r") as csv_file:
                csv_data = csv_file.read().encode()
                combined_data[filename] = csv_data
    return combined_data

def generate_key(input_key):
    return (input_key * 32)[:16]

def main():
    try:
        csv_folder_path = "F:\AIUB\semi 12\Thesis\Code meterial\SHAREABLE\Method_3\metadata"
        if not os.path.exists(csv_folder_path) or not os.path.isdir(csv_folder_path):
            print("Invalid CSV folder path.")
            return
        
        csv_data_map = read_csv_folder(csv_folder_path)
        
        key_folder_path = "F:\AIUB\semi 12\Thesis\Code meterial\SHAREABLE\Method_3\key"
        if not os.path.exists(key_folder_path) or not os.path.isdir(key_folder_path):
            print("Invalid key folder path.")
            return
        
        key_data_csv_path = os.path.join(key_folder_path, "key_data.csv")
        key_data_rows = []

        for csv_filename, crydata in csv_data_map.items():
            input_key = input("Enter a 4-byte key for {}: ".format(csv_filename))
            if len(input_key) != 4:
                print("Key must be 4 bytes long.")
                continue
            key_128 = generate_key(input_key.encode())

            half_length = len(crydata) // 2
            combined_crydata = crydata[half_length:] + crydata[:half_length]

            iv = os.urandom(16)
            cipher = Cipher(algorithms.AES(key_128), modes.CBC(iv), backend=default_backend())
            encryptor = cipher.encryptor()
            padder = padding.PKCS7(algorithms.AES.block_size).padder()
            padded_data = padder.update(combined_crydata) + padder.finalize()
            encrypted_data = encryptor.update(padded_data) + encryptor.finalize()

            output_folder = "F:\AIUB\semi 12\Thesis\Code meterial\SHAREABLE\Method_3\encrypted"
            if not os.path.exists(output_folder) or not os.path.isdir(output_folder):
                print("Invalid output folder path.")
                return
            ecd_file_path = os.path.join(output_folder, "encrypted_data_{}.ECD".format(csv_filename[:-4]))
            with open(ecd_file_path, "wb") as ecd_file:
                ecd_file.write(encrypted_data)

            print("Encryption successful for {}. Encrypted data saved to:".format(csv_filename), ecd_file_path)
            print("Public Key IV:", iv.hex())
            print("encrypted_data:", encrypted_data)

            key_data_rows.append([csv_filename, input_key, iv.hex()])

        try:
            with open(key_data_csv_path, "w", newline="") as csv_file:
                csv_writer = csv.writer(csv_file)
                csv_writer.writerow(["csv_filename", "input_key", "iv"])
                csv_writer.writerows(key_data_rows)
            print("Key data saved to:", key_data_csv_path)
        except Exception as e:
            print("An error occurred while saving key data:", str(e))

    except Exception as e:
        print("An error occurred:", str(e))


if __name__ == "__main__":
    main()
