const t = 10

for (let i = 0; i < t; i++){
  for (let j = 0; j < t; j++){
    if (i == j || i + j == t - 1) {
      process.stdout.write("*")
    } else {
      process.stdout.write(" ")
    }
  }
  process.stdout.write("\n")
}