# Energy Consumption Prediction

This project aims to predict energy consumption using various machine learning models. The primary goal is to compare the performance of different models and identify the best one for this task. The models used include Linear Regression, Random Forest, Gradient Boosting, and Long Short-Term Memory (LSTM).

## Project Structure

1. **Data Preparation**
   - Feature Engineering
   - Feature Selection

2. **Model Training and Evaluation**
   - Baseline Models
   - Advanced Models

3. **Hyperparameter Tuning**
   - Random Forest
   - Gradient Boosting
   - LSTM

4. **Model Interpretation and Analysis**
   - Feature Importance

## Data Preparation

### Feature Engineering

We created lagged features and rolling statistics for the target variable to capture the temporal dependencies in the data.

## Model Training and Evaluation

### Baseline Models

We trained and evaluated several baseline models:
- Linear Regression
- Random Forest
- Gradient Boosting

### Advanced Models

We also trained an advanced LSTM model for time series prediction.

## Hyperparameter Tuning

We performed hyperparameter tuning for the following models to optimize their performance:
- Random Forest
- Gradient Boosting
- LSTM

## Model Interpretation and Analysis

### Feature Importance

We visualized the feature importance for the Random Forest model to understand which features contribute most to the predictions.

![Feature Importance Plot](Graphs/feature_importance_plot.png)

## Model Performance

Here are the performance metrics for all the models tested:

- **Random Forest Final (Tuned with feature selection)**
  - RMSE: 43.23051
  - MAE: 24.63652
  - R²: 0.8303284

- **Random Forest (Only feature selection)**
  - RMSE: 55.60064
  - MAE: 30.4344
  - R²: 0.7183661

- **LSTM (Tuned)**
  - RMSE: 77.32212
  - MAE: 43.84375
  - R²: 0.4556434

- **LSTM**
  - RMSE: 78.34101
  - MAE: 43.83427
  - R²: 0.4412025

- **Tuned Gradient Boosting**
  - RMSE: 64.21605
  - MAE: 34.58222
  - R²: 0.6293279

- **Tuned Random Forest (General feature selection)**
  - RMSE: 58.67541
  - MAE: 28.60143
  - R²: 0.6927204

- **Gradient Boosting**
  - RMSE: 75.55071
  - MAE: 44.29758
  - R²: 0.4995187

- **Random Forest**
  - RMSE: 58.91217
  - MAE: 28.63226
  - R²: 0.690126

- **Linear Regression**
  - RMSE: 74.48276
  - MAE: 42.76741
  - R²: 0.5010507

## Conclusion

The **Random Forest model with tuned hyperparameters and feature selection** outperformed all other models in terms of RMSE, MAE, and R², making it the best choice for predicting energy consumption in this project.

## How to Use This Project

1. Clone this repository to your local machine.
2. Install the required packages listed in the `requirements.txt` file.
3. Follow the steps in the provided R scripts to preprocess the data, train the models, perform hyperparameter tuning, and evaluate the model performance.


