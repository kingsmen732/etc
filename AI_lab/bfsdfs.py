from collections import deque

# Breadth-First Search (BFS) Algorithm
def bfs(graph, start):
    visited = set()
    queue = deque([start])
    while queue:
        vertex = queue.popleft()
        if vertex not in visited:
            print(vertex)
            visited.add(vertex)
            queue.extend(graph[vertex] - visited)

# Depth-First Search (DFS) Algorithm
def dfs(graph, start):
    visited = set()
    stack = [start]
    while stack:
        vertex = stack.pop()
        if vertex not in visited:
            print(vertex)  
            visited.add(vertex)
            stack.extend(graph[vertex] - visited)

# Example
graph = {
    'A': {'B', 'C'},
    'B': {'A', 'D', 'E'},
    'C': {'A', 'F'},
    'D': {'B'},
    'E': {'B', 'F'},
    'F': {'C', 'E'}
}

print("BFS:")
bfs(graph, 'A')

print("DFS:")
dfs(graph, 'A')
