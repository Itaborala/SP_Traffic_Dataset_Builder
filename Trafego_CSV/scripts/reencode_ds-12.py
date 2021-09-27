#!/usr/bin/python3

import numpy as np
import pandas as pd
import sys


df=pd.read_csv(sys.argv[1], encoding='latin-1')

print (df.head(15))

df.to_csv(sys.argv[1][:9] + "l"+sys.argv[1][9:], index=False, encoding='utf-8')
