

object olivia{
	var gradoDeConcentracion = 6
	method gradoDeConcentracion(){
		return gradoDeConcentracion
	}
	method recibirMensaje(){ gradoDeConcentracion = gradoDeConcentracion + 3 }
	method discutir(){ gradoDeConcentracion = gradoDeConcentracion - 1	}
	method darseUnBanioDeVapor(){}
}

object bruno{
	var esFeliz = true
	var tieneSed = false
	var peso = 55000 //gr
	method recibirMensaje(){
		esFeliz = true 
	}
	method darseUnBanioDeVapor(){
		(peso = peso - 500) 
		tieneSed = true
	}
	method tomarAgua(){
		tieneSed = false
	}
	method comerFideos(){
		peso = peso + 250
		tieneSed = true
	}
	method correr(){
		peso = peso - 300
	}
	method verNoticiero(){
		esFeliz = false 
	}
	method esFeliz(){
		return true
	}
	method tieneSed(){
		return true
	}
	
	method estaPerfecto(){
			return self.esFeliz()  and not self.tieneSed() and peso.between(50000,70000)
	}
	method medioDiaEnCasa(){
		self.comerFideos() 
		self.tomarAgua()
		self.verNoticiero()
	}
}

object ramiro{
	var estaContracturado = 10
	var tienePielGrasosa = true
	
	method estaContracturado(){ return estaContracturado}
	
	method recibirMensaje(){
		return 0.max(estaContracturado - 2)
	}
	method darseUnBanioDeVapor(){
		tienePielGrasosa = false 
	}
	method comerBigMc(){
		tienePielGrasosa = true
	}
	method bajarALaFosa(){
		tienePielGrasosa = true
		estaContracturado = estaContracturado + 1
	}
	method jugarPadel(){
		estaContracturado = estaContracturado + 3
	}
	method diaDeTrabajo(){
		self.bajarALaFosa()
		self.comerBigMc()
		self.bajarALaFosa()
	}
}

