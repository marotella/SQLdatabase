CREATE TABLE users (
	user_id SERIAL PRIMARY KEY,
	email VARCHAR(255) NOT NULL,
	password VARCHAR(255) NOT NULL
);

CREATE TABLE recipes (
	recipe_id SERIAL PRIMARY KEY,
	user_id INTEGER NOT NULL REFERENCES users(user_id),
	ingredients VARCHAR(255) NOT NULL,
	instructions VARCHAR(255) NOT NULL,
	public BOOLEAN NOT NULL
);

CREATE TABLE grocery_list (
	list_id SERIAL PRIMARY KEY,
	user_id INTEGER NOT NULL REFERENCES users(user_id),
	recipe_id INTEGER NOT NULL REFERENCES recipes(recipe_id)
);

CREATE TABLE ingredients (
	ingredient_id SERIAL PRIMARY KEY,
	ingredients VARCHAR(255) NOT NULL
);

CREATE TABLE occasions(
	occassion_id SERIAL PRIMARY KEY,
	name VARCHAR(255) NOT NULL,
	user_id INTEGER NOT NULL REFERENCES users(user_id),
	recipe_id INTEGER NOT NULL REFERENCES recipes(recipe_id)
);