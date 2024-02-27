from collections import defaultdict

j1, j2, target = 3, 4, 2

visited = defaultdict(lambda: False)

def Wjug(X, Y): 
	if (X == target and Y == 0) or (Y == target and X == 0):
		print(X, Y)
		return True	
	
	if visited[(X, Y)] == False:
		print(X, Y)
	
		visited[(X, Y)] = True
				
		return (Wjug(0, Y) or
				Wjug(X, 0) or
				Wjug(j1, Y) or
				Wjug(X, j2) or
				Wjug(X + min(Y, (j1-X)),
				Y - min(Y, (j1-X))) or
				Wjug(X - min(X, (j2-Y)),
				Y + min(X, (j2-Y))))
	
	else:
		return False
print("Water flow table: ")


Wjug(0, 0)
