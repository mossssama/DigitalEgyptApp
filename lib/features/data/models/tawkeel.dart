
class Tawkeel {
    String? title;
    String? secoundTitle;
    bool? showSteps;
    List<Steps>? steps;
    List<String>? actions;
    List<List<List<FormData>>>? formData;

    Tawkeel({this.title, this.secoundTitle, this.showSteps, this.steps, this.actions, this.formData});

    Tawkeel.fromJson(Map<String, dynamic> json) {
        if(json["title"] is String) {
            title = json["title"];
        }
        if(json["secoundTitle"] is String) {
            secoundTitle = json["secoundTitle"];
        }
        if(json["showSteps"] is bool) {
            showSteps = json["showSteps"];
        }
        if(json["steps"] is List) {
            steps = json["steps"] == null ? null : (json["steps"] as List).map((e) => Steps.fromJson(e)).toList();
        }
        if(json["actions"] is List) {
            actions = json["actions"] == null ? null : List<String>.from(json["actions"]);
        }
        if(json["formData"] is List) {
            formData = (json["formData"] == null ? null : (json["formData"] as List).map((e) => e == null?[]:(e as List).map((e) => e == null?[]:(e as List).map((e) => FormData.fromJson(e)).toList()).toList()).toList())?.cast<List<List<FormData>>>();
        }
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = <String, dynamic>{};
        data["title"] = title;
        data["secoundTitle"] = secoundTitle;
        data["showSteps"] = showSteps;
        if(steps != null) {
            data["steps"] = steps?.map((e) => e.toJson()).toList();
        }
        if(actions != null) {
            data["actions"] = actions;
        }
        if(formData != null) {
            data["formData"] = formData?.map((e) => e.map((e) => e.map((e) => e.toJson()).toList()).toList()).toList();
        }
        return data;
    }
}

class FormData {
    String? id;
    String? type;
    String? name;
    String? title;
    String? subtitle;
    Children? children;

    FormData({this.id, this.type, this.name, this.title, this.subtitle, this.children});

    FormData.fromJson(Map<String, dynamic> json) {
        if(json["id"] is String) {
            id = json["id"];
        }
        if(json["type"] is String) {
            type = json["type"];
        }
        if(json["name"] is String) {
            name = json["name"];
        }
        if(json["title"] is String) {
            title = json["title"];
        }
        if(json["subtitle"] is String) {
            subtitle = json["subtitle"];
        }
        if(json["children"] is Map) {
            children = json["children"] == null ? null : Children.fromJson(json["children"]);
        }
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = <String, dynamic>{};
        data["id"] = id;
        data["type"] = type;
        data["name"] = name;
        data["title"] = title;
        data["subtitle"] = subtitle;
        if(children != null) {
            data["children"] = children?.toJson();
        }
        return data;
    }
}

class Children {
    Button? button;

    Children({this.button});

    Children.fromJson(Map<String, dynamic> json) {
        if(json["button"] is Map) {
            button = json["button"] == null ? null : Button.fromJson(json["button"]);
        }
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = <String, dynamic>{};
        if(button != null) {
            data["button"] = button?.toJson();
        }
        return data;
    }
}

class Button {
    List<FormData1>? formData;

    Button({this.formData});

    Button.fromJson(Map<String, dynamic> json) {
        if(json["formData"] is List) {
            formData = json["formData"] == null ? null : (json["formData"] as List).map((e) => FormData1.fromJson(e)).toList();
        }
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = <String, dynamic>{};
        if(formData != null) {
            data["formData"] = formData?.map((e) => e.toJson()).toList();
        }
        return data;
    }
}

class FormData1 {
    String? id;
    String? type;
    String? name;
    int? lg;
    String? color;
    String? action;
    Content? content;

    FormData1({this.id, this.type, this.name, this.lg, this.color, this.action, this.content});

    FormData1.fromJson(Map<String, dynamic> json) {
        if(json["id"] is String) {
            id = json["id"];
        }
        if(json["type"] is String) {
            type = json["type"];
        }
        if(json["name"] is String) {
            name = json["name"];
        }
        if(json["lg"] is int) {
            lg = json["lg"];
        }
        if(json["color"] is String) {
            color = json["color"];
        }
        if(json["action"] is String) {
            action = json["action"];
        }
        if(json["content"] is Map) {
            content = json["content"] == null ? null : Content.fromJson(json["content"]);
        }
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = <String, dynamic>{};
        data["id"] = id;
        data["type"] = type;
        data["name"] = name;
        data["lg"] = lg;
        data["color"] = color;
        data["action"] = action;
        if(content != null) {
            data["content"] = content?.toJson();
        }
        return data;
    }
}

class Content {
    List<Steps1>? steps;
    bool? showSteps;
    List<String>? actions;
    NextSteps? nextSteps;
    List<List<List<FormData2>>>? formData;

