# Chilis Visits

import matplotlib.pyplot as plt
import pandas as pd

plt.bar(PivotDF['DOOR-OPEN'], PivotDF['CarBelvidereChilis_frequency'])    

plt.title('Uses per Hour for Chilis Pantry')
plt.xlabel('Hour')
plt.xticks(rotation=55)
plt.ylabel('Number of Uses')