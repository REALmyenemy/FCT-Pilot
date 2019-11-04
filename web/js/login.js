(function()
{
	var mail=sessionStorage.getItem('mail');
	
	if (mail)
	{
		document.getElementById('rusu').value=mail;
		sessionStorage.removeItem('mail');
	}
		
})();
