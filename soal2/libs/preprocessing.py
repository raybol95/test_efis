import pandas as pd
import re
from libs.utils import Convert
pd.set_option('display.max_rows', None, 'display.max_columns', None, 'display.max_colwidth', None)

def data_cleansing(df):
    for y in range(len(df['komoditas'])):
        df['komoditas'][y] = re.sub(r'(ikan\s|Ikan\s)|(\bdan)|(\bdll)|(\s*$)',"",df['komoditas'][y])
        df['komoditas'][y] = re.sub('(,)|(&)'," ",df['komoditas'][y])
        df['komoditas'][y] = re.sub('(\s+)',",",df['komoditas'][y])
        df['komoditas'][y] = re.sub(r'(,\s*$)',"",df['komoditas'][y])
        df['komoditas'][y] = re.split(",",df['komoditas'][y])
        df['berat'][y] = re.sub('rata2',"",df['berat'][y])
        df['berat'][y] = list(re.findall(r'\d+',df['berat'][y]))
    return df

def data_transforming(df):
    for k in range(len(df)):
        while len(df["berat"][k]) != len(df['komoditas'][k]):
            if len(df["berat"][k]) >= len(df['komoditas'][k]):
                df["berat"][k] = [int(int(df["berat"][k][0]) + int(df["berat"][k][1])/2)]
            elif df["berat"][k] == []:
                df["berat"][k].append(0)
            elif len(df["berat"][k]) <= len(df['komoditas'][k]):
                df["berat"][k].append(df["berat"][k][0])
    
    data = {"ikan" : [], "berat" : []}
    for z in range(len(df)):
        for y in range(len(df['komoditas'][z])):
            data['ikan'].append(df['komoditas'][z][y])
            data['berat'].append(df['berat'][z][y])

    df_temp = pd.DataFrame(data)
    df_temp['berat'] = df_temp['berat'].astype('int32')

    df_new = df_temp.groupby(['ikan']).sum()
    df_new.reset_index(inplace=True)
    df_new.sort_values(by=['berat'],ascending=False,ignore_index=True,inplace=True)
    return(print(df_new.to_string( header=False)))

    # list_dict = []
    # for j in range(len(df_new)):
    #     result = df_new.loc[j].to_dict()
    #     list_dict.append(Convert(result.values()))
    # return print(list_dict)
        