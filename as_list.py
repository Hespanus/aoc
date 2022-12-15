from robot.api.deco import keyword
from robot.libraries.BuiltIn import BuiltIn
from robot.libraries.BuiltIn import _Misc


@keyword('List From String')
def list_from_string(string):
    list = string.split("\n\n")
    return list