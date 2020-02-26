from flask import Flask, jsonify
from flask_mysqldb import MySQL
from flask_cors import CORS

app = Flask(__name__)
CORS(app)

#THESE MUST BE FILLED IN FOR THE SERVER TO RUN!!
app.config['MYSQL_USER'] = 
app.config['MYSQL_PASSWORD'] = 
app.config['MYSQL_HOST'] = 
app.config['MYSQL_DB'] = 
app.config['MYSQL_CURSORCLASS'] = 'DictCursor'

mysql = MySQL(app)

@app.route("/")
def home():
    return "You have connected to the backend server"

@app.route("/getData")
def getData():
    cur = mysql.connection.cursor()
    cur.execute("UPDATE Nodes SET `Return` = 'NULL' WHERE NUID = 8")
    mysql.connection.commit()
    cur.execute('''SELECT * FROM Nodes''')
    results = cur.fetchall()
    return jsonify(results)

@app.route("/classData")
def getClassData():
    cur = mysql.connection.cursor()
    cur.execute('''SELECT * FROM RoomRaw''')
    results = cur.fetchall()
    cur.execute('''SELECT * FROM Ranges''')
    ranges = cur.fetchall()
    results = formatResult(results, ranges)
    return jsonify(results)

@app.route("/toggleLights")
def toggleLights():
    print("sending light toggle message")
    cur = mysql.connection.cursor()
    cur.execute("UPDATE Nodes SET `Return` = 'TOGGLE' WHERE NUID = 8")
    mysql.connection.commit()
    cur.execute('''SELECT * FROM Nodes''')
    results = cur.fetchall()
    return jsonify(results)

@app.route("/hello")
def hello():
    return "hello"

if __name__ == "__main__":
    app.run(debug=True)


def formatResult(res, ranges):
    response = []
    #Map time and date to rangeID
    timeDict = {0 : "zero ID"}
    for num in range(len(ranges)):
        entry = ranges[num]
        ID = entry["RangeID"]
        timeDict[ID] = str(entry["date"]) + "|" + str(entry["time"])

    #Loop though data tuple
    for ind in range(len(res)):
        #Collect data into data types
        temp = 0.0
        pres = 0.0
        humy = 0.0
        light= 0
        noise= 0
        rangeID = 0
        for x in res[ind].values():
            #loop though the values in the dictionary
            if isinstance(x, str):
                separatedVals = x.split(",")
                numSensors = len(separatedVals) #how many sensor values are present
                if numSensors == 4:
                    temp = ((float(separatedVals[1]) + temp) / 2) #average values from multiple sensors
                    pres = ((float(separatedVals[2]) + pres) / 2)
                    humy = ((float(separatedVals[3]) + humy) / 2)
                elif numSensors == 3:
                    temp = ((float(separatedVals[1]) + temp) / 2)
                    light= ((int(separatedVals[2]) + light)/ 2)
                elif numSensors == 2:
                    if separatedVals[1] == "Quiet": #convert noise level to a 0 or 1
                        noise = 0
                    else:
                        noise = 1
            else:
                rangeID = x
        
        temp = round(((temp * (9/5)) + 32), 3) #convert celsius to ferenheit and round to 3 decimal places
        #print(temp, pres, humy, light, noise, rangeID)
        #match rangeID to date time dictionary
        dateTime = timeDict.get(rangeID, "NoEntry")
        #Build new dict to pass to front end
        response.append({
            "RangeID" : rangeID,
            "Temperature" : temp,
            "Pressure" : pres,
            "Humidity" : humy,
            "LightLevel" : light,
            "NoiseLevel" : noise,
            "DateTime" : dateTime
        })
    
    reply = tuple(response)
    return reply




    






