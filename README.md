# Project

## Project Structure
``` 
R12725040_assignment01/
│── src/
│   ├── main.py               # Presentation layer
│   ├── input_handler.py      # Presentation layer
│   ├── services/             # Service layer
│   │   ├── user_service.py   # User
│   │   ├── listing_service.py # List
│   │   ├── category_service.py # Category
│   ├── persistence/          # Persistence layer
│   │   ├── db_handler.py     # database
│   ├── output_handler.py     # Presentation layer
│── tests/
│   ├── test_main.py
│── build.sh
│── run.sh
│── README.md
│── db.json                   # TinyDB
``` 

## Environment
- Operating System: **macOS**
- Execution Environment: **Conda base environment**
- Language: **Python** (Python Version: **3.12**)
- Required Package: **tinydb** (Lightweight database)

## Build
```
./build.sh
```

## Run
```
./run.sh
```

## Docker Build
```
docker build -t catherine1606/2025cloud:v1 .
docker login
docker push catherine1606/2025cloud:v1
```

## Docker Run
```
docker run --rm catherine1606/2025cloud:v1
```

## 額外詳述
<img width="543" alt="截圖 2025-05-06 晚上7 03 40" src="https://github.com/user-attachments/assets/08b818ac-9a49-4ca6-bac2-8e1176f0c06a" />

目前自動化產生 Docker Image 與 Tag 的邏輯如下：

- **v1、v2**：在 local 開發時手動建立並上傳的測試版本
- **action_push**：由 GitHub Actions 自動產生，當 push 到 `main` 時觸發建立並上傳

這樣的 Tag 選擇方式可以區分手動版本與自動化流程版本