    Content({this.steps, this.showSteps, this.actions, this.nextSteps, this.formData});

    Content.fromJson(Map<String, dynamic> json) {
        if(json["steps"] is List) {
            steps = json["steps"] == null ? null : (json["steps"] as List).map((e) => Steps1.fromJson(e)).toList();
        }
        if(json["showSteps"] is bool) {
            showSteps = json["showSteps"];
        }
        if(json["actions"] is List) {
            actions = json["actions"] == null ? null : List<String>.from(json["actions"]);
        }
        if(json["nextSteps"] is Map) {
            nextSteps = json["nextSteps"] == null ? null : NextSteps.fromJson(json["nextSteps"]);
        }
        if(json["formData"] is List) {
            formData = (json["formData"] == null ? null : (json["formData"] as List).map((e) => e == null?[]:(e as List).map((e) => e == null?[]:(e as List).map((e) => FormData2.fromJson(e)).toList()).toList()).toList())?.cast<List<List<FormData2>>>();
        }
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = <String, dynamic>{};
        if(steps != null) {
            data["steps"] = steps?.map((e) => e.toJson()).toList();
        }
        data["showSteps"] = showSteps;
        if(actions != null) {
            data["actions"] = actions;
        }
        if(nextSteps != null) {
            data["nextSteps"] = nextSteps?.toJson();
        }
        if(formData != null) {
            data["formData"] = formData?.map((e) => e.map((e) => e.map((e) => e.toJson()).toList()).toList()).toList();
        }
        return data;
    }
}

class FormData2 {
    String? stepTitle;
    String? label;
    String? description;
    String? type;

    FormData2({this.stepTitle, this.label, this.description, this.type});

    FormData2.fromJson(Map<String, dynamic> json) {
        if(json["stepTitle"] is String) {
            stepTitle = json["stepTitle"];
        }
        if(json["label"] is String) {
            label = json["label"];
        }
        if(json["description"] is String) {
            description = json["description"];
        }
        if(json["type"] is String) {
            type = json["type"];
        }
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = <String, dynamic>{};
        data["stepTitle"] = stepTitle;
        data["label"] = label;
        data["description"] = description;
        data["type"] = type;
        return data;
    }
}

class NextSteps {
    String? key;
    List<NextStep>? nextStep;

    NextSteps({this.key, this.nextStep});

    NextSteps.fromJson(Map<String, dynamic> json) {
        if(json["key"] is String) {
            key = json["key"];
        }
        if(json["nextStep"] is List) {
            nextStep = json["nextStep"] == null ? null : (json["nextStep"] as List).map((e) => NextStep.fromJson(e)).toList();
        }
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = <String, dynamic>{};
        data["key"] = key;
        if(nextStep != null) {
            data["nextStep"] = nextStep?.map((e) => e.toJson()).toList();
        }
        return data;
    }
}

class NextStep {
    String? checkValue;
    int? returnedValue;

    NextStep({this.checkValue, this.returnedValue});

    NextStep.fromJson(Map<String, dynamic> json) {
        if(json["checkValue"] is String) {
            checkValue = json["checkValue"];
        }
        if(json["returnedValue"] is int) {
            returnedValue = json["returnedValue"];
        }
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = <String, dynamic>{};
        data["checkValue"] = checkValue;
        data["returnedValue"] = returnedValue;
        return data;
    }
}

class Steps1 {
    String? label;
    String? description;

    Steps1({this.label, this.description});

    Steps1.fromJson(Map<String, dynamic> json) {
        if(json["label"] is String) {
            label = json["label"];
        }
        if(json["description"] is String) {
            description = json["description"];
        }
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = <String, dynamic>{};
        data["label"] = label;
        data["description"] = description;
        return data;
    }
}

class Steps {
    String? label;
    String? description;
    List<NestedSteps>? nestedSteps;

    Steps({this.label, this.description, this.nestedSteps});

    Steps.fromJson(Map<String, dynamic> json) {
        if(json["label"] is String) {
            label = json["label"];
        }
        if(json["description"] is String) {
            description = json["description"];
        }
        if(json["nestedSteps"] is List) {
            nestedSteps = json["nestedSteps"] == null ? null : (json["nestedSteps"] as List).map((e) => NestedSteps.fromJson(e)).toList();
        }
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = <String, dynamic>{};
        data["label"] = label;
        data["description"] = description;
        if(nestedSteps != null) {
            data["nestedSteps"] = nestedSteps?.map((e) => e.toJson()).toList();
        }
        return data;
    }
}

class NestedSteps {
    String? label;
    String? description;

    NestedSteps({this.label, this.description});

    NestedSteps.fromJson(Map<String, dynamic> json) {
        if(json["label"] is String) {
            label = json["label"];
        }
        if(json["description"] is String) {
            description = json["description"];
        }
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = <String, dynamic>{};
        data["label"] = label;
        data["description"] = description;
        return data;
    }
}