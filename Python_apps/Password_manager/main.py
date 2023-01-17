from tkinter import *
from tkinter import messagebox
import random
import pyperclip

# ---------------------------- PASSWORD GENERATOR ------------------------------- #


def generate_pass():
    letters = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u','v', 'w', 'x', 'y', 'z', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z']
    numbers = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']
    symbols = ['!', '#', '$', '%', '&', '(', ')', '*', '+']

    nr_letters = random.randint(8, 10)
    nr_symbols = random.randint(2, 4)
    nr_numbers = random.randint(2, 4)

    password_letters = [random.choice(letters) for _ in range(nr_letters)]
    password_numbers = [random.choice(numbers) for _ in range(nr_numbers)]
    password_symbols = [random.choice(symbols) for _ in range(nr_symbols)]

    password_list = password_symbols + password_numbers + password_letters

    random.shuffle(password_list)
    password = "".join(password_list)
    password_entry.insert(0, password)
    pyperclip.copy(password)
    # password_entry.delete(0, END)


# ---------------------------- SAVE PASSWORD ------------------------------- #


def save_password():
    website = website_entry.get()
    email_name = email_entry.get()
    password = password_entry.get()

    if len(website) == 0 or len(password)==0:
        messagebox.showinfo(title="Oops", message="Don't let fields empty")

    else:
        text = f"{website} | {email_name} | {password} \n"
        message = f"These are the details entered: \nEmail: {email_name} \nPassword: {password} \nIs it ok to save"
        is_ok = messagebox.askokcancel(title=website, message=message)
        if is_ok:
            with open("save.txt", 'a') as f:
                f.write(text)
                website_entry.delete(0, END)
                password_entry.delete(0, END)

# ---------------------------- UI SETUP ------------------------------- #


window = Tk()
window.title("Password Manager")
window.config(padx=50, pady=50)


canvas = Canvas()
logo_img = PhotoImage(file="logo.png")
canvas.config(width=200, height=200)
canvas.create_image(100, 100, image=logo_img)
canvas.grid(row=0, column=1)

website_label = Label(text="Website:")
website_label.grid(row=1, column=0)

name_label = Label(text="Email/Username:")
name_label.grid(row=2, column=0)

password_label = Label(text="Password:")
password_label.grid(row=3, column=0)

website_entry = Entry()
website_entry.config(width=38)
website_entry.grid(row=1, column=1, columnspan=2)
website_entry.focus()

email_entry = Entry()
email_entry.config(width=38)
email_entry.grid(row=2, column=1, columnspan=2)
email_entry.insert(0, "@email.com")

password_entry = Entry()
password_entry.config(width=20)
password_entry.grid(row=3, column=1)

generate_button = Button()
generate_button.config(text="Generate Password", command=generate_pass)
generate_button.grid(row=3, column=2)

add_button = Button()
add_button.config(text="Add", width=32, command=save_password)
add_button.grid(row=4, column=1, columnspan=2)


window.mainloop()
