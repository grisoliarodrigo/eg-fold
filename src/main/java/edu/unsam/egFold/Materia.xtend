package edu.unsam.egFold

import java.util.List
import org.eclipse.xtend.lib.annotations.Accessors

@Accessors
class Materia {
	// otro comentario
	List<Alumno> alumnos = newArrayList 
	
	def Double getPromedioGeneral() {
		val sumaNotas = alumnos.fold (0.0,[ total , alumno|  alumno.notaFinal + total])
		sumaNotas / alumnos.size()
	}
	
}

@Accessors
class Alumno {
	
	String nombreApellido
	Double notaFinal
	
}