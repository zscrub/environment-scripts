import os
import google.generativeai as genai
from pathlib import Path

genai.configure(api_key=os.environ["GEMINI_API_KEY"])
model = genai.GenerativeModel("gemini-1.5-pro")

# Read the current README (if exists)
readme_path = Path("README.md")
current_readme = readme_path.read_text(encoding="utf-8") if readme_path.exists() else ""

# Collect context from key files (limit size to avoid token overrun)
context_files = []
for ext in [".py", ".js", ".ts", ".go", ".java", ".md"]:
    for file_path in Path(".").rglob(f"*{ext}"):
        if file_path.name.lower() != "readme.md" and file_path.stat().st_size < 5000:
            context_files.append(f"--- {file_path} ---\n{file_path.read_text(encoding='utf-8', errors='ignore')}\n")
context = "\n".join(context_files[:5])  # limit number of files sent

prompt = f"""
You are updating a GitHub repository README.

Current README:
{current_readme}

Repository context (partial files):
{context}

Task:
- Improve, expand, and modernize the README while keeping its current style and relevant details.
- Include:
  * Scripts
  * Usage
  * What they do
- Preserve important content already in the README.
- Output ONLY valid markdown for the new README.md.
"""

response = model.generate_content(prompt)

new_readme = response.text.strip()

# Save the updated README
readme_path.write_text(new_readme, encoding="utf-8")

print("README.md updated successfully.")

