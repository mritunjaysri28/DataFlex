# DataFlexer

DataFlexer a versatile data processing solution designed to empower users in managing diverse data formats effortlessly. With its core functionality, this tool serves as a dynamic data orchestrator, allowing users to configure JSON-based specifications for seamless extraction, transformation, and loading operations across a multitude of file formats.

It will offers an innovative approach to data handling, granting users the flexibility to tailor data operations to their specific needs. Whether dealing with CSV, JSON, XML, or other formats, our platform's user-friendly interface and configurable JSON settings streamline the entire process, enabling users to effortlessly extract, transform, and load data.


```
DataFlexer/
│
├── src/
│   ├── main.py                 # Main entry point for application
│   ├── etl/                    # Directory for ETL-related code
│   │   ├── data_loader.py      # Code for loading data
│   │   ├── data_processor.py   # Code for data processing/transformation
│   │   └── data_writer.py      # Code for writing output data
│   ├── utils/                  # Directory for utility/helper functions
│   │   ├── config.py           # Configuration settings for the project
│   │   └── logging_utils.py    # Logging setup and utilities
│   └── tests/                  # Directory for unit/integration tests
│       ├── test_data_loader.py # Unit tests for data loading functions
│       └── test_data_processor.py # Unit tests for data processing functions
│
|__docs
|
├── data/                       # Directory for input/output data
│   ├── input/                  # Directory for input data files
│   └── output/                 # Directory for output data files
│
├── config/                     # Directory for project-wide configurations
│   └── spark_config.py         # SparkSession configuration settings
│
├── requirements.txt            # Python dependencies file
└── README.md                   # Project documentation 
```

## Installation

```sh install.sh```

## Run application

```spark-submit src/main.py```