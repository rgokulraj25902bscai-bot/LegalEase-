@echo off
setlocal
if not exist .venv\Scripts\python.exe (
  echo Virtual environment not found. Create it with: py -3 -m venv .venv
  exit /b 1
)
call .venv\Scripts\activate.bat
streamlit run frontend\app.py
