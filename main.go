package main

import("fmt")

func main(){
	t := 10

	for i := range t{
		for j := range t{
			if(i == j || i+j == t-1){
				fmt.Printf("*")
			}else{
				fmt.Printf(" ")
			}
		}
	fmt.Println()
	}
}