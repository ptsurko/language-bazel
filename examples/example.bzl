
def macro(name, visibility=None):
  # Creating a native genrule.
  native.genrule(
      name = name,
      outs = [name + '.txt'],
      cmd = 'echo hello > $@',
      visibility = visibility,
  )


def _impl(ctx):
  print("This rule does nothing")

empty = rule(implementation=_impl)


def system_test(name, test_file, flavor):
  n = "system_test_%s_%s_test" % (test_file, flavor)
  if native.existing_rule(n) == None:
    native.py_test(
      name = n,
      srcs = [ "test_driver.py", test_file ],
      args = [ "--flavor=" + flavor])
  return n

def system_test_suite(name, flavors=["default"], test_files):
  ts = []
  for flavor in flavors:
    for test in test_files:
      ts.append(system_test(name, test, flavor))
  native.test_suite(name = name, tests = ts)


def _impl(ctx):
  print("print something when the rule implementation is executed")
  print(type("abc"))     # prints string, the type of "abc"
  print(dir(ctx))        # prints all the fields and methods of ctx
  print(dir(ctx.attr))   # prints all the attributes of the rule
  # prints the objects each separated with new line
  print("object1", "object2", sep="\n")

  debug = rule(implementation=_impl)
