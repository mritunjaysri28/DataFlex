import pyspark
from pyspark.sql import SparkSession

spark=SparkSession.builder.appName('DataFlexer').getOrCreate()
print('###################################### DataFlexer Start ######################################')

df=spark.read.csv("./data/input/file.csv")
print(df.show())

print('###################################### DataFlexer Stop ######################################')
spark.stop()