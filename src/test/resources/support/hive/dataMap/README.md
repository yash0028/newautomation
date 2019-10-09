# Datamap Readme
A datamap is a `csv` file. Each line after the header row will must contain the required information and can contain additional information that can be substituted into the EIF file.

## Required Columns
`commonName`: Defines the name that will be used for the thread. This helps with debugging and log consumption.

`eifFile`: The EIF file, which must be in the `src/test/resources/support/exari` folder. This file will be used to run the Exari Contract Flow. See the README within the listed folder for additional information on eif files.

## Optional Columns
Any column that is not the two required ones is used to pass additional information to the EIF file at runtime. Before an EIF file is run, Hive will attempt to substitute any answers that contain a `<columnName>` with a value from a column with the same `columnName`. The name is case and space sensitive.

> For example, the `src/test/resources/support/hive/dataMap/eif-basic-central-list-1.csv` contains the columns `MPIN`. Below you will see a snippit from `eif-hive-base.json`. The question of "MPIN" containes an answer of <MPIN>. During run time, as each row is run, the value found in the `MPIN` column will replace the string `<MPIN>`.

```json
{
    "topic": "PES Inputs",
    "questions": [
        {
            "question": "MPIN",
            "action": "TEXT-BASIC",
            "answers": [
                "<MPIN>"
            ]
        }
    ]
}
``` 