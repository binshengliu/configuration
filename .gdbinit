python
import sys
sys.path.insert(0, '~/src/gdb_printers/python')
from libstdcxx.v6.printers import register_libstdcxx_printers
register_libstdcxx_printers (None)
end
# https://sourceware.org/gdb/wiki/STLSupport
