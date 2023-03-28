-- Add migration script here
ALTER TABLE users ADD column salt TEXT NOT NULL;
