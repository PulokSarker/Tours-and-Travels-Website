import os
import csv
from cryptography.hazmat.primitives import padding
from cryptography.hazmat.primitives.ciphers import Cipher, algorithms, modes
from cryptography.hazmat.backends import default_backend


def generate_key(input_key):
    return (input_key * 32)[:16]


def save_decrypted_to_csv(data, output_folder, filename):
    csv_path = os.path.join(output_folder, f"{filename}.csv")
    with open(csv_path, "w") as csv_file:
        csv_file.write(data.decode())


def main():
    try:
        ecd_file_folder = "F:\AIUB\semi 12\Thesis\Code meterial\SHAREABLE\Method_3\encrypted"
        ecd_files = [file for file in os.listdir(
            ecd_file_folder) if file.endswith(".ECD")]
        if not ecd_files:
            print("No .ECD files found in the folder.")
            return
        
        target_filename = input("Enter the name of the ECD file to decrypt (without .ECD extension): ")
        ecd_file_path = os.path.join(ecd_file_folder, f"{target_filename}.ECD")
        
        if not os.path.exists(ecd_file_path):
            print("Specified file not found.")
            return

        input_key = input("Enter a 4-byte key: ")
        if len(input_key) != 4:
            print("Key must be 4 bytes long.")
            return

        key_128 = generate_key(input_key.encode())

        iv = input("Enter the Initialization Vector (IV) in hexadecimal format: ")
        iv = bytes.fromhex(iv)
        if len(iv) != 16:
            print("IV must be 16 bytes long.")
            return

        cipher = Cipher(algorithms.AES(key_128), modes.CBC(iv),
                        backend=default_backend())

        with open(ecd_file_path, "rb") as ecd_file:
            encrypted_data = ecd_file.read()

        decryptor = cipher.decryptor()
        decrypted_padded_data = decryptor.update(
            encrypted_data) + decryptor.finalize()

        unpadder = padding.PKCS7(algorithms.AES.block_size).unpadder()
        decrypted_data = unpadder.update(
            decrypted_padded_data) + unpadder.finalize()

        output_folder = "F:\AIUB\semi 12\Thesis\Code meterial\SHAREABLE\Method_3\decrypt"
        if not os.path.exists(output_folder) or not os.path.isdir(output_folder):
            os.makedirs(output_folder)

        save_decrypted_to_csv(decrypted_data, output_folder, target_filename)

        print(
            f"Decryption successful. Decrypted data saved to a CSV file in: {output_folder}")

    except Exception as e:
        print("An error occurred:", str(e))


if __name__ == "__main__":
    main()
