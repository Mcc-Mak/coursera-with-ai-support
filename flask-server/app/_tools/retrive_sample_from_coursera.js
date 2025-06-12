let json = Object.values(document.querySelectorAll(".cds-ProductCard-listPreviewImage")).map(e=>{
	let element = e.nextSibling;
	window.element = element;
	let data = {
		"CONTENT": {
            "TEXT": element.querySelectorAll(".cds-CommonCard-titleLink")[0].innerText,
			"CATEGORY": element.querySelectorAll(".cds-ProductCard-footer")[0].innerText,
			"IMG": e.children[0].src
		},
		"ORG": {
            "TEXT": element.querySelectorAll(".cds-ProductCard-partnerNames")[0].innerText,
			"IMG": element.querySelectorAll(".cds-ProductCard-partnerLogos>*>img")[0].src
		}
	};
	return data;
});
console.log(JSON.stringify(json,null,4));