URL="https://dlcdn.apache.org/spark/spark-3.3.4/spark-3.3.4-bin-hadoop2.tgz"
SPARK_VERSION=$(echo $URL | grep -oP '[^/]+(?=$)')

ENV_NAME=$1
PYTHON_VERSION=$2

if [ -z $ENV_NAME ]
then
    ENV_NAME='dataflexer_env'
fi

if [ -z $PYTHON_VERSION ]
then
    # PYTHON_VERSION=$(python --version | grep -o [0-9,.]*)
    PYTHON_VERSION=3.11.5
fi

HADOOP_PATH=$ENV_NAME/hadoop/bin
SPARK_PATH=$ENV_NAME/

echo -e "***************** installation Start *****************"
echo -e "env_name=${ENV_NAME} \t python_version=${PYTHON_VERSION} \t SPARK_VERSION=${SPARK_VERSION}"

# create conda env
eval "$(conda shell.bash hook)"
conda create -p ./$ENV_NAME python=$(echo $PYTHON_VERSION)

if [[ -z $(conda env list | grep $ENV_NAME) && -z $(ls | grep $ENV_NAME) ]]
then
    echo '**** Failed to create enviornment ****'
    exit
fi
echo -e "#################### ${ENV_NAME} enviornment created ####################"

# activate conda env
conda activate ./$ENV_NAME/

if [[ -z "$(echo $CONDA_PREFIX | grep $ENV_NAME)" ]]; then
    echo "Unable to activate conda environment activated ${CONDA_PREFIX}"
    exit
fi
echo -e "#################### ${ENV_NAME} enviornment activated ####################"

# install openjdk in conda virtual env
conda install openjdk
echo -e "#################### openjdk successfully installed ####################"

# install pyspark in conda virtual env
conda install pyspark 
echo -e "#################### pyspark successfully installed ####################"

# install findspark in conda virtual env
# need to replace with setting value to required enviornment variable
# conda install -c conda-forge findspark 
# echo -e "#################### findspark successfully installed ####################"

# install spark
rm -f $SPARK_VERSION
curl -O "$URL"
tar xzvf $SPARK_VERSION
rm -f $SPARK_VERSION
SPARK_VERSION=$(echo $SPARK_VERSION | sed -e s/.tgz//g)
mv $SPARK_VERSION $SPARK_PATH
rm -f $SPARK_VERSION
echo -e "#################### SPARK successfully installed ####################"

# deactivate conda env
export PYSPARK_PYTHON=python
# export HADOOP_PATH=$ENV_NAME/hadoop
conda deactivate
echo -e "***************** installation Complete *****************"


echo "Activate conda: conda activate ./${ENV_NAME}"