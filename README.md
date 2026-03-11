## 📜 Камень, ножницы или бумага 🪨
Консольная игра "Камень, ножницы, бумага" (в простонародье цуефа) с нечестным ботом) 🎲

## Описание игры 
Игрок вводит один из вариантов: "paper", "scissors" или "rock". 
Бот выбирает свой вариант, причем с вероятностью ~25% игра становится нечестной 
(бот гарантированно выбирает выигрышный вариант против хода игрока 😈).

# Требования
- Docker (версия 20.10 или выше)

# Как начать?
1. Клонируйте репозиторий
   ```bash
   git clone https://github.com/kononukvladislaus-hub/lab_03_14.git
   cd lab_03_14
   ```
2. Соберите Docker-образ:
   ```
   docker build -t rock-paper-scissors .
   ```
3.  Запустите игру:
   ```
   docker run -it rock-paper-scissors
```

# Пример запуска
```text
Choose paper, scissors or rock: rock
Cool choice
------------------
Game: fair
User choice: rock
Bot_choice: scissors
Result: win
------------------
```
