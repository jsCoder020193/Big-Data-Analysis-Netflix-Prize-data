import sys

def show_sizeof(x, level=0):

    print("\t" * level, x.__class__, sys.getsizeof(x), x)

    if hasattr(x, '__iter__'):
        if hasattr(x, 'items'):
            for xx in x.items():
                show_sizeof(xx, level + 1)
        else:
            for xx in x:
                show_sizeof(xx, level + 1)


show_sizeof(None)
show_sizeof(3)
show_sizeof(2**63)
show_sizeof(0)
show_sizeof(1)
show_sizeof(bool(5))