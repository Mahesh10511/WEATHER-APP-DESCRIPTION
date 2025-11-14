# WEATHER-APP-DESCRIPTION
# Problem Statement
Users often need quick and accurate weather information, but repeatedly fetching live data from APIs increases response time and depends heavily on internet availability. There is a need for a weather application that not only provides real-time data but also stores past results to improve speed, reduce redundant API calls, and maintain a history of previous searches. A system that integrates weather APIs with SQL-based storage can solve this problem effectively.
# Objectives
To develop a weather application that fetches real-time weather information using a public API.
To implement an SQL database to store searched locations and cache weather responses.
To reduce repeated API calls by reusing cached data within a set validity period.
To maintain and display a searchable history of previous weather lookups.
To design a simple, user-friendly interface for entering cities and viewing results.
To demonstrate integration of Flask, API handling, and SQL data storage in one project.
# Features
Fetches live weather details (temperature, condition, humidity, etc.).
Stores weather data in SQLite for quick future access.
Automatic cache validation (e.g., reuses data if it’s recent).
Search history with timestamps.
Displays whether the result is fresh or from cache.
Clean UI built with HTML, CSS, and Jinja templates.
Error handling for invalid city names or API failures.
# Technologies Used
Backend: Python, Flask
Database: SQLite (SQL-based caching and history)
API: OpenWeatherMap API (JSON-based weather data)
Frontend: HTML, CSS, Jinja Templates
Tools: VS Code, Git, GitHub, Python Virtual Environment
