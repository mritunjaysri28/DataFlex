SCORE= 0
fail= 0
passs= 0

import pyspark
from pyspark.sql import SparkSession
spark = SparkSession.builder.appName('handson2').getOrCreate()

try:
    df=spark.read.parquet("/projects/challenge/PassengerData")



    w1= df.filter(df["Name"].like("%David%"))
    c1=w1.count()
    w2= df.filter(df["age"].like("%22%"))
    c2=w2.count()
    w3= df.filter(df["source"].like("%London%"))
    c3=w3.count()
    w4= df.filter(df["destination"].like("%Paris%"))
    c4=w4.count()

    count1= c1+c2+c3+c4

    if(count1 == 5):
        passs=passs+50
    else:
        fail=fail+1

    w5= df.filter(df["Name"].like("%Steve%"))
    c5=w5.count()
    w6= df.filter(df["age"].like("%22%"))
    c6=w6.count()
    w7= df.filter(df["source"].like("%New York%"))
    c7=w7.count()
    w8= df.filter(df["destination"].like("%Sydney%"))
    c8=w8.count()


    count2= c5+c6+c7+c8

    if(count1 == 5):
        passs=passs+50
    else:
        fail=fail+1

    SCORE= passs

except Exception as e:
    print("FS_SCORE:" + str(SCORE) + "%" )

print("")
print("FS_SCORE:" + str(SCORE) + "%")
print("")
