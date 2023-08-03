# Exception handling example
v1 = 5
v2 = 0

try:
    print(v1 / v2)
except ZeroDivisionError:
    print("Can't divide by zero!")
    raise Exception
except Exception:
    print("Something else bad happened.")
finally:
    print("Tried to divide {} by {}. See the result above.".format(v1, v2))
