from math import factorial

def aux(n, m):
  return factorial(n) // factorial(m) // factorial(n - m)

def main():
  tamEspaco = factorial(100)
  tamEvento = aux(25, 3) * sum([(-1)**i * aux(22, i) * factorial(97-i) for i in range(23)])
  print(tamEvento / tamEspaco)
    
if __name__ == '__main__':
  main()
