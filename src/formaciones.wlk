import vagones.*
import locomotoras.*
import ciudades.*

class Formacion {

	var vagones = []
	var locomotoras = []

	method agregarVagon(vagon) {
		vagones.add(vagon)
	}

	method sacarVagon(vagon) {
		vagones.remove(vagon)
	}

	method agregarLocomotora(locomotora) {
		locomotoras.add(locomotora)
	}

	method sacarLocomotora(locomotora) {
		locomotoras.remove(locomotora)
	}

	method capacidadPasajeros() {
		return vagones.sum{ vagon => vagon.cantidadPasajeros() }
	}

	method cuantosLivianos() {
		return vagones.count{ vagon => vagon.peso() < 2500 }
	}

	method velMax() {
		return locomotoras.min{ locomotora => locomotora.velMax() }.velMax().min(self.velMaxPermitida())
	}

	method velMaxPermitida()

	method eficiente() {
		return locomotoras.all{ locomotora => locomotora.arrastreUtil() >= locomotora.peso() * 5 }
	}

	method pesoMaxVagones() {
		return vagones.sum{ vagon => vagon.peso() }
	}

	method pesoMaxLocomotoras() {
		return locomotoras.sum{ locomotora => locomotora.peso() }
	}

	method arrastreUtilTotal() {
		return locomotoras.sum{ locomotora => locomotora.arrastreUtil() }
	}

	method puedeMoverse() {
		return self.arrastreUtilTotal() > self.pesoMaxVagones()
	}

	method arrastreFaltante() {
		if (self.puedeMoverse()) {
			return 0
		} else {
			return self.pesoMaxVagones() - self.arrastreUtilTotal()
		}
	}

	method compleja() {
		return vagones.size() + locomotoras.size() > 20 or self.pesoMaxVagones() + self.pesoMaxLocomotoras() > 10000
	}

	method cantidadDeBanos() {
		return vagones.sum{ vagon => vagon.banos() }
	}

	method siTodosSonLivianos() {
		return vagones.all{ vagon => vagon.peso() < 2500 }
	}

}



