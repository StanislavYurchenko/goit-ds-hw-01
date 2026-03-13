
# goit-algo-hw-08: Address Book Management System

A Python-based contact management system that allows users to store, organize, and manage contact information including names, phone numbers, and birthdays.

## Features

- **Contact Management**: Add, edit, find, and delete contacts
- **Phone Number Management**: Add, edit, remove, and find phone numbers for contacts
- **Birthday Tracking**: Store and retrieve contact birthdays
- **Upcoming Birthdays**: Get notifications for upcoming birthdays within a specified number of days
- **Data Validation**: Built-in validation for phone numbers and dates
- **Interactive CLI**: User-friendly command-line interface for easy interaction
- **Data Persistence**: Automatic saving and loading of address book data using pickle serialization

## Project Structure

- **main.py** - Entry point for the application
- **phone_bot.py** - Interactive CLI bot for managing contacts, including data saving/loading with pickle
- **address_book.py** - `AddressBook` class for managing all records
- **record.py** - `Record` class representing individual contacts
- **field.py** - Base `Field` class for data validation
- **name.py** - `Name` class (validates contact names)
- **phone.py** - `Phone` class (validates 10-digit phone numbers)
- **birthday.py** - `Birthday` class (validates and formats dates)
- **get_upcoming_bithday.py** - Utility function for birthday notifications

## Requirements

- Python 3.10 or higher
- No external dependencies

## Usage

Run the application:
```bash
python main.py
```

## Data Persistence

The application automatically saves the address book data to a file (`addressbook.pkl`) when you exit the program (using `close` or `exit` commands). Upon restarting, the data is loaded from this file, ensuring that your contacts are preserved between sessions. If the file does not exist (first run), a new empty address book is created.


## Commands

The CLI supports the following commands:

- `hello` - Greet the bot
- `add <name> <phone>` - Add a new contact or update an existing one with a phone number
- `change <name> <old_phone> <new_phone>` - Change a phone number for a contact
- `phone <name>` - Show phone numbers for a contact
- `all` - Show all contacts
- `add-birthday <name> <birthday>` - Add a birthday to a contact (format: DD.MM.YYYY)
- `show-birthday <name>` - Show the birthday of a contact
- `birthdays <days>` - Show upcoming birthdays within the specified number of days (default: 7)
- `close` or `exit` - Save data and exit the application

## Author

Stanislav Yurchenko
