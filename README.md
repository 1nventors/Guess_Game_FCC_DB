# Number Guessing Game 🎲  

This project is part of the **Relational Database Certification** from [freeCodeCamp](https://www.freecodecamp.org/).  
The goal was to create an **interactive Bash script** connected to a **PostgreSQL database**, allowing users to play a number guessing game while tracking their statistics.  

---

## 📌 Features  

- User login system (new and returning players).  
- Random secret number between **1 and 1000**.  
- Input validation (only integers are accepted).  
- Tracks:  
  - **Number of games played** per user.  
  - **Best game performance** (least number of guesses).  
- Persistent storage using **PostgreSQL**.  

---

## 🛠️ Technologies Used  

- **Bash scripting** (game logic and user interaction).  
- **PostgreSQL** (data persistence and statistics tracking).
- **Gitpod** (for running the PostgreSQL in a virtual machine).  

---

## 🗄️ Database Structure  

The PostgreSQL database is named **`number_guess`** and contains one table:  

### `users` table  
| Column        | Type               | Description |
|---------------|-------------------|-------------|
| `user_id`     | SERIAL (PK)       | Unique identifier for each user |
| `username`    | VARCHAR(22)       | Username entered by the player |
| `games_played`| INTEGER (default 0) | Total games played |
| `best_game`   | INTEGER (nullable) | Lowest number of guesses to win |

---

## 🎮 Example Gameplay  

Enter your username:
John

Welcome back, John! You have played 5 games, and your best game took 7 guesses.
Guess the secret number between 1 and 1000:
500
It's higher than that, guess again:
750
It's lower than that, guess again:
623
You guessed it in 3 tries. The secret number was 623. Nice job!
