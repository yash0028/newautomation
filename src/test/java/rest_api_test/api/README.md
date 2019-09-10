# REST API

Each REST endpoint will have its own api `interact` class and `helper` class in the same package. The `helper` is a package-private singleton and extends the `AbstractRestApi` class, giving it access to shared methods for basic rest calls. The `interact` class is then called inside the `step` classes.

The benefit of using this pattern:
- gson parsing and rest calls are handled by a singleton; only need to set them up once
- easy switching of environments
- step code is shorter since building rest calls is handled in `interact` and `helper`
- what apis a step class is using is clear

## interact
The step code will implement the `I____Interact` interface; this gives it access to call the default methods defined in `I____Interact`.

- each resource is stored as a String, the variable is all uppercase with underscores
- if the resource needs some additional information on the end, such as an id, the resource string must have a {} where the replacement will occur.
- each resource for the endpoint needs one or more default methods
- each resource method needs a JavaDoc explaining what it does and the resource string it maps to
- a method should return a `Response` object or a `pojo` created from the `Response`
- a returned pojo should be registered under the `AbstractRestApi`'s GSON builder and the deserializer should exist as a static class in the pojo's class file
- any parameters for a resource method should be either a `pojo`, `String`, or `JsonElement`; avoid using `JsonObject` or `JsonArray`
- no interface methods are necessary


## helper
The helper is used by the interact to make the rest calls and parse responses into pojos, as needed.

- helper should contain any endpoint
- helper should implement the abstract method of `getEndpoint`; this makes a decision based on the `env` variable contained within `AbstractRestApi`
- any pojos returned by `interact` should be parsed in the helper; the singleton possess the gson parser
- a pojo parser should take the rest `Resposne` as a parameter and return the pojo with the `Response` embedded

## model
The model is the pojo of a json element returned by a rest call, or any nested json elements.

- each model file should use the builder pattern to make Gson parser easy
- if the model is complex, use a deserializer in the `AbstractRestApi` constructor
- the model should have a getter and setter for the Response that created it; the `Response` should be set inside the helper that created it