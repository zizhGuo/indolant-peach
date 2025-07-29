# import datetime
# now = datetime.datetime.now().isoformat()
# print(now)
# print("This is a test for the run-python action.")

import sys
import datetime

version = sys.argv[1] if len(sys.argv) > 1 else "unknown"
note = sys.argv[2] if len(sys.argv) > 2 else ""

now = datetime.datetime.now().isoformat()
print(f"Timestamp: {now}")
print(f"Version: {version}")
print(f"Note: {note}")