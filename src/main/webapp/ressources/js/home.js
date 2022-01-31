const stars = document.getElementsByClassName("star")

for(let star of stars){
	sessionStorage.setItem(star.id, "unchecked")
}

for(let i=0; i<stars.length; i++){
	stars[i].addEventListener("mouseover",() => {	
		for(let j=0; j<=i; j++){
			stars[j].childNodes[0].style.display = "block"
		    stars[j].childNodes[1].style.display = "none"
		}		
	})
	
	stars[i].addEventListener("mouseout",() => {
		for(let j=0; j<=i; j++){
         console.log(sessionStorage.getItem(stars[j].id))
		 if(sessionStorage.getItem(stars[j].id) === "unchecked"){
		  stars[j].childNodes[0].style.display = "none"
		  stars[j].childNodes[1].style.display = "block"
		 }
		}
	})
	
	stars[i].addEventListener("click",() => {	
		for(let j=0; j<stars.length; j++){
		  stars[j].childNodes[0].style.display = "none"
		  stars[j].childNodes[1].style.display = "block"
		  sessionStorage.setItem(stars[j].id,"unchecked")
		 }
		for(let j=0; j<=i; j++){
			stars[j].childNodes[0].style.display = "block"
		    stars[j].childNodes[1].style.display = "none"
		    sessionStorage.setItem(stars[j].id,"checked")
		}	
	})
		
}
