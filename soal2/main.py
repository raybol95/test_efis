import pandas as pd
from libs.preprocessing import data_cleansing
from libs.preprocessing import data_transforming

df = pd.read_json('soal-2.json')
data_cleansing(df)
data_transforming(df)