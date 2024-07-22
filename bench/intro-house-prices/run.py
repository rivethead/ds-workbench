import os
import pandas as pd
import numpy as np
import seaborn as sns
import matplotlib.pyplot as plt
from sklearn.tree import DecisionTreeRegressor
from sklearn.metrics import mean_absolute_error

# Load the dataset
data_file = os.path.join(
    os.path.dirname(os.path.abspath(__file__)), "data/melb_data.csv"
)
data = pd.read_csv(data_file)

# Display the first few rows of the dataset
print(data.head())

print(data.describe())

print(data.columns)

cleaned_data = data.dropna(axis=0)

print(cleaned_data.head())

y = cleaned_data.Price
features = ["Rooms", "Bathroom", "Landsize", "Lattitude", "Longtitude"]
X = cleaned_data[features]

print(X.describe())

print(X.head())

model = DecisionTreeRegressor(random_state=1)
model.fit(X, y)

print("Making predictions for the following 5 houses:")
print(X.head())
print("The predictions are")
print(model.predict(X.head()))

predicted_home_prices = model.predict(X)
mae = mean_absolute_error(y, predicted_home_prices)

print(mae)
