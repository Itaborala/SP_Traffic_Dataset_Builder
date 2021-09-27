#!/usr/bin/python3

import numpy as np
import pandas as pd
import sys


df=pd.read_csv(sys.argv[1])

print (df.head(15))
