# Exari Interview Flow
Exari Interview Flow (EIF) is an instruction set for handling each page of an Exari Interview.
EIF reduces the execution time and number of lines of code by using a runtime lookup for the current topic and question, as opposed to a compile time hardcoded order. 
This lookup keeps EIF flexible and capable of handling a change in the interview order.
Using Cucumber Style Substitution, a single generic EIF script can also be created and have test specific values injected at runtime.

Example of a EIF Json File
```json5
{
    "name": "name of flow. can be what ever you want",
    "authors": [
        "name",
        "of",
        "each",
        "contributor"
    ],
    "notes": [
        "this is just a block",
        "of free form text"
    ],
    //flows is an array that contains the flow item objects
    "flows" : [ 
        //topics can be executed in any order
        {
            //topic string must be exactly what is found in the interview
            "topic": "PES Inputs", //Name of the topic, the part at the top of the page
            "questions": [
                {
                    //question string must be exactly what is found in the interview
                    "question": "MPIN",
                    "action": "TEXT-BASIC",
                    "answers": [
                        "<MPIN>" 
                        //You can use Cucumber Style Substitution 
                        //to inject values from a 2-wide table
                    ]
                },
                {
                    "question": "TIN",
                    "action": "TEXT-BASIC",
                    "answers": [
                        "1234567" 
                        //You can have any number of questions registered under a topic
                    ]
                }
            ]
        },
        {
            "topic": "Request For Participation Response",
            "questions": [] 
            //Topics not found in the flow cause the test to fail. 
            //Empty questions means the topic is skipped but recognized
        },
    ]
}
```

## Topic Question
A question object is composed of the `question`, the `action`, and the `answers`. 
The `question` string must exactly match what is found in the Exari interview.
The `action` string must match one of the Question Action Types detailed in the next section.
The `answers` string array is also discussed in the next section.

The `question` string will ignore everything after the ':' character since the Exari interview tends to apply flow specific items, such as an address, after a colon.
```json
{
    "question": "The primary service/practice location for the counterparty held in NDB is: 12810 Coconino Road",
    "action": "RADIO-INDEX",
    "answers": [
        "0"
    ]
}
```

### Question Action Types
The `action` string determines how the `answers` array will be used. 
There are currently 8 types of actions registered in the system. Each one and its usage will be outlined below.

#### TEXT-BASIC
Enter the first value from `answers` into the first textbox found under the question.

##### Example 1
```json
{
    "question": "MPIN",
    "action": "TEXT-BASIC",
    "answers": [
        "123456"
    ]
}
```

#### TEXT-DATE
Enter the first value from `answers` into the first textbox found under the question.
Date format for Exari is the month spelled out and the numerical date then a comma and the numerical year (January 1, 2019).
Only difference from TEXT-BASIC is logging.

##### Example 1
```json
{
    "question": "Contract Effective Date",
    "action": "TEXT-DATE",
    "answers": [
        "October 10, 2019"
    ]
}
```

#### TEXT-DROPDOWN
Open dropdown and enter the first value from the `answers` into the popup textbox. 
Then it reads the second value from the `answers` as an integer and selects that index from the popup list.

##### Example 1
```json
{
    "question": "Select Market Number",
    "action": "TEXT-DROPDOWN",
    "answers": [
        "918273645",
        "0"
    ]
}
```

#### TEXT-AUTOFILL
Enter the first value from `answers` into the first textbox found under the question.
Then it reads the second value from the `answers` as an integer and selects that index from the popup list.
Different from the TEXT-DROPWDOWN since it does not click to open a popup for the textbox.

##### Example 1
```json
{
    "question": "Please select a Regulatory Appendix",
    "action": "TEXT-AUTOFILL",
    "answers": [
        "iowa",
        "0"
    ]
}
```

#### RADIO-INDEX
Read the first value from `answers` as an integer and selects that index from the radio buttons.

##### Example 1
```json
{
    "question": "Roster Action",
    "action": "RADIO-INDEX",
    "answers": [
        "0"
    ]
}
```

#### RADIO-ID
Selects the first radio button whose id contains the first value from `answers`.

##### Example 1
```json
{
    "question": "Based on the Provider you've selected, below are the Paper Types available. Please select one:",
    "action": "RADIO-ID",
    "answers": [
        "SPA"
    ]
}
```

#### RADIO-LABEL
Selects the first radio button whose label contains the first value from `answers`.

##### Example 1
```json
{
    "question": "Based on the Provider you've selected, below are the Paper Types available. Please select one:",
    "action": "RADIO-LABEL",
    "answers": [
        "Simplified Physician Agreement"
    ]
}
```

#### CHECKBOX-INDEX
Selects each checkboxes whose index equals those found in the `answers` array. 
If the first value from `answers` is 'all' or 'none' it selects all or none and ignores the remainings values in `answers`.

##### Example 1
```json
{
    "question": "Which of the following products will be included in Appendix 2?",
    "action": "CHECKBOX-INDEX",
    "answers": [
        "1",
        "2"
    ]
}
```
##### Example 2
```json
{
    "question": "Which of the following products will be excluded in Appendix 2?",
    "action": "CHECKBOX-INDEX",
    "answers": [
        "all"
    ]
}
```
