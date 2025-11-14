-- schema.sql
PRAGMA foreign_keys = ON;

-- Table to store locations / queries
CREATE TABLE IF NOT EXISTS locations (
  location_id INTEGER PRIMARY KEY AUTOINCREMENT,
  city TEXT NOT NULL,
  country TEXT,
  created_at TEXT DEFAULT (datetime('now'))
);

-- Cached weather responses (store JSON text)
CREATE TABLE IF NOT EXISTS weather_cache (
  cache_id INTEGER PRIMARY KEY AUTOINCREMENT,
  location_id INTEGER NOT NULL,
  response_json TEXT NOT NULL,
  fetched_at TEXT DEFAULT (datetime('now')),
  source TEXT,
  FOREIGN KEY(location_id) REFERENCES locations(location_id) ON DELETE CASCADE
);

-- Search history (records user queries)
CREATE TABLE IF NOT EXISTS search_history (
  history_id INTEGER PRIMARY KEY AUTOINCREMENT,
  city TEXT NOT NULL,
  searched_at TEXT DEFAULT (datetime('now')),
  result_cache INTEGER,
  FOREIGN KEY(result_cache) REFERENCES weather_cache(cache_id) ON DELETE SET NULL
);
