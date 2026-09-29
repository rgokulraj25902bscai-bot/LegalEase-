# LegalEase

AI-assisted legal document drafting application using Streamlit, FastAPI, and Gemini.

## Fixed / tested

- Fixed the PDF export crash caused by `fpdf2` cursor positioning.
- PDF export now uses an explicit content width and resets the cursor for every paragraph.
- Added safe integer environment parsing.
- The project now starts in demo/mock mode by default, so it works without an API key.
- Added Windows launcher files for backend and frontend.
- Removed generated `__pycache__` files from the project package.

## Quick start on Windows

1. `py -3 -m venv .venv`
2. `.venv\Scripts\Activate.ps1`
3. `pip install -r requirements.txt`
4. Copy `.env.example` to `.env`
5. Leave `MOCK_MODE=true` for a no-API-key test.
6. Terminal 1: `run_backend.bat`
7. Terminal 2: `run_frontend.bat`
8. Open the Streamlit URL shown in the terminal.

API docs: http://127.0.0.1:8000/docs

## Gemini mode

To use Gemini instead of demo generation:

1. Put your API key in `.env` as `GEMINI_API_KEY=...`
2. Set `MOCK_MODE=false`
3. Keep `GEMINI_MODEL=gemini-2.5-flash` unless you intentionally want another supported model.
4. Restart the backend.

LegalEase is an AI-assisted drafting tool for informational purposes and does not replace professional legal advice.
