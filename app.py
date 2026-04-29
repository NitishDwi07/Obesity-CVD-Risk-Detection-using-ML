import pickle
import numpy as np
import os
from flask import Flask, request, jsonify, render_template

app = Flask(__name__)

# Load model
model = pickle.load(open("obesity_model.pkl", "rb"))

# -------------------------------
# Encoding maps (MUST match training)
# -------------------------------

gender_map = {"Male": 0, "Female": 1}
yes_no_map = {"no": 0, "yes": 1}
caec_map = {"no": 0, "Sometimes": 1, "Frequently": 2, "Always": 3}
calc_map = {"no": 0, "Sometimes": 1, "Frequently": 2, "Always": 3}
mtrans_map = {
    "Automobile": 0,
    "Motorbike": 1,
    "Bike": 2,
    "Public_Transportation": 3,
    "Walking": 4
}

label_map = {
    0: "Normal_Weight",
    1: "Overweight_Level_I",
    2: "Overweight_Level_II",
    3: "Obesity_Type_I",
    4: "Insufficient_Weight",
    5: "Obesity_Type_II",
    6: "Obesity_Type_III"
}

# -------------------------------
# Preprocessing
# -------------------------------
def preprocess(data):
    try:
        processed = [
            gender_map[data["Gender"]],
            float(data["Age"]),
            float(data["Height"]),
            float(data["Weight"]),
            yes_no_map[data["family_history_with_overweight"]],
            yes_no_map[data["FAVC"]],
            float(data["FCVC"]),
            float(data["NCP"]),
            caec_map[data["CAEC"]],
            yes_no_map[data["SMOKE"]],
            float(data["CH2O"]),
            yes_no_map[data["SCC"]],
            float(data["FAF"]),
            float(data["TUE"]),
            calc_map[data["CALC"]],
            mtrans_map[data["MTRANS"]],
        ]
        return np.array(processed).reshape(1, -1)
    except Exception as e:
        return str(e)

# -------------------------------
# Routes
# -------------------------------

@app.route('/')
def home():
    return render_template('home.html')


@app.route('/predict_api', methods=['POST'])
def predict_api():
    data = request.json['data']

    input_data = preprocess(data)

    if isinstance(input_data, str):
        return jsonify({"error": input_data})

    prediction = model.predict(input_data)[0]
    result = label_map.get(int(prediction), str(prediction))

    return jsonify({"prediction": result})


@app.route('/predict', methods=['POST'])
def predict():
    data = request.form.to_dict()

    input_data = preprocess(data)

    if isinstance(input_data, str):
        return render_template("home.html", prediction_text=f"Error: {input_data}")

    prediction = model.predict(input_data)[0]
    result = label_map.get(int(prediction), str(prediction))

    return render_template(
        "home.html",
        prediction_text=f"Obesity Level: {result}"
    )

# -------------------------------
# Render entry point (IMPORTANT)
# -------------------------------
if __name__ == "__main__":
    port = int(os.environ.get("PORT", 5000))
    app.run(host="0.0.0.0", port=port)