from fastapi import FastAPI

app = FastAPI()


@app.get("/", response_model=str)
async def root():
    return "Главная страница"


@app.get("/user/admin", response_model=str)
async def admin():
    return "Вы вошли как администратор"


@app.get("/user/{user_id}", response_model=str)
async def user(user_id: int):
    return f"Вы вошли как пользователь № {user_id}"


@app.get("/user", response_model=str)
async def user_info(username: str, age: int):
    return f"Информация о пользователе. Имя: {username}, Возраст: {age}"
