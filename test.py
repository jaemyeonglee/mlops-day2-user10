import pandas as pd, matplotlib.pyplot as plt
df = pd.DataFrame({"x":[1,2,3], "y":[2,4,3]})
df.plot(x="x", y="y"); plt.show()