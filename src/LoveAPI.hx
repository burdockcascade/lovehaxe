typedef LoveAPI = {
    var version: String;
    var modules: List<String>;
    var functions : List<Function>;
    var types : List<String>;
}

typedef Callback = {
    var name: String;
    var description: String;
    var variants: List<Variant>;
}

typedef Module = {
    var name: String;
    var description: String;
    var functions: List<Function>;
    var enums: List<Enums>;
    var types: List<ClassType>;
}

typedef ClassType = {
    var constructors: List<String>;
    var name: String;
    var description: String;
    var functions: List<Function>;
    var supertypes: List<String>;
}

typedef Enums = {
    var name: String;
    var description: String;
    var constants: List<Constant>;
}

typedef Constant = {
    var name: String;
    var description: String;
}

typedef Function = {
    var description: String;
    var name: String;
    var variants: List<Variant>;
}

typedef Variant = {
    var description: String;
    var arguments: List<Variable>;
    var returns: List<Variable>;
}

typedef Variable = {
    var name: String;
    var description: String;
    var _type: String;
    var _default: String;
    var table: List<Variable>;
}