# file_writer.py

def write_message(filename, message):
    with open(filename, "w") as f:
        f.write(message)
    print(f"Message written to {filename}")

if __name__ == "__main__":
    write_message("output.txt", "Hello from Databricks ✨")
