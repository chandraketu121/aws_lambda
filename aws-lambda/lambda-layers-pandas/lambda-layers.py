# Pandas is an open-source python libraries for data analysis and data manupulation
import json
import pandas as pd

def lambda_handler(event, context):
    df = pd.DataFrame({'Name': ['Alice', 'Bob', 'Carol'], 'Age': [20, 25, 30]})
    df['NewColumn'] = df.apply(lambda x: x['Age'] * 2, axis=1)
    print(df)
    
    # Convert DataFrame to JSON (default format)
    json_data = df.to_json(orient='records')
    
    return json_data