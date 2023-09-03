import subprocess


def show_welcome_message():
    print("-----------------------------------------------------------------------------------------------------")
    print("Welcome to the Python Code Runner!")
    print("Choose an option:")
    print("1. Extract Meta Data")
    print("2. Encrypt Metadata")
    print("3. Make Block")
    print("4. Decrypt")
    print("5. Validate")
    print("6. Exit")


def run_code(code_path):
    try:
        subprocess.run(["python", code_path], shell=True)
    except subprocess.CalledProcessError:
        print("An error occurred while running the code.")


def main():
    while True:
        show_welcome_message()
        choice = input("Enter your choice (1-6): ")

        if choice == '1':
            run_code(
                r'F:\AIUB\semi 12\Thesis\Code meterial\SHAREABLE\Method_3\metadata.py')
        elif choice == '2':
            run_code(
                r'F:\AIUB\semi 12\Thesis\Code meterial\SHAREABLE\Method_3\encryption.py')
        elif choice == '3':
            run_code(
                r'F:\AIUB\semi 12\Thesis\Code meterial\SHAREABLE\Method_3\block.py')
        elif choice == '4':
            run_code(
                r'F:\AIUB\semi 12\Thesis\Code meterial\SHAREABLE\Method_3\dycrypt.py')
        elif choice == '5':
            run_code(
                r'F:\AIUB\semi 12\Thesis\Code meterial\SHAREABLE\Method_3\validation.py')
        elif choice == '6':
            print("Exiting the Python Code Runner. Goodbye!")
            break
        else:
            print("Invalid choice. Please select a valid option (1-6).")

if __name__ == "__main__":
    main()
